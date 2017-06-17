\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kursa4}

\LoadClass
  [14pt,a4paper, oneside]
  {extbook}


\RequirePackage{xltxtra}

\setromanfont{Times New Roman}
\linespread{1.3}

\RequirePackage[russian]{babel}

\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage{color}
\RequirePackage{array}
\RequirePackage{supertabular}
\RequirePackage{hhline}
\RequirePackage{hyperref}


\RequirePackage{graphicx}
\RequirePackage[figurename=Иллюстрация]{caption}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}


% \captionsetup{figurewithin=none}


\makeatletter
\newcommand\arraybslash{\let\\\@arraycr} % ???
\makeatother


\RequirePackage{geometry}
\geometry{left=3cm}
\geometry{right=1.5cm}
\geometry{top=2.4cm}
\geometry{bottom=2.4cm}

% \input{list_styles.tex} % ,будет, всё будет
\newcounter{saveenum}

\setlength\tabcolsep{1mm} % расстояния между столбцами? таблиц

\renewcommand\arraystretch{1.3} % "полуторный интервал"

% footnotes configuration
\makeatletter
\renewcommand\thefootnote{\arabic{footnote}}
\makeatother


%%% главы вне нумерации
\newcommand{\chapteroid}[1]{\chapter*{#1} \addcontentsline{toc}{chapter}{#1}}



%%% title format

\RequirePackage{titlesec}

\titleformat{\chapter}[block]{\centering\normalfont\large\bfseries}{\chaptertitlename\ \thechapter.}{0.3cm}{}

\titleformat{\section}[block]{\centering\normalfont\bfseries}{\thesection.}{0.5em}{}

\titleformat{\subsection}[block]{\centering\normalfont\bfseries}{\thesubsection.}{0.5em}{}


%%% titlepage
\makeatletter
\renewcommand{\maketitle}{

  \begin{titlepage}

    \thispagestyle{empty}

    \centerline{САНКТ-ПЕТЕРБУРГСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ}
    \centerline{Направление «Филология»}
    \centerline{Образовательная программа «Отечественная филология (Русский язык и литература)»}

    \vfill

    \begin{center}
      \large\textbf\@title
    \end{center}

    \vfill

    \hfill Курсовая работа

    \hfill студентки III курса 

    \hfill Матуа Ирмы Отраиевны

    \vspace{2cm}

    \hfill Научный руководитель:

    \hfill кандидат филологических наук, доцент

    \hfill Светлана Вадимовна Вяткина

    \vfill

    \centerline{\small{Санкт-Петербург}} 
    \centerline{\small\@date}

    \clearpage

  \end{titlepage}
}
\makeatother


%% Оглавление
  %%%
  \setcounter{tocdepth}{2}
  \renewcommand\contentsname{Оглавление}
      
  \makeatletter
  \renewcommand\tableofcontents{%
      \thispagestyle{empty}
      \section*{\centering\contentsname
          \@mkboth{%
             \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
      \@starttoc{toc}%
  }
  \makeatother

  
  % \newcommand\oldtoc{}
  % \let\oldtoc\tableofcontents
  % \renewcommand\tableofcontents{
  % %   \oldtoc
  % % }