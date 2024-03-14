<div align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="/images/Rover-black-bg.jpg">
    <img alt="Daytona logo" src="/images/Rover-white-bg.jpg" width="40%">
  </picture>
</div>

# Rover Resume Template

Learn to format your résumé with very few LaTeX commands. 

### Quick start
[Edit on Overleaf.](https://www.overleaf.com/latex/templates/rover-resume/bpzqtssvfgsn)

## Preview

| [![Base Rover](/images/base-rover.jpg)](/templates/base%20rover/base-rover.pdf) | [![Fancy Rover](/images/fancy-rover.jpg)](/templates/fancy%20rover/fancy-rover.pdf) | 
|:----:|:-----:|
| Base Rover Template | Fancy Rover Template |

| [![Milky Rover](/images/milky-rover.jpg)](/templates/milky%20rover/milky-rover.pdf) | [![Star Rover](/images/star-rover.jpg)](/templates/star%20rover/star-rover.pdf) | 
|:----:| :----:|
| [Milky Rover Template](https://github.com/subidit/rover-resume/tree/main/templates/milky%20rover) inspired from [Butterick’s practical typography](https://practicaltypography.com/resumes.html). | Star Rover Template |


## How to Use

- Fork or download this repository. 
- Choose a template.
- Fill out your details.

1. `\section` for Education, Experience, Certifications, Awards, Skills & Interests etc.
2. Use `\subsection{}` and `\subsubsection` for primary and secondary titles like Institution Name, Position title, Duration etc.
3. Use `\hfill` to right align text in the title.
4. Use `itemize` lists for bullet points.

Check [User Guide](user-guide.md) for more options.

## Templates

**Base Rover**: No custom commands. Easy to understand and customize. Plain and simple.

**Fancy Rover**: Font specific commands for for different weights and sizes. `ifelse` for conditional vertical spacing.

**Star Rover**: Separate `preamble.tex` file. Two custom commands- unit with three arguments `\uthree`, for single line headers, and `\ufour` for double line headers.

```latex
\uthree{<University/Company>}{<Degree/Designation>}{Duration}{
  \item List one
  \item List two etc
}

\ufour{<Organization>}{<Location>}{<Designation>}{<Duration>}{
  \item List one
  \item List two etc
}
```

## Support

For inquiries or support, use the [Discussions](https://github.com/subidit/rover-resume/discussions) tab.

Feel free to contribute to the project or provide feedback by opening an issue or submitting a pull request.

Happy job hunting!

## Tips

- Single column layout is the preferred choice of both recruiters and ATS.
- Don't use graphs to show your skill levels as they don't really mean anything.
- Good design is simple and effective. 
- Information is king. 
- Maintain hierarchy by repeating similar text blocks.
- Make it easy for the recruiter to skim the document and find the information they are looking for.
- You can use ChatGPT for generating related bullet points of your past experiences.

## License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><br><a property="dct:title" rel="cc:attributionURL" href="https://github.com/subidit/rover-resume">Rover Resume</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/subidit/">Subidit</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
