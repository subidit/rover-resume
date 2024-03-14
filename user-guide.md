Your résumé is a single page document that highlights your achievements to potential employer. its sole purpose is to get you to the interview call. Since recruiters spent only few seconds on each résumé before piling it to either *move-forward* or *reject* pile, all your résumé needs to do is be concise, easy to skim over and fulfill all requirements. That's why LaTeX is a good option for this job. You put most of your effort in modifying your content according to the job requirements and let LaTeX handle the formatting. 

You don't need a 400 lines long template to format your one pager. 

We can use standard LaTeX commands like `\section`, `\subsection` to format our experience, education etc. and for bullet points `\begin{itemize}...\end{itemize}` should suffice. We can use description lists for skills and bulleted lists or enumerated list for certifications, awards, leadership experience, publications etc. 

## Tips
1. **Stick to Single Column Layout**: Recruiters and ATS prefer resumes with a single column layout.
2. **Avoid Skill Graphs**: Skill graphs are not meaningful. Instead, list your skills clearly.
3. **Keep Design Simple**: Effective design is simple and easy to understand.
4. **Focus on Information**: Your resume's content is crucial.
5. **Maintain Consistency**: Repeat similar text blocks to maintain a clear hierarchy.
6. **Facilitate Skimming**: Make it easy for recruiters to quickly find relevant information by using clear headings and bullet points.
7. **Utilize ChatGPT for Bullet Points**: Use ChatGPT to generate bullet points for your past experiences, making them more relevant and engaging.

## Base Rover

This template uses minimal customization commands. Use it as your starting point to understand how these templates are formatted. 


## Fancy Rover

This template has many bells and whistles for customization. This will show you how to customise various aspects of the document design. But remember don't go over-board with colours and fonts as too many cooks spoil the broth.  

## Star Rover

It uses two custom commands `\uthree` and `\ufour`. It also moves the preamble to another file. 

## Milky Rover

Based on (rather copied from) the [Butterick’s practical typography](https://practicaltypography.com/resumes.html) resume template. I used the same text to make it easier for comparison. Bigest hardle was to get a similar look without using the same fonts. Since I had to use only free fonts available with TeX installation, I had to adjust the letterspacing in rather hacky way. Anyway, I feel the end result looks pretty decent. 


# Base 
```latex
\usepackage[empty]{fullpage}
\setcounter{secnumdepth}{0} % remove section numbering

\usepackage{enumitem} % formatting list style
  \setlist[itemize]{left=0pt..1.5em}
  \setlist{itemsep=0pt, align=left}
  % \setlist{nosep}

\usepackage{titlesec}
  \titlespacing{\section}{0pt}{*4}{*2}
  \titlespacing{\subsection}{0pt}{*3}{*0}
  \titlespacing{\subsubsection}{0pt}{*0}{*0.5}
  \titleformat{\section}{\large\bfseries\uppercase}{}{}{}[\titlerule]
  \titleformat{\subsection}{\large\bfseries\scshape}{}{}{}
  \titleformat{\subsubsection}{\large\bfseries\itshape}{}{}{}
```

# Headers

## Basic Centered
This is the most versatile implimentation with no requiremt of any other packages and also looks balanced in most cases.
```tex
\begin{center}
    {\huge\bfseries\uppercase{Rover Résumé}\par}
    \medskip
    Address Line 1, City, State $|$ 
    email@example.com $|$ 
    phone: (123) 456 7890 
\end{center}
```

## Centered with Icons & Colour
```tex
\usepackage[dvipsnames]{xcolor}
\usepackage{fontawesome5}
%=== \begin{document}
\begin{center}
    {\color{Sepia}\huge\bfseries 
        Rover Résumé 
    \par}
    \medskip
    \faEnvelope\ email $|$  
    \faMobile\ phone $|$ 
    \faLinkedin LinkedIn.com/username $|$ 
    \faGithub GitHub.com/username 
\end{center}
```

## Minipage
```tex
\begin{center}
    \begin{minipage}{0.5\textwidth}
        {\LARGE \bfseries Rover Résumé} \\
        Something Engineer
    \end{minipage} \hfill 
    \begin{minipage}{0.4\textwidth}
      \raggedleft
        address \\
        email \\
        phone
    \end{minipage}
\end{center}
```

## 3 columns with `multicol`
```tex
\usepackage{multicol}
%=== \begin{document}
\begin{multicols}{3}
    
    \noindent
    address line 1 \\
    address line 2 \\
    City, State 
    \columnbreak

    {\centering\Large\bfseries\uppercase{Rover Résumé}} 
    \columnbreak

    \raggedleft
    Email \\
    Mobile \\
    LinkedIn

\end{multicols}
```

## Multicolumns with minipages
```tex
\usepackage{fontawesome5}
\usepackage{xcolor}
%=== \begin{document}
\begin{center}
\begin{minipage}{.3\textwidth}
    {\color{gray}\faEnvelope} email \\ 
    \faMobile\ phone \\
    \faWindowRestore[regular] example.com
\end{minipage}\hfill
\begin{minipage}{.3\textwidth}
    {\centering\color{red}\Large\bfseries\sffamily Rover Résumé}
\end{minipage}\hfill
\begin{minipage}{.3\textwidth}
    \raggedleft
    LinkedIn.com/username \faLinkedin \\
    GitHub.com/username \faGithub \\
    Facebook.com/link \faFacebook \\
\end{minipage}
\end{center}
```

## 3 columns with packages
```tex
\usepackage{hyperref}
\usepackage{xcolor}
\usepackage{fontawesome5}
%=== \begin{document}
\begin{multicols}{3}
  \begin{flushleft}
    {\color{gray}{\faLinkedin}} \href{https://www.linkedin.com/in/yourprofile}{yourprofile}\\
    {\textcolor{gray}{\faGithub}} \href{https://github.com/yourusername}{yourusername}\par
  \end{flushleft}
  
    \columnbreak

    \begin{center}
        {\huge\textsf{\textbf{Bold Sans Serif}}} \par
        1 infinite loop, Menlo Park, CA \par
    \end{center}

    \columnbreak

    \begin{flushright}
        \textcolor{gray}{\faMobile} \texttt{(123) 456-7890} \\
        \textcolor{gray}{\faEnvelope} \href{mailto:youremail@example.com}{email@example.com}\par
    \end{flushright}
\end{multicols}
```

# Lists

List structures in LaTeX are simply environments which essentially come in three types:

- `itemize` for a bullet list
- `enumerate` for an enumerated list and
- `description` for a descriptive list.

## `enumitem` package
*Control layout of itemize, enumerate, description.* [Package Link](https://ctan.org/pkg/enumitem)


We use this package to customize the three basic list environments (`enumerate`, `itemize` and `description`) and to design your own lists, with a `⟨key⟩=⟨value⟩` syntax. 

Extensions provided by enumitem: 

**Vertical spacing:**
- topsep
- partopsep 
- parsep
- itemsep

**Horizontal spacing:**
* leftmargin
* rightmargin
* listparindent 
* labelwidth
* labelsep
* itemindent

### Some common settings
To remove the vertical space altogether in a list:

```tex
\begin{enumerate}[nosep]
```

To remove the vertical space altogether in all lists: 

```tex
\setlist{nosep}
```

To start the label at the margin and the item text at the current parindent:

```tex
\begin{enumerate}[left=0pt .. \parindent]
```

### Horizontal spacing of labels
```
\leftmargin + \itemindent = 
\labelindent + \labelwidth + \labelsep
```


# Titles

## Commands Usage

`titlesec` package is used to format the titles. We use the commands like this-
* `\section{}` - for Section headings. For eg. **Education**, **Experience**, **Skills** etc.
* `\subsection{}` - for primary title. Like- **University Name, Location**, **Company Name, Duration of employment** etc.
* `\subsubsection{}` - for Secondary tile containg associated information about primary title. For eg: *Degree Name, Year*, *Job Title, Location* etc.


# Package Options

`titlesec` package gives us the following commands to control the formatting and spacing of titles.
```
\usepackage{titlesec}
\titleformat{<command>}[<shape>]{<format>}{<label>}{<sec>}{<before-code>}[<after-code>]  
\titlespacing{command}{left spacing}{before spacing}{after spacing}[right]
```

Since we have already removed the section numberings with `\setcounter{secnumdepth}{0}`, hence we can leave the commands related to those blank. 


### Options for the `titlesec` Package:

| Option         | Description                                   |
| -------------- | --------------------------------------------- |
| `titleformat`  | Customizes the format of section titles       |
| `titlelabel`   | Customizes the label of the section           |
| `titlespacing` | Adjusts the spacing around section titles     |
| `titleline`    | Draws a line under section titles             |
| `pagestyles`   | Customizes page headers and footers           |
| `newparttoc`   | Adds a table of contents for parts            |
| `appendix`     | Configuration for appendices                  |
| `extramarks`   | Marks for page headers/footers                |
| `toctitles`    | Formatting of titles in the table of contents |


### Options for the `enumitem` Package:

| Option          | Description                                                    |
| --------------- | -------------------------------------------------------------- |
| `label`         | Customizes the label for the list items                        |
| `leftmargin`    | Sets the left margin of the list                               |
| `itemsep`       | Adjusts the vertical spacing between items                     |
| `parsep`        | Sets the space between paragraphs within items                 |
| `topsep`        | Defines the space before and after the list                    |
| `partopsep`     | Space before and after the list when it starts a new paragraph |
| `itemindent`    | Indentation of the item text                                   |
| `listparindent` | Paragraph indentation within items (for descriptions)          |
| `left`          | Adjusts the left margin (can be negative)                      |
| `labelindent`   | Indentation of the label                                       |
| `resume`        | Resumes numbering from the previous list                       |
| `align`         | Adjusts the alignment of labels                                |
| `widest`        | Sets the widest label as the reference for indentation         |
| `start`         | Specifies the start value for numbering                        |
| `style`         | Defines the style of labels (e.g., 1, (a), i, etc.)            |
| `ref`           | Provides reference to another list                             |
| `before`        | Inserts content before the list                                |
| `after`         | Inserts content after the list                                 |


### Options for the `hyperref` Package:

| Option              | Description                               |
| ------------------- | ----------------------------------------- |
| `colorlinks`        | Color links (true or false)               |
| `linkcolor`         | Color for internal links                  |
| `citecolor`         | Color for citation links                  |
| `urlcolor`          | Color for URL links                       |
| `linkbordercolor`   | Color of link borders                     |
| `pdfborder`         | Style of the link border                  |
| `linktoc`           | Table of contents link behavior           |
| `breaklinks`        | Allow links to break over multiple lines  |
| `hidelinks`         | Hide links (true or false)                |
| `hypertexnames`     | Use guessable names for links             |
| `bookmarks`         | Add PDF bookmarks (true or false)         |
| `bookmarksopen`     | Open bookmarks on startup (true or false) |
| `bookmarksnumbered` | Number the bookmarks (true or false)      |
| `pdfstartview`      | Initial view of PDF document              |
| `pdfpagemode`       | Page view on opening the PDF              |
