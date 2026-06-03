# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 仓库说明

大学期末复习资料整理仓库，包含 5 门课程的原始资料和合成的打印版文档。

## 科目目录

- `概率论与数理统计/` + `概率论与数理统计（另一个卖家）/` — 原始资料
- `计算机组成原理/` — 原始资料（排除 `上课有关的东西/` 实验目录）
- `计算机网络/` — 原始资料（排除 `上课有关/` 实验目录）
- `近代史/` — 原始资料
- `英语t班/` — 英语资料（英语.txt）
- `javaweb/` — Java（已考完，排除）
- `【打印版】/` — 生成的最终打印文档（每科一个 docx + pdf）

## 环境配置

- **Python**: D:/anaconda3/python.exe
- **PDF字体**: C:/Windows/Fonts/msyh.ttc（微软雅黑，支持中文 + 英文）
- **Pandoc**: 通过 Anaconda 路径可用

## 依赖

```bash
D:/anaconda3/python.exe -m pip install python-docx PyMuPDF Pillow fpdf2
```

## 重新生成打印文档

### 合成 Word 文档（所有科目）
```python
# 脚本：make_docs.py（如果存在）
# 使用 python-docx + PyMuPDF 将各科资料合并为单个 docx
# 图片插入宽度 IMG_MAX_WIDTH = Cm(14)
# PDF 通过 PyMuPDF 渲染为图片后嵌入
```

### 生成英语 PDF
```python
# 脚本：make_english_pdf.py（如果存在）
# 使用 fpdf2 + 微软雅黑字体
# 翻译部分：中文在上、英文在下，重点词汇标红
# 完形填空部分：每段提取 15-20 个重点词加粗标红
```

## 注意事项

- 生成 PDF 时需 Windows 中文字体支持（C:/Windows/Fonts/）
- 合成 docx 时大文件（PDF试卷）会转为图片嵌入，文件较大
- 概率论只保留近五年真题（2021年及以后）
- 计算机网络试卷已去重合并
