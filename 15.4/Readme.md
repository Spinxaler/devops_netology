# Домашнее задание к занятию 15.4 "Кластеры. Ресурсы под управлением облачных провайдеров"

Организация кластера Kubernetes и кластера баз данных MySQL в отказоустойчивой архитектуре.
Размещение в private подсетях кластера БД, а в public - кластера Kubernetes.

---
## Задание 1. Яндекс.Облако (обязательное к выполнению)

1. Настроить с помощью Terraform кластер баз данных MySQL:
- Используя настройки VPC с предыдущих ДЗ, добавить дополнительно подсеть private в разных зонах, чтобы обеспечить отказоустойчивость 
- Разместить ноды кластера MySQL в разных подсетях
- Необходимо предусмотреть репликацию с произвольным временем технического обслуживания
- Использовать окружение PRESTABLE, платформу Intel Broadwell с производительностью 50% CPU и размером диска 20 Гб
- Задать время начала резервного копирования - 23:59
- Включить защиту кластера от непреднамеренного удаления
- Создать БД с именем `netology_db` c логином и паролем

2. Настроить с помощью Terraform кластер Kubernetes
- Используя настройки VPC с предыдущих ДЗ, добавить дополнительно 2 подсети public в разных зонах, чтобы обеспечить отказоустойчивость
- Создать отдельный сервис-аккаунт с необходимыми правами 
- Создать региональный мастер kubernetes с размещением нод в разных 3 подсетях
- Добавить возможность шифрования ключом из KMS, созданного в предыдущем ДЗ
- Создать группу узлов состояющую из 3 машин с автомасштабированием до 6
- Подключиться к кластеру с помощью `kubectl`
- *Запустить микросервис phpmyadmin и подключиться к БД, созданной ранее
- *Создать сервис типы Load Balancer и подключиться к phpmyadmin. Предоставить скриншот с публичным адресом и подключением к БД

Документация
- [MySQL cluster](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/mdb_mysql_cluster)
- [Создание кластера kubernetes](https://cloud.yandex.ru/docs/managed-kubernetes/operations/kubernetes-cluster/kubernetes-cluster-create)
- [K8S Cluster](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/kubernetes_cluster)
- [K8S node group](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/kubernetes_node_group)
--- 

1. 
Сети

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/1f6b3776-55ee-4590-b233-b5c52d852be2)

Кластер

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/f56abdb7-9962-42c2-9692-85e0b5d3ccb3)

Защита от удаления активирована.

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/6254a024-26cd-4ae2-afb1-dd0ec9851aa7)

Хосты.

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/46d6c99b-fcd8-4619-9768-42aeb89dfde5)

Пользователь

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/e1b44194-1284-4dea-98da-529f5cf8530c)

База

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/76ddfbc1-c936-4d04-a8a4-ec3ee5cb1e67)

2.
Сервис аккаунт

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/8d2fdcb0-d2c1-417c-9de7-4915fe538643)

KMS

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/e5c7118b-164f-4b0b-a6fc-cebc5a940e9f)

Кубер

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/93682a04-6ac9-40cd-9d54-04262355d1db)

Ноды

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/9b093678-1e5c-4309-92df-16b5ff0a960d)

Применили манифесты

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/714f0e88-1765-4dcf-bd21-a408093fed7d)

Балансировщик 

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/3b035e11-c2f3-425a-b85a-01dc94419daf)

phpMyAdmin

![image](https://github.com/Spinxaler/devops_netology/assets/16610642/88534871-c423-43fa-bf20-4edba1b436dc)




