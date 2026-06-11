// =============================================================================
// 数学公式模块单元测试 (Math Module)
// =============================================================================
// 运行要求：typst compile --root . --features html --format pdf test.typ
// =============================================================================
#import "/src/kych.typ" as kych

// --- 测试 template-math show 规则 ---
#assert(kych.template-math != none, message: "template-math 规则应存在")

// --- 测试公式渲染 ---
#show: kych.kych-show.with(title: "数学测试")

= 数学公式测试

== 行内公式

行内公式 $x^2 + y^2 = z^2$ 嵌入在段落中。
另一个例子：$integral_0^1 x^2 dif x = 1/3$。

== 块级公式

勾股定理：
$ a^2 + b^2 = c^2 $

二次公式：
$ x = (-b plus.minus sqrt(b^2 - 4a c)) / (2a) $

== 带编号的公式

$ f(x) = x^2 + 2x + 1 $ <eq-quadratic>

如 @eq-quadratic 所示，这是一个二次函数。

== 矩阵与多行公式

$ mat(
  a_11, a_12;
  a_21, a_22;
) $
