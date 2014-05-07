#!/bin/sh
#将test-data上载到HDFS
hadoop dfs -put test-data ./
#清除临时目录
hadoop dfs -rmr tmp/
# 请根据实际情况修改jar文件的路径
hadoop jar ./dtree.jar program.DecisionTreeDriver test-data/names test-data/data tmp/ test-data/model

