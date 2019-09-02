#!/bin/bash
PID=20661
while :
do
    sleep 10s
    PID_EXIST=$(ps aux | awk '{print $2}'| grep -w $PID)
    if [ ! $PID_EXIST ];then break;fi;
done
CUDA_VISIBLE_DEVICES=6 python tools/train_net.py --config-file "./configs/gn_baselines/my_e2e_faster_rcnn_R_50_FPN_1x_gn.yaml"
