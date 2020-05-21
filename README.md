# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~1.62GB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2020.1-alpine-3.11.6
2020/05/21 13:49:45 [INFO] ▶ Start clair-scanner
2020/05/21 13:50:32 [INFO] ▶ Server listening on port 9279
2020/05/21 13:50:32 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/21 13:50:33 [INFO] ▶ Analyzing 82df5c6e74f99f4cc12934e77f1fe1853427edd77d57f4db620f83dafe6b3af8
2020/05/21 13:50:34 [INFO] ▶ Analyzing 126a64733fbe8a0882eaa0ddc9dc96b28e6ecc643599eca4087b72586cfa5693
2020/05/21 13:50:35 [INFO] ▶ Analyzing 1cb219be4b99e54132acc94a358bebae707d4907916b48784cc90abf441830d6
2020/05/21 13:50:35 [INFO] ▶ Analyzing 6a49e53f2eff452c89e4d401a969a449856a69d5669884a826d16378540f4034
2020/05/21 13:50:35 [INFO] ▶ Image [secureimages/teamcity-server:2020.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/teamcity-server:2020.1-alpine-3.11.6
2020-05-21T10:50:38.016Z        INFO    Need to update DB
2020-05-21T10:50:38.016Z        INFO    Downloading DB...
2020-05-21T10:51:36.605Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2020.1-alpine-3.11.6 (alpine 3.11.6)
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
2020/05/21 13:51:42 [INFO] ▶ Start clair-scanner
2020/05/21 13:52:34 [INFO] ▶ Server listening on port 9279
2020/05/21 13:52:34 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/05/21 13:52:35 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/05/21 13:52:35 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/05/21 13:52:35 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/05/21 13:52:35 [INFO] ▶ Analyzing c49028ca3032013fb4b222de627272dbeb7ecdff6828d2561eb792de93f9664d
2020/05/21 13:52:35 [INFO] ▶ Analyzing 7ee42302da535b597ec54125d24d4ca7370ddd4bb5bcd86a00ed44f12c5df79f
2020/05/21 13:52:35 [INFO] ▶ Analyzing 8c15572d795e8d4a5d7e5a2cb9cf4effcdc7bc81a957b8584a43f138b479c6b4
2020/05/21 13:52:35 [INFO] ▶ Analyzing b43b28e658db8b53f7739979e61d28c452c6b44305a1dac87e949a6c4fadb008
2020/05/21 13:52:35 [INFO] ▶ Analyzing 2428853f3146000d21f22f7efeb35e8f182f56628a6cf4596d2d2108745c5a4d
2020/05/21 13:52:35 [INFO] ▶ Analyzing 2267acc748da51b97dc0db369bf5c91685b55ce2b1b853a1b3f3455047620b15
2020/05/21 13:52:35 [INFO] ▶ Analyzing dc76a0b01ad4674a43c430c9f06ded74ec0a7dd9d9c3c44e6c069d2a5ded19f8
2020/05/21 13:52:35 [INFO] ▶ Analyzing e957825e47349e82192483a2b0f2641fd504a7950246bc0def9a03dea6e3f253
2020/05/21 13:52:35 [INFO] ▶ Analyzing 13118d40adcc90aed3d070663db8a9d1610a68807e50b532895f38636f273e77
2020/05/21 13:52:36 [INFO] ▶ Analyzing fc3232e2cec2cf746e6b0901f5e0ee784b8d46dc91fc51faac8b75edeccac4ae
2020/05/21 13:52:36 [WARN] ▶ Image [jetbrains/teamcity-server:2020.1] contains 59 total vulnerabilities
2020/05/21 13:52:36 [ERRO] ▶ Image [jetbrains/teamcity-server:2020.1] contains 59 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress jetbrains/teamcity-server:2020.1
2020-05-21T10:52:38.624Z        INFO    Need to update DB
2020-05-21T10:52:38.624Z        INFO    Downloading DB...
2020-05-21T10:53:36.398Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2020.1 (ubuntu 18.04)
===============================================
Total: 141 (UNKNOWN: 0, LOW: 111, MEDIUM: 30, HIGH: 0, CRITICAL: 0)
```
