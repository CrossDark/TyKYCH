# 跨越晨昏

一个使用 Typst 实验性 HTML 导出功能构建的静态网站模板。除基本的 `make` 外无需其他外部依赖。

> **基于** [tufted](https://github.com/vsheg/tufted) (Copyright © 2025 Vsevolod Shegolev, MIT License) 修改而来。

![跨越晨昏 website](assets/devices.webp)

## 安装与使用

从 Typst 包仓库初始化模板：

```shell
typst init @preview/kych:0.1.1
```

要构建网站，请运行：

```shell
make html
```

探索 `content/` 文件夹查看示例。

## 链接

- [原始模板 (tufted)](https://github.com/vsheg/tufted) — 上游项目
- [GitHub 仓库](https://github.com/CrossDark/KYCH) — 源代码、问题和贡献
- [Tufte CSS](https://edwardtufte.github.io/tufte-css/) — 用于样式，自动从 CDN 加载

## 许可证

源代码在 [GitHub](https://github.com/CrossDark/KYCH) 上以 [MIT 许可证](https://github.com/CrossDark/KYCH/blob/main/LICENSE) 提供。`template/` 目录中的模板使用更宽松的 [MIT-0](https://opensource.org/licenses/MIT-0) 许可证。