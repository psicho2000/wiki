package de.psicho.redmine.protocol;

import static java.util.Date.parse;

/**
 * Doc comment here for <code>SomeClass</code>
 *
 * @param <T> type parameter
 * @see Math#sin(double)
 */
@Annotation(name = "name")
public class ColorDemo<T extends Runnable> extends SomeAbstractClass { // some comment

    private T field = null;
    private double unusedField = 12345.67890;
    private UnknownType anotherString = "Another\nStrin\g";
    public static int staticField = 0;
    public final int instanceFinalField = 0;
    private int result;

    /**
     * @param reassignedParam reassignedParam
     * @param param2 param2
     */
    public ColorDemo(int reassignedParam, int param2) {
        /* Block comment */
        int reassignedValue = this.staticField + param2;
        int localVar1 = 1, localVar2 = 2;
        int incompatibleVar = "IntelliJ"; // Error, incompatible types
        System.out.println(toString() + localVar1);
        long time = parse("1.2.3"); // Method is deprecated
        new Thread().countStackFrames(); // Method is deprecated and marked for removal
        reassignedValue++;
        field.run();
        reassignedParam = AnInterface.CONSTANT + instanceFinalField + reassignedValue + localVar1 + localVar2 + instanceField;
        result = reassignedParam;
        var unusedLocalVar = AnEnum.CONST1;
        method();
        staticMethod();
    }

    private void method() {
        ColorDemo<Runnable> c = new ColorDemo<Runnable>(2, 3);
        System.out.println(result);
    }

    private static void staticMethod() {
    }
}

enum AnEnum {
        CONST1
}

interface AnInterface {

    int CONSTANT = 2;
}

@interface Annotation {

    String name() default "";
}

abstract class SomeAbstractClass {

    protected int instanceField = 5;
}
