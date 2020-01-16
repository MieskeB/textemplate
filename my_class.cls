% About this document
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_class}[2020/01/15 Test]

% Default article class
\LoadClass{article}

% For header customization
\usepackage{color}
\usepackage{titlesec}
\usepackage{amsmath}
\usepackage{tikz}
\usepackage{epigraph}
\usepackage{lipsum}

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
  \begin{titlepage} % Suppresses headers and footers on the title page

  \centering % Centre everything on the title page
  
  \scshape % Use small caps for all text on the title page
  
  \vspace*{\baselineskip} % White space at the top of the page
  
  %------------------------------------------------
  % Title
  %------------------------------------------------
  
  \rule{\textwidth}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt} % Thick horizontal rule
  \rule{\textwidth}{0.4pt} % Thin horizontal rule
  
  \vspace{0.75\baselineskip} % Whitespace above the title
  
  {\LARGE #1} % Title
  
  \vspace{0.75\baselineskip} % Whitespace below the title
  
  \rule{\textwidth}{0.4pt}\vspace*{-\baselineskip}\vspace{3.2pt} % Thin horizontal rule
  \rule{\textwidth}{1.6pt} % Thick horizontal rule
  
  \vspace{2\baselineskip} % Whitespace after the title block
  
  %------------------------------------------------
  % Subtitle
  %------------------------------------------------
  
  #2 % Subtitle or further description
  
  \vspace*{3\baselineskip} % Whitespace under the subtitle
  
  %------------------------------------------------
  % Editor(s)
  %------------------------------------------------
  
  Edited By
  
  \vspace{0.5\baselineskip} % Whitespace before the editors
  
  {\scshape\Large #3 \\} % Editor list
  
  \vspace{0.5\baselineskip} % Whitespace below the editor list
  
  \textit{#4} % Editor affiliation
  
  \vfill % Whitespace between editor names and publisher logo
  
  %------------------------------------------------
  % Publisher
  %------------------------------------------------
  
  \plogo % Publisher logo
  
  \vspace{0.3\baselineskip} % Whitespace under the publisher logo
  
  #6 % Publication year
  
  {\large #5} % Publisher

\end{titlepage}
}


% Customize the sections and subsections
\titleformat{\section}
  {\color{brown}\Large\scshape\raggedright}
  {\thesection. }{0em}
  {}
  [\titlerule]
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{
  \section[#1]{#1 \hfill #2}
}

\newcommand{\datedsubsection}[2]{
  \subsection[#1]{#1 \hfill #2}
}

\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

\newcommand{\contact}[5]{
  \centerline{
    \makebox[0pt][c]{
      #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3 {\large\textperiodcentered} #4 {\large\textperiodcentered} #5
    }
  }
}

\newcommand{\longcontact}[5]{
	\noindent
	#1\hfill {\large\textperiodcentered}\hfill #2\hfill{\large\textperiodcentered}\hfill #3\\ #4\hfill #5
}

\newcommand{\workitems}[3]{
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}
}