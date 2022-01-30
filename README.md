Ответы к заданию 3.4

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
node_network_receive_fifo_total{device="eth0"} 0
node_network_receive_frame_total{device="eth0"} 0
node_network_receive_packets_total{device="eth0"} 141257

3.

