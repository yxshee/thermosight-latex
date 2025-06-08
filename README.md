
## 🚀 Overview

ThermoSight leverages a modular LaTeX structure and a custom `capstone.cls` class to produce a polished, standards-compliant capstone report. The repository is organized for clarity, collaboration, and ease of maintenance.

---

## ✨ Features

- **Custom Document Class:** Ensures consistent formatting and styling.
- **IEEE Bibliography Style:** For professional, technical citations.
- **Automated Content Generation:** Table of Contents, List of Figures, List of Tables.
- **Appendices Support:** Ready for References and Plagiarism Report.
- **Professional Typography:** Uses Times font via `mathptmx`.
- **Organized Assets:** All images in a dedicated directory.
- **Modular Chapters:** Each section in its own file for easy editing.

---

## 📁 Project Structure

```
thermosight-latex/
├── capstone_report_tex/
│   ├── main.tex               # Main LaTeX document
│   ├── capstone.cls           # Custom document class
│   ├── references.bib         # Bibliography file
│   ├── Chapters/              # Individual chapter files
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
│   │       └── plagreport.pdf
│   └── images/                # Image assets
└── README.md                  # This file
```

---

## 🛠️ Prerequisites

- **LaTeX Distribution:** [TeX Live](https://www.tug.org/texlive/), [MiKTeX](https://miktex.org/), or [MacTeX](https://www.tug.org/mactex/)
- **BibTeX:** For bibliography management (included in most distributions)
- **PDF Viewer:** To view the compiled report
- *(Optional)* **LaTeX Editor:** [TeXstudio](https://www.texstudio.org/), [Overleaf](https://www.overleaf.com/), VS Code with LaTeX Workshop, etc.

---

## ⚙️ Compilation Instructions

Compile your report in the `capstone_report_tex` directory using the following steps:

1. **First Pass:** Generate auxiliary files and citation keys.
    ```bash
    pdflatex main.tex
    ```
2. **Bibliography:** Generate the bibliography from your `.bib` file.
    ```bash
    bibtex main
    ```
3. **Second Pass:** Incorporate bibliography and resolve references.
    ```bash
    pdflatex main.tex
    ```
4. **Final Pass:** Update all cross-references and lists.
    ```bash
    pdflatex main.tex
    ```

**Tip:** Tools like `latexmk` can automate this process:
```bash
latexmk -pdf main.tex
```

---

## 🆘 Troubleshooting

**References not showing or appear as `[?]`:**
- Ensure you ran `bibtex main` after the first `pdflatex` pass.
- Check that `references.bib` exists and contains valid entries.
- Verify your `\cite{key}` commands match keys in `references.bib`.
- Complete all four compilation steps.
- Review `main.log` and `main.blg` for errors.

**Table of Contents, List of Figures/Tables incorrect:**
- Run `pdflatex` at least twice after changes to headings or captions.

**Other errors:**
- Check for missing packages or typos in your `.tex` files.
- Review log files for specific error messages.

---

## 📝 Usage

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/yourusername/thermosight-latex.git
    cd thermosight-latex/capstone_report_tex
    ```
2. **Edit Content:**
    - Update chapter files in `Chapters/`.
    - Add images to `images/` and reference with `\includegraphics{filename}`.
3. **Manage Bibliography:**
    - Add entries to `references.bib`.
    - Cite with `\cite{key}` in your chapters.
4. **Compile:** Follow the steps above to generate `main.pdf`.

---

## 🤝 Contributing

- Keep chapters modular in `Chapters/`.
- Use consistent formatting and citation style.
- Test compilation after changes.
- Open issues or pull requests for improvements.

---

## 📜 License

This template is for academic use. Please attribute reused components.  
Consider using an open-source license, e.g., [MIT License](https://opensource.org/licenses/MIT).

---

Happy TeXing! 🎓

<!-- Optionally add a screenshot of the compiled report -->
<!-- ![Report Screenshot](path/to/screenshot.png) -->
