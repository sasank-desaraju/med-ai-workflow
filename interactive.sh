srun \
  --ntasks=1 \
  --cpus-per-task=1 \
  # This is the account name of the PI or the lab
  --account=aiinmedicine \
  # This is the corresponding QOS name; usually same as account name
  --qos=aiinmedicine \
  --partition=gpu \
  --gpus=a100:1 \
  --mem=8gb \
  --time=08:00:00 \
  --pty bash -i
