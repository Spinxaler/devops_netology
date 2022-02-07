Ответы к заданию 3.5

2.

Жесткая ссылка и файл, для которой она создавалась имеют одинаковые inode. Поэтому жесткая ссылка имеет те же права доступа, владельца и время последней модификации, что и целевой файл. Различаются только имена файлов. Фактически жесткая ссылка это еще одно имя для файла. Поэтому разных прав быть не может.

3.

![изображение](https://user-images.githubusercontent.com/16610642/152834009-240fa930-9b68-4394-8a1a-db17de62deb0.png)

4.

![изображение](https://user-images.githubusercontent.com/16610642/152836286-180a7ba6-a6f2-4935-a6b3-4baecf397734.png)

5. sfdisk -d /dev/sdb | sfdisk /dev/sdc

![изображение](https://user-images.githubusercontent.com/16610642/152836596-e54d28ac-daea-43c2-8150-4693de9ce8be.png)

6. mdadm --create --verbose /dev/md0 -l 1 -n 2 /dev/sd{b1,c1}

![изображение](https://user-images.githubusercontent.com/16610642/152838540-8f0925f4-2e65-4219-94e1-139f965f62df.png)

7.mdadm --create --verbose /dev/md1 -l 0 -n 2 /dev/sd{b2,c2}

![изображение](https://user-images.githubusercontent.com/16610642/152846367-3003624e-4561-40c8-80e9-b0f4e90ce01c.png)

8.

![изображение](https://user-images.githubusercontent.com/16610642/152846609-9363d583-0b20-44d7-829d-1a4c7265dd90.png)


9.

![изображение](https://user-images.githubusercontent.com/16610642/152846739-c91d3e38-e659-4bdb-830c-46e183b54f5f.png)

10.

![изображение](https://user-images.githubusercontent.com/16610642/152846906-94c6d0c9-05eb-4cf1-b91e-3d1734db79a9.png)


11.

![изображение](https://user-images.githubusercontent.com/16610642/152847063-caf3e078-e0ea-479a-85f6-ee1b9fc14f84.png)

12.

![изображение](https://user-images.githubusercontent.com/16610642/152847190-23ddeb02-154c-4a75-b2df-bcb17a74ed3a.png)


13.

![изображение](https://user-images.githubusercontent.com/16610642/152847354-966ec653-60c6-487b-aaaa-69a77704076f.png)


14.

![изображение](https://user-images.githubusercontent.com/16610642/152847449-1d2a1ec2-9e91-40ed-9295-2f0ad7a3103f.png)

15.

![изображение](https://user-images.githubusercontent.com/16610642/152847548-67893e4c-54b4-4d71-8fa1-ee8f95db863e.png)


16.

![изображение](https://user-images.githubusercontent.com/16610642/152848252-c99691eb-9aa9-4ab3-8b6f-9f4b52ed4e76.png)


17.

![изображение](https://user-images.githubusercontent.com/16610642/152848427-e416c8e5-5cfa-449a-b3e6-2f03a8cce027.png)


18.

![изображение](https://user-images.githubusercontent.com/16610642/152848560-65f4ca0b-387f-41b7-9868-08bf6663260a.png)


19.

![изображение](https://user-images.githubusercontent.com/16610642/152848652-609d8c56-6601-47db-bed7-ca8e62b28275.png)






