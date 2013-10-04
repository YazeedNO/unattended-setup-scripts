#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 <pool_name>"
    exit 1
fi

POOL_NAME=$1

POOL_ID=`vim-cmd hostsvc/rsrc/create ha-root-pool $POOL_NAME | sed -rn "s/'vim.ResourcePool:(.+)'/\1/p"`
echo $POOL_ID

