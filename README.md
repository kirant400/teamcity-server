# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~1.52GB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2019.2.4-alpine-3.11.6
2020/05/08 18:18:25 [INFO] ▶ Start clair-scanner
2020/05/08 18:19:02 [INFO] ▶ Server listening on port 9279
2020/05/08 18:19:02 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/08 18:19:02 [INFO] ▶ Analyzing b9213a745e20c590123051f8bf38947c0c51a9f57db790e65d9e86df8749dd73
2020/05/08 18:19:03 [INFO] ▶ Analyzing b02ed9daabb05a1d4d9573eca92fe56f3ebc16e1161f47124c65056e1d0d6926
2020/05/08 18:19:04 [INFO] ▶ Analyzing 736eb73a764d9106b7c6e10d35a824bdd9c532d32af20b7acaa7611d3bb54561
2020/05/08 18:19:04 [INFO] ▶ Analyzing 7bdea7121cc94e5639fead4a7fbcb5951f4914cb5e87d83b2bc427e60c4e550a
2020/05/08 18:19:04 [INFO] ▶ Image [secureimages/teamcity-server:2019.2.4-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/teamcity-server:2019.2.4-alpine-3.11.6
2020-05-08T15:19:10.588Z        INFO    Need to update DB
2020-05-08T15:19:10.588Z        INFO    Downloading DB...
2020-05-08T15:19:55.614Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2019.2.4-alpine-3.11.6 (alpine 3.11.6)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~1.8GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-server:2019.2.4
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-server:2019.2.4
2020/05/08 18:20:02 [INFO] ▶ Start clair-scanner
2020/05/08 18:20:35 [INFO] ▶ Server listening on port 9279
2020/05/08 18:20:35 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/05/08 18:20:40 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/05/08 18:20:40 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/05/08 18:20:40 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/05/08 18:20:40 [INFO] ▶ Analyzing ed65ae13ac8085a69111a0abce3fbc7c0d888204c6c6d87b18c0d2b5a98b7c6a
2020/05/08 18:20:41 [INFO] ▶ Analyzing 13e876cf9db2305c5db6a82ccd8352208a649f699ca91f015b33e127fd6dd0b0
2020/05/08 18:20:42 [INFO] ▶ Analyzing 02094e73485fa60371b994cd670de11947c5dc4b5b21f7806c382c461c9a7eb1
2020/05/08 18:20:42 [INFO] ▶ Analyzing c79b2f412dd03c3afaecb40a2a41934ae93739d74468b6ba5593e4ea556ea41c
2020/05/08 18:20:42 [INFO] ▶ Analyzing c4dc11ee4507d2eb86a51e7a09f3298a3cbbe40b12d816c7a9709e3b6ea3c3ed
2020/05/08 18:20:42 [INFO] ▶ Analyzing 5539d8e918357550da792e5687ae4fd429640f9a45d204ec359fb1f3a373a017
2020/05/08 18:20:42 [INFO] ▶ Analyzing 8931bbe92782ad04f047f6ed3fab601689cd18f28454247886408c7ff6509406
2020/05/08 18:20:42 [INFO] ▶ Analyzing 646a31fd960566a8974a46df9654ad7fdc3a8dcf6986220f51adb40779aa6153
2020/05/08 18:20:42 [INFO] ▶ Analyzing f00d250d57a02c3a78fa4713d32a7d51477d5048a6ae27137ad3be3321fa2a68
2020/05/08 18:20:42 [WARN] ▶ Image [jetbrains/teamcity-server:2019.2.4] contains 58 total vulnerabilities
2020/05/08 18:20:42 [ERRO] ▶ Image [jetbrains/teamcity-server:2019.2.4] contains 58 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress jetbrains/teamcity-server:2019.2.4
2020-05-08T15:20:52.891Z        INFO    Need to update DB
2020-05-08T15:20:52.891Z        INFO    Downloading DB...
2020-05-08T15:21:37.299Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2019.2.4 (ubuntu 18.04)
=================================================
Total: 139 (UNKNOWN: 0, LOW: 24, MEDIUM: 91, HIGH: 24, CRITICAL: 0)
```
