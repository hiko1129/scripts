VERSION=$1

mkdir /tmp/tfnotify
cd /tmp/tfnotify
wget https://github.com/mercari/tfnotify/releases/download/v${VERSION}/tfnotify_linux_amd64.tar.gz
tar -zxvf tfnotify_linux_amd64.tar.gz
rm  tfnotify_linux_amd64.tar.gz
mv ./tfnotify /usr/local/bin
cd /

rm -rf /tmp/tfnotify
