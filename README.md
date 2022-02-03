Ответы к заданию 3.4

Дополнения.

 в /etc/systemd/node-exporter.service Прописываем переменную OPTS она будет передоватся в параметры запуска, я так понимаю это не переменная окружения, а именно параметр запуска команды.   
![изображение](https://user-images.githubusercontent.com/16610642/152285826-f24774e6-2447-45d5-9674-c133867f72cc.png)


1.  Создадим файл node-exporter.service в /etc/systemd/

![изображение](https://user-images.githubusercontent.com/16610642/151691586-eb4844d4-c8e7-4a61-a8cf-76daab286864.png)

для автоматического запуска при перезагрузке выполним команду sudo systemctl enable node-exporter.service
для того чтобы передать параметры запуска из файла нужно прописать в node-exporter.service переменную окружения 

![изображение](https://user-images.githubusercontent.com/16610642/151692427-3ade9b21-9f36-4002-a4f0-1d38a55e76bb.png)

После перезапуска всё стартует.

![изображение](https://user-images.githubusercontent.com/16610642/151692872-483a2685-35a0-4041-9fe1-cdaf21c43171.png)

Сам node-exporter Доступен.

![изображение](https://user-images.githubusercontent.com/16610642/151692897-4bc69ef6-5089-4463-bacf-124df2700ac1.png)

2.

ЦПУ

node_cpu_seconds_total{cpu="0",mode="idle"} 4542

node_cpu_seconds_total{cpu="0",mode="iowait"} 8.75

node_cpu_seconds_total{cpu="0",mode="irq"} 0

node_cpu_seconds_total{cpu="0",mode="nice"} 0.09

node_cpu_seconds_total{cpu="0",mode="softirq"} 5.39

node_cpu_seconds_total{cpu="0",mode="steal"} 0

node_cpu_seconds_total{cpu="0",mode="system"} 32.8

node_cpu_seconds_total{cpu="0",mode="user"} 48.68


Память

node_memory_MemAvailable_bytes 6.62142976e+08

node_memory_MemFree_bytes 9.8443264e+07

Диск

node_disk_io_time_seconds_total{device="dm-0"} 40.452

node_disk_io_time_seconds_total{device="sda"} 42.308

node_disk_io_time_weighted_seconds_total{device="dm-0"} 71.72

node_disk_io_time_weighted_seconds_total{device="sda"} 50.96

node_disk_read_bytes_total{device="dm-0"} 5.84045568e+08

node_disk_read_bytes_total{device="sda"} 5.95900416e+08

Сеть

node_network_receive_errs_total{device="eth0"} 0

node_network_transmit_errs_total{device="eth0"} 0

nnode_network_transmit_bytes_total{device="eth0"} 6.109402e+06

node_network_receive_packets_total{device="eth0"} 141257

3.

![изображение](https://user-images.githubusercontent.com/16610642/151693592-386dfb8b-232c-4198-b17e-279d98d2918a.png)

4. Судя по выводу, то понимает что она на виртуальном оборудовании.

![изображение](https://user-images.githubusercontent.com/16610642/151693501-98c56216-fc02-442d-9b29-bd093654d176.png)

5. /sbin/sysctl -n fs.nr_open    
1048576

Это максимальное число открытых дескрипторов для ядра

ulimit -Sn Этот лимит не позволит достичь такого числа

6.

![изображение](https://user-images.githubusercontent.com/16610642/151694064-14819d5c-8b72-42c8-b7e3-40b987bdb423.png)

7 :(){ :|:& };: это функция, которая параллельно пускает два своих экземпляра. Каждый пускает ещё по два и т.д. 

Автоматической стабилизации помогли лимиты на количество процессов на пользователя. 

Изменить число процессов, которое можно создать в сессии можно командой unlimit -n 100 (100 процессов на пользователя.)



