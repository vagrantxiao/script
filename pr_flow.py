#!/usr/bin/env python
# -*- coding: utf-8 -*-   
#starting
import os  
import subprocess
import argparse
import xml.etree.ElementTree









if __name__ == '__main__':


  # Use argparse to parse the input arguments
  parser = argparse.ArgumentParser()
  parser.add_argument('outfile_name')
  parser.add_argument('-q', '--run_qsub', help="default: don't submit the qsub job to icgrid", action='store_true')
  parser.add_argument('-g', '--gen_lib', help="default: don't compile the static region", action='store_true')
  parser.add_argument('-f', '--re_func', type=str, default="no_func", help="choose which function to be regenrated")

  args = parser.parse_args()
  outfile_name = args.outfile_name 
  outfile_hd = open(outfile_name, 'w')
  outfile_hd.write("hello\n")
  outfile_hd.close()

