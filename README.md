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
































 1Help            2Save            3Mark            4Replac          5Copy             6Move            7Search          8Delete          9PullDn          10Quit
