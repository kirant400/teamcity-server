# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~1.52GB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2019.2.3-alpine-3.11.6
2020/04/25 17:51:50 [INFO] ▶ Start clair-scanner
2020/04/25 17:52:13 [INFO] ▶ Server listening on port 9279
2020/04/25 17:52:13 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 17:52:14 [INFO] ▶ Analyzing 7861f81825377c1197727016e51545842aecac187dbb2abf0071337e163694dc
2020/04/25 17:52:26 [INFO] ▶ Analyzing e1bcd31d7f04230ba4fe757c0c09c67c23ee73cd6f79d9a2afc564ff01dc0217
2020/04/25 17:52:27 [INFO] ▶ Analyzing 3bb1f9e341b8a8469d841df7dadb665c0ceafcef2683a00fc07fd38c7d30154c
2020/04/25 17:52:27 [INFO] ▶ Analyzing 43253ef0b5c9b3c16573861f768533e2a99e9527905b86892cb1cd0968667486
2020/04/25 17:52:27 [INFO] ▶ Image [secureimages/teamcity-server:2019.2.3-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/teamcity-server:2019.2.3-alpine-3.11.6
2020-04-25T14:52:33.349Z        INFO    Need to update DB
2020-04-25T14:52:33.349Z        INFO    Downloading DB...
2020-04-25T14:53:10.189Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2019.2.3-alpine-3.11.6 (alpine 3.11.6)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~1.8GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-server:2019.2.3
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-server:2019.2.3
2020/04/25 17:53:17 [INFO] ▶ Start clair-scanner
2020/04/25 17:54:01 [INFO] ▶ Server listening on port 9279
2020/04/25 17:54:01 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/25 17:54:01 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/25 17:54:01 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/25 17:54:01 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/25 17:54:01 [INFO] ▶ Analyzing 154309f8ce1dda37d1385e6985519c626791895279370606e69ee9c13e09c365
2020/04/25 17:54:01 [INFO] ▶ Analyzing a8ea466a24ddcf94450dcf1d7436db143ef8da2194ba3a9dff1be7d475a81116
2020/04/25 17:54:01 [INFO] ▶ Analyzing 000e1d94b1a80ef9e26d55072c7a35a594440639b37ed6a9eafef4579df48bd7
2020/04/25 17:54:01 [INFO] ▶ Analyzing 62b31ec86140d3ca5e5beabe2b8ff79759d210fc607b434b9cf69af9a0a5c2d7
2020/04/25 17:54:02 [INFO] ▶ Analyzing f7910fa4431b1250e7abc1ad1e8d90ccf274d1fc2944ec4b6ba75049f98acd41
2020/04/25 17:54:02 [INFO] ▶ Analyzing 5b7f6d87d83edd49f0d6f569eee602583fd0de3578ea971a492967449fd89fe9
2020/04/25 17:54:02 [INFO] ▶ Analyzing ef6f9ddd610485b07b3581b7ef8e19810012149d6d2566f10b0ea6f21b385458
2020/04/25 17:54:02 [INFO] ▶ Analyzing e5c7fe7defa4dcf247ad3ef191575d07f717c0a0a93b0d8d5533e7b117a76175
2020/04/25 17:54:02 [INFO] ▶ Analyzing a3f732ba09fd1423db76fa7456fe9dfe539f1380c8b9269ee791eb56b774282a
2020/04/25 17:54:02 [WARN] ▶ Image [jetbrains/teamcity-server:2019.2.3] contains 61 total vulnerabilities
2020/04/25 17:54:02 [ERRO] ▶ Image [jetbrains/teamcity-server:2019.2.3] contains 61 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress jetbrains/teamcity-server:2019.2.3
2020-04-25T14:54:05.332Z        INFO    Need to update DB
2020-04-25T14:54:05.332Z        INFO    Downloading DB...
2020-04-25T14:54:54.442Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2019.2.3 (ubuntu 18.04)
=================================================
Total: 149 (UNKNOWN: 0, LOW: 24, MEDIUM: 95, HIGH: 30, CRITICAL: 0)
```
