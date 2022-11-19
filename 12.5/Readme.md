## Задание
После работы с Flannel появилась необходимость обеспечить безопасность для приложения. Для этого лучше всего подойдет Calico.
## Задание 1: установить в кластер CNI плагин Calico
Для проверки других сетевых решений стоит поставить отличный от Flannel плагин — например, Calico. Требования: 
* установка производится через ansible/kubespray;
* после применения следует настроить политику доступа к hello-world извне. Инструкции [kubernetes.io](https://kubernetes.io/docs/concepts/services-networking/network-policies/), [Calico](https://docs.projectcalico.org/about/about-network-policy)

![image](https://user-images.githubusercontent.com/16610642/201536478-4a1559e0-2c9b-4e1f-91d7-c0468f13097e.png)

![image](https://user-images.githubusercontent.com/16610642/201536292-c9ce174a-ebd3-4bd1-8668-596cfbd25809.png)

Проверка с консоли управления ip 192.168.0.133, не входит в кластер (Node1 192.168.0.145 Node2 192.168.0.150)

![image](https://user-images.githubusercontent.com/16610642/201737202-1dd42e02-cb8e-4a79-8c4e-41b8e041a667.png)

## Дороботка.
Есть доступ между подами. 

![image](https://user-images.githubusercontent.com/16610642/202843268-23a59f1f-8ec9-46ff-8e92-901cf696301e.png)

Нет доступа между подами. 

![image](https://user-images.githubusercontent.com/16610642/202843369-cc05f3ef-4202-4030-a3c9-e4374fa6d71a.png)

## Задание 2: изучить, что запущено по умолчанию
Самый простой способ — проверить командой calicoctl get <type>. Для проверки стоит получить список нод, ipPool и profile.
Требования: 
* установить утилиту calicoctl;
* получить 3 вышеописанных типа в консоли.
  
 ![image](https://user-images.githubusercontent.com/16610642/201533245-4446538c-47e4-496e-9a2e-808d47df7bd6.png)

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
