# Самоконтроль выполненения задания

1. Где расположен файл с `some_fact` из второго пункта задания?
```Bash
group_vars\all
```
2. Какая команда нужна для запуска вашего `playbook` на окружении `test.yml`?
```Bash
ansible-playbook site.yml -i inventory/test.yml
```
3. Какой командой можно зашифровать файл?
```Bash
ansible-vault encrypt <filename>
```
4. Какой командой можно расшифровать файл?
```Bash
ansible-vault decrypt <filename>
```
5. Можно ли посмотреть содержимое зашифрованного файла без команды расшифровки файла? Если можно, то как?
```Bash
ansible-vault view <filename>
```
6. Как выглядит команда запуска `playbook`, если переменные зашифрованы?
```Bash
ansible-playbook site.yml -i inventory/prod.yml --ask-vault-password
```
7. Как называется модуль подключения к host на windows?
```Bash
winrm
```
8. Приведите полный текст команды для поиска информации в документации ansible для модуля подключений ssh
```Bash
ansible-doc -t connection ssh
```
9. Какой параметр из модуля подключения `ssh` необходим для того, чтобы определить пользователя, под которым необходимо совершать подключение?
```Bash
remote_user
```