# Домашнее задание к занятию "08.03 Использование Yandex Cloud"

## Подготовка к выполнению

1. Подготовьте в Yandex Cloud три хоста: для `clickhouse`, для `vector` и для `lighthouse`.

Ссылка на репозиторий LightHouse: https://github.com/VKCOM/lighthouse

## Основная часть

1. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает lighthouse.
2. При создании tasks рекомендую использовать модули: `get_url`, `template`, `yum`, `apt`.
3. Tasks должны: скачать статику lighthouse, установить nginx или любой другой webserver, настроить его конфиг для открытия lighthouse, запустить webserver.
4. Приготовьте свой собственный inventory файл `prod.yml`.
5. Запустите `ansible-lint site.yml` и исправьте ошибки, если они есть.
6. Попробуйте запустить playbook на этом окружении с флагом `--check`.
7. Запустите playbook на `prod.yml` окружении с флагом `--diff`. Убедитесь, что изменения на системе произведены.
8. Повторно запустите playbook с флагом `--diff` и убедитесь, что playbook идемпотентен.
9. Подготовьте README.md файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги.
10. Готовый playbook выложите в свой репозиторий, поставьте тег `08-ansible-03-yandex` на фиксирующий коммит, в ответ предоставьте ссылку на него.

---

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---

В моём playbook 4 PLAY (Install Clickhouse, Install Vector, Install Nginx, Install Lighthouse)
- В Inventory Прописаны группы Clickhouse, Vector, Lighthouse в каждой группе можно указать любое количество хостов, в моём случае по 1 хосту в каждой группе.
- В group_vars Прописаны параметры для каждой группы хостов. 
- Прописаны ТЕГИ clickhouse, vector, lighthouse  каждый тег назначен только тем TASK которые отвечают за это приложение.

- 1 PLAY "Install Clickhouse" - 8 TASK (Скачивание пакетов Clickhouse, Установка пакетов, с помощью template копирование файлов конфигурация, создание базы данных и таблицы)
- 2 PLAY "Install Vector" - 10 TASK (Создаём группу и пользователя, прописываем в конфигурацию IP Clickhouse, скачиваем Vector, устанавливаем, создаём сим.линк, копируем конфигурационные файлы, после всего handlers Старт сервиса Vector)
- 3 PLAY "Install Nginx" - 4 TASK (Скачивание пакетов Nginx, прописываем в конфигурацию IP Vector, Стартуем сервис Nginx)
- 4 PLAY "Install Lighthouse" - 4 TASK (Ставим Git, Клонируем Lighthouse, с помощью template копирование файлов конфигурация, Стартуем сервис Lighthouse)

Постарался максимально использовать механизим pre_tasks, post_tasks, handlers.

![image](https://user-images.githubusercontent.com/16610642/182041272-08066dc3-a1df-499a-b8f0-ff90342995f1.png)
![image](https://user-images.githubusercontent.com/16610642/182041292-9a9ecd08-e86c-4b7d-ad1a-4558a53d6221.png)
