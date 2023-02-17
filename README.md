# Jupyter Book Template

![][version-image]
[![Release date][release-date-image]][release-url]
[![License][license-image]][license-url]
[![semantic-release][semantic-image]][semantic-url]
[![Jupyter Book][jupyter-book-image]][jupyter-book-url]

This cookiecutter creates a simple boilerplate for a Jupyter Book.

## Usage

### Building the book

If you'd like to develop and/or build the Jupyter Book Template book, you should:

1. Clone this repository
2. Run `pip install -r requirements.txt` (it is recommended you do this within a virtual environment)
3. (Optional) Edit the books source files located in the `book/` directory
4. Run `jupyter-book clean book/` to remove any existing builds
5. Run `jupyter-book build book/`

A fully-rendered HTML version of the book will be built in `book/_build/html/`.

### Hosting the book

Please see the [Jupyter Book documentation](https://jupyterbook.org/publish/web.html) to discover options for deploying a book online using services such as GitHub, GitLab, or Netlify.

For GitHub and GitLab deployment specifically, the [cookiecutter-jupyter-book](https://github.com/executablebooks/cookiecutter-jupyter-book) includes templates for, and information about, optional continuous integration (CI) workflow files to help easily and automatically deploy books online with GitHub or GitLab. For example, if you chose `github` for the `include_ci` cookiecutter option, your book template was created with a GitHub actions workflow file that, once pushed to GitHub, automatically renders and pushes your book to the `gh-pages` branch of your repo and hosts it on GitHub Pages when a push or pull request is made to the main branch.

## Contributors

We welcome and recognize all contributions. You can see a list of current contributors in the [contributors tab](https://github.com/entelecheia/book/graphs/contributors).

## Credits

This project is created using the excellent open source [Jupyter Book project](https://jupyterbook.org/) and the [executablebooks/cookiecutter-jupyter-book template](https://github.com/executablebooks/cookiecutter-jupyter-book).

<!-- Links: -->

[version-image]: https://img.shields.io/github/package-json/v/entelecheia/jupyter-book-template
[release-date-image]: https://img.shields.io/github/release-date/entelecheia/jupyter-book-template
[release-url]: https://github.com/entelecheia/jupyter-book-template/releases
[semantic-image]: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
[semantic-url]: https://github.com/semantic-release/semantic-release
[license-image]: https://img.shields.io/github/license/entelecheia/jupyter-book-template
[license-url]: https://github.com/entelecheia/jupyter-book-template/blob/main/LICENSE
[changelog-url]: https://github.com/entelecheia/jupyter-book-template/blob/main/docs/CHANGELOG.md
[jupyter-book-image]: https://jupyterbook.org/en/stable/_images/badge.svg
[jupyter-book-url]: https://jupyterbook.org
