# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2019.2.2-alpine-3.11.5
2020/03/24 18:42:12 [INFO] ▶ Start clair-scanner
2020/03/24 18:42:38 [INFO] ▶ Server listening on port 9279
2020/03/24 18:42:38 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 18:42:38 [INFO] ▶ Analyzing 5515552176a0a46930d2eb078bd5251ab6b995358b5ea9871893baace36be57f
2020/03/24 18:42:44 [INFO] ▶ Analyzing a81f1059c8beca97a66067c4e0b80a65ebdc0d1061a57344848d40938670b8bc
2020/03/24 18:42:45 [INFO] ▶ Analyzing 0e3ca8d91fb323e6300bb3981861ee00742d703c455dd73b95fed262e54f2d89
2020/03/24 18:42:45 [INFO] ▶ Analyzing 297827fc17f6d22582b7a7b90b78158f9d036ab894bbf04ba76974d22bf67cbe
2020/03/24 18:42:45 [INFO] ▶ Image [secureimages/teamcity-server:2019.2.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/teamcity-server:2019.2.2-alpine-3.11.5
2020-03-24T16:42:47.421Z        INFO    Need to update DB
2020-03-24T16:42:47.421Z        INFO    Downloading DB...
2020-03-24T16:42:52.994Z        INFO    Reopening DB...
2020-03-24T16:43:37.657Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2019.2.2-alpine-3.11.5 (alpine 3.11.5)
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
2020/03/24 18:43:43 [INFO] ▶ Start clair-scanner
2020/03/24 18:44:29 [INFO] ▶ Server listening on port 9279
2020/03/24 18:44:29 [INFO] ▶ Analyzing 15348efe8a757700295ae7836d4970a53d47b312e5c0f17f8daa1357d32f04ff
2020/03/24 18:44:29 [INFO] ▶ Analyzing d6adeec240849e4c822098579a237dc85123e2b873cbdb0343c3dcb5023f68ea
2020/03/24 18:44:29 [INFO] ▶ Analyzing af28ce57eceb1be549da671ae5b0d6a0cfa1bba1a8d797314a273852eb3e63f0
2020/03/24 18:44:29 [INFO] ▶ Analyzing 672ea66db03e9962d1bf2504ff4ed7b4f121beda54876bdd7fc53b325beba8ad
2020/03/24 18:44:29 [INFO] ▶ Analyzing 1afe5f6fd460d823c10625a9b1eb722e46c55b41ae6023f7ab172c87545f0e54
2020/03/24 18:44:29 [INFO] ▶ Analyzing 8551c16527e6fe8fd51d1b088084ce32227e174a934954b8e347ba7f911a01ca
2020/03/24 18:44:29 [INFO] ▶ Analyzing dd148c1bb6d6359177d4545e030fefe85b9b70956a14f90350053f977560dc29
2020/03/24 18:44:29 [INFO] ▶ Analyzing ab5971e75e5a0ad218b2f0255a20dd19de251555df0cbc58b94edf77a372f098
2020/03/24 18:44:29 [INFO] ▶ Analyzing 32440b739b7877501a180ba8ad319ad67c64724f4190b2bc1df1100a46af47bb
2020/03/24 18:44:29 [INFO] ▶ Analyzing 725244865ae3e930f1db07efa725d02af0b8d5f2b492595e6642972a904d7590
2020/03/24 18:44:29 [INFO] ▶ Analyzing 1d86e7483a68170bdac6e1d29b91cad442110efdd263451499ef945cc5ee3f03
2020/03/24 18:44:29 [INFO] ▶ Analyzing 8070635fd0560b7b6f686e7ba76127c5e4ef3622fd79703b54ac15bc5b55b66e
2020/03/24 18:44:29 [INFO] ▶ Analyzing 3f604118d66222b20a91cacd85f65432db3aecd863bc91490df9e7935acff9ec
2020/03/24 18:44:30 [WARN] ▶ Image [jetbrains/teamcity-server:2019.2.2] contains 67 total vulnerabilities
2020/03/24 18:44:30 [ERRO] ▶ Image [jetbrains/teamcity-server:2019.2.2] contains 67 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress jetbrains/teamcity-server:2019.2.2
2020-03-24T16:44:32.894Z        INFO    Need to update DB
2020-03-24T16:44:32.894Z        INFO    Downloading DB...
2020-03-24T16:44:36.247Z        INFO    Reopening DB...
2020-03-24T16:45:28.097Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2019.2.2 (ubuntu 18.04)
=================================================
Total: 148 (UNKNOWN: 0, LOW: 20, MEDIUM: 105, HIGH: 23, CRITICAL: 0)
```
