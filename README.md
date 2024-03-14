<div align="center">

  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="/images/Rover-black-bg.png">
    <img alt="Daytona logo" src="/images/Rover-white-bg.jpg" width="60%">
  </picture>

  <h3>Streamlined Code, Endless Possibilities – Your Resume, Your Way</h3>

</div>

## Features
* **Simple LaTeX Code:** Utilizes straightforward LaTeX code for easy customization and understanding.
* **Multiple Themes:** Offers a variety of pre-designed themes for users to choose from, allowing for diverse resume styles.
* **Design Best Practices:** Incorporates design principles and best practices to ensure professional and visually appealing resumes.
* **Customization Options:** Provides flexibility for users to customize their resumes according to their preferences and needs.
* **Modular Structure:** Organizes the codebase into modular components for easier maintenance and scalability.
<!-- * **Documentation:** Includes comprehensive documentation with instructions on how to use the templates effectively.
* **Community Support:** Offers a supportive community where users can seek help, share tips, and collaborate on improving the templates. -->

## Quick start
[Edit on Overleaf.](https://www.overleaf.com/latex/templates/rover-resume/bpzqtssvfgsn)

## Preview

| [![Base Rover](/images/base-rover.jpg)](/templates/base%20rover/base-rover.pdf) | [![Fancy Rover](/images/fancy-rover.jpg)](/templates/fancy%20rover/fancy-rover.pdf) | 
|:----:|:-----:|
| Base Rover Template | Fancy Rover Template |

| [![Milky Rover](/images/milky-rover.jpg)](/templates/milky%20rover/milky-rover.pdf) | [![Star Rover](/images/star-rover.jpg)](/templates/star%20rover/star-rover.pdf) | 
|:----:| :----:|
| [Milky Rover Template](https://github.com/subidit/rover-resume/tree/main/templates/milky%20rover) inspired from [Butterick’s practical typography](https://practicaltypography.com/resumes.html). | Star Rover Template |


## Getting Started
1. **Get the Repository**: Star, Fork, or Download this repository to your local machine.   
2. **Select a Template**: Choose a template from the available options.
3. **Fill in Your Details**: Personalize the template by filling in your information.

### Tips for Using LaTeX Commands
1. **Sectioning**: Use `\section` for major sections like Education, Experience, Certifications, Awards, Skills & Interests, etc.
2. **Subsectioning**: Employ `\subsection{}` and `\subsubsection` for primary and secondary titles such as Institution Name, Position Title, Duration, etc.
3. **Text Alignment**: Utilize `\hfill` to right-align text.
4. **Bullet Points**: Use `itemize` lists for creating bullet points.

### Additional Options
Refer to the [User Guide](user-guide.md) for more customization options and features.

## Templates

**Base Rover**: A straightforward template without custom commands, easy to understand and customize. Offers a plain and simple design.

**Fancy Rover**: Provides font-specific commands for different weights and sizes. Utilizes `ifelse` for conditional vertical spacing.

**Star Rover**: Includes a separate `preamble.tex` file. Introduces two custom commands: `\uthree` for single-line headers and `\ufour` for double-line headers.

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

For inquiries or assistance, visit the [Discussions](https://github.com/subidit/rover-resume/discussions) tab.

Feel free to contribute to the project or provide feedback by opening an issue or submitting a pull request.

Happy job hunting!


## License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><br><a property="dct:title" rel="cc:attributionURL" href="https://github.com/subidit/rover-resume">Rover Resume</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/subidit/">Subidit</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
