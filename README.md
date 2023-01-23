[![Docker Automated build](https://badges.rhems-japan.com/api-get-dockerhub-badge.svg?user_id=zCPep23H7YFzCY90rQez&owner=rhemsjapan&namespace=rhemsjapan&name=tidb-local&timedelta=9)](https://hub.docker.com/r/rhemsjapan/tidb-local)

# QUICK START


https://docs.pingcap.com/tidb/v5.4/scale-tidb-using-tiup


```bash
docker run --name tiup -p 2382:2382 -p 3000:3000 -p 4000:4000 -it --rm  rhemsjapan/tidb-local:latest
```

# docker build

image名を`tiup-test`とすると、

```bash
% docker build -t tiup-test . 
```

# docker run

```bash
docker run --name tiup -p 2382:2382 -p 3000:3000 -p 4000:4000 -it --rm tiup-test
```

# dashboardへのアクセス

```
http://localhost:2382/dashboard/
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
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 413
Server version: 5.7.25-TiDB-v6.5.0 TiDB Server (Apache License 2.0) Community Edition, MySQL 5.7 compatible

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show  databases;
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

 (no password)
```
