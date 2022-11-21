# Домашнее задание к занятию "13.3 работа с kubectl"
## Задание 1: проверить работоспособность каждого компонента
Для проверки работы можно использовать 2 способа: port-forward и exec. Используя оба способа, проверьте каждый компонент:
* сделайте запросы к бекенду;

При запросе к бекенду, выходит ошибка самого бека, по сути доступ есть, нужно ли разобратся что не нравиться бекунду?

![image](https://user-images.githubusercontent.com/16610642/202981131-ffeccab0-b6cd-4e05-8aa7-cb823460d83d.png)
![image](https://user-images.githubusercontent.com/16610642/202981175-8b212332-0ca8-4fae-be08-71f89afe9725.png)
![image](https://user-images.githubusercontent.com/16610642/202984259-9425dc6c-4970-4f51-9dbf-e18dd63525f6.png)

* сделайте запросы к фронту;

![image](https://user-images.githubusercontent.com/16610642/202980175-6977371e-9e6c-48fb-af7c-c980227c7106.png)
![image](https://user-images.githubusercontent.com/16610642/202980230-982c2192-e15e-416a-b22e-8bdb9acbbd12.png)
![image](https://user-images.githubusercontent.com/16610642/202983772-c628dba6-df3b-4dcb-ab00-a79fd8d316d3.png)

* подключитесь к базе данных.

![image](https://user-images.githubusercontent.com/16610642/202982446-0e48177b-bfe9-4e36-9e26-a69f837a4138.png)
![image](https://user-images.githubusercontent.com/16610642/202983514-47b6fe30-88c9-46fa-8303-a19b137cc254.png)
![image](https://user-images.githubusercontent.com/16610642/202982838-73e5c096-a9ab-41fb-8528-88e34f9f252c.png)



## Задание 2: ручное масштабирование

При работе с приложением иногда может потребоваться вручную добавить пару копий. Используя команду kubectl scale, попробуйте увеличить количество бекенда и фронта до 3. Проверьте, на каких нодах оказались копии после каждого действия (kubectl describe, kubectl get pods -o wide). После уменьшите количество копий до 1.

![image](https://user-images.githubusercontent.com/16610642/202985056-5061fc10-d23a-4711-a73f-24081cbfc35e.png)

---

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---
