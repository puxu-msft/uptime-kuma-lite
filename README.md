# Uptime Kuma Lite

Forked from https://github.com/louislam/uptime-kuma , a fancy self-hosted monitoring tool like "Uptime Robot".

Chopped and modified for self-use.

复刻、裁剪和修改，以用于个人目的。

## diff 区别

In English:

- disable many notification-providers
- remove docker support
- use pnpm instead of npm
- disable password strength check

In Chinese:

- 禁用了一些用不到的 notification-providers，原作者的包管理有点问题
- 移除了 Docker 支持
- 使用 pnpm 替代 npm
- 禁用了密码强度检查

## usage 用法

Prepare:

准备

- Node.js >= 14
- git

Build:

构建

```bash
pnpm install
```

Ad-hoc style start:

手工启动

```bash
node server/server.js
```

Recommended, prod-style:

推荐启动

```bash
pnpm install -g pm2

# run in background using PM2
pm2 start server/server.js --name uptime-kuma
```

Listening http://localhost:3001 by default

默认监听 http://localhost:3001

## dissecting 剖析


