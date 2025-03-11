
#!/bin/sh
wget https://mdeck-download.s3.us-east-1.amazonaws.com/client/linux/x64/multipleforlinux.tar && tar -xvf multipleforlinux.tar
cd multipleforlinux
chmod +x ~/multipleforlinux/multiple-cli && sudo chmod +x ~/multipleforlinux/multiple-node
echo 'PATH=$PATH:/root/multipleforlinux' >> /etc/profile && source /etc/profile
chmod -R 777 ~/multipleforlinux
nohup multiple-node > ~/multipleforlinux/output.log 2>&1 &
echo "开始等待 5 秒..." 
sleep 5 
echo "等待结束。"
multiple-cli bind --identifier IHBDLO4I --pin 666666 --bandwidth-download 307200 --bandwidth-upload 307200 --storage 20971520
