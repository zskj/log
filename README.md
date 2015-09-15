# log 

本示例是一个基于Rails的简单Blog
[示例log](http://http://log.t-jfen.goodrain.net/)

## 目录结构

```bash
├── app
├── app.json
├── bin
├── config
│   └── puma.rb   # puma 配置文件
├── config.ru
├── db
├── Gemfile
├── Gemfile.lock
├── lib
├── log
├── Procfile   # 应用启动命令
├── public
├── Rakefile
├── README.md
├── test
└── vendor
```
## 本示例说明

- 默认情况下 Rails 正常运行和测试都需要数据库配置，此处使用 rails new 生成的默认 sqlite3 配置.生产环境可根据需求使用mysql pg


## 本地运行
ruby  2.2.1
rails 4.2.1

请确认您的环境安装了 
[Ruby](https://www.ruby-lang.org), 

[Bundler](http://bundler.io) 

```sh
git clone https://github.com/zskj/log.git
cd log
bundle install # 安装所需 gem 包
rails server # 可启动 web 服务器
```

访问 [localhost:3000]

##最后说明
1.用来学习rails 参照[rails101s教程](http://growth.xdite.net/courses/rails-101/)
2.本案例已经部署在 [好雨云](http://goodrain.com)
3.由于是0基础学的rails，然后你们懂的...





