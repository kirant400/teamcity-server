# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~1.61GB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2020.1-alpine-3.12.0
2020/06/11 11:30:52 [INFO] ▶ Start clair-scanner
2020/06/11 11:31:41 [INFO] ▶ Server listening on port 9279
2020/06/11 11:31:41 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 11:31:41 [INFO] ▶ Analyzing c38f2df7f0f88fcba310a548e4a034d2e0870f23237fefb3631d8e085024969a
2020/06/11 11:31:41 [INFO] ▶ Analyzing 2fb186c81a562cd690370963fc1171b567fd73b455940b1346c17efc3a7c2658
2020/06/11 11:31:42 [INFO] ▶ Analyzing c7617e87ae00b0309525ebde048284af4b2361b4435fbcc4ce4e2b63bc6e2543
2020/06/11 11:31:42 [INFO] ▶ Analyzing 68051b71d5af7628bf75b188ec6f93f1efd3d937c51e90d37ad5457b28b2b311
2020/06/11 11:31:43 [INFO] ▶ Image [secureimages/teamcity-server:2020.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/teamcity-server:2020.1-alpine-3.12.0
2020-06-11T08:32:03.258Z        INFO    Need to update DB
2020-06-11T08:32:03.258Z        INFO    Downloading DB...
2020-06-11T08:32:55.235Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2020.1-alpine-3.12.0 (alpine 3.12.0)
=================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

```

## Official Docker image (~2.01GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-server:2020.1
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-server:2020.1
2020/06/11 11:33:07 [INFO] ▶ Start clair-scanner
2020/06/11 11:34:00 [INFO] ▶ Server listening on port 9279
2020/06/11 11:34:00 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/06/11 11:34:00 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/06/11 11:34:00 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/06/11 11:34:00 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/06/11 11:34:00 [INFO] ▶ Analyzing c49028ca3032013fb4b222de627272dbeb7ecdff6828d2561eb792de93f9664d
2020/06/11 11:34:00 [INFO] ▶ Analyzing 7ee42302da535b597ec54125d24d4ca7370ddd4bb5bcd86a00ed44f12c5df79f
2020/06/11 11:34:00 [INFO] ▶ Analyzing 8c15572d795e8d4a5d7e5a2cb9cf4effcdc7bc81a957b8584a43f138b479c6b4
2020/06/11 11:34:00 [INFO] ▶ Analyzing b43b28e658db8b53f7739979e61d28c452c6b44305a1dac87e949a6c4fadb008
2020/06/11 11:34:00 [INFO] ▶ Analyzing 2428853f3146000d21f22f7efeb35e8f182f56628a6cf4596d2d2108745c5a4d
2020/06/11 11:34:00 [INFO] ▶ Analyzing 2267acc748da51b97dc0db369bf5c91685b55ce2b1b853a1b3f3455047620b15
2020/06/11 11:34:00 [INFO] ▶ Analyzing dc76a0b01ad4674a43c430c9f06ded74ec0a7dd9d9c3c44e6c069d2a5ded19f8
2020/06/11 11:34:00 [INFO] ▶ Analyzing e957825e47349e82192483a2b0f2641fd504a7950246bc0def9a03dea6e3f253
2020/06/11 11:34:00 [INFO] ▶ Analyzing 13118d40adcc90aed3d070663db8a9d1610a68807e50b532895f38636f273e77
2020/06/11 11:34:01 [INFO] ▶ Analyzing fc3232e2cec2cf746e6b0901f5e0ee784b8d46dc91fc51faac8b75edeccac4ae
2020/06/11 11:34:01 [WARN] ▶ Image [jetbrains/teamcity-server:2020.1] contains 64 total vulnerabilities
2020/06/11 11:34:01 [ERRO] ▶ Image [jetbrains/teamcity-server:2020.1] contains 64 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress jetbrains/teamcity-server:2020.1
2020-06-11T08:34:17.832Z        INFO    Need to update DB
2020-06-11T08:34:17.832Z        INFO    Downloading DB...
2020-06-11T08:35:17.423Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2020.1 (ubuntu 18.04)
===============================================
Total: 158 (UNKNOWN: 0, LOW: 112, MEDIUM: 46, HIGH: 0, CRITICAL: 0)
```
