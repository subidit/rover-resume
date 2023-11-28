We prefer using `\section{}`, `\subsection{}` over custom commands because:
1. Maintains hirarchy
2. Avoids orphan headings at the bottom of the page

## Commands Usage

`titlesec` package is used to format the titles. We use the commands like this-
* `\section{}` - for Section headings. For eg. **Education**, **Experience**, **Skills** etc.
* `\subsection{}` - for primary title. Like- **University Name, Location**, **Company Name, Duration of employment** etc.
* `\subsubsection{}` - for Secondary tile containg associated information about primary title. For eg: *Degree Name, Year*, *Job Title, Location* etc.


## Package Options

`titlesec` package gives us the following commands to control the formatting and spacing of titles.
```
\usepackage{titlesec}
\titleformat{<command>}[<shape>]{<format>}{<label>}{<sec>}{<before-code>}[<after-code>]  
\titlespacing{command}{left spacing}{before spacing}{after spacing}[right]
```

Since we have already removed the section numberings with `\setcounter{secnumdepth}{0}`, hence we can leave the commands related to those blank. 