#!/bin/sh

./dump-module.sh UIKit | grep "import " | sed 's/@_exported //g' | grep UIKit | cut -f2 -d' '
