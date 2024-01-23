\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ujsthesis}[2022/07/07 v0.1 Jiangsu University Thesis Template]

\LoadClass[
    openany,            % 新一章左右页都可以开始
    fontset    = local, % 使用自定义字体
    zihao      = -4,    % 正文小四号字体
    linespread = 1.7    % 对应word里的1.5倍行距
    ]{ctexbook}

%20240121修改补充，支持texlive2023
% 添加 amssymb 宏包
\RequirePackage{amssymb}
% 添加 ulem 宏包
\RequirePackage{ulem}

\RequirePackage{geometry} % 页面设置宏包
\RequirePackage{fancyhdr} % 页眉页脚设置宏包
\RequirePackage{graphicx} % 插图宏包
\RequirePackage{caption}  % 图表标题宏包
\RequirePackage[tbtags]{amsmath} % 数学公式宏包，多行公式编号在最后一行
\RequirePackage{amsthm}    % 定理环境宏包
%\RequirePackage{newtxmath} % 公式字体设置宏包，需要在数学宏包后加载
%\usepackage{newtxtext,newtxmath}

%20240121修改补充，支持texlive2023,将公式风格改为新罗马字体
\setmainfont{XITS}
\usepackage{unicode-math} % 需要 unicode-math 宏包
\setmathfont{XITS Math}

% \setmainfont{TeX Gyre Termes}
% \usepackage{unicode-math} % 需要 unicode-math 宏包
% \setmathfont{TeX Gyre Termes Math}

%\usepackage{newpxtext,newpxmath}
\RequirePackage{titletoc}  % 目录设置宏包
\RequirePackage[super,square,comma,sort&compress]{natbib} % 参考文献设置宏包
\RequirePackage{hyperref} % 超链接宏包
\RequirePackage{setspace} % 行间距设置宏包
\RequirePackage{enumitem} % 自定义列表宏包
\RequirePackage{booktabs} % 表格宏包，方便画三线表
\RequirePackage{diagbox}  % 斜线表头宏包
\RequirePackage{multirow}
\RequirePackage{algpseudocode,algorithm,algorithmicx} % 算法宏包
\RequirePackage{subfigure}
\usepackage{color}
\usepackage{mathrsfs}
\usepackage{xeCJK}
\usepackage{threeparttable}
\usepackage{float}
\usepackage[justification=centering]{caption}
\usepackage{bicaption}
\captionsetup[figure][bi-second]{name=Fig.} %设置图的英文编号前缀
\captionsetup[table][bi-second]{name=Tab.} %设置表的英文编号前缀
\usepackage{makecell}
\usepackage{cancel}
\usepackage[list=off]{bicaption} %消除图标目录的英文标题
\setCJKmainfont{SimSun}[AutoFakeBold,ItalicFont=KaiTi]
\newcommand{\zhongsong}{\CJKfontspec{STZhongsong}}
\usepackage{tikz}

\newcommand*{\circled}[1]{\lower.7ex\hbox{\tikz\draw (0pt, 0pt)%
		circle (.5em) node {\makebox[1em][c]{\small #1}};}}

% CTeX宏集选项
\ctexset{
    contentsname         = 目~~录, % 设置目录标题名
    % 一级标题：三号粗黑体，居中，章节编号与标题内容之间的距离2个空格宽度(\quad为1个汉字宽度或4个空格宽度)
    chapter/format       = \zihao{3}\bfseries\heiti\centering,
    chapter/aftername    = ~~,
    chapter/beforeskip   = 3.2ex, % 设置章节标题前的垂直间距
    chapter/afterskip    = 3.9ex, % 设置章节标题与后面下方之间的距离
    chapter/fixskip      = true,  % 抑制多余间距
    chapter/pagestyle    = fancy, % 设置章标题页的页面格式(页眉页脚)
    % 二级标题：四号粗黑体
    section/format       = \zihao{4}\bfseries\heiti,
    section/aftername    = ~~,
    section/beforeskip   = 6ex,
    section/afterskip    = 6ex,
    section/fixskip = true,
    % 三级标题：小四号粗黑体
    subsection/format    = \zihao{-4}\bfseries\heiti,
    subsection/aftername = ~~,
    subsection/beforeskip= 4.7ex,
    subsection/afterskip = 4.7ex,
    subsection/fixskip   = true
}

% 设置纸张大小、页边距和装订线
\geometry{
    paper         = a4paper, % 纸张大小：A4
    top           = 15mm,    % 页边距上：25mm
    bottom        = 18.2mm,  % 页边距下：20mm
    left          = 25mm,    % 页边距左：25mm
    right         = 20mm,    % 页边距右：20mm
    bindingoffset = 5mm,    % 装订线：5mm
    foot          = 6.4mm,   % 页脚高度
    includeheadfoot          % 将页眉页脚的高度计入版心高度
}
% 定义标签
\def\ujs@label@classnumber{分类号}
\def\ujs@label@classified{密级}
\def\ujs@label@udc{~U~D~C}
\def\ujs@label@thesisnumber{编号}
\def\ujs@label@advisor{指~导~老~师}
\def\ujs@label@author{作~者~姓~名}
\def\ujs@label@jobtitle{职\quad \quad 称}
\def\ujs@label@degree{申请学位级别}
\def\ujs@label@tite{论文题目}
\def\ujs@label@major{专业名称}
\def\ujs@label@submissiondate{论文提交日期}
\def\ujs@label@defensedate{论文答辩日期}
\def\ujs@label@institutiondate{学位授予单位和日期}
\def\ujs@label@right{学位论文版权使用授权书}
\def\ujs@label@rightcontent{江苏大学、中国科学技术信息研究所、国家图书馆、中国学术期刊（光盘版）电子杂志社有权保留本人所送交学位论文的复印件和电子文档，可以采用影印、缩印或其他复制手段保存论文。本人电子文档的内容和纸质论文的内容相一致，允许论文被查阅和借阅，同时授权中国科学技术信息研究所将本论文编入《中国学位论文全文数据库》并向社会提供查询，授权中国学术期刊（光盘版）电子杂志社将本论文编入《中国优秀博硕士学位论文全文数据库》并向社会提供查询。论文的公布（包括刊登）授权江苏大学研究生院办理。}
\def\ujs@label@rightclassified{本学位论文属于不保密$\square$。}
\def\ujs@label@authorsignature{学位论文作者签名：}
\def\ujs@label@advisorsignature{指导教师签名：}
\def\ujs@label@ymd{年~~~~~~月~~~~~~日}
\def\ujs@label@declare{独~创~性~声~明}
\def\ujs@label@declarecontent{本人郑重声明：所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已注明引用的内容以外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果，也不包含为获得江苏大学或其他教育机构的学位或证书而使用过的材料。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律结果由本人承担。}
\def\ujs@label@cabstract{摘~~要}
\def\ujs@label@eabstract{ABSTRACT}
\def\ujs@label@ckeywords{关键词}
\def\ujs@label@ekeywords{Keywords}
\def\ujs@label@acknowledgement{致谢}
\def\ujs@label@achievements{攻读硕士学位期间完成的论文及其他科研成果}
\def\ujs@label@appendixA{附录A \quad 缩略语}
\def\ujs@label@appendixB{附录B \quad 中英文符号及缩写对照表}

% 定义专业类型
\def\ujs@label@degreetype{}		
\newcommand{\degreetype}[1]{\def\ujs@value@degreetype{#1}}	
% 定义英文专业类型	
\def\ujs@label@englishdegree{}		
\newcommand{\englishdegreetype}[1]{\def\ujs@value@englishdegreetype{#1}}
% 定义作者英文名字
\def\ujs@value@englishauthor{}
\newcommand{\englishauthor}[1]{\def\ujs@value@englishauthor{#1}}
% 定义专业英文
\def\ujs@value@englishmajor{}
\newcommand{\englishmajor}[1]{\def\ujs@value@englishmajor{#1}}
% 定义导师英文
\def\ujs@value@englishadvisor{}
\newcommand{\englishadvisor}[1]{\def\ujs@value@englishadvisor{#1}}
% 定义导师职称
\def\ujs@value@jobtitle{}
\newcommand{\jobtitle}[1]{\def\ujs@value@jobtitle{#1}}
% 定义中文标题
\def\ujs@value@chinesetitle{}
\newcommand{\ctitle}[1]{\def\ujs@value@chinesetitle{#1}}
% 定义英文标题
\def\ujs@value@englishtitle{}
\newcommand{\etitle}[1]{\def\ujs@value@englishtitle{#1}}
% 定义分类号
\def\ujs@value@classnumber{}
\newcommand{\classnumber}[1]{\def\ujs@value@classnumber{#1}}
% 定义密级
\def\ujs@value@classified{}
\newcommand{\classified}[1]{\def\ujs@value@classified{#1}}
% 定义UDC
\def\ujs@value@udc{}
\newcommand{\udc}[1]{\def\ujs@value@udc{#1}}
% 定义编号
\def\ujs@value@thesisnumber{}
\newcommand{\thesisnumber}[1]{\def\ujs@value@thesisnumber{#1}}
% 定义指导老师
\def\ujs@value@advisor{}
\newcommand{\advisor}[1]{\def\ujs@value@advisor{#1}}
% 定义作者姓名
\def\ujs@value@author{}
\renewcommand{\author}[1]{\def\ujs@value@author{#1}}
% 定义申请学位级别
\def\ujs@value@degree{}
\newcommand{\degree}[1]{\def\ujs@value@degree{#1}}
% 定义专业名称
\def\ujs@value@major{}
\newcommand{\major}[1]{\def\ujs@value@major{#1}}
% 定义论文提交日期
\def\ujs@value@submissiondate{}
\newcommand{\submissiondate}[1]{\def\ujs@value@submissiondate{#1}}
% 定义论文答辩日期
\def\ujs@value@defensedate{}
\newcommand{\defensedate}[1]{\def\ujs@value@defensedate{#1}}
% 定义论文英文答辩日期
\def\ujs@value@defenseenglishdate{}
\newcommand{\defenseenglishdate}[1]{\def\ujs@value@defenseenglishdate{#1}}
% 定义学位授予单位和日期
\def\ujs@value@institutiondate{}
\newcommand{\institutiondate}[1]{\def\ujs@value@institutiondate{#1}}
% 定义中文摘要
\def\ujs@value@cabstract{}
\newcommand{\cabstract}[1]{\def\ujs@value@cabstract{#1}}
% 定义英文摘要
\def\ujs@value@eabstract{}
\newcommand{\eabstract}[1]{\def\ujs@value@eabstract{#1}}
% 定义中文关键词
\def\ujs@value@ckeywords{}
\newcommand{\ckeywords}[1]{\def\ujs@value@ckeywords{#1}}
% 定义英文关键词
\def\ujs@value@ekeywords{}
\newcommand{\ekeywords}[1]{\def\ujs@value@ekeywords{#1}}

% 设置页眉页脚
\pagestyle{fancy}
\fancyhf{} % 清除所有页眉页脚的设置
% 页眉：五号宋体居中(默认宋体)
\fancyhead[OC]{\zihao{5} 江苏大学硕士学位论文} % 奇数页：江苏大学博(或硕)士学位论文
\fancyhead[EC]{\zihao{5}\ujs@value@chinesetitle}     % 偶数页：学位论文的题目
\fancyfoot[OR,EL]{\zihao{5}\thepage}  % 页脚：页码位于页脚外侧
\renewcommand{\headrulewidth}{0.75pt} % 设置页眉横线宽度：0.75pt

% 设置图表格式
\DeclareCaptionFont{wukai}{\zihao{5}\kaishu}
\captionsetup{
    labelsep = space, % 图号和图题分隔符：1个空格
    font     = wukai  % 设置图表标题字体字号：五号楷体
}

% 设置目录格式
% \titlecontents{标题名}[左间距]{标题格式}{标题标志}{无序号标题格式}{指引线与页码}[下间距]
\titlecontents{chapter}[0em]{\bfseries}{\thecontentslabel~\,}{}{\titlerule*[0.25em]{.}\contentspage}
\titlecontents{section}[2em]{}{\thecontentslabel~~}{}{\titlerule*[0.25em]{.}\contentspage}
\titlecontents{subsection}[4em]{}{\thecontentslabel~~}{}{\titlerule*[0.25em]{.}\contentspage}

\newcommand{\customfigureformat}{
	\renewcommand*{\addvspace}[1]{}
	\def\loflabel{图} 
	\renewcommand{\numberline}[1]{\loflabel~##1\hspace*{1em}}
}

\let\oldlistoffigures\listoffigures
\renewcommand{\listoffigures}{%
	\begingroup % 新增
	\customfigureformat % 使用新的命令设置格式
	\oldlistoffigures % 调用原始的 \listoffigures
	\endgroup % 新增
}

\newcommand{\customtableformat}{
	\renewcommand*{\addvspace}[1]{}
	\def\loflabel{表} 
	\renewcommand{\numberline}[1]{\loflabel~##1\hspace*{1em}}
}

\let\oldlistoftables\listoftables
\renewcommand{\listoftables}{%
	\begingroup % 新增
	\customtableformat % 使用新的命令设置格式
	\oldlistoftables % 调用原始的 \listoffigures
	\endgroup % 新增
}

% 设置列表格式
% \setlist{noitemsep} % 将列表间垂直距离置零
\setlist{nosep} % 将列表与段落、列表间垂直距离置零
\setlist[itemize]{left=\parindent}
\setlist[enumerate]{left=\parindent}

% 设置超链接格式
\hypersetup{hidelinks} % 隐藏链接

% 设置算法环境格式
\floatname{algorithm}{算法}       % 中文标题名
\numberwithin{algorithm}{chapter} % 按章节编号
\renewcommand{\algorithmicrequire}{\textbf{输入:}}
\renewcommand{\algorithmicensure}{\textbf{输出:}}

% 设置定理、引理、证明等环境格式
\newtheoremstyle{ujstheoremstyle}{0pt}{0pt}{\kaishu}{\parindent}{\bfseries}{}{ }{}
\theoremstyle{ujstheoremstyle}
\newtheorem*{prof}{证明}
\newtheorem{theorem}{定理}[chapter]
\newtheorem{lemma}{引理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{assumption}{假设}[chapter]
\newtheorem{definition}{定义}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{exercise}{练习}[chapter]
\newtheorem{example}{例}[chapter]
\newtheorem{remark}{注}[chapter]
%\newtheorem{remark}{注释}[chapter]
\newtheorem{problem}{问题}[chapter]
\newtheorem{conjecture}{猜想}[chapter]

\setlength\parskip{0pt} % 设置段间距

% 设置题名页
\renewcommand{\maketitle}{
	\newgeometry{left= 20mm,right= 20mm,top=25mm,bottom=18.2mm}
    \cleardoublepage
    \thispagestyle{empty}
    \begin{center}
        {\songti\bfseries
        \begin{tabular}{ccc}
            \ujs@label@classnumber\uline{\makebox[3.0cm]{\hfill\ujs@value@classnumber\hfill}} & \makebox[6.5cm]{\hfill}& \ujs@label@classified\uline{\makebox[3.0cm]{\hfill\ujs@value@classified\hfill}}\\
            \ujs@label@udc\uline{\makebox[3.0cm]{\hfill\ujs@value@udc\hfill}} &\hfill  & \ujs@label@thesisnumber\uline{\makebox[3.0cm]{\hfill\ujs@value@thesisnumber\hfill}}\\
        \end{tabular}}

        \vspace{5ex}

        \includegraphics[scale=0.26]{figures/logo/ujs.pdf}
        
        \vspace{-1ex}
        
        \begin{center}
        {\zihao{1}JIANGSU~~UNIVERSITY}
        \end{center}
    
        \vspace{1ex}

        {\zihao{-0}  \bfseries \zhongsong \ujs@value@degreetype} \par
        
        \vspace{1ex}

        {\zihao{-1} \ujs@value@englishdegreetype} \par
        
        \vspace{5ex}
        
        \includegraphics[scale=0.12]{figures/logo/ujslogo.pdf} \par
        
        \vspace{5ex}
        
         {\zihao{-2}\heiti\bfseries\ujs@value@chinesetitle} \par
         
         \vspace{3ex}
         
         {\zihao{4}\bfseries\ujs@value@englishtitle} \par 

         \vspace{5ex}

        
        {\zihao{-3}\heiti  
        \begin{tabular}{ll}
        	\multicolumn{2}{c}{\ujs@label@author\uline{\hfill\ujs@value@author\hfill}}\\
        	\ujs@label@advisor\uline{\makebox[6.0cm]{\hfill\ujs@value@advisor\hfill}} & \ujs@label@jobtitle\uline{\makebox[6.0cm]{\hfill\ujs@value@jobtitle\hfill}}\\
        	\ujs@label@degree \uline{\hfill\ujs@value@degree\hfill} & \ujs@label@major\uline{\hfill\ujs@value@major\hfill}\\
        	\ujs@label@submissiondate\uline{\hfill\ujs@value@submissiondate\hfill} & \ujs@label@defensedate\uline{\hfill\ujs@value@defensedate\hfill}\\
        	\multicolumn{2}{l}{\ujs@label@institutiondate\uline{\hfill\ujs@value@institutiondate\hfill}}\\
        \end{tabular}}
    \end{center}

    \clearpage
    \thispagestyle{empty}
    \restoregeometry
}

% 设置学位论文版权使用授权书
\newcommand{\makeright}{
    %\cleardoublepage
    \thispagestyle{empty}
    
    \vspace*{1ex}
    
    \begin{center}
    	{\zihao{-2}\heiti\ujs@label@declare}
    \end{center}
    
    \ujs@label@declarecontent
    
    \vspace{8ex}
    
    \hspace{15em}\ujs@label@authorsignature
    
    \hspace{25em}\ujs@label@ymd
    
    \vspace*{5ex}
    
    \begin{center}
    	{\zihao{-2}\heiti\ujs@label@right}
    \end{center}
    
    \ujs@label@rightcontent
    
    \vspace{4ex}
    
    \ujs@label@rightclassified
    
    \vspace{4ex}
    
    \ujs@label@authorsignature\hspace{14em}\ujs@label@advisorsignature 
    
    \hspace{8em}\ujs@label@ymd\hspace{15em}\ujs@label@ymd
    
    \clearpage
    \thispagestyle{empty}
}

\newcommand{\makeeninnertitle}{
	\clearpage

    %\pdfbookmark[0]{英文论文信息}{eninnertitle}
    \thispagestyle{empty}
    \leftline{{\zihao{-2} Classified~ Index:~ \ujs@value@classnumber}}
    \vspace*{1ex}
    \leftline{{\zihao{-2} UDC:~ \ujs@value@udc }}

    \vspace*{2.0cm}

    \begin{center}
    { \zihao{2} \ujs@value@englishdegreetype \par
    	    	
    \vspace*{2.0cm}

    \zihao{-2} \bfseries \ujs@value@englishtitle} \par

    \vspace*{2.0cm} \par
    
    {\zihao{2} By { \ujs@value@englishauthor }} \par

    \vspace*{2.0cm} \par

    \begin{tabular}{l}
	 \zihao{3} Major: \ujs@value@englishmajor \\
	 \zihao{3} Supervisor: \ujs@value@englishadvisor 
    \end{tabular} \par
    
    \vspace*{2.0cm} \par
    
    {\zihao{3} Jiangsu University}\par
    {\zihao{3} \ujs@value@defenseenglishdate}
     
     \end{center}
     \vspace*{1cm}\par
	 \clearpage
	\thispagestyle{empty}
}

% 设置摘要页
\newcommand{\makeabstract}{
    \chapter*{\ujs@label@cabstract}{
        \addcontentsline{toc}{chapter}{\ujs@label@cabstract}
        \setcounter{page}{1}  % 重置页码
        \pagenumbering{Roman} % 页码使用大写罗马数字
        \ujs@value@cabstract

        \vspace{\baselineskip}
        \noindent {\bfseries\songti \ujs@label@ckeywords：}\ujs@value@ckeywords
    }

    \chapter*{\ujs@label@eabstract}{
        \addcontentsline{toc}{chapter}{\ujs@label@eabstract}
        \ujs@value@eabstract

        \vspace{\baselineskip}
        \noindent {\bfseries\songti \ujs@label@ekeywords:} \ujs@value@ekeywords
    }
}

% 设置致谢页
\newcommand{\acknowledgement}[1]{
    \chapter*{\ujs@label@acknowledgement}
    \addcontentsline{toc}{chapter}{\ujs@label@acknowledgement}
    {#1}
}

% 设置科研成果页
\newcommand{\achievements}[1]{
    \chapter*{\ujs@label@achievements}
    \addcontentsline{toc}{chapter}{\ujs@label@achievements}
    {#1}
}


% 设置附录A1页面
\newcommand{\appendixA}[1]{
	\chapter*{\ujs@label@appendixA}
	\setcounter{table}{0}   %从0开始编号，显示出来表会A1开始编号
	\setcounter{figure}{0}
	\setcounter{section}{0}
	\setcounter{equation}{0}
	%定义编号格式，在数字序号前加字符“A"
	\renewcommand{\thetable}{A\arabic{table}}
	\renewcommand{\thefigure}{A\arabic{figure}}
	\renewcommand{\thesection}{A\arabic{section}}
	\renewcommand{\theequation}{A\arabic{equation}}
	\addcontentsline{toc}{chapter}{\ujs@label@appendixA}
	{#1}

}

% 设置附录B1页面
\newcommand{\appendixB}[1]{
	\chapter*{\ujs@label@appendixB}
	\setcounter{table}{0}   %从0开始编号，显示出来表会B1开始编号
	\setcounter{figure}{0}
	\setcounter{section}{0}
	\setcounter{equation}{0}
	%定义编号格式，在数字序号前加字符“B"
	\renewcommand{\thetable}{B\arabic{table}}
	\renewcommand{\thefigure}{B\arabic{figure}}
	\renewcommand{\thesection}{B\arabic{section}}
	\renewcommand{\theequation}{B\arabic{equation}}
	\addcontentsline{toc}{chapter}{\ujs@label@appendixB}
	{#1}
}

% 设置空白页	
\newcommand{\myemptypage}{	
	\null	
	\thispagestyle{empty}	
	\addtocounter{page}{ -1}	
	\newpage	
}
\newcommand{\bs}{\boldsymbol}

\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}

\newcommand{\D}{{\cal D}}
\newcommand{\HH}{{\cal H}}

\newcommand{\mA}{{\bs A}}
\newcommand{\mB}{{\bs B}}
\newcommand{\mC}{{\bs C}}
\newcommand{\mD}{{\bs D}}
\newcommand{\mH}{{\bs H}}
\newcommand{\mI}{{\bs I}}
\newcommand{\mG}{{\bs G}}
\newcommand{\mK}{{\bs K}}
\newcommand{\mM}{{\bs M}}
\newcommand{\mQ}{{\bs Q}}
\newcommand{\mR}{{\bs R}}
\newcommand{\mS}{{\bs S}}
\newcommand{\mT}{{\bs T}}
\newcommand{\mU}{{\bs U}}
\newcommand{\mP}{{\bs P}}
\newcommand{\mX}{{\bs X}}

\newcommand{\mDelta}{{\bs \Delta}}

\newcommand{\mLambda}{{\bs \Lambda}}
\newcommand{\mSigma}{{\bs \Sigma}}
\newcommand{\mPhi}{{\bs \Phi}}
\newcommand{\mPi}{{\bs \Pi}}
\newcommand{\1}{{\textbf{1}}}

\def\R{\ensuremath{\mathbb{R}}}
\def\U{\ensuremath{\mathcal{U}}}
\def\N{\ensuremath{\mathcal{N}}}
\def\mN{\ensuremath{\mathbb{N}}}
\def\E{\ensuremath{\mathbb{E}}}

\newcommand{\va}{{\bs a}}
\newcommand{\vd}{{\bs d}}
\newcommand{\ve}{{\bs e}}
\newcommand{\vg}{{\bs g}}
\newcommand{\vt}{{\bs t}}
\newcommand{\vq}{{\bs q}}
\newcommand{\vu}{{\bs u}}
\newcommand{\vk}{{\bs k}}
\newcommand{\vl}{{\bs l}}
\newcommand{\vr}{{\bs r}}
\newcommand{\vw}{{\bs w}}
\newcommand{\vx}{{\bs x}}
\newcommand{\vz}{{\bs z}}

\newcommand{\hatvw}{{\widetilde{\bs w}}}


\newcommand{\bA}{\bs{\mathcal {A}}}
\newcommand{\bI}{\bs{\mathcal {I}}}
\newcommand{\bQ}{\bs{\mathcal {Q}}}
\newcommand{\bR}{\bs{\mathcal {R}}}
\newcommand{\bS}{\bs{\mathcal {S}}}
\newcommand{\bT}{\bs{\mathcal {T}}}
\newcommand{\bP}{\bs{\mathcal {P}}}
\newcommand{\bN}{\bs{\mathcal {N}}}
\newcommand{\0}{{\bs 0}}

\newcommand{\valpha}{{\bs \alpha}}
\newcommand{\vkappa}{{\bs \kappa}}
\newcommand{\vomega}{{\bs \omega}}
\newcommand{\vpsi}{{\bs \psi}}
\newcommand{\hatvpsi}{{\widetilde{\bs \psi}}}

\def\mse{\text{mse}}
\def\ex{\text{ex}}%emse
\def\EMSE{\text{EMSE}}%emse
\def\erf{\text{erf}}
\def\MSD{\text{MSD}}
\def\tmin{\text{min}}
\def\col{\text{col}}
\def\diag{\text{diag}}
\def\vec{\text{vec}}
\def\opt{\text{opt}}
\def\sign{\text{sgn}}
\def\tr{\text{tr}}

\def\cblue{\textcolor{blue}}%black
\def\cred{\textcolor{red}}
