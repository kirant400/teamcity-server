# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2019.2.2-alpine-3.11.3
2020/02/25 11:23:49 [INFO] ▶ Start clair-scanner
2020/02/25 11:24:24 [INFO] ▶ Server listening on port 9279
2020/02/25 11:24:24 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/25 11:24:24 [INFO] ▶ Analyzing 296d5e4f10ceb53e506a6555d0563aa3584d26766568f23152c41691b1b0e287
2020/02/25 11:24:25 [INFO] ▶ Analyzing 11c88ca331506dc4b83d7687d592f2b387b07fc010deb13a7c5568cb28968ba4
2020/02/25 11:24:25 [INFO] ▶ Analyzing 99a7b981a8b85c54bcb49ab3b5f18d9ad96bbba47c615798a819dddaa1f1370a
2020/02/25 11:24:25 [INFO] ▶ Analyzing 04b981d05adc7b940a50534f00e66226083d22ade10228f3277e6f62e11abe56
2020/02/25 11:24:25 [INFO] ▶ Image [secureimages/teamcity-server:2019.2.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/teamcity-server:2019.2.2-alpine-3.11.3
2020-02-25T09:24:30.728Z        INFO    Need to update DB
2020-02-25T09:24:30.728Z        INFO    Downloading DB...
2020-02-25T09:24:34.746Z        INFO    Reopening DB...
2020-02-25T09:25:15.065Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2019.2.2-alpine-3.11.3 (alpine 3.11.3)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-server:2019.2.2
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-server:2019.2.2
2020/02/25 11:25:20 [INFO] ▶ Start clair-scanner
2020/02/25 11:26:06 [INFO] ▶ Server listening on port 9279
2020/02/25 11:26:06 [INFO] ▶ Analyzing 15348efe8a757700295ae7836d4970a53d47b312e5c0f17f8daa1357d32f04ff
2020/02/25 11:26:06 [INFO] ▶ Analyzing d6adeec240849e4c822098579a237dc85123e2b873cbdb0343c3dcb5023f68ea
2020/02/25 11:26:06 [INFO] ▶ Analyzing af28ce57eceb1be549da671ae5b0d6a0cfa1bba1a8d797314a273852eb3e63f0
2020/02/25 11:26:06 [INFO] ▶ Analyzing 672ea66db03e9962d1bf2504ff4ed7b4f121beda54876bdd7fc53b325beba8ad
2020/02/25 11:26:06 [INFO] ▶ Analyzing 1afe5f6fd460d823c10625a9b1eb722e46c55b41ae6023f7ab172c87545f0e54
2020/02/25 11:26:06 [INFO] ▶ Analyzing 8551c16527e6fe8fd51d1b088084ce32227e174a934954b8e347ba7f911a01ca
2020/02/25 11:26:07 [INFO] ▶ Analyzing dd148c1bb6d6359177d4545e030fefe85b9b70956a14f90350053f977560dc29
2020/02/25 11:26:07 [INFO] ▶ Analyzing ab5971e75e5a0ad218b2f0255a20dd19de251555df0cbc58b94edf77a372f098
2020/02/25 11:26:07 [INFO] ▶ Analyzing 32440b739b7877501a180ba8ad319ad67c64724f4190b2bc1df1100a46af47bb
2020/02/25 11:26:07 [INFO] ▶ Analyzing 725244865ae3e930f1db07efa725d02af0b8d5f2b492595e6642972a904d7590
2020/02/25 11:26:07 [INFO] ▶ Analyzing 1d86e7483a68170bdac6e1d29b91cad442110efdd263451499ef945cc5ee3f03
2020/02/25 11:26:07 [INFO] ▶ Analyzing 8070635fd0560b7b6f686e7ba76127c5e4ef3622fd79703b54ac15bc5b55b66e
2020/02/25 11:26:07 [INFO] ▶ Analyzing 3f604118d66222b20a91cacd85f65432db3aecd863bc91490df9e7935acff9ec
2020/02/25 11:26:07 [WARN] ▶ Image [jetbrains/teamcity-server:2019.2.2] contains 53 total vulnerabilities
2020/02/25 11:26:07 [ERRO] ▶ Image [jetbrains/teamcity-server:2019.2.2] contains 53 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress jetbrains/teamcity-server:2019.2.2
2020-02-25T09:26:10.528Z        INFO    Need to update DB
2020-02-25T09:26:10.528Z        INFO    Downloading DB...
2020-02-25T09:26:14.404Z        INFO    Reopening DB...
2020-02-25T09:27:01.830Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2019.2.2 (ubuntu 18.04)
=================================================
Total: 134 (UNKNOWN: 0, LOW: 20, MEDIUM: 91, HIGH: 23, CRITICAL: 0)
```
