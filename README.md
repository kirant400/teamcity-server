# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~1.52GB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2019.2.3-alpine-3.11.5
2020/04/20 23:51:46 [INFO] ▶ Start clair-scanner
2020/04/20 23:52:20 [INFO] ▶ Server listening on port 9279
2020/04/20 23:52:20 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/20 23:52:34 [INFO] ▶ Analyzing 1cbe0e91f43e5f62f7c5522bed59df1f92351909e00f99fdf35ce44543106ada
2020/04/20 23:52:34 [INFO] ▶ Analyzing db43d738e35ce0ccc374ae26b827fce0db26aa882a991581ed52c798b5c9c896
2020/04/20 23:52:35 [INFO] ▶ Analyzing 3c85d19e77a9c0f67938e9155b07fd4ae1991e2b9a5f7a9c3f73fcb4840afcde
2020/04/20 23:52:35 [INFO] ▶ Analyzing b0f0b33d2bf65c1f6c3242b3cb34d87d34d371964501427b7a990194c7c7e886
2020/04/20 23:52:36 [INFO] ▶ Image [secureimages/teamcity-server:2019.2.3-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/teamcity-server:2019.2.3-alpine-3.11.5
2020-04-20T20:52:39.047Z        INFO    Need to update DB
2020-04-20T20:52:39.047Z        INFO    Downloading DB...
2020-04-20T20:53:30.823Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2019.2.3-alpine-3.11.5 (alpine 3.11.5)
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
2020/04/20 23:53:37 [INFO] ▶ Start clair-scanner
2020/04/20 23:54:39 [INFO] ▶ Server listening on port 9279
2020/04/20 23:54:39 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/20 23:54:39 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/20 23:54:39 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/20 23:54:39 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/20 23:54:39 [INFO] ▶ Analyzing 16d335ff6e6aeb7b1c22125fdfc7695cb2dff09a9c3710e488a22fc366d329d5
2020/04/20 23:54:40 [INFO] ▶ Analyzing 26100c3b88a8479b8c7d7c30cc8e7cb3a5527e012f56b33875719a7faa171105
2020/04/20 23:54:40 [INFO] ▶ Analyzing b064b7cfdfd752158f910d59a628a1f72daaaaf261c28e80cbf36be7daca7856
2020/04/20 23:54:40 [INFO] ▶ Analyzing 277c74fb777e20a23a9a96a5c2bbd884c5500de1865e1963ed6fd6d0ba90f64b
2020/04/20 23:54:40 [INFO] ▶ Analyzing fa2909540cc7e31f09a5082ad6072156e6f8812a930ea76bec227dcce850399c
2020/04/20 23:54:40 [INFO] ▶ Analyzing 421d14f92c59b9d846c1a2fe1d8d03829f6074d38202af8d9925dfa575e4b828
2020/04/20 23:54:40 [INFO] ▶ Analyzing e0cf97e06fbccab1ba09ca62f04736919b3244f46ba05e4e9b1c2b7c00f7da58
2020/04/20 23:54:40 [INFO] ▶ Analyzing 63769c4960cc7e4907a8c16158a8d90d69c03d0a561e83ce35b5f6d3415b05b5
2020/04/20 23:54:40 [INFO] ▶ Analyzing 1f2a64e1ff03c0a7972cc7b72e1d388e7fb3d3198c58390661f4765e82dcbd8f
2020/04/20 23:54:42 [WARN] ▶ Image [jetbrains/teamcity-server:2019.2.3] contains 59 total vulnerabilities
2020/04/20 23:54:42 [ERRO] ▶ Image [jetbrains/teamcity-server:2019.2.3] contains 59 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress jetbrains/teamcity-server:2019.2.3
2020-04-20T20:54:45.564Z        INFO    Need to update DB
2020-04-20T20:54:45.564Z        INFO    Downloading DB...
2020-04-20T20:56:02.126Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2019.2.3 (ubuntu 18.04)
=================================================
Total: 143 (UNKNOWN: 0, LOW: 24, MEDIUM: 95, HIGH: 24, CRITICAL: 0)
```
