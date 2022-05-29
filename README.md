> Задача 1

- текст Dockerfile манифеста
```dockerfile
FROM centos:7

EXPOSE 9200 9300

USER 0

RUN export ES_HOME="/var/lib/elasticsearch" && \
    yum -y install wget && \
    wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.17.0-linux-x86_64.tar.gz && \
    wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.17.0-linux-x86_64.tar.gz.sha512 && \
    sha512sum -c elasticsearch-7.17.0-linux-x86_64.tar.gz.sha512 && \
    tar -xzf elasticsearch-7.17.0-linux-x86_64.tar.gz && \
    rm -f elasticsearch-7.17.0-linux-x86_64.tar.gz* && \
    mv elasticsearch-7.17.0 ${ES_HOME} && \
    useradd -m -u 1000 elasticsearch && \
    chown elasticsearch:elasticsearch -R ${ES_HOME} && \
    yum -y remove wget && \
    yum clean all

COPY --chown=elasticsearch:elasticsearch config/* /var/lib/elasticsearch/config/
    
USER 1000

ENV ES_HOME="/var/lib/elasticsearch" \
    ES_PATH_CONF="/var/lib/elasticsearch/config"
WORKDIR ${ES_HOME}

CMD ["sh", "-c", "${ES_HOME}/bin/elasticsearch"]
```
```bash
$ docker build .
$ docker login -u "spinxaler" -p "****" docker.io
$ docker tag 2f99f8d83166 spinxaler/devops-elasticsearch:7.17
$ docker push spinxaler/devops-elasticsearch:7.17
```
- ссылку на образ в репозитории dockerhub
https://hub.docker.com/repository/docker/podkovka/devops-elasticsearch
- ответ `elasticsearch` на запрос пути `/` в json виде
```bash
$ docker run --rm -d --name elastic -p 9200:9200 -p 9300:9300 spinxaler/devops-elasticsearch:7.17
$ docker ps
CONTAINER ID   IMAGE                                COMMAND                  CREATED          STATUS          PORTS                                            NAMES
5262d69644f7   podkovka/devops-elasticsearch:7.17   "sh -c ${ES_HOME}/bi…"   7 seconds ago   Up 6 seconds   0.0.0.0:9200->9200/tcp, 0.0.0.0:9300->9300/tcp   elastic
$ curl -X GET 'localhost:9200/'
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
    "build_hash" : "bee86328705acaa9a6daede7140defd4d9ec56bd",
    "build_date" : "2022-01-28T08:36:04.875279988Z",
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
