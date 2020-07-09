# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~1.61GB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2020.1.2-alpine-3.12.0
2020/07/09 20:19:56 [INFO] ▶ Start clair-scanner
2020/07/09 20:20:21 [INFO] ▶ Server listening on port 9279
2020/07/09 20:20:21 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/09 20:20:23 [INFO] ▶ Analyzing de1720e8f90104eaa79465539edd385e52c14cd0166fc14f5b539f0d848e9ec2
2020/07/09 20:20:28 [INFO] ▶ Analyzing eccd0e2c447f99681fc2176ad74aee79730ba9ce30e60ffa4069a8925d982baf
2020/07/09 20:20:28 [INFO] ▶ Analyzing 377a6a7d08f0eaab2df5dc0ece89bc6a9f5b1ae5c562f84d23b8641342b2515f
2020/07/09 20:20:28 [INFO] ▶ Analyzing 6fa62d1ba7275c117199cdc5893cfcb6fdb53abe897ff2e8182fb5a087d62b13
2020/07/09 20:20:28 [INFO] ▶ Image [secureimages/teamcity-server:2020.1.2-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/teamcity-server:2020.1.2-alpine-3.12.0
2020-07-09T17:20:31.209Z        INFO    Need to update DB
2020-07-09T17:20:31.209Z        INFO    Downloading DB...
2020-07-09T17:21:11.763Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2020.1.2-alpine-3.12.0 (alpine 3.12.0)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


```

## Official Docker image (~2GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-server:2020.1.2
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-server:2020.1.2
2020/07/09 20:21:17 [INFO] ▶ Start clair-scanner
2020/07/09 20:22:07 [INFO] ▶ Server listening on port 9279
2020/07/09 20:22:07 [INFO] ▶ Analyzing eac38f7eb67b83a6e4970a491f1d74a27510b422968961d361d02823049def3f
2020/07/09 20:22:07 [INFO] ▶ Analyzing f09d25849e9828314f5027b75bb398bb7f0ee87d6a84dc0fd49cfbf46de9f02b
2020/07/09 20:22:07 [INFO] ▶ Analyzing 3a1c37708124f6c3c1d1ff1965ed4e13e7ccba99747b9457c35a53db563a874a
2020/07/09 20:22:07 [INFO] ▶ Analyzing bfb1707b3bd6ec47e80900687b5f5c015e9efeb82f234304ed74a8631bc2e75c
2020/07/09 20:22:07 [INFO] ▶ Analyzing 8322315bc5c7bf683e76195f8d04b33c682f787a27da86d5e7e51d12d4aa9bf9
2020/07/09 20:22:07 [INFO] ▶ Analyzing 7202fefcc3f6c1c2fc806ffacc34a9265c60aa87608370b9ae42770de63bbb4e
2020/07/09 20:22:07 [INFO] ▶ Analyzing 2045d351c47b1f20457801b96bacc9da473999153149eff1636b2850fb45fc9b
2020/07/09 20:22:07 [INFO] ▶ Analyzing 39ed8104892484372bf9405f997e672525c0f9ab447900bd885df9dbf77de690
2020/07/09 20:22:08 [INFO] ▶ Analyzing 24d4518b7475b0bb27bb934b4265045f28b8f6aa54d02d5df03fb78124f7818c
2020/07/09 20:22:08 [INFO] ▶ Analyzing f0bb5b488e9e7971ba9f9ad554764ec3408d406447f225ba9fc24a2ca2af55c9
2020/07/09 20:22:08 [INFO] ▶ Analyzing f71a1b345fdfe83c9ba410e3663d8bb74a60f4828ff63132486ca4f6ea04d22b
2020/07/09 20:22:08 [INFO] ▶ Analyzing 4f7fb773846e8e8606555685125966a0dc40061f47c4b1cb585800a97c3e30aa
2020/07/09 20:22:08 [INFO] ▶ Analyzing 3f3e402cabd9d8a76b57619cc1a3c7a11e7df49e00ef2709ec49664bbd697554
2020/07/09 20:22:09 [INFO] ▶ Analyzing 14ab45fe548280b8635c08505feeac9bf7efb76f8b07d19be39cfdc5e4731c9d
2020/07/09 20:22:09 [WARN] ▶ Image [jetbrains/teamcity-server:2020.1.2] contains 60 total vulnerabilities
2020/07/09 20:22:09 [ERRO] ▶ Image [jetbrains/teamcity-server:2020.1.2] contains 60 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress jetbrains/teamcity-server:2020.1.2
2020-07-09T17:22:21.293Z        INFO    Need to update DB
2020-07-09T17:22:21.293Z        INFO    Downloading DB...
2020-07-09T17:23:15.574Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2020.1.2 (ubuntu 18.04)
=================================================
Total: 131 (UNKNOWN: 0, LOW: 93, MEDIUM: 38, HIGH: 0, CRITICAL: 0)
```
