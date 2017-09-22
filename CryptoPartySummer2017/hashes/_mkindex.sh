#!/bin/bash

echo "<html><body><ul>"

for f in *; do
    if [ "$f" = "_mkindex.sh" ]; then
	continue
    fi

    echo "<li><a href=\"${f}\">${f}</li>"
done

echo "</ul></body></html>"
