基于juewuy/ShellCrash公测版

已经内置meta内核

7890端口是混合代理端口，9999是Yacd控制面板，这些和clash都一样的，如果用不到端口可以不映射
需要映射/tmp和/etc/ShellCrash两个文件夹到本地，实现配置固化
```bash
docker run -dit --name ShellCrash --network bridge -p 9999:9999 -p 7890:7890 -v /ShellCrash/tmp:/tmp -v /ShellCrash/ShellCrash:/etc/ShellCrash --restart always pdzhou/shellcrash:latest
```

安装完成之后看日志，正常就输入
```bash
docker exec -it ShellCrash /bin/bash
```
去容器内输入crash进行管理
