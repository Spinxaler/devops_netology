# Домашнее задание к занятию "5.1.


## Обязательная задача 1

Виртуализация на уровне ОС - в основном это контейнеры (Docker). Сам контейнер может обращатся к ресурсам  ОС через гипервизор, но программы, работающие внутри контейнера, могут видеть только содержимое контейнера и устройства, назначенные контейнеру. И Контейнер содержит внутри все зависимости для работы внутри контейнера.

Паравиртуализация - Этот виртуальные машины запущеные на самой ОС, доступ к оборудованию осуществляется через гипервизора. Но поскольку гостевая операционная система, работающая на гипервизоре, подготовливается к работе в виртуальной среде, то она понимает что запущена в виртуальной среде. Например Microsoft Hyper-V.

Полная виртуализация - Этот метод похож на паравиртуализацию: гостевая система так же использует гипервизор для обработки команд между операционной системой и аппаратным обеспечением, которое полностью виртуализуется на хосте, в результате чего гостевая ОС "не догадывается" о том, что она находится в виртуальной среде. Например  KVM.


## Обязательная задача 2



## Дополнительное задание (со звездочкой*) - необязательно к выполнению

Так как команды в нашей компании никак не могут прийти к единому мнению о том, какой формат разметки данных использовать: JSON или YAML, нам нужно реализовать парсер из одного формата в другой. Он должен уметь:
   * Принимать на вход имя файла
   * Проверять формат исходного файла. Если файл не json или yml - скрипт должен остановить свою работу
   * Распознавать какой формат данных в файле. Считается, что файлы *.json и *.yml могут быть перепутаны
   * Перекодировать данные из исходного формата во второй доступный (из JSON в YAML, из YAML в JSON)
   * При обнаружении ошибки в исходном файле - указать в стандартном выводе строку с ошибкой синтаксиса и её номер
   * Полученный файл должен иметь имя исходного файла, разница в наименовании обеспечивается разницей расширения файлов

### Ваш скрипт:
```python
???
```

### Пример работы скрипта:
???
