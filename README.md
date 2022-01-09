Ответы к заданию 3.1.

5. Ресурсы по умолчанию. 
![изображение](https://user-images.githubusercontent.com/16610642/148691141-b1b5a368-5abf-4fff-9265-3de0057d5abd.png)
6. Добавить памяти и проццесоров.

config.vm.provider "virtualbox" do |v| 

v.memory = 1024 

v.cpus = 2

end 

8. Переменная -  длина файла журнала history - HISTFILESIZE номер строки 846 

 Переменная - Количество запомненных команд - HISTSIZE номер строки 862
 
 ignoreboth - указывает не сохранять дубликаты команд и команды которые начинаются с пробела.
 
 9. {} позволяют объединить несколько операторов в один составной. номер строки 257
 
 10.
 
 touch {1..100000}.txt
 на 300000 выдаёт ошибку touch: Argument list too long
 
 Гугл на это говорит что это ограничение переменной ARG_MAX - это максимальная длина аргументов командной строки для семейства exec().
 
 11. Проверяет условие в квадратных скобках, ответ истина или ложь.

12.

mkdir /tmp/new_path_directory

cp /bin/bash /tmp/new_path_directory

PATH=/tmp/new_path_directory/bash/:$PATH

![изображение](https://user-images.githubusercontent.com/16610642/148696237-d7ee8089-08cc-4586-8d67-f4fe0de67c23.png)


13.

команда at используется для назначения одноразового задания на заданное время, а команда batch — для назначения одноразовых задач, которые должны выполняться, когда  позволяет уровень загрузки системы. По умолчанию задания выполняются, когда средняя загрузка системы ниже 1,5. Значение нагрузки можно указать при вызове демона atd . Если средняя загрузка системы выше указанной, задания будут ждать в очереди.
