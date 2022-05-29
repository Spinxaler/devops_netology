> Задача 1

- текст Dockerfile манифеста
```dockerfile
FROM centos:7
COPY ./src /var/src/
RUN cd /var/src/ && \
tar -xzf /var/src/elasticsearch-8.1.1-linux-x86_64.tar.gz && \
rm /var/src/elasticsearch-8.1.1-linux-x86_64.tar.gz && \
cp elasticsearch.yml /var/src/elasticsearch-8.1.1/config/ && \
adduser elastic && \
gpasswd -a elastic wheel && \
chown -R elastic:elastic /var/src/elasticsearch-8.1.1 && \
chmod 755 /var/src/elasticsearch-8.1.1 && \
chmod 777 /var/lib
USER elastic:wheel
EXPOSE 9200 9300
CMD ["var/src/elasticsearch-8.1.1/bin/elasticsearch"]
```
```bash
$ docker build .
$ docker login -u "spinxaler" -p "****" docker.io
$ docker tag 2f99f8d83166 spinxaler/devops-elasticsearch:8.1.1
$ docker push spinxaler/devops-elasticsearch:8.1.1
```
- ссылку на образ в репозитории dockerhub
https://hub.docker.com/repository/docker/spinxaler/devops-elasticsearch
- ответ `elasticsearch` на запрос пути `/` в json виде
```bash
$ docker run --rm -d --name es -p 9200:9200 -p 9300:9300 spinxaler/devops-elasticsearch:8.1.1
$ docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                                                                                  NAMES
5d0d0f7f91d4   spinxaler/devops-elasticsearch:8.1.1   "sh -c ${ES_HOME}/bi…"   43 seconds ago   Up 42 seconds   0.0.0.0:9200->9200/tcp, :::9200->9200/tcp, 0.0.0.0:9300->9300/tcp, :::9300->9300/tcp   es

$ curl http://localhost:9200/
```
```json
{
  "name" : "netology_test",
  "cluster_name" : "elasticsearch",
  "cluster_uuid" : "1jxOaMjeQASfgV6f8TOKSg",
  "version" : {
    "number" : "7.17.0",
    "build_flavor" : "default",
    "build_type" : "tar",
    "build_hash" : "31df9689e80bad577ac20176aa7f2371ea5eb4c1",
    "build_date" : "2022-05-29T18:51:01.267279988Z",
    "build_snapshot" : false,
    "lucene_version" : "8.11.1",
    "minimum_wire_compatibility_version" : "6.8.0",
    "minimum_index_compatibility_version" : "6.0.0-beta1"
  },
  "tagline" : "You Know, for Search"
}
```

>Задача 2

Ознакомьтесь с [документацией](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html) 
и добавьте в `elasticsearch` 3 индекса, в соответствии со таблицей:

| Имя | Количество реплик | Количество шард |
|-----|-------------------|-----------------|
| ind-1| 0 | 1 |
| ind-2 | 1 | 2 |
| ind-3 | 2 | 4 |

```bash

```
Получите список индексов и их статусов, используя API и **приведите в ответе** на задание.

```bash

```

Получите состояние кластера `elasticsearch`, используя API.

```bash

```
Как вы думаете, почему часть индексов и кластер находится в состоянии yellow?

```

```
Удалите все индексы.

```bash

```

>Задача 3

Создайте директорию `{путь до корневой директории с elasticsearch в образе}/snapshots`.
```bash

```

Используя API [зарегистрируйте](https://www.elastic.co/guide/en/elasticsearch/reference/current/snapshots-register-repository.html#snapshots-register-repository) 
данную директорию как `snapshot repository` c именем `netology_backup`.

```bash

```



Создайте индекс `test` с 0 реплик и 1 шардом и **приведите в ответе** список индексов.

```bash
```

[Создайте `snapshot`](https://www.elastic.co/guide/en/elasticsearch/reference/current/snapshots-take-snapshot.html) 
состояния кластера `elasticsearch`.

```bash

```

**Приведите в ответе** список файлов в директории со `snapshot`ами.
```bash

```

Удалите индекс `test` и создайте индекс `test-2`. **Приведите в ответе** список индексов.

```bash

```

[Восстановите](https://www.elastic.co/guide/en/elasticsearch/reference/current/snapshots-restore-snapshot.html) состояние
кластера `elasticsearch` из `snapshot`, созданного ранее. 

**Приведите в ответе** запрос к API восстановления и итоговый список индексов.
```bash

```
