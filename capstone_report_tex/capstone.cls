\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{capstone}[2024/10/22 Capstone Report Class]
\LoadClass[12pt, a4paper]{article} % Load the base class report
\RequirePackage[a4paper,top=1in,bottom=1in,left=1.5in,right=1in]{geometry}
\RequirePackage{setspace} % Line spacing
\RequirePackage{titlesec} % Chapter, section, and subsection title formatting
\RequirePackage{fancyhdr}
\setstretch{1.5} % Set line spacing to 1.5
\RequirePackage{datetime}  % To handle date and time
\RequirePackage{hyperref}

% my fav package
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    citecolor=blue,
    urlcolor=blue,
    pdfborder={0 0 0},
    breaklinks=true
}

% Commands for getting month and year together, if I provide \today as argument, change mat karna pls
\newdateformat{monthyear}{\monthname[\THEMONTH] \THEYEAR}
\newcommand{\currentmonthyear}{\monthyear\today}

% this is for sections which are in roman, unko alag treat karre so that TOC me count sahi rhe.
% Introduction should be starting as Chapter 1 in ToC hence ye kara maine
\newcommand{\sectnormal}[1]{%
    \newpage
    \addcontentsline{toc}{section}{#1}% % Add to ToC without number
    {\raggedleft\section*{\MakeUppercase{#1}}}% % Right-aligned, unnumbered section
}


% Yeh setting bas unko pages ko affect karega wherever there are chapters being declared
% Needed a section with title, and neeche ek 2.5pt ka underline.
% don't change, contact @shouryade
\titleformat{\section}
{\normalfont\Large\bfseries\raggedleft} % Add \raggedleft to align right
{}{0em}{}
[{\titlerule[2.5pt]}] % Add a title rule after the section title
\titlespacing{\section}{0pt}{3pt}{10pt} % Section spacing (left indent, before, after)
\newcommand{\sect}[1]{\newpage\section{\MakeUppercase{#1}}}

% Counter numbering for tables and figures
\counterwithin{figure}{section}
\counterwithin{table}{section}

% Settings for list of figures and tables to have no title
\renewcommand{\listfigurename}{}
\renewcommand{\listtablename}{}


% Table of Contents settings
\renewcommand{\contentsname}{\raggedleft\MakeUppercase{Table of Contents}\vspace{-0.3\baselineskip}\par\noindent\makebox[\linewidth]{\rule{\linewidth}{2.5pt}}}
\renewcommand{\refname}{%
    \raggedleft\MakeUppercase{References}
}
\patchcmd{\thebibliography}{\section*{\refname}}{\section*{\refname}\vspace{2\baselineskip}}{}{}
