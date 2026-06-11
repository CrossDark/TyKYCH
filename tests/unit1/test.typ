// =============================================================================
// 单元测试：验证 kych 包各模块的公共 API 可用性
// =============================================================================
// 此测试不依赖 --features html，仅验证模块可正确导入和函数签名存在。
// =============================================================================

#import "/src/kych.typ" as kych

// --- 测试主入口函数存在性 ---
#assert(kych.kych-show != none, message: "kych-show 函数应可导入")

// --- 测试导航栏生成函数存在性 ---
#assert(kych.make-header != none, message: "make-header 函数应可导入")

// --- 测试布局辅助函数存在性 ---
#assert(kych.margin-note != none, message: "margin-note 函数应可导入")
#assert(kych.full-width != none, message: "full-width 函数应可导入")

// --- 测试 show 规则模块存在性 ---
#assert(kych.template-math != none, message: "template-math 规则应可导入")
#assert(kych.template-notes != none, message: "template-notes 规则应可导入")
#assert(kych.template-figures != none, message: "template-figures 规则应可导入")
#assert(kych.template-refs != none, message: "template-refs 规则应可导入")

// --- 测试 kych-show 是函数类型 ---
// 验证主模板是一个可调用的函数
#assert(type(kych.kych-show) == function, message: "kych-show 应为函数类型")

// --- 测试 make-header 是函数类型 ---
#assert(type(kych.make-header) == function, message: "make-header 应为函数类型")

// --- 测试 margin-note 是函数类型 ---
#assert(type(kych.margin-note) == function, message: "margin-note 应为函数类型")

// --- 测试 full-width 是函数类型 ---
#assert(type(kych.full-width) == function, message: "full-width 应为函数类型")

所有单元测试通过！
