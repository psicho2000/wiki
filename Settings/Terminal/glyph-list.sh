#!/usr/bin/env bash

# Adapted from https://gitlab.com/jake.gillberg/nerd-fonts-glyph-list
# and https://github.com/ryanoasis/nerd-fonts/blob/master/bin/scripts/lib/i_all.sh

sets=('cod' 'dev' 'fae' 'fa' 'iec' 'logos' 'oct' 'ple' 'pom' 'seti' 'weather' 'md')
raw_path="https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/bin/scripts/lib/i_%s.sh"
for set in "${sets[@]}"; do
	# shellcheck disable=SC2059
  url=$(printf "${raw_path}" "${set}")
	curl --silent "${url}" \
    | sed --quiet --regexp-extended "s/^\s*i='(.*)'\s*i_(.*)=.*/\1,\2/p" \
    | while IFS=',' read -r -a line; do
      printf ' %s %x %u %s\n' "${line[0]}" "'${line[0]}" "'${line[0]}" "${line[1]//_/ }"
    done
done \
> glyph-list.txt
