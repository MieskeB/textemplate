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