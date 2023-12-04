# Rover Resume Template

## Preview

| [![Fancy Rover](/images/fancy-rover.jpg)](/templates/fancy%20rover/fancy-rover.pdf) | [![Base Rover](/images/base-rover.jpg)](/templates/base%20rover/base-rover.pdf) |
|:----:|:-----:|
| Fancy Rover Template | Base Rover Template |

| [![Milky Rover](/images/milky-rover.jpg)](/templates/milky%20rover/milky-rover.pdf) |
|:----:|
| [Milky Rover Template](https://github.com/subidit/rover-resume/tree/main/templates/milky%20rover) inspired from [Butterick’s practical typography](https://practicaltypography.com/resumes.html). |

### Motivation

I wanted to make a template that reads like an instruction manual and only uses commands necessary to make a document look like a resume. 


## How to Use

1. `\section` for Education, Experience, Certifications, Awards, Skills & Interests etc.
2. Use `\subsection{}` and `\subsubsection` for primary and secondary titles like Institution Name, Position title, Duration etc.
3. Use `\hfill` to right align text in the title.
4. Use `itemize` lists for bullet points.


## Support

For inquiries or support, use the [Discussions](https://github.com/subidit/rover-resume/discussions) tab.

Feel free to contribute to the project or provide feedback by opening an issue or submitting a pull request.

Happy job hunting!

## License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><br><a property="dct:title" rel="cc:attributionURL" href="https://github.com/subidit/rover-resume">Rover Resume</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/subidit/">Subidit</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>

<!-- 

[CC0 1.0 Universal](https://github.com/subidit/rover-resume/blob/main/LICENSE)

Simple résumé template which uses basic LaTeX with explainer comments. 

[![Sample Resume Output](rover-template.png)](https://github.com/subidit/rover-resume/blob/main/rover-template.tex)


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
| `*`            | Compact list style, no extra vertical spacing     |
| `!`            | Inline list style, no vertical spacing between items |

**Options for the `hyperref` Package:**

| Option           | Description                                  |
|------------------|----------------------------------------------|
| `colorlinks`     | Color links (true or false)                  |
| `linkcolor`      | Color for internal links                     |
| `citecolor`      | Color for citation links                     |
| `urlcolor`       | Color for URL links                          |
| `linkbordercolor` | Color of link borders                     |
| `pdfborder`      | Style of the link border                     |
| `linktoc`        | Table of contents link behavior              |
| `breaklinks`     | Allow links to break over multiple lines     |
| `hidelinks`      | Hide links (true or false)                   |
| `hypertexnames`  | Use guessable names for links                |
| `bookmarks`      | Add PDF bookmarks (true or false)            |
| `bookmarksopen`  | Open bookmarks on startup (true or false)    |
| `bookmarksnumbered` | Number the bookmarks (true or false)     |
| `pdfstartview`   | Initial view of PDF document                 |
| `pdfpagemode`    | Page view on opening the PDF                 |

**Options for the `titlesec` Package:**

| Option       | Description                                  |
|--------------|----------------------------------------------|
| `titleformat` | Customizes the format of section titles    |
| `titlelabel`  | Customizes the label of the section        |
| `titlespacing` | Adjusts the spacing around section titles  |
| `titleline`   | Draws a line under section titles            |
| `pagestyles`  | Customizes page headers and footers        |
| `newparttoc`  | Adds a table of contents for parts         |
| `appendix`    | Configuration for appendices                |
| `extramarks`  | Marks for page headers/footers             |
| `toctitles`   | Formatting of titles in the table of contents |

The `*` option in `enumitem` provides a compact list style, and the `!` option provides an inline list style, both without extra vertical spacing between items. These options are particularly useful for creating more compact lists.

The `hyperref` and `titlesec` packages have many options for customizing hyperlinks, PDF properties, section titles, and page headers and footers in documents. These tables provide a subset of the available options for reference.
