#!/bin/bash

#this script is to display your currently configured ip addresses





ifconfig ens33|grep inet|sed -e 's/.*addr: //' -e 's/.*addr://' -e 's/ .*//'|grep [[:print:]]
