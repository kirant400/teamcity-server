# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~1.62GB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2020.1.1-alpine-3.12.0
2020/06/23 16:00:18 [INFO] ▶ Start clair-scanner
2020/06/23 16:01:02 [INFO] ▶ Server listening on port 9279
2020/06/23 16:01:02 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/23 16:01:02 [INFO] ▶ Analyzing d07ccba4bee4b373cd73cf7846ad3dd2b415f6c2feb8c8c0a786cdf438303f4d
2020/06/23 16:01:02 [INFO] ▶ Analyzing a88fd360892da600a74effa4fa28a542fdb7330349ddb5bf0f883f9340e2a3c2
2020/06/23 16:01:03 [INFO] ▶ Analyzing d2f586d77eeaecb3a0c9ff2494c5f0317218b2568a965ff68bc6fc791498e5d7
2020/06/23 16:01:03 [INFO] ▶ Analyzing dcd50fbdbeb41c6f149926ce618176f57e632c9941a9eea47b2cd939739b3397
2020/06/23 16:01:03 [INFO] ▶ Image [secureimages/teamcity-server:2020.1.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/teamcity-server:2020.1.1-alpine-3.12.0
2020-06-23T13:04:40.666Z        INFO    Need to update DB
2020-06-23T13:04:40.667Z        INFO    Downloading DB...
2020-06-23T13:05:29.279Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2020.1.1-alpine-3.12.0 (alpine 3.12.0)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


```

## Official Docker image (~2.01GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-server:2020.1.1
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-server:2020.1.1
2020/06/23 16:05:44 [INFO] ▶ Start clair-scanner
2020/06/23 16:06:31 [INFO] ▶ Server listening on port 9279
2020/06/23 16:06:31 [INFO] ▶ Analyzing 4046a0366bf3d63d6ebb165835dd7cd4a72c49d65942a66efb1b4a44bf5803b2
2020/06/23 16:06:31 [INFO] ▶ Analyzing cb6f8e1a8e2c47f2e7eda433f9afb3ce6debe0131ba556f6ab516f1092b589be
2020/06/23 16:06:31 [INFO] ▶ Analyzing f81f5853c77138f4f3bef3fe7a639070314c8b38f66f03f57055b5d9055c5c7a
2020/06/23 16:06:31 [INFO] ▶ Analyzing 5171a8ddd9ca89e576ef04f932cfff352168ff2e06f856cc05d09b998989c8c5
2020/06/23 16:06:31 [INFO] ▶ Analyzing d7020ea86a8e49d3df5c284ed7d190a6ad7f31c4966516c1460523a2970a6347
2020/06/23 16:06:31 [INFO] ▶ Analyzing 941f2016905f6367193df6d6106e3f12e4b3e10d081fc936299a8eaa9177dffe
2020/06/23 16:06:31 [INFO] ▶ Analyzing aa22b2f787d7085fcc0095baabaea496b14bc0ce7b905dc7d0deb255b8e44d3c
2020/06/23 16:06:31 [INFO] ▶ Analyzing 409016bb341dae9bcd5da6b9dc745a34be8726024ffe0043d72f943c673fa92c
2020/06/23 16:06:32 [INFO] ▶ Analyzing 27d729a7020b9786cb849bc8d32fe61e974eee063b5898df864fe5675a441e7a
2020/06/23 16:06:32 [INFO] ▶ Analyzing 70c9812ff7bae115c685b656997b04c728574e9323328cb1798cf9da05b36332
2020/06/23 16:06:32 [INFO] ▶ Analyzing c7f5143edb1399f62b9db69c18391ba713d6b36a1f1669095481e4660d2afd90
2020/06/23 16:06:32 [INFO] ▶ Analyzing a3060e1b02bb9953919547002104550eca7f36df1780a7da5a3b1d3fe0a38712
2020/06/23 16:06:32 [INFO] ▶ Analyzing 0b67b494b47b57a6d52fce8d8efca1621f645aacaaba7fb72bd163af66c4ea99
2020/06/23 16:06:33 [INFO] ▶ Analyzing 101568035c6493e74b0baa6e89a0a6f30d5cd14591483d228b73f0f84d412b94
2020/06/23 16:06:33 [WARN] ▶ Image [jetbrains/teamcity-server:2020.1.1] contains 57 total vulnerabilities
2020/06/23 16:06:33 [ERRO] ▶ Image [jetbrains/teamcity-server:2020.1.1] contains 57 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress jetbrains/teamcity-server:2020.1.1
2020-06-23T13:06:36.015Z        INFO    Need to update DB
2020-06-23T13:06:36.015Z        INFO    Downloading DB...
2020-06-23T13:07:31.989Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2020.1.1 (ubuntu 18.04)
=================================================
Total: 148 (UNKNOWN: 0, LOW: 101, MEDIUM: 47, HIGH: 0, CRITICAL: 0)
```
