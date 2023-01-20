# docker build

image名を`tiup-test`とすると、

```bash
% docker build -t tiup-test . 
```

# docker run

```bash
docker run --name tiup -p 8080:2379 -p 3000:3000 -p 4000:4000 -it --rm tiup-test
```

# dashboardへのアクセス

```
http://localhost:8080/dashboard/
```

`default setting`

|||
|:--:|:--:|
|Username|root|
|Password|(なし)|

# grafanaへのアクセス

```
http://localhost:3000/
```

`default setting`

|||
|:--:|:--:|
|Username|admin|
|Password|admin|

# mysqlへの接続

```bash
% mysql --comments --host 127.0.0.1 --port 4000 -u root -p

 (no password)
```

```mysql
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| INFORMATION_SCHEMA |
| METRICS_SCHEMA     |
| PERFORMANCE_SCHEMA |
| mysql              |
| test               |
+--------------------+
5 rows in set (0.00 sec)
```
