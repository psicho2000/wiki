package de.psicho.utils;

import static java.util.stream.Collectors.groupingBy;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.LongStream;

import org.apache.commons.lang3.StringUtils;

public class StopWatch extends org.springframework.util.StopWatch {

    @Override
    public void start() {
        startInternal(null);
    }

    @Override
    public void start(String partName) {
        startInternal(partName);
    }

    @Override
    public String shortSummary() {
        StringBuilder sb = new StringBuilder("StopWatch");
        if (StringUtils.isNotBlank(getId())) {
            sb.append(" '").append(getId()).append("'");
        }
        sb.append(": running time (millis) = ").append(getTotalTimeMillis());
        return sb.toString();
    }

    @Override
    public String prettyPrint() {
        StringBuilder sb = new StringBuilder(shortSummary());
        sb.append('\n');
        sb.append("-----------------------------------------\n");
        sb.append("ms     %     Task name\n");
        sb.append("-----------------------------------------\n");
        for (TaskInfo task : getTaskInfo()) {
            sb.append(fill(task.getTimeMillis(), 5)).append("  ");
            sb.append(fill(Math.round(task.getTimeSeconds() / getTotalTimeSeconds() * 100), 3)).append("  ");
            sb.append(task.getTaskName()).append("\n");
        }
        return sb.toString();
    }

    /**
     * <p>Summarizes all tasks with the same name.</p>
     * 
     * @return Table containing all tasks grouped by name
     */
    public String prettyPrintSummary() {
        StringBuilder sb = new StringBuilder(shortSummary());
        sb.append('\n');
        sb.append("---------------------------------------------------------------------------\n");
        sb.append("Sum ms  Avg ms  Count  Min ms  Max ms  Sum %  Task name\n");
        sb.append("---------------------------------------------------------------------------\n");
        Map<String, List<TaskInfo>> tasksByName = Arrays.stream(getTaskInfo()).collect(groupingBy(TaskInfo::getTaskName));
        for (Map.Entry<String, List<TaskInfo>> taskList : tasksByName.entrySet()) {
            long sum = getTaskStream(taskList).sum();
            double avg = getTaskStream(taskList).average().orElse(0);
            int count = taskList.getValue().size();
            long min = getTaskStream(taskList).min().orElse(0L);
            long max = getTaskStream(taskList).max().orElse(0L);
            sb.append(fill(sum, 6)).append("  ");
            sb.append(fill(Math.round(avg), 6)).append("  ");
            sb.append(fill(count, 5)).append("  ");
            sb.append(fill(min, 6)).append("  ");
            sb.append(fill(max, 6)).append("  ");
            long sumPercent = getTotalTimeMillis() == 0 ? 0 : sum * 100 / getTotalTimeMillis();
            sb.append(fill(sumPercent, 5)).append("  ");
            sb.append(taskList.getKey()).append("\n");
        }
        return sb.toString();
    }

    private void startInternal(String partName) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StackTraceElement stackTraceElement = stackTrace[3];
        String className = stackTraceElement.getClassName();
        className = className.substring(className.lastIndexOf(".") + 1);
        String name = className + ":" + stackTraceElement.getMethodName() + "()";

        if (partName != null) {
            name += "/" + partName;
        }
        super.start(name);
    }

    private LongStream getTaskStream(Map.Entry<String, List<TaskInfo>> taskList) {
        return taskList.getValue().stream().mapToLong(TaskInfo::getTimeMillis);
    }

    private String fill(long input, int fillingLength) {
        String inputString = String.valueOf(input);
        return StringUtils.repeat(" ", fillingLength - inputString.length()) + inputString;
    }
}
