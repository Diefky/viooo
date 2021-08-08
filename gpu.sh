POOL=rx.unmineable.com:3333
WALLET=ADA:DdzFFzCqrhsnb1eVNjT8xX5dWVLpY5DGgdKPCSWukunbUhKyAmfp4E48yLKbGT3o2P8b1v1LXkac8Kzt42oF6hPPjJZPyn72XoC4KJ3X
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo Nvidia_$GPU-$(shuf -i 1-99999 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
