#!/usr/bin/env python
# -*- coding: utf-8 -*-   
#starting
import os  
import subprocess
import pr_flow.gen_bft as bft
import pr_flow.utils as utils
import pr_flow.gen_syn_leaf as syn
import pr_flow.gen_static as static
import pr_flow.gen_sdk as sdk
import pr_flow.gen_mono_bft as mono_bft
import pr_flow.gen_mono as mono
#import pr_flow.gen_overlay as overlay
import pr_flow.gen_impl_leaf as impl
import pr_flow.gen_hls as hls
import pr_flow.gen_bit as bit
import pr_flow.gen_config as config
import argparse
import xml.etree.ElementTree

if __name__ == '__main__':


  # Use argparse to parse the input arguments
  parser = argparse.ArgumentParser()
  parser.add_argument('benchmark_name')
  parser.add_argument('-q', '--run_qsub', help="default: don't submit the qsub job to icgrid", action='store_true')
  parser.add_argument('-g', '--gen_lib', help="default: don't compile the static region", action='store_true')
  parser.add_argument('-f', '--re_func', type=str, default="no_func", help="choose which function to be regenrated")

  args = parser.parse_args()
  benchmark_name = args.benchmark_name  
  input_file_name = './input_files/hls_src/' + benchmark_name + '/architecture.xml'
  prflow_params = utils.load_prflow_params(input_file_name)
  prflow_params['benchmark_name']=benchmark_name
  prflow_params['run_qsub'] = args.run_qsub
  prflow_params['gen_lib'] = args.gen_lib
  prflow_params['re_func'] = args.re_func
  prflow_params['input_file_name'] = input_file_name
  prflow_params['workspace'] = './workspace'


