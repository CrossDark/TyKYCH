// =============================================================================
// 图表模块单元测试 (Figures Module)
// =============================================================================
// 运行要求：typst compile --root . --features html --format pdf test.typ
// =============================================================================
#import "/src/kych.typ" as kych

// --- 测试 template-figures show 规则 ---
#assert(kych.template-figures != none, message: "template-figures 规则应存在")

// --- 测试图表渲染 ---
#show: kych.kych-show.with(title: "图表测试")

= 图表测试

== 带标题的图表

#figure(
  rect(width: 100%, height: 60pt, fill: teal.lighten(60%)),
  caption: [一个带标题的示例图],
)

== 带表格的图表

#figure(
  table(
    columns: 3,
    [名称], [类型], [描述],
    [kych], [包], [静态网站生成器],
    [Typst], [编译器], [排版系统],
  ),
  caption: [项目相关技术表],
)

== 无标题图表

#figure(
  rect(width: 100%, height: 30pt, fill: orange.lighten(70%)),
)
