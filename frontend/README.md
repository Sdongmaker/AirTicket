# 机票管理系统前端

## 项目介绍

这是一个基于Vue 3开发的机票管理系统前端应用，具有以下功能：

- 用户注册和登录
- 航班查询和搜索
- 航班预订和支付
- 订单管理
- 用户个人信息管理
- 后台管理（管理员功能）

## 技术栈

- Vue 3 + Composition API
- Vue Router
- Pinia 状态管理
- Element Plus UI 组件库
- Axios 网络请求
- Vite 构建工具

## 项目结构

```
frontend/
├── public/              # 静态资源
├── src/
│   ├── assets/          # 项目资源文件
│   ├── components/      # 公共组件
│   ├── router/          # 路由配置
│   ├── stores/          # 状态管理
│   ├── utils/           # 工具函数
│   ├── views/           # 页面视图
│   │   └── admin/       # 管理员页面
│   ├── App.vue          # 根组件
│   └── main.js          # 入口文件
├── .gitignore           # Git忽略文件
├── index.html           # HTML模板
├── package.json         # 项目依赖
└── vite.config.js       # Vite配置
```

## 开发说明

### 安装依赖

```bash
npm install
```

### 启动开发服务器

```bash
npm run dev
```

### 构建生产版本

```bash
npm run build
```

### 预览生产构建

```bash
npm run preview
```

## 使用方法

### 登录信息

- 管理员账号: admin / 密码: admin
- 普通用户: user / 密码: user

### 功能导航

- 首页：航班搜索和热门目的地
- 航班查询：查找可用航班
- 航班详情：查看航班详细信息和选择座位
- 航班预订：完成机票预订和支付
- 个人中心：查看个人信息和订单
- 管理后台：用户、航班、飞机和订单管理（仅管理员）

# Vue 3 + Vite

This template should help get you started developing with Vue 3 in Vite. The template uses Vue 3 `<script setup>` SFCs, check out the [script setup docs](https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup) to learn more.

Learn more about IDE Support for Vue in the [Vue Docs Scaling up Guide](https://vuejs.org/guide/scaling-up/tooling.html#ide-support).
