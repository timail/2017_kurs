\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kursa4} % будет по-нормальному, но потом


% This file was converted to LaTeX by Writer2LaTeX ver. 1.0.2
% see http://writer2latex.sourceforge.net for more info
\LoadClass
  [14pt,a4paper, oneside]
  {extbook}

% \RequirePackage{polyglossia}\setmainlanguage{russian}


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
% \hypersetup{colorlinks=false, linkcolor=blue, citecolor=blue, filecolor=blue, urlcolor=blue}
\RequirePackage{graphicx}

\makeatletter
\newcommand\arraybslash{\let\\\@arraycr} % ???
\makeatother

% Page layout (geometry)
% \setlength\voffset{-1in}
% \setlength\hoffset{-1in}
% \setlength\topmargin{2cm}
% \setlength\oddsidemargin{2cm}
% \setlength\textheight{24.777668cm}
% \setlength\textwidth{17.001cm}
% \setlength\footskip{26.144882pt}
% \setlength\headheight{0cm}
% \setlength\headsep{0cm}

\RequirePackage{geometry}
\geometry{left=3cm}
\geometry{right=1.5cm}
\geometry{top=2.4cm}
\geometry{bottom=2.4cm}

\input{list_styles.tex} % ,будет, всё будет

% Footnote rule
% \setlength{\skip\footins}{0.119cm}
% \renewcommand\footnoterule{\vspace*{-0.018cm}\setlength\leftskip{0pt}\setlength\rightskip{0pt plus 1fil}\noindent\textcolor{black}{\rule{0.0\columnwidth}{0.018cm}}\vspace*{0.101cm}}

% Pages styles
% \makeatletter
% \newcommand\ps@Standard{
%   \renewcommand\@oddhead{}
%   \renewcommand\@evenhead{}
%   \renewcommand\@oddfoot{}
%   \renewcommand\@evenfoot{\@oddfoot}
%   \renewcommand\thepage{\arabic{page}}
% }
% \makeatother

% \pagestyle{Standard}

\setlength\tabcolsep{1mm} % расстояния между столбцами? таблиц

\renewcommand\arraystretch{1.3} % "полуторный интервал"

% footnotes configuration
\makeatletter
\renewcommand\thefootnote{\arabic{footnote}}
\makeatother