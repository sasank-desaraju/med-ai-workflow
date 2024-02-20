srun \
  --ntasks=1 \
  --cpus-per-task=1 \
  --account=YOUR_ALLOCATION_ACCOUNT \   # This is the account name of the PI or the lab
  --qos=YOUR_ALLOCATION_QOS \   # This is the corresponding QOS name; usually same as account name
  --partition=gpu \
  --gpus=a100:1 \
  --mem=8gb \
  --time=08:00:00 \
  --pty bash -i
