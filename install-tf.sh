#!/bin/bash

# REQUIREMENT PACKAGE
apt-get update && apt-get install -y gnupg software-properties-common curl

# HashCorp GPG Key
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -

# Add the official HashCorp Linux Repository
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Update to add the repository, and install the Terraform CLI
apt-get update && apt-get install terraform

# Validation of installation

# Enable tab completion
# if Shell is bash
CURRENT_USER=`whoami`
CURRENT_SHELL=`grep $CURRENT_USER /etc/passwd`
echo $CURRENT_USER
echo $CURRENT_SHELL
