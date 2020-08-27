project_id=$1
location=$2
keyring=$3
file_paths=$4

for file_path in $file_paths
do
  gcloud kms encrypt --project $project_id --location $location \
    --keyring $keyring --key secret \
    --plaintext-file "${file_path}" \
    --ciphertext-file "${file_path}.encrypted"
done
