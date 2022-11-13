## Задание
После работы с Flannel появилась необходимость обеспечить безопасность для приложения. Для этого лучше всего подойдет Calico.
## Задание 1: установить в кластер CNI плагин Calico
Для проверки других сетевых решений стоит поставить отличный от Flannel плагин — например, Calico. Требования: 
* установка производится через ansible/kubespray;
* после применения следует настроить политику доступа к hello-world извне. Инструкции [kubernetes.io](https://kubernetes.io/docs/concepts/services-networking/network-policies/), [Calico](https://docs.projectcalico.org/about/about-network-policy)

![image](https://user-images.githubusercontent.com/16610642/201536478-4a1559e0-2c9b-4e1f-91d7-c0468f13097e.png)

![image](https://user-images.githubusercontent.com/16610642/201536292-c9ce174a-ebd3-4bd1-8668-596cfbd25809.png)

![image](https://user-images.githubusercontent.com/16610642/201536497-346aa5d3-c21f-4935-93d5-9c77364aa75f.png)

## Задание 2: изучить, что запущено по умолчанию
Самый простой способ — проверить командой calicoctl get <type>. Для проверки стоит получить список нод, ipPool и profile.
Требования: 
* установить утилиту calicoctl;
* получить 3 вышеописанных типа в консоли.
  
 ![image](https://user-images.githubusercontent.com/16610642/201533245-4446538c-47e4-496e-9a2e-808d47df7bd6.png)

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
