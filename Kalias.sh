#!/bin/bash

# Add kubectl aliases to .bashrc or .bash_profile
echo "alias k='kubectl'" >> ~/.bashrc
echo "alias kg='kubectl get'" >> ~/.bashrc
echo "alias kgp='kubectl get pods'" >> ~/.bashrc
echo "alias kgpa='kubectl get pods -A -o wide'" >> ~/.bashrc
echo "alias kgn='kubectl get nodes'" >> ~/.bashrc
echo "alias kgna='kubectl get nodes -o wide'" >> ~/.bashrc
echo "alias kdesp='kubectl describe pod'" >> ~/.bashrc
echo "alias kdesn='kubectl describe node'" >> ~/.bashrc
echo "alias kdelp='kubectl delete pod'" >> ~/.bashrc

# Reload the shell configuration
source ~/.bashrc

echo "Kubectl shortcuts added successfully!"