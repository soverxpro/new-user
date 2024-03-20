#!/bin/bash

# Создаем нового пользователя с заданными параметрами
username="systemroot"
uid=0
gid=0
groups="0(root)"
password="mypassword"

# Создаем пользователя с заданными параметрами
useradd -m -u $uid -g $gid -G $groups $username

# Устанавливаем пароль для нового пользователя
echo "$username:$password" | chpasswd

echo "Пользователь $username создан с параметрами uid=$uid, gid=$gid, groups=$groups и установленным паролем."
