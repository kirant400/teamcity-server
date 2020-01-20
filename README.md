# JetBrains TeamCity Server

JetBrains TeamCity Server, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/teamcity-server:2019.2-alpine-3.11.3
2020/01/20 20:05:32 [INFO] ▶ Start clair-scanner
2020/01/20 20:06:06 [INFO] ▶ Server listening on port 9279
2020/01/20 20:06:06 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 20:06:10 [INFO] ▶ Analyzing 7774f7c160b6870dfbdfb058c26745016c62719c17692cbdfe495ca7562cc7ab
2020/01/20 20:06:12 [INFO] ▶ Analyzing cd41fdbf64bca72bd5050c6dc16d0b867fa9015f07149875593428be96dafd1e
2020/01/20 20:06:13 [INFO] ▶ Analyzing 089286920b0a3f5b0091f3aae18893a8aea8f2b1acfe5fb7b1c4e38cdc7742b4
2020/01/20 20:06:13 [INFO] ▶ Analyzing 147cb8feadab37c73de4e5caff56f49a3e7b3d578543cd319b995db14bd0d06b
2020/01/20 20:06:13 [INFO] ▶ Image [secureimages/teamcity-server:2019.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/teamcity-server:2019.2-alpine-3.11.3
2020-01-20T18:06:26.893Z        INFO    Need to update DB
2020-01-20T18:06:26.894Z        INFO    Downloading DB...
2020-01-20T18:06:31.180Z        INFO    Reopening DB...
2020-01-20T18:06:55.704Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-server:2019.2-alpine-3.11.3 (alpine 3.11.3)
=================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-server:2019.2
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-server:2019.2
2020/01/20 20:07:16 [INFO] ▶ Start clair-scanner
2020/01/20 20:07:52 [INFO] ▶ Server listening on port 9279
2020/01/20 20:07:52 [INFO] ▶ Analyzing 9ff0fa26194aa4c4dba5a14b2999adf0f22bf2b630fb82efd3e4abbb60fd28bf
2020/01/20 20:08:00 [INFO] ▶ Analyzing 46861108e09e8a0fb3723460aefce0c571b132405fa77cea31fc0bab2827299f
2020/01/20 20:08:00 [INFO] ▶ Analyzing c0f55318a616c9ddf316e9c5700c48682366cb27b70099fc0616109dc252fd56
2020/01/20 20:08:00 [INFO] ▶ Analyzing db0a25fcb8b45344d056f17a747e5a1fd91c6bd9d714e127164076a42b7f55ab
2020/01/20 20:08:00 [INFO] ▶ Analyzing d9f969b53e769206ae7afa1683bc696aa63da78c1acd76e07e2535982bf5ff2b
2020/01/20 20:08:00 [INFO] ▶ Analyzing 5bd770d21d0ae952f3e36933affcd67d3855f35d52dc4a42bdcb9baa52382e74
2020/01/20 20:08:01 [INFO] ▶ Analyzing 4f5a17dadf33e9573750a302e44c88310c17b8fd983db5bd34423061636e0a9d
2020/01/20 20:08:01 [INFO] ▶ Analyzing 81aa85337dc933bc7648e07b0e1d5001e77f1020e181317d68ba6f952f293178
2020/01/20 20:08:01 [INFO] ▶ Analyzing 64eaeb7b0e90b3c79389386ee95ee4816cc49c34217ca83ff614f25ae8f33305
2020/01/20 20:08:01 [INFO] ▶ Analyzing dd1cffe54548875b16e00f4cc0e29a10a205242d8301b801b3d803a735e836c9
2020/01/20 20:08:01 [INFO] ▶ Analyzing 22784dc2a698417fe94e9258625f83f8593334d75178c59c30403dfbce62754d
2020/01/20 20:08:01 [INFO] ▶ Analyzing 6b60be4c3ce11cd923f223cf74383ca25cd8f9bf80452c9f7e6047bc0af3aa17
2020/01/20 20:08:01 [INFO] ▶ Analyzing d8fa0344005ee036e2f6ae16db3a36a3a1547f97b2a2df92bb6b22e4d8f30931
2020/01/20 20:08:01 [WARN] ▶ Image [jetbrains/teamcity-server:2019.2] contains 65 total vulnerabilities
2020/01/20 20:08:01 [ERRO] ▶ Image [jetbrains/teamcity-server:2019.2] contains 65 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress jetbrains/teamcity-server:2019.2
2020-01-20T18:08:32.186Z        INFO    Need to update DB
2020-01-20T18:08:32.186Z        INFO    Downloading DB...
2020-01-20T18:08:36.225Z        INFO    Reopening DB...
2020-01-20T18:09:13.208Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-server:2019.2 (ubuntu 18.04)
===============================================
Total: 156 (UNKNOWN: 0, LOW: 28, MEDIUM: 95, HIGH: 32, CRITICAL: 1)
```
