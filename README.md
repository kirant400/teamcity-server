# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2019.2.1-alpine-3.11.3
2020/01/25 11:51:25 [INFO] ▶ Start clair-scanner
2020/01/25 11:51:46 [INFO] ▶ Server listening on port 9279
2020/01/25 11:51:46 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/25 11:51:48 [INFO] ▶ Analyzing 23bf17243e171e3beaa634a0ebc74857285c3c3e438ba54164c696b947e06cbf
2020/01/25 11:51:51 [INFO] ▶ Analyzing f205909a921a3a1d92bbd81e22b58bb9b3cd16572539ea2fdd9255d3d22dc77c
2020/01/25 11:51:51 [INFO] ▶ Analyzing 6b134e540ea190ed0a2e67e12afa84a00d58676dffc37b3c45b1a7d12750d515
2020/01/25 11:51:52 [INFO] ▶ Analyzing 432e67f752124b4993380d7ae95347766ead5b32f0b3c5c8ebff2f7f98285641
2020/01/25 11:51:52 [INFO] ▶ Image [secureimages/teamcity-server:2019.2.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/teamcity-server:2019.2.1-alpine-3.11.3
2020-01-25T09:53:21.591Z        INFO    Need to update DB
2020-01-25T09:53:21.591Z        INFO    Downloading DB...
2020-01-25T09:53:25.641Z        INFO    Reopening DB...
2020-01-25T09:54:07.538Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2019.2.1-alpine-3.11.3 (alpine 3.11.3)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-server:2019.2.1
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-server:2019.2.1
2020/01/25 11:54:33 [INFO] ▶ Start clair-scanner
2020/01/25 11:56:02 [INFO] ▶ Server listening on port 9279
2020/01/25 11:56:02 [INFO] ▶ Analyzing 0a83f61838ece143b24a4555f0b9ee1cd45e1a9f4af16a5b2f714868b4ae6546
2020/01/25 11:56:07 [INFO] ▶ Analyzing 076ba28069d5d2c1520533138630ca87b29cb86ea460ab08a39df8b77d5425a0
2020/01/25 11:56:07 [INFO] ▶ Analyzing 70e53499a05a2ed55f7e0e8750870f3c5b2cd1fd5c5583086a1ba4dc9f3e5915
2020/01/25 11:56:07 [INFO] ▶ Analyzing a1a84f0f6a99a7d15e5b85e6d3df412ce94227aaee11a373667e9edad23f5646
2020/01/25 11:56:07 [INFO] ▶ Analyzing 70f52822ea4313fa7d860789bed5969bf64217e60d0e34e02362a89ba6024f17
2020/01/25 11:56:07 [INFO] ▶ Analyzing b5bb1830b18ae9bf1b2b69a1fdd15bba0b81decc13a804b0983b702892b06fc7
2020/01/25 11:56:07 [INFO] ▶ Analyzing a1fb2bbcfe76856c6cc1758c26cc6742d825894f13eeb41ef1726304273cf9b0
2020/01/25 11:56:07 [INFO] ▶ Analyzing 28cac85f62ed828a8b18625718132ee806492596ea9c4d2e8fad6fe15c740859
2020/01/25 11:56:07 [INFO] ▶ Analyzing 74d7b11a373ea282f9d1210636918d15f400fb0ee834ce828b29530391009326
2020/01/25 11:56:07 [INFO] ▶ Analyzing fbe1fca6ff0952243ad6df09998d7b0f1042efdefe2e0eeca78e5c6cc67afde0
2020/01/25 11:56:07 [INFO] ▶ Analyzing 9977aa4caeea832e428e95b767f58cc2bd92bf6ec608ee97b6935948b9688091
2020/01/25 11:56:07 [INFO] ▶ Analyzing 23f2907e832e1e8aea9f0ec009992f63c77c3b6f77add88250acb5a1ad70ca75
2020/01/25 11:56:07 [INFO] ▶ Analyzing c539bde7c463cf389f2ce02e2567a9278cb748d5c68a5f75de9565858c09bf89
2020/01/25 11:56:08 [WARN] ▶ Image [jetbrains/teamcity-server:2019.2.1] contains 56 total vulnerabilities
2020/01/25 11:56:08 [ERRO] ▶ Image [jetbrains/teamcity-server:2019.2.1] contains 56 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress jetbrains/teamcity-server:2019.2.1
2020-01-25T09:56:22.116Z        INFO    Need to update DB
2020-01-25T09:56:22.116Z        INFO    Downloading DB...
2020-01-25T09:56:26.210Z        INFO    Reopening DB...
2020-01-25T09:57:39.311Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2019.2.1 (ubuntu 18.04)
=================================================
Total: 139 (UNKNOWN: 0, LOW: 20, MEDIUM: 96, HIGH: 23, CRITICAL: 0)
```
