# Домашнее задание к занятию "14.5 SecurityContext, NetworkPolicies"

## Задача 1: Рассмотрите пример 14.5/example-security-context.yml

```bash
$ kubectl apply -f example-security-context.yml
$ kubectl get pods -o wide
NAME                    READY   STATUS    RESTARTS   AGE   IP            NODE    NOMINATED NODE   READINESS GATES
security-context-demo   1/1     Running   0          1h   10.233.92.1   node1    <none>           <none>
```

```bash
$ kubectl exec -it security-context-demo -- bash
bash-masterci$ id
uid=1000 gid=3000 groups=3000
bash-masterci$ whoami
whoami: cannot find name for user ID 1000
```
