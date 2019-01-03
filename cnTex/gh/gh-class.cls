%# -*- coding:utf-8 -*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{gh-class}
    [2012/01/15 v1.0 gh document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\PassOptionsToPackage{fallback,CJKchecksingle}{xeCJK}

\LoadClass[c5size,openany,nofonts]{ctexbook}

\RequirePackage[xetex]{geometry}
\RequirePackage[pagestyles,clearempty]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{ifthen}
\RequirePackage[titles]{tocloft}
\RequirePackage[xetex]{xcolor}
\RequirePackage{graphicx}
\RequirePackage[xetex, bookmarksnumbered, pdfstartview={XYZ null null 1}, pdfborder=001, pdfpagemode=UseNone, pdfprintscaling=None]{hyperref}

\hypersetup{
  pdfinfo={
    Title   = {红太阳是怎样升起的},
    Author  = {高华},
    Creator = {XeLaTeX + xeCJK + CTeX}
  }
}

\def\HyPsd@Warning#1{\relax}

\geometry{papersize={145mm,210mm}, textwidth=110mm, lines=30, inner=15mm,
          top=20mm, bindingoffset=5mm, headheight=10mm, headsep=6mm, foot=5mm}

\setmainfont[BoldFont={PalatinoLTStd-Medium}]{PalatinoLTStd-Roman}

\def\xeCJK@fallback@testsymbol#1{%
  \iffontchar\font`#1%
    #1%
  \else{%
    \@nameuse{xeCJK@fallback@\xeCJK@family}%
      \iffontchar\font`#1%
        #1%
      \else\@nameuse{xeCJK@fallback@fallback@\xeCJK@family}%
        #1%
      \fi}%
  \fi}
\def\@cs@str#1{%
  \expandafter\@gobble\detokenize\expandafter{\string#1}}
\def\newCJKfontfamily{\@ifnextchar[%]
  {\CJK@newfont@family@}
  {\CJK@newfont@family}}
\def\CJK@newfont@family#1{\@ifnextchar[%]
  {\@CJK@newfont@family{#1}}
  {\@CJK@newfont@family{#1}[]}}
\def\CJK@newfont@family@[#1]#2{\@ifnextchar[%]
  {\@@CJK@newfont@family{#1}{#2}}
  {\@@CJK@newfont@family{#1}{#2}[]}}
\def\@CJK@newfont@family#1[#2]#3{
  \setCJKfamilyfont{\@cs@str#1}[#2]{#3}
  \DeclareRobustCommand*{#1}{\CJKfamily{\@cs@str#1}}}
\def\@@CJK@newfont@family#1#2[#3]#4{
  \setCJKfamilyfont{#1}[#3]{#4}
  \DeclareRobustCommand*{#2}{\CJKfamily{#1}}}

\setCJKmainfont[BoldFont={FZHei_GB18030-B01},ItalicFont={FZKai-Z03_GB18030}]{FZJSong-Z01S}
\setCJKsansfont[BoldFont={FZLanTingHei-M-GBK},ItalicFont={FZKai-Z03_GB18030}] {FZLanTingHei-R-GBK}
\setCJKmonofont[BoldFont={FZHei_GB18030-B01},ItalicFont={FZKai-Z03_GB18030}]          {FZFangSong-Z02_GB18030}

\setCJKfallbackfamilyfont{\CJKrmdefault}
  [BoldFont={FZHei_GB18030-B01},ItalicFont={FZKai-Z03_GB18030}]{FZShuSong_GB18030-Z01}
\setCJKfallbackfamilyfont{\CJKsfdefault}
  [BoldFont={FZHei_GB18030-B01},ItalicFont={FZKai-Z03_GB18030}]{FZLanTingHei-R-GBK}
\setCJKfallbackfamilyfont{\CJKttdefault}
  [BoldFont={FZHei_GB18030-B01},ItalicFont={FZKai-Z03_GB18030}]{FZFangSong-Z02_GB18030}

\setCJKfallbackfamilyfont{fallback@\CJKrmdefault}[ItalicFont={FZKai-Z03_GB18030}]{Sun-ExtB}

\newCJKfontfamily{\fzwkai}[BoldFont=*]{FZBeiWeiKaiShu-S19_GB18030}  % 方正北魏楷书
\newCJKfontfamily{\fzzhdxian}[BoldFont=*]{FZZhongDengXian_GB18030-IER} % 方正中等线
\newCJKfontfamily{\fzltheib}[BoldFont=*]{FZLanTingHei-RC-GBK}         % 方正兰亭黑扁
\newCJKfontfamily{\fzydzhhei}  [BoldFont=*] {FZYunDongHei-M-GBK}          % 方正韵动中黑
\newCJKfontfamily{\fzzhysong}  [BoldFont=*] {FZYaSong-DB-GBK}             % 方正中雅宋
\newCJKfontfamily{\fzliukai}   [BoldFont=*] {FZSuXinShiLiuKaiS-R-GB}      % 方正苏新诗柳楷简体


\@namedef{xeCJK@kaiming：}{}
\@namedef{xeCJK@kaiming；}{}

\punctstyle{mixedwidth}

\CJKsetecglue{}

\parskip           \z@
\clubpenalty      -\@m
\widowpenalty      \z@
\interlinepenalty -\@m

\raggedbottom

\newcommand\titlematter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagestyle{empty}%
  \pagenumbering{Alph}}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagestyle{main}%
  \pagenumbering{Roman}}
\renewcommand\mainmatter{%
  \cleardoublepage
  \@mainmattertrue
  \pagestyle{main}%
  \pagenumbering{arabic}}
\renewcommand\backmatter{%
  \clearpage
  \@mainmatterfalse}
\newcommand\fillinner{%
  \if@twoside
    \ifodd\c@page\raggedleft\else\raggedright\fi
  \else
    \raggedleft
  \fi}
\newcommand\fillouter{%
  \if@twoside
    \ifodd\c@page\raggedright\else\raggedleft\fi
  \else
    \raggedright
  \fi}

\DeclareRobustCommand*\KG{\kern\ccwd}
\DeclareRobustCommand*\@cdot{\raisebox{.5ex}{.}}

\def\CTEX@postchapter{章}
\renewcommand\contentsname{目\KG 录}

\newdimen\ruleheight
\ruleheight=.8\p@
\renewcommand\setheadrule[2][2mm]{%
  \ifdim#1=\z@
    \let\makeheadrule\@empty
  \else
    \def\makeheadrule{\rule[-#1]{\linewidth}{#2}}%
  \fi}

\newpagestyle{main}[\sffamily\boldmath\small]{%
  \sethead[$\cdot$\enskip\thepage\enskip$\cdot$]
          []
          [\ifthechapter{\CTEXthechapter\hspace\ccwd\chaptertitle}{\chaptertitle}%
           {}]
	  { \ifthesection{\CTEXthesection\hspace\ccwd\sectiontitle}
	  {\ifthechapter{\CTEXthechapter\hspace\ccwd\chaptertitle}{\chaptertitle}} }
          {}%
          {$\cdot$\enskip\thepage\enskip$\cdot$}%
  \setheadrule\ruleheight}



\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
      \refstepcounter{chapter}%
      \typeout{\CTEXthechapter}%
      \addcontentsline{toc}{chapter}
        {\protect\numberline{\CTEXthechapter}#1}%
    \else
      \addcontentsline{toc}{chapter}{#1}%
    \fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}%
  \@afterheading
  \fi}

\titleformat{\section}{\filcenter\fzydzhhei\sffamily}{\arabic{chapter}-\arabic{section}}{.5em}{}
 
\titleformat{\chapter}[display]
            {\zihao{4}\fzzhysong\ifthechapter{\fillinner}{\filcenter}}
            {\fzltheib\fillouter\zihao{-4}\CTEXthechapter\\[-2\p@] \titlerule[\ruleheight]\addvspace{-\baselineskip}}
            {\z@}
            {}

\titlespacing*{name=\chapter,numberless}
              {\z@}{-10\p@}{2\baselineskip-\ccwd}
\titlespacing*{\chapter}
              {\z@}{-13\p@}{2\baselineskip-\ccwd}

\titlecontents{chapter}[5.0em]{}
{\contentslabel{5.0em}}{\hspace*{-5.0em}}
{\titlerule*[.5em]{$\cdot$}{\bfseries\contentspage}}
\titlecontents{section}[5.0em]{\fzwkai}
{\contentslabel{2.7em}}{\hspace*{-3.0em}}
{\titlerule*[.5em]{$\cdot$}{\contentspage}}
\renewenvironment{quote}{\CTEXindent
    \@beginparpenalty\@m\relax
    \list{}{%
      \labelwidth\z@
      \labelsep\z@
      \leftmargin\parindent
      \parsep\parskip
      \itemsep\z@
      \topsep\z@
      \partopsep\parskip
      \listparindent\parindent
      \itemindent\listparindent
      \advance\itemindent\labelsep}%
    \item\relax\itshape}
  {\endlist\ignorespacesafterend}

\DeclareRobustCommand{\[}{\begin{quote}\obeylines}
\DeclareRobustCommand{\]}{\end{quote}}


\newcommand\named[1]{{\unskip\nobreak\hfil\penalty50\quad\hbox{}\nobreak\hfill
  \normalfont ——\,#1\parfillskip\z@ \finalhyphendemerits\z@ \par}}

\newcommand\cipaim[1]{{\upshape\fzzhdxian 【#1】}\enspace\ignorespaces}

\def\textuni#1{\char"#1}

\newenvironment{preface}{
    \chapter{\prefacename}
    \vspace{2\baselineskip}
    \titlerule[\ruleheight]
    \vspace{2\baselineskip}}


\def\backmatter{%
  \cleardoublepage\@mainmatterfalse
  \def\prefacename{後记}}

\endinput
%%
%% End of file `gh-class.cls'.
