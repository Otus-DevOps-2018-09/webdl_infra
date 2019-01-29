#!/bin/bash
set -e

echo "******************************"
echo "Run Install Environments for Travis Tests"
echo "******************************"
echo "Install Ansible and Ansible Lint"
echo "******************************"
sudo pip install --upgrade pip
sudo pip install ansible 'ansible-lint>=3.4.23,<4.0.0'
ansible --version
ansible-lint --version

echo "******************************"
echo "Install Terraform"
echo "******************************"
cd /tmp/
wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_386.zip
sudo unzip terraform_0.11.11_linux_386.zip
sudo mv terraform /usr/local/bin/
terraform --version

echo "******************************"
echo "Install Terraform Linter"
echo "******************************"
cd /tmp/
wget https://github.com/wata727/tflint/releases/download/v0.7.3/tflint_linux_386.zip
unzip tflint_linux_386.zip
sudo mkdir -p /usr/local/tflint/bin
sudo install tflint /usr/local/tflint/bin
export PATH=/usr/local/tflint/bin:$PATH
tflint -v
