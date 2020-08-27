project_id=$1
location=$2
keyring=$3
file_paths=$4

curl https://raw.githubusercontent.com/hiko1129/scripts/master/crypto/cloud_kms/base.sh > i.sh && \
     sh i.sh decrypt $project_id $location $keyring $file_paths && \
     rm i.sh
