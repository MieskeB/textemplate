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

% For the titlepage template
\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc} % Output font encoding for international characters
\usepackage{stix} % Use the STIX fonts

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
  \begin{titlepage} % Suppresses displaying the page number on the title page and the subsequent page counts as page 1
	
	\raggedleft % Right align the title page
	
	\rule{1pt}{\textheight} % Vertical line
	\hspace{0.05\textwidth} % Whitespace between the vertical line and title page text
	\parbox[b]{0.75\textwidth}{ % Paragraph box for holding the title page text, adjust the width to move the title page left or right on the page
		
		{\Huge\bfseries {#1}}\\[2\baselineskip] % Title
		{\large\textit{#2}}\\[4\baselineskip] % Subtitle or further description
		{\Large\textsc{#3}} % Author name, lower case for consistent small caps
		
		\vspace{0.5\textheight} % Whitespace between the title block and the publisher
		
		{\noindent #4 \\ #5 \\ #6}\\[\baselineskip] % Publisher and logo
	}

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