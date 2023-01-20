# Самоконтроль выполненения задания

1. Где расположен файл с `some_fact` из второго пункта задания?

### **Ответ:**

group_vars/all/examp.yml:

2. Какая команда нужна для запуска вашего `playbook` на окружении `test.yml`?

### **Ответ:**

```
ansible-playbook site.yml -i inventory/test.yml
```

3. Какой командой можно зашифровать файл?

### **Ответ:**

```
ansible-vault encript <path to file>
```

4. Какой командой можно расшифровать файл?

### **Ответ:**

```
ansible-vault decript <path to file>
```

5. Можно ли посмотреть содержимое зашифрованного файла без команды расшифровки файла? Если можно, то как?

```
ansible-vault view <path to file>
```

6. Как выглядит команда запуска `playbook`, если переменные зашифрованы?

### **Ответ:**

```
ansible-playbook <playbook file> [-i <path to inventory file>] --ask-vault-password
```

7. Как называется модуль подключения к host на windows?

### **Ответ:**

```
ansible.builtin.winrm          Run tasks over Microsoft's WinRM  
```
8. Приведите полный текст команды для поиска информации в документации ansible для модуля подключений ssh

### **Ответ:**

```
ansible-doc -t connection ssh
```
9. Какой параметр из модуля подключения `ssh` необходим для того, чтобы определить пользователя, под которым необходимо совершать подключение?

### **Ответ:**

```
- remote_user
        User name with which to login to the remote server, normally set by the remote_user keyword.
        If no user is supplied, Ansible will let the SSH client binary choose the user as it normally.
        set_via:
          cli:
          - name: user
            option: --user
          env:
          - name: ANSIBLE_REMOTE_USER
          ini:
          - key: remote_user
            section: defaults
          keyword:
          - name: remote_user
          vars:
          - name: ansible_user
          - name: ansible_ssh_user
        default: null
```
