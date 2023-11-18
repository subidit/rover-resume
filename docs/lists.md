List structures in LaTeX are simply environments which essentially come in three types:

- `itemize` for a bullet list
- `enumerate` for an enumerated list and
- `description` for a descriptive list.

## `enumitem` package
*Control layout of itemize, enumerate, description.* [Link](https://ctan.org/pkg/enumitem)


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

```
\begin{enumerate}[nosep]
```

To remove the vertical space altogether in all lists: 

```
\setlist{nosep}
```

To start the label at the margin and the item text at the current parindent:

```
\begin{enumerate}[left=0pt .. \parindent]
```

### Horizontal spacing of labels
```
\leftmargin + \itemindent = \labelindent + \labelwidth + \labelsep
```