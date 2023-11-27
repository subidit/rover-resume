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


**Options for the `enumitem` Package:**

| Option         | Description                                      |
|----------------|--------------------------------------------------|
| `label`        | Customizes the label for the list items          |
| `leftmargin`   | Sets the left margin of the list                 |
| `itemsep`      | Adjusts the vertical spacing between items       |
| `parsep`       | Sets the space between paragraphs within items   |
| `topsep`       | Defines the space before and after the list      |
| `partopsep`    | Space before and after the list when it starts a new paragraph |
| `itemindent`   | Indentation of the item text                      |
| `listparindent` | Paragraph indentation within items (for descriptions) |
| `left`         | Adjusts the left margin (can be negative)        |
| `labelindent`  | Indentation of the label                          |
| `resume`       | Resumes numbering from the previous list         |
| `align`        | Adjusts the alignment of labels                   |
| `widest`       | Sets the widest label as the reference for indentation |
| `start`        | Specifies the start value for numbering          |
| `style`        | Defines the style of labels (e.g., 1, (a), i, etc.) |
| `ref`          | Provides reference to another list               |
| `before`       | Inserts content before the list                  |
| `after`        | Inserts content after the list                   |


**Options for the `hyperref` Package:**

| Option           | Description                                  |
|------------------|----------------------------------------------|
| `colorlinks`     | Color links (true or false)                  |
| `linkcolor`      | Color for internal links                     |
| `citecolor`      | Color for citation links                     |
| `urlcolor`       | Color for URL links                          |
| `linkbordercolor` | Color of link borders                       |
| `pdfborder`      | Style of the link border                     |
| `linktoc`        | Table of contents link behavior              |
| `breaklinks`     | Allow links to break over multiple lines     |
| `hidelinks`      | Hide links (true or false)                   |
| `hypertexnames`  | Use guessable names for links                |
| `bookmarks`      | Add PDF bookmarks (true or false)            |
| `bookmarksopen`  | Open bookmarks on startup (true or false)    |
| `bookmarksnumbered` | Number the bookmarks (true or false)      |
| `pdfstartview`   | Initial view of PDF document                 |
| `pdfpagemode`    | Page view on opening the PDF                 |


**Options for the `titlesec` Package:**

| Option       | Description                                  |
|--------------|----------------------------------------------|
| `titleformat` | Customizes the format of section titles    |
| `titlelabel`  | Customizes the label of the section        |
| `titlespacing`| Adjusts the spacing around section titles  |
| `titleline`   | Draws a line under section titles          |
| `pagestyles`  | Customizes page headers and footers        |
| `newparttoc`  | Adds a table of contents for parts         |
| `appendix`    | Configuration for appendices               |
| `extramarks`  | Marks for page headers/footers             |
| `toctitles`   | Formatting of titles in the table of contents |
