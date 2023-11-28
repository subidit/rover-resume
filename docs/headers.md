## What is it
Here we have some snippets for generating headers of different style. Each has its pros and cons. Pick and choose the one that meets your needs.

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
  %\vspace{\fill}
        {\huge\textsf{\textbf{Bold Sans Serif}}} \par
        1 infinite loop, Menlo Park, CA \par
  %\vspace{\fill}
    \end{center}

    \columnbreak

    \begin{flushright}
        \textcolor{gray}{\faMobile} \texttt{(123) 456-7890} \\
        \textcolor{gray}{\faEnvelope} \href{mailto:youremail@example.com}{email@example.com}\par
    \end{flushright}
\end{multicols}
```