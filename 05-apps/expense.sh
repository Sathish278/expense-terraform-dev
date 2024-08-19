#!/bin/bash
# user data will get sudo access
dnf install ansible -y
mkdir /tmp/sathish
cd /tmp
git clone https://github.com/Sathish278/expense-ansible-roles.git
cd /tmp/expense-ansible-roles
sudo ansible-playbook main.yml -e component=backend -e login_password=ExpenseApp1
sudo ansible-playbook main.yml -e component=frontend