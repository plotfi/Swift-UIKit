#!/bin/sh

./dump-all-modules.sh | xargs -I% ./write-swift-file.sh %
