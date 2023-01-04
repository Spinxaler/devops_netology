# Домашнее задание к занятию "14.3 Карты конфигураций"

## Задача 1: Работа с картами конфигураций через утилиту kubectl в установленном minikube

Выполните приведённые команды в консоли. Получите вывод команд. Сохраните
задачу 1 как справочный материал.

### Как создать карту конфигураций?

```
kubectl create configmap nginx-config --from-file=nginx.conf
kubectl create configmap domain --from-literal=name=netology.ru
```

### Как просмотреть список карт конфигураций?

```
kubectl get configmaps
kubectl get configmap
```

### Как просмотреть карту конфигурации?

```
kubectl get configmap nginx-config
kubectl describe configmap domain
```

### Как получить информацию в формате YAML и/или JSON?

```
kubectl get configmap nginx-config -o yaml
kubectl get configmap domain -o json
```

### Как выгрузить карту конфигурации и сохранить его в файл?

```
kubectl get configmaps -o json > configmaps.json
kubectl get configmap nginx-config -o yaml > nginx-config.yml
```

### Как удалить карту конфигурации?

```
kubectl delete configmap nginx-config
```

### Как загрузить карту конфигурации из файла?

```
kubectl apply -f nginx-config.yml
```
![image](https://user-images.githubusercontent.com/16610642/210567395-3e5fd3da-70c5-4889-9bae-a2e017669cbd.png)

## Задача 2 (*): Работа с картами конфигураций внутри модуля

Выбрать любимый образ контейнера, подключить карты конфигураций и проверить
их доступность как в виде переменных окружения, так и в виде примонтированного
тома

---

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

В качестве решения прикрепите к ДЗ конфиг файлы для деплоя. Прикрепите скриншоты вывода команды kubectl со списком запущенных объектов каждого типа (pods, deployments, configmaps) или скриншот из самого Kubernetes, что сервисы подняты и работают, а также вывод из CLI.

---
[Манифесты](https://github.com/Spinxaler/devops_netology/tree/master/14.3/2)

![image](https://user-images.githubusercontent.com/16610642/210569644-11bb8f26-5841-4e50-80ea-999f0f3aa26f.png)
![image](https://user-images.githubusercontent.com/16610642/210569715-ecaa9a97-ed14-4bfe-b915-84b513fc2728.png)
![image](https://user-images.githubusercontent.com/16610642/210569905-a60c1292-d3e0-49b4-88ec-6f107d52224d.png)
![image](https://user-images.githubusercontent.com/16610642/210570655-0f5d15d9-74ef-4735-9530-cda7ef1c6874.png)
![image](https://user-images.githubusercontent.com/16610642/210570692-0c99da4f-c7c6-4314-b345-45569020f3e9.png)

