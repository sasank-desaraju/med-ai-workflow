srun \
  --ntasks=1 \
  --cpus-per-task=1 \
  --account=aiinmedicine \
  --qos=aiinmedicine \
  --partition=gpu \
  --gpus=a100:1 \
  --mem=8gb \
  --time=08:00:00 \
  --pty bash -i

# The account is the account name of the PI or the lab
# The qos is the corresponding QOS (Quality of Service) name; usually same as account name
