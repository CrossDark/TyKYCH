// =============================================================================
// 交叉引用模块单元测试 (Cross-References Module)
// =============================================================================
// 运行要求：typst compile --root . --features html --format pdf test.typ
// =============================================================================
#import "/src/kych.typ" as kych

// --- 测试 template-refs show 规则 ---
#assert(kych.template-refs != none, message: "template-refs 规则应存在")

// --- 测试交叉引用渲染 ---
#show: kych.kych-show.with(title: "引用测试")

= 引用测试

== 公式引用

如 @eq-ref 所示，质能方程是著名的公式。

$ E = m c^2 $ <eq-ref>

== 标题引用

参见 @sec-target 了解更多。

=== 目标章节 <sec-target>

这是被引用的目标章节。

== 图表引用

@fig-demo 展示了一个示例。

#figure(
  rect(width: 80%, height: 40pt, fill: purple.lighten(60%)),
  caption: [示例图表],
) <fig-demo>
