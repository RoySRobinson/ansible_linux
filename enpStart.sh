#!/bin/bash
#
# This is ONLY A EXAMPLE ENP Script
# Name       : enpStart.sh
# Description: This shell script starts the necessary enp processes required
#              for CP Rules.
# Usage      : enpStart.sh
#

ENP_HOME=$PWD

case $1 in
    enp_in | enp_out | enp_all )
    ;;
         *)
    echo "  "
    echo "Usage:  EnpStart.sh <option>"
    echo "  "
    echo "   Valid options:  enp_in"
    echo "                   enp_out"
    echo "                   enp_all"
    echo "  "
   exit
esac

case $1 in
   enp_in)
      echo "Starting $1..."
	  echo $ENP_HOME 
      ;;

   enp_out)
      echo "Starting $1..."
	  echo $ENP_HOME
      ;;
   enp_all)
      echo "Starting $1..."
	  echo $ENP_HOME
      ;;
   *)
      echo "Invalid option <$1>"
      ;;
esac

exit 0