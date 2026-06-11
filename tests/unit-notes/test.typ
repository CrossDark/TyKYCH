// =============================================================================
// 脚注/侧注模块单元测试 (Notes Module)
// =============================================================================
// 运行要求：typst compile --root . --features html --format pdf test.typ
// =============================================================================
#import "/src/kych.typ" as kych

// --- 测试 template-notes show 规则 ---
// 验证该 show 规则可以被加载和应用
#assert(kych.template-notes != none, message: "template-notes 规则应存在")

// --- 测试在模板中使用脚注 ---
#show: kych.kych-show.with(title: "脚注测试")

= 脚注测试

这段文字包含一个脚注#footnote[第一个脚注内容。]。

第二段文字包含另一个脚注#footnote[第二个脚注内容，可以很长。]。

== 多个脚注

测试多个脚注的编号是否正确递增：
- 第一点#footnote[注释一]
- 第二点#footnote[注释二]
- 第三点#footnote[注释三]
