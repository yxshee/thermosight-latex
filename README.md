# ThermoSight LaTeX Capstone Report

This repository contains the LaTeX source code for a capstone project report using a custom document class.

## Project Structure

```
thermosight-latex/
├── capstone_report_tex/
│   ├── main.tex                 # Main LaTeX document
│   ├── capstone.cls             # Custom document class
│   ├── references.bib           # Bibliography file
│   ├── Chapters/                # Individual chapter files
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
│   └── images/                  # Image assets
```

## Prerequisites

- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- BibTeX for bibliography processing
- PDF viewer for output verification

## Compilation Instructions

To properly compile the document with bibliography references:

1. **First compilation:**
   ```bash
   pdflatex main.tex
   ```

2. **Generate bibliography:**
   ```bash
   bibtex main
   ```

3. **Second compilation:**
   ```bash
   pdflatex main.tex
   ```

4. **Final compilation:**
   ```bash
   pdflatex main.tex
   ```

## Troubleshooting References

If references are not showing in your compiled PDF:

1. **Check bibliography file:** Ensure `references.bib` exists and contains proper BibTeX entries
2. **Verify citations:** Make sure you're using `\cite{key}` commands in your chapter files
3. **Complete compilation sequence:** Follow all 4 compilation steps above
4. **Check for errors:** Look for BibTeX errors in the compilation log

## Document Features

- Custom capstone document class
- IEEE bibliography style
- Automatic table of contents, list of figures, and list of tables
- Appendices with references and plagiarism report
- Professional formatting with Times font

## Usage

1. Clone this repository
2. Edit chapter files in the `Chapters/` directory
3. Add images to the `images/` directory
4. Update `references.bib` with your citations
5. Compile using the 4-step process above

## Contributing

When making changes:
- Keep chapter content in separate files under `Chapters/`
- Use consistent formatting and citation style
- Test compilation after major changes

## License

This template is for academic use. Please ensure proper attribution for any reused components.