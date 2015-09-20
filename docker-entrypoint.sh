#!/bin/bash

pwd
cd ${erl_files_folder}
rm -rf *.beam *.dump
erlc *.erl
erl -noshell -s init stop -s $1 $2
