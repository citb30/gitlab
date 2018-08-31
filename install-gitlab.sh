
## Reference : https://about.gitlab.com/installation/#centos-7?version=ce

IP=$(curl ifconfig.me)
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
sudo EXTERNAL_URL="http://$IP" yum install -y gitlab-ce

echo -e "You can loging to the server using following URL and with username root and setup the password during first login"

echo -e "GitLab URL = http://$IP"
