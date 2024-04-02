基于juewuy/ShellCrash公测版

web标签为在线拉取脚本及内核
local标签已经内置meta内核（挖坑）

7890端口是混合代理端口，9999是Yacd控制面板，这些和clash都一样的，如果用不到端口可以不映射
```bash
docker run -dit --name ShellCrash --network bridge -p 9999:9999 -p 7890:7890 -v /root/ShellCrash:/etc/ShellCrash --restart always shellcrash:latest
```

安装完成之后看日志，正常就输入
```bash
docker exec -it ShellCrash /bin/bash
```
去容器内输入crash进行管理
