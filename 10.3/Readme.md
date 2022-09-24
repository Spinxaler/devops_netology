## Обязательные задания

### Задание 1
Используя директорию [help](./help) внутри данного домашнего задания - запустите связку prometheus-grafana.

Зайдите в веб-интерфейс графана, используя авторизационные данные, указанные в манифесте docker-compose.

Подключите поднятый вами prometheus как источник данных.

Решение домашнего задания - скриншот веб-интерфейса grafana со списком подключенных Datasource.

![image](https://user-images.githubusercontent.com/16610642/192111140-7e40bb25-7f91-4c71-8a5d-a49e46e58921.png)

## Задание 2
Изучите самостоятельно ресурсы:
- [promql-for-humans](https://timber.io/blog/promql-for-humans/#cpu-usage-by-instance)
- [understanding prometheus cpu metrics](https://www.robustperception.io/understanding-machine-cpu-usage)

Создайте Dashboard и в ней создайте следующие Panels:
- Утилизация CPU для nodeexporter (в процентах, 100-idle)
```
100 - (avg by (instance) (rate(node_cpu_seconds_total{job="nodeexporter",mode="idle"}[1m])) * 100)
```
- CPULA 1/5/15
```
node_load1{instance="nodeexporter:9100", job="nodeexporter"}
node_load5{instance="nodeexporter:9100", job="nodeexporter"}
node_load15{instance="nodeexporter:9100", job="nodeexporter"}
```
- Количество свободной оперативной памяти
```
avg_over_time (node_memory_MemFree_bytes{instance="nodeexporter:9100", job="nodeexporter"}[10s])
```
- Количество места на файловой системе
```
node_filesystem_avail_bytes {instance="nodeexporter:9100", job="nodeexporter", mountpoint="/"}
```
Для решения данного ДЗ приведите promql запросы для выдачи этих метрик, а также скриншот получившейся Dashboard.

![image](https://user-images.githubusercontent.com/16610642/192112672-67383ef9-85a0-49fa-b772-a55bb0de19d5.png)


## Задание 3
Создайте для каждой Dashboard подходящее правило alert (можно обратиться к первой лекции в блоке "Мониторинг").

Для решения ДЗ - приведите скриншот вашей итоговой Dashboard.

![image](https://user-images.githubusercontent.com/16610642/192113017-b15102e1-a03c-458c-8592-b9aeb74f8dca.png)

## Задание 4
Сохраните ваш Dashboard.

Для этого перейдите в настройки Dashboard, выберите в боковом меню "JSON MODEL".

Далее скопируйте отображаемое json-содержимое в отдельный файл и сохраните его.

В решении задания - приведите листинг этого файла.

https://github.com/Spinxaler/devops_netology/blob/master/10.3/dashboard.json
