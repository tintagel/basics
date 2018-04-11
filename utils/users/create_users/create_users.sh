#!/bin/bash
# reads in a file called ssh_users_and_pub_keys_list.txt and creates a user for each user:key pair listed
# format for ssh_users_and_pub_keys_list.txt is username:rsa_pub_key per line

# set the name of the group to add the users to below
group=standard_group

while read line; do
  user=`echo $line | cut -d: -f1`
  key=`echo $line | cut -d: -f2`
  sudo useradd -G $group $user
  sudo chage -I -1 -m 0 -M 99999 -E -1 $user
  sudo mkdir /home/$user/.ssh
  sudo chmod 0700 /home/$user/.ssh
  echo $key >>  /home/$user/.ssh/authorized_keys
  sudo chmod 0600 /home/$user/.ssh/authorized_keys
  sudo chown -R $user:$user /home/$user/.ssh
done <ssh_users_and_pub_keys_list.txt
