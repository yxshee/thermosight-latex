

Welcome to the official repository for the ThermoSight Capstone Project Report! This repository provides all the LaTeX source code and assets needed to compile the final report.

<!-- Optional: Add a logo or banner image here -->
<!-- ![Project Logo](path/to/your/logo.png) -->


## 🚀 Overview

This project uses a custom LaTeX `capstone.cls` class to produce a professionally formatted academic report. It's structured for clarity and ease of management, with chapters and assets neatly organized.

## ✨ Features at a Glance

- 🧐 **Custom Document Class (`capstone.cls`):** Tailored for capstone project requirements.
- 📚 **IEEE Bibliography Style:** Standard for technical and engineering publications.
- 📑 **Automatic Content Generation:**
    - Table of Contents
    - List of Figures
    - List of Tables
-  appendices **Appendices Ready:** Includes sections for References and Plagiarism Report.
-  TIMES **Professional Typography:** Utilizes Mathptmx (Times) font for a classic look.
- 🖼️ **Organized Asset Management:** Dedicated `images/` directory.
- 챕터 **Modular Chapter System:** Easy to manage and collaborate on individual sections.

## 📂 Project Structure

```
thermosight-latex/
├── capstone_report_tex/
│   ├── main.tex                 # 📄 Main LaTeX document
│   ├── capstone.cls             # 🏛️ Custom document class
│   ├── references.bib           # 📖 Bibliography file
│   ├── Chapters/                # 📁 Individual chapter files
│   │   ├── cover.tex
│   │   ├── abstract.tex
│   │   ├── declaration.tex
│   │   ├── acknowledgement.tex
│   │   ├── abbr.tex
│   │   ├── introduction.tex
│   │   ├── requirement_analysis.tex
│   │   ├── methodology.tex
│   │   ├── design_specifications.tex
│   │   ├── implementation.tex
│   │   ├── conclusion.tex
│   │   ├── metrics.tex
│   │   └── plag/
│   │       └── plagreport.pdf   # 📜 Plagiarism Report PDF
│   └── images/                  # 🖼️ Image assets
└── README.md                    # ⭐ You are here!
```

## 🛠️ Prerequisites

Before you begin, ensure you have the following installed:

- **LaTeX Distribution:**
    - [TeX Live](https://www.tug.org/texlive/) (Recommended for Linux/Windows)
    - [MiKTeX](https://miktex.org/) (Windows)
    - [MacTeX](https://www.tug.org/mactex/) (macOS)
- **BibTeX:** Usually included with your LaTeX distribution, for bibliography management.
- **PDF Viewer:** To view the compiled report.

## ⚙️ Compilation Magic: Step-by-Step

To successfully compile your beautiful report and ensure all references and cross-references are correctly generated, follow this precise sequence of commands in your `capstone_report_tex` directory:

1.  **📜 First Pass (pdflatex):**
    Generates auxiliary files (`.aux`, `.toc`, etc.) and identifies citation keys.
    ```bash
    pdflatex main.tex
    ```

2.  **📖 Bibliography Generation (bibtex):**
    Processes the `.aux` file and your `references.bib` to create the bibliography list (`.bbl` file).
    ```bash
    bibtex main
    ```
    *(Note: `main` refers to `main.aux`)*

3.  **🔗 Second Pass (pdflatex):**
    Incorporates the generated bibliography (`.bbl`) into the document and resolves citations.
    ```bash
    pdflatex main.tex
    ```

4.  **🔄 Final Pass (pdflatex):**
    Ensures all cross-references (table of contents, figure numbers, page numbers in citations) are up-to-date.
    ```bash
    pdflatex main.tex
    ```

✅ **Success!** You should now have a `main.pdf` with all content, including references, correctly compiled.

## 🆘 Troubleshooting Common Issues

**Problem: References are not showing up or show as `[?]`**

1.  **Did you run BibTeX?** The `bibtex main` command (Step 2) is crucial.
2.  **Is `references.bib` populated?** Ensure your `.bib` file is in the `capstone_report_tex` directory and contains valid BibTeX entries.
3.  **Are your `\cite{key}` commands correct?** Double-check that the keys used in your `.tex` files match the entry keys in `references.bib`.
4.  **Did you complete all compilation passes?** All four steps are often necessary, especially after changes to citations or references.
5.  **Check the logs!** Look at `main.blg` (BibTeX log) and `main.log` (LaTeX log) for error messages. They often point directly to the problem.

**Problem: Table of Contents / List of Figures / List of Tables is incorrect or missing.**
*   Ensure you run `pdflatex` at least twice (Steps 3 and 4) after any changes to headings or captions.

## 📝 Usage Guide

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/yourusername/thermosight-latex.git # Replace with your repo URL
    cd thermosight-latex/capstone_report_tex
    ```
2.  **✍️ Edit Content:**
    - Modify chapter content in the respective `.tex` files within the `Chapters/` directory.
    - Add your images to the `images/` folder and reference them using `\includegraphics{your-image-name}`.
3.  **📚 Update Bibliography:**
    - Add your citation entries to `references.bib`.
    - Use `\cite{your-citation-key}` within your text where needed.
4.  **✨ Compile:**
    - Follow the 4-step [Compilation Magic](#️-compilation-magic-step-by-step) instructions.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
- Keep chapter content modular within the `Chapters/` directory.
- Maintain consistent formatting and the established citation style.
- Always test compilation thoroughly after making changes.

## 📜 License

This project template is provided for academic use. Please ensure proper attribution for any reused components or if you adapt this template for your own work.
Consider using a standard open-source license if applicable, e.g., [MIT License](https://opensource.org/licenses/MIT).

---

Happy TeXing! 🎓
<!-- Optional: Add a screenshot of the compiled report's title page or a key figure -->
<!-- ![Report Screenshot](path/to/your/screenshot.png) -->
