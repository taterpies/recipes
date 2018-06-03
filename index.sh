#!/bin/bash

set -e

cd docs

echo "# Foods"
echo

find . -maxdepth 1 -type d | grep [a-z] | sort | while read cat; do
	echo "* $(basename $cat)"

	find $cat -type f -name '*.md' | sort | while read doc; do
        n=$(grep '^# ' $doc | head -n 1 | sed 's/^# //')
		l=${doc%.md}
		echo "  * [$n]($l)"
	done

	echo
done
