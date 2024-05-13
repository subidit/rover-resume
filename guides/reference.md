# Reference <!-- omit from toc -->

## Contents <!-- omit from toc -->

- [enumitem](#enumitem)
- [titlesec](#titlesec)
- [geometry](#geometry)
- [fancyhdr](#fancyhdr)
- [hyperref](#hyperref)
- [newcommand](#newcommand)
- [Spaces](#spaces)
- [Font styles \& sizes](#font-styles--sizes)
- [Icons](#icons)
- [Color](#color)
- [Images](#images)
- [Tables](#tables)


## enumitem

To remove the vertical space altogether in a list: `\begin{enumerate}[nosep]`

To remove the vertical space altogether in all lists: `\setlist{nosep}`

To start the label at the margin and the item text at the current parindent: `\begin{enumerate}[left=0pt .. \parindent]`

The key `noitemsep` kills the space between items and paragraphs (i.e., itemsep=0pt and parsep=0pt), while `nosep` kills all vertical spacing.

`\begin{description}[font=\sffamily\bfseries, leftmargin=3cm, style=nextline]` to align description.

Horizontal spacing of labels `\leftmargin + \itemindent = \labelindent + \labelwidth + \labelsep`

`labelwidth=*` ensures that the label width is set to the width of the widest label in the list.

`labelindent=0pt` sets the indentation of the labels to zero.

`itemindent=!` sets the item text indentation to zero, ensuring it aligns with the left margin.

`\begin{description}[leftmargin=6em,style=nextline, align=right]` to right align labels like in tables [r l].

`\begin{enumerate}[itemsep=0pt,left=1.5em .. 3.5em]` for gap between year and awards/certification description.

## titlesec

`\titleformat*{⟨command⟩}{⟨format⟩}` 
This command allows to change the ⟨format⟩ of a sectioning command, as for example: `\titleformat*{\section}{\itshape}`

`rm sf tt md bf up it sl sc` 
Select the corresponding family/series/shape. Default is `bf`.

`big medium small tiny`
Default is `big`, `tiny` are typed in the text size. `medium` and `small` are intermediate

`uppercase`
Uppercases titles. Fragile. Should be the last command.

`\titleformat{⟨command⟩}[⟨shape⟩]{⟨format⟩}{⟨label⟩}{⟨sep⟩}{⟨before-code⟩}[⟨after-code⟩]`

`\titlespacing*{⟨command⟩}{⟨left⟩}{⟨before-sep⟩}{⟨after-sep⟩}[⟨right-sep⟩]` The starred version kills the indentation of the paragraph following the title. If you dislike typing the full skip values, including the plus and minus parameters, an abbreviation `*n` is provided. In the ⟨before-sep⟩ argument this is equivalent to n ex with some stretchability and a minute shrinkability. In the ⟨after-sep⟩ some stretchability (smaller) and no shrinkability. [They stand for n times 1ex plus .3ex minus .06ex and 1ex plus .1ex, respectively.] Thus, you can write `\titlespacing{\section}{0pt}{*4}{*1.5}`

`explicit` (Package option) With it, the title is not implicit after ⟨before-code⟩ but must be given explicitly with #1 as in, for example:
```latex
\usepackage[explicit]{titlesec}
\titleformat{\section}
{..}
{\thesection}{..}{#1.}

% syntax for rules
\titleline[⟨align⟩]{⟨horizontal material⟩}
\titlerule[⟨height⟩]
\titlerule*[⟨width⟩]{⟨text⟩}
```

Put rules across title.
```latex
\usepackage{soul}
\usepackage{xhfill}
\usepackage{titlesec}

\newcommand{\ruled}[1]{
  \leavevmode
  \xrfill[.6ex]{1pt}[gray]~\so{#1}~\xrfill[.6ex]{1pt}[gray]
}
\titleformat{\section}{\large\bfseries\uppercase}{}{}{\ruled}
```

**Default formatting**
| Command           | Default Format        |
|-------------------|-----------------------|
| \section          | \Large\bfseries       |
| \subsection       | \large\bfseries       |
| \subsubsection    | \bfseries             |

The spacing above and below each section heading in LaTeX is typically set to 1.0em with some flexibility for adjustment, allowing for visually pleasing separation between sections. 
Spacing above `1.0em plus 0.5em minus 0.4em` and Spacing below `0.5em plus 0.3em minus 0.1em`.

## geometry

## fancyhdr

```latex
\usepackage{lastpage}
\usepackage{fancyhdr}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{Page \thepage\ of \pageref*{LastPage}}
```

To generate page number only when then there is more than one page:
```latex
\usepackage{lastpage}
\usepackage{fancyhdr}

\AtBeginDocument{
    \ifnum\getpagerefnumber{LastPage}>1
        \pagestyle{fancy}
    \else
        \pagestyle{empty}
    \fi
}

\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\cfoot{Rover Resume -- Page \thepage{} of \getpagerefnumber{LastPage}}
```

## hyperref

`\usepackage[bookmarks=false,hidelinks]{hyperref}`

## newcommand

`\newcommand{\commandname}[<num>][<default>]{<definition>}`


```latex
% Syntax (three regular forms, three starred forms):
\newcommand{\cmd}{defn}
\newcommand{\cmd}[nargs]{defn}
\newcommand{\cmd}[nargs][optargdefault]{defn}
\newcommand*{\cmd}{defn}
\newcommand*{\cmd}[nargs]{defn}
\newcommand*{\cmd}[nargs][optargdefault]{defn}

% \renewcommand instead of \newcommand:
\renewcommand{\cmd}{defn}
\renewcommand{\cmd}[nargs]{defn}
\renewcommand{\cmd}[nargs][optargdefault]{defn}
\renewcommand*{\cmd}{defn}
\renewcommand*{\cmd}[nargs]{defn}
\renewcommand*{\cmd}[nargs][optargdefault]{defn}
```
The starred form of these two forbids the arguments from containing multiple paragraphs of text (i.e., a \par token; in plain TeX terms: the commands are not \long). With the default form, arguments can be multiple paragraphs.

`cmd`
Required; \cmd is the command name. It must begin with a backslash, \, and must not begin with the four character string \end. For \newcommand, it must not be already defined. For \renewcommand, this name must already be defined.

`nargs`
Optional; an integer from 0 to 9, specifying the number of arguments that the command takes, including any optional argument. Omitting this argument is the same as specifying 0, meaning that the command has no arguments. If you redefine a command, the new version can have a different number of arguments than the old version.

`optargdefault`
Optional; if this argument is present then the first argument of \cmd is optional, with default value optargdefault (which may be the empty string). If optargdefault is not present then \cmd does not take an optional argument.

`defn`
Required; the text to be substituted for every occurrence of \cmd. The parameters #1, #2, …, #nargs are replaced by the values supplied when the command is called (or by optargdefault in the case of an optional argument not specified in the call, as just explained).

This example has an optional argument and two required arguments.
```latex
\newcommand{\lawyers}[3][company]{#2, #3, and~#1}
I employ \lawyers[Howe]{Dewey}{Cheatem}.
```
The output is ‘I employ Dewey, Cheatem, and Howe.’. The optional argument, Howe, is associated with #1, while Dewey and Cheatem are associated with #2 and #3. Because of the optional argument, \lawyers{Dewey}{Cheatem} will give the output ‘I employ Dewey, Cheatem, and company.’.


## Spaces

`\hfill` 
Produce a rubber length which has no natural space but that can stretch horizontally as far as needed. 
eg. `\noindent Name:\hfill Quiz One`

`\hrulefill` and `\dotfill` 
Produce an infinite horizontal rubber length that LaTeX fills with a rule (that is, a line) or with dots, instead of white space.

`\bigskip`, `\medskip`, and `\smallskip` 
Produce an amount of vertical space, large or medium-sized or small. These commands are fragile. 

`\bigskip` The same as `\vspace{\bigskipamount}`, ordinarily about one line space, with stretch and shrink. The default for the `book` and `article` classes is `12pt plus 4pt minus 4pt`. Similarly for `\medskip` and `\smallskip` it is ` 6pt plus 2pt minus 2pt` and `3pt plus 1pt minus 1pt`.


`\vspace{length}` and `\vspace*{length}`
Add the vertical space length. The length can be positive, negative, or zero. It is a rubber length—it may contain a plus or minus component.
The *-form inserts vertical space that is non-discardable. More precisely, LaTeX discards vertical space at a page break and the *-form causes the space to stay. This example leaves space between the two questions.


## Font styles & sizes

## Icons

## Color

`xcolor` package.
```latex
\usepackage[dvipsnames,svgnames,x11names]{xcolor}

\colorlet[⟨type⟩]{⟨name⟩}[⟨num model⟩]{⟨color⟩}

\definecolor[⟨type⟩]{⟨name⟩}{⟨model-list⟩}{⟨spec-list⟩}
```

## Images

## Tables