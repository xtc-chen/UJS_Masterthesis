# UJS_Masterthesis-20240123
# 20240123修改说明
---
+ 修改了部分宏，修复了新版texlive中newtx宏包的问题。
+ 根据大家反馈在目录后加入了图目录和表目录，如不需要可以删除。
+ 在文章最后加入了附录A和附录B。
---
# 江苏大学硕士研究生学位论文LaTeX模板

> 非官方版本，不保证能够完全满足最终论文提交等要求，已经尽力完善！

本项目为[江苏大学](https://www.ujs.edu.cn/)**硕士**研究生学位论文UJS_Masterthesis模板，论文样式参考[2022年4月江苏大学研究生院发布的硕士学论模板](https://yjsy.ujs.edu.cn/info/1273/13655.htm)

本项目基于[ctexbook](https://ctan.org/pkg/ctex)，以及前人的基础进行修改

希望此模板能够给江苏大学里喜欢用Latex的同学给予学位论文撰写上的帮助

# 文件列表及说明
---
```
UJS_Masterthesis
 |- ujsthesis.cls                   // LaTeX宏模板文件
 |- main.tex                        // LaTeX主模板
 |- main.pdf                        // LaTeX模板
 |- reference.bib                   // LaTeX模板中的参考文献文件
 |- gbt7714-2005-numerical.bst      // 国标参考文献BibTeX样式文件2005版
 |- figures                         // 论文图片文件夹
 |- date                            // 每一章的tex文件
 |- fonts                           // 字体文件夹
```
 
 # 我的编译环境
 ---
+ Windows10
+ Texstudio 4.3
+ Texlive2019（Texlive2019下载地址：https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2019/ ）/texlive2023（2024年已测试）
+ 采用xelatex编译

# 已知问题汇总
---
+ Q:已有同学使用了较高版本的Texlive2022进行编译。会出现找不到字体的错误，原因是后续的texlive中newtx宏包有点不太一样。因为本人能力有限，目前尚未解决。所以建议用Texlive2019进行编译。
  A:texlive中newtx宏包的问题在各位的帮助下已经解决，目前已经可以在texlive2023中运行。
  
# FAQ
---
+ Q：引用文献的BibTeX文件可以从哪里获取？

  A：几乎任何学术文献库都会提供BibTeX格式的引用数据。在引用量不大的情况下，可以去百度学术或者更谷歌学术下进行导出。

+ Q：什么样的图片可以插入？

  A：主流格式如:png .jpg都支持。建议保存为.pdf格式，编译速度会加快，且如果.pdf的矢量图格式会让排版更好看。
  
+ Q：Latex的表格怎么弄？

  A：可以尝试使用Latex表格在线制作：https://www.latex-tables.com/ 。

 # 建议及问题反馈
 ---
+ E-mai：chenxtphil@163.com

 # QQ交流群： 667981632
 
 # 致谢
 ---
 感谢[Haixing Hu](https://github.com/Haixing-Hu)提供的2005版参考文献著录BibTeX样式[GBT7714-2005](https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style)，为本项目LaTeX模板的形成提供了很大的帮助。

# 最后
---
+ UJS_Masterthesis是为了帮助江苏大学硕士毕业生撰写毕业论文而编写的LaTeX论文模板，其前提是用户已经能处理一般的LaTeX文档，并对BibTeX有一定了解，如果你从来没有接触过LaTeX，建议先学习相关基础知识，磨刀不误砍柴工，能有助你更好使用模板。
+ 由于个人水平有限，虽然现在的这个版本基本上满足了学校的要求，但难免存在不足之处，欢迎大家积极反馈，更希望江苏大学LaTeX爱好者能一同完善此模板，让更多同学受益。
+ 如果帮助到大家，欢迎大家打赏，谢谢。
<img src="https://github.com/xtc-chen/UJS_Masterthesis/assets/84300491/a52fbbd0-ea7f-47f5-b523-1641b73efc49" alt="Your Image Description" width="300">


***

By [Chen Xiaotian](https://github.com/xtc-chen)
