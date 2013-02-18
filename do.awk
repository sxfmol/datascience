#!/bin/bash
awk -F"[:]" '{if($3>150) print $3}'
