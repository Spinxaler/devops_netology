# Домашнее задание к занятию "14.1 Создание и использование секретов"

## Задача 1: Работа с секретами через утилиту kubectl в установленном minikube

Выполните приведённые ниже команды в консоли, получите вывод команд. Сохраните
задачу 1 как справочный материал.

### Как создать секрет?

```
openssl genrsa -out cert.key 4096
openssl req -x509 -new -key cert.key -days 3650 -out cert.crt \
-subj '/C=RU/ST=Moscow/L=Moscow/CN=server.local'
kubectl create secret tls domain-cert --cert=certs/cert.crt --key=certs/cert.key
```
![image](https://user-images.githubusercontent.com/16610642/210383416-09de96e3-31be-4f7d-acfb-03b95541bae2.png)


### Как просмотреть список секретов?

```
kubectl get secrets
kubectl get secret
```
![image](https://user-images.githubusercontent.com/16610642/210383538-d0351d76-9ba8-498e-aa18-7d49febaf0ef.png)

### Как просмотреть секрет?

```
kubectl get secret domain-cert
kubectl describe secret domain-cert
```
![image](https://user-images.githubusercontent.com/16610642/210383681-686f88b4-78e8-4948-a6ac-12bb3287c5a4.png)

### Как получить информацию в формате YAML и/или JSON?

```
kubectl get secret domain-cert -o yaml
kubectl get secret domain-cert -o json
```
![image](https://user-images.githubusercontent.com/16610642/210384936-9ead5afc-d65e-416f-8795-079aedaa883f.png)

### Как выгрузить секрет и сохранить его в файл?

```
kubectl get secrets -o json > secrets.json
kubectl get secret domain-cert -o yaml > domain-cert.yml
```

### Как удалить секрет?

```
kubectl delete secret domain-cert
```
![image](https://user-images.githubusercontent.com/16610642/210385190-5376825d-94f3-4ce3-8876-213ab11e5b5e.png)

### Как загрузить секрет из файла?

```
kubectl apply -f domain-cert.yml
```
![image](https://user-images.githubusercontent.com/16610642/210386649-a8eb2126-97a7-4d32-9efd-d6c058bbd1ae.png)

## Задача 2 (*): Работа с секретами внутри модуля

Выберите любимый образ контейнера, подключите секреты и проверьте их доступность
как в виде переменных окружения, так и в виде примонтированного тома.

---

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

В качестве решения прикрепите к ДЗ конфиг файлы для деплоя. Прикрепите скриншоты вывода команды kubectl со списком запущенных объектов каждого типа (deployments, pods, secrets) или скриншот из самого Kubernetes, что сервисы подняты и работают, а также вывод из CLI.

---
