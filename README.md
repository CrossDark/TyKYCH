# The `kych` Package / `kych` 包
<div align="center">Version 0.1.0</div>

静态网站生成器

> **基于** [tufted](https://github.com/vsheg/tufted) (Copyright © 2025 Vsevolod Shegolev, MIT License) 修改而来。

## Template adaptation checklist / 模板适配检查清单

- [ ] remove/replace the example test case / 移除/替换示例测试用例
- [ ] (add your actual code, docs and tests) / （添加你实际的代码、文档和测试）
- [ ] remove this section from the README / 从 README 中移除此部分

## Getting Started / 快速开始

These instructions will get you a copy of the project up and running on the typst web app. Perhaps a short code example on importing the package and a very simple teaser usage.
以下说明将帮助你在 typst web app 中启动并运行该项目的副本。可以提供一个简短的代码示例来展示如何导入包以及一个非常简单的预览用法。

```typ
#import "@preview/kych:0.1.0": *

#show: my-show-rule.with()
#my-func()
```

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./thumbnail-dark.svg">
  <img src="./thumbnail-light.svg">
</picture>

## Usage / 使用方法

Initialize the template from the Typst package registry: / 初始化

```shell
typst init @preview/kych:0.1.1
```

To build the website, run: 编译

```shell
make html
```