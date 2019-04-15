#!/usr/bin/env bash

set -euo pipefail

here=`cd $(dirname $BASH_SOURCE); pwd`
source $here/env.sh

FN=$1
TEST="$PROJECT_ROOT/test-module/src/test.el"

$EMACS -batch -l $TEST -f $FN
