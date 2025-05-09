# 使用说明
---
# *使用本模板前，请先和导师确认是否可以使用Latex，部分导师只接受Word排版；注意：Latex转Word会存在问题，请慎重。
---
# UJS_Masterthesis-20240124修订说明（By [Chen Xiaotian](https://github.com/xtc-chen)）
---
+ 修复了高版本texlive中newtx宏报错问题，原来的模板中newtx宏包和Times New Roman字体冲突，目前选择了其他字体进行替换；具体命令可以在cls文件中查看。
+ 根据部分同学的要求在目录前增加了表目录和图目录；如不需要可以删除。
+ 部分同学有附录的需求，所以在文章的最后加入了附录A和附录B；如不需要可以删除。

# 江苏大学硕士研究生学位论文LaTeX模板
---
> ### 非官方版本，不保证能够完全满足最终论文提交等要求，已经尽力完善！

本项目为[江苏大学](https://www.ujs.edu.cn/)**硕士**研究生学位论文UJS_Masterthesis模板，论文样式参考[2022年4月江苏大学研究生院发布的硕士学论模板](https://yjsy.ujs.edu.cn/info/1273/13655.htm)。
>[2025年1月江苏大学研究生院发布最新的硕士学论模板，本人还未进行对比，如果有明显区别，请联系我!](https://yjsy.ujs.edu.cn/info/1277/30735.htm)。

本项目基于[ctexbook](https://ctan.org/pkg/ctex)，以及前人的基础进行修改。

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
 |- figures/logo                    // 江苏大学logo文件
 |- data                            // 每一章的tex文件
 |- fonts                           // 字体文件夹
```
 
 # 我的编译环境
 ---
+ Windows11
+ Texstudio 4.7.2
+ Texlive2023（2023以下版本皆可；如有CTex，需卸载后再装Texlive）
+ 采用xelatex编译
  
# 已知问题汇总
---
+ Q：已有同学使用了较高版本的Texlive2022进行编译。会出现找不到字体的错误，原因是后续的texlive中newtx宏包有点不太一样。
  
  A: 2024年01月23日，在各位同学的反馈和帮助下已经顺利解决了newtx宏包的冲突问题，具体修订记录在cls文件可以查看；目前在texlive2023上已经可以正常编译。

+ Q：可以使用在线编译吗？
  
  A: 本人没有尝试过在线编译，有同学尝试过[Texpage](https://www.texpage.com/) 编译，貌似效果还不错。个人建议还是本地编译比较稳妥，且编译速度快。
  
+ Q：引用文献的BibTeX文件可以从哪里获取？

  A：几乎任何学术文献库都会提供BibTeX格式的引用数据。在引用量不大的情况下，可以去百度学术或者谷歌学术进行导出。

+ Q：什么样的图片可以插入？

  A：主流格式如:png .jpg都支持。建议保存为.pdf格式，编译速度会加快，且.pdf为矢量图格式，排版更好看。
  
+ Q：Latex的表格怎么弄？

  A：可以尝试使用Latex表格在线制作：https://www.latex-tables.com/ or https://www.tablesgenerator.com/

 # 建议及问题反馈
 ---
+ E-mai：chenxtphil@163.com

 # QQ交流群： 667981632
 
 # 致谢
 ---
 感谢[Haixing Hu](https://github.com/Haixing-Hu)提供的2005版参考文献著录BibTeX样式[GBT7714-2005](https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style)，为本项目LaTeX模板的形成提供了很大的帮助。

# 最后
---
+ UJS_Masterthesis是为了帮助江苏大学硕士毕业生撰写毕业论文而编写的LaTeX论文模板（硕士论文工作量大、公式多），但前提是用户已经能处理一般的LaTeX文档，并对BibTeX有一定了解，如果你从来没有接触过LaTeX，建议先学习相关基础知识。磨刀不误砍柴工，一定的基础有助你更好地使用模板。
+ 由于个人水平有限，虽然现在的这个版本基本上满足了学校的要求，但难免存在不足之处，欢迎大家积极反馈，更希望江苏大学LaTeX爱好者能一同完善此模板，让更多同学受益。愿此模板能够让大家喜欢并给予大家帮助！
+ 修改不易，如果能帮助到大家，欢迎打赏，谢谢！
  
<img src="https://github.com/xtc-chen/UJS_Masterthesis/assets/84300491/a52fbbd0-ea7f-47f5-b523-1641b73efc49" alt="Your Image Description" width="300">

***

By [Chen Xiaotian](https://github.com/xtc-chen)
