#!/usr/bin/env bash

# Adapted from https://gitlab.com/jake.gillberg/nerd-fonts-glyph-list,
# but using the updated glyph modules from i_all.sh
# 1. git submodule add --depth 1 https://github.com/ryanoasis/nerd-fonts
# 2. Call this script
# 3. Reform each line like the following using multiline edit in VS Code:
# printf "\uea60 ea60 %d cod add\n" $((16#ea60))

# Iterate through relevant files in nerd-fonts
for i in $(dirname "${BASH_SOURCE[0]:-$0}")/nerd-fonts/bin/scripts/lib/i_{cod,dev,fae,fa,iec,logos,oct,ple,pom,seti,weather,md}.sh; do
  # Transform to <unicodeChar,name_with_underscores>
  sed -n -r "s/^\s*i='(.*)'\s*i_(.*)=.*/\1,\2/p" $i |
  while IFS=',' read -r -a line;
  do
    # Get character code and space delimit the name
    printf '%x %s\n' "'${line[0]}" "${line[1]//_/ }"
  done
done \
> glyph-list.sh
