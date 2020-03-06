# textemplates
To use this template, you have to use PDFLaTeX:
```latex
pdflatex --output-directory=./out document.tex
```

# Commands list
## Main functionalities
### Titlepage
To create the titlepage, paste the following line right under the `\begin{document}`:
```latex
\mainpage{The title}{The subtitle}{Creator1 \\ Creator2}{Company/instance}{v1.0}{\selectlanguage{english}\today}
```
Update the fields to your liking. Languages supported for the today are:
- english
- dutch
- ngerman

### Table of contents
To add a table of contents, add `\tableofcontents`. The whole list will be generated when you run latex twice.

To rename the title of the tableofcontents, add this line on top of `\tableofcontents`:
```latex
\renewcommand{\contentsname}{Contents}
```

### Glossary and acronyms
#### Glossary
To create a glossary item, add the following to `glossary.tex`:
```latex
\newglossaryentry{scg}
{
	name={Section},
	description={A section in a document}
}
```
To reference this glossary item, use `\gls{scg}` in your normal document.

#### Acronym
To create an acronym, add the following to `glossary.tex`:
```latex
\newglossaryentry{sc}
{
	type=\acronymtype,
	name={SC},
	description={Section},
	first={section (SC)\glsadd{scg}},
	see=[Glossary:]{scg}
}
```
To reference this acronym item, use `\gls{sc}` in your normal document.

#### Display
Use `\printglossaries` on the location where you want to display your glossaries.
If you want to rename the glossary or acronym list, add the following:
```latex
\renewcommand*{\glossaryname}{Glossary}
\renewcommand*{\acronymname}{Acronym}
```

#### Add glossary
To add the glossary to the document, add the following line to the top of the document (above `\begin{document}`):
```latex
\input{document/glossary}
```

Then to build the document, run the following three lines (in case where the document's name is 'document'):
```bash
pdflatex -output-directory=./out document.tex
makeglossaries -d out document
pdflatex -output-directory=./out document.tex
```

## User input
### Tables
There are multiple environments for the tables. To create a table with 2 items:
```latex
\begin{table2}{title1}{title2}
item1 & item2 \\
item3 & item4 \\
\end{table2}
```

The environments:
`table1`: A table with 1 column
`table2`: A table with 2 columns
`table3`: A table with 3 columns
`table4`: A table with 4 columns
`table5`: A table with 5 columns

### Main question
If you have a main question for a research or something. To accentuate it you can add the following line to make it look nicer:
```latex
\mainquestion{What? Is this a mainquestion? HERE}
```
