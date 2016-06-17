#!/bin/bash

DIR=$1

echo $DIR

if [ ! -d ${DIR} ]; then
   echo "usage: $0 directory"
   exit 1
fi

tar cvf ${DIR}_2016_0001_MA.tar ${DIR}
tar tvf ${DIR}_2016_0001_MA.tar > ${DIR}_2016_0001_LS.txt
sudo rm -rf ${DIR}
mkdir ${DIR}
mv ${DIR}_2016* ${DIR}
