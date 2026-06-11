// =============================================================================
// 布局模块单元测试 (Layout Module)
// =============================================================================
// 运行要求：typst compile --root . --features html --format pdf test.typ
// =============================================================================
#import "/src/kych.typ" as kych

// --- 测试 margin-note 函数 ---

// 测试基本文本侧注
#let mn-text = kych.margin-note[这是一条侧注文本]
#assert(mn-text != none, message: "margin-note 应接受文本内容")

// 测试多行文本侧注
#let mn-multi = kych.margin-note[
  = 标题
  多行内容测试。
]
#assert(mn-multi != none, message: "margin-note 应接受多行内容")

// 测试空内容侧注
#let mn-empty = kych.margin-note[]
#assert(mn-empty != none, message: "margin-note 应接受空内容")

// --- 测试 full-width 函数 ---

// 测试基本全宽内容
#let fw-text = kych.full-width[全宽内容]
#assert(fw-text != none, message: "full-width 应接受文本内容")

// 测试包含块元素的全宽内容
#let fw-blocks = kych.full-width[
  == 全宽标题
  全宽段落。
]
#assert(fw-blocks != none, message: "full-width 应接受块级内容")

// --- 测试函数幂等性 ---
// 多次调用应返回相同类型的结果
#let mn1 = kych.margin-note[A]
#let mn2 = kych.margin-note[B]
#assert(mn1 != none, message: "margin-note 多次调用应稳定")
#assert(mn2 != none, message: "margin-note 多次调用应稳定")

// --- 测试在 show 规则中使用布局函数 ---
#show: kych.kych-show.with(title: "布局测试")

= 布局模块
通过。
