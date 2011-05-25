#!/bin/bash

../../../robust -ver
if [ $? -eq 0 ];then
  ROBUST=../../../robust
else
  echo "RobustVerilog warning: GUI version not supported - using non-GUI version robust-lite"
  ROBUST=../../../robust-lite
fi

$ROBUST ../src/base/apb_slave.v -od out -I ../src/gen -list list.txt -listpath -header -gui ${@}
