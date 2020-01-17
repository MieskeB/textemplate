% About this document
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_class}[2020/01/15 Test]

% Default article class
\LoadClass{article}

% For header customization
\usepackage{color}
\usepackage[table]{xcolor}
\usepackage{titlesec}
\usepackage{booktabs}

% Define the main colors
\definecolor{brown}{rgb}{0.83, 0.61, 0.33}
\definecolor{grey}{rgb}{0.68, 0.68, 0.68}


% Main page
% #1 = Title
% #2 = Subtitle
% #3 = By
% #4 = Editor affiliation
% #5 = Version
% #6 = Date
\newcommand{\mainpage}[6]{
  \begin{titlepage}
    \centering
    \scshape
    \vspace*{\baselineskip}
    \rule{\textwidth}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt}
    \rule{\textwidth}{0.4pt}
    \vspace{0.75\baselineskip}
    {\LARGE #1}
    \vspace{0.75\baselineskip}
    \rule{\textwidth}{0.4pt}\vspace*{-\baselineskip}\vspace{3.2pt}
    \rule{\textwidth}{1.6pt}
    \vspace{2\baselineskip}
    #2 \\
    \vspace*{3\baselineskip}
    Edited By \\
    \vspace{0.5\baselineskip}
    {\scshape\Large #3 \\}
    \vspace{0.5\baselineskip}
    \textit{#4}
    \vfill
    \plogo
    \vspace{0.3\baselineskip}
    #6 \\
    {\large #5}
  \end{titlepage}
}


% Customize the sections and subsections
\titleformat{\section}
  {\color{brown}\Large\scshape\raggedright}
  {\thesection. }{0em}
  {}
  [\titlerule]
\titleformat{\subsection}
  {\color{brown}\large\scshape\raggedright}
  {\thesubsection. }{0em}
  {}



\newenvironment{tab}[3]{
  \begin{tabular}{c c c}
  \toprule
  \rowcolor{brown}
  #1 & #2 & #3 \\
  \midrule
}
{
  \bottomrule
  \end{tabular}
}