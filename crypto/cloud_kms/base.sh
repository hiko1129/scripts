crypto_type=$1
project_id=$2
location=$3
keyring=$4
file_paths=$5

for file_path in $file_paths
do
  gcloud kms $crypto_type --project $project_id --location $location \
    --keyring $keyring --key secret \
    --plaintext-file "${file_path}" \
    --ciphertext-file "${file_path}.encrypted"
done
