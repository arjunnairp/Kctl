#!/bin/bash

#——————————————————————————————–#
# Script_Name : Kalias.sh
# Description : Simple Bash to add aliases for some commonly used kubectl commands.
# Version : 1.1
# Changes:
# v1: Adds Kubectl aliases
# v1.1: Installs bash completion and then adds aliases
# Created by Arjun N
# Disclaimer:
# THE SCRIPT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
# AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
# OUT OF OR IN CONNECTION WITH THE SCRIPT OR THE USE OR OTHER DEALINGS IN THE SCRIPT.
#——————————————————————————————-#

# Install bash-completion if not already installed
if ! dpkg -l | grep -q bash-completion; then
  echo "Installing bash-completion..."
  sudo apt-get update
  sudo apt-get install -y bash-completion
else
  echo "bash-completion is already installed."
fi

# Add kubectl completion to .bashrc
if ! grep -q 'kubectl completion bash' ~/.bashrc; then
  echo "Enabling kubectl completion..."
  echo 'source <(kubectl completion bash)' >> ~/.bashrc
else
  echo "kubectl completion is already enabled in .bashrc."
fi

echo "kubectl bash completion enabled successfully!"

# Add kubectl aliases to .bashrc or .bash_profile
echo "Adding aliases..."
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
echo "Reloading .bashrc..."
source ~/.bashrc

echo "Kubectl aliases added successfully!"