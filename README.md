# Quantitative Development GitHub Page Standard

This repository is a GitHub Pages + Quarto template for a quantitative development profile.

## Purpose

Use this site as a public technical portfolio for:

- quantitative finance implementations;
- macroeconometric and time-series research;
- reproducible R/Python workflows;
- C++/Rcpp computational finance examples;
- software engineering standards for research systems;
- technical blog posts and project documentation.

## Recommended publishing model

Use GitHub Pages with GitHub Actions.

Why:

1. Source files stay clean in the main branch.
2. Rendered HTML is generated automatically by CI.
3. The build is reproducible on a fresh Linux runner.
4. The repository can mix Quarto, R, Python, and static assets.
5. Generated `_site/` output is not committed.

## Initial setup

### 1. Create the repository

Recommended options:

- Personal site: `<username>.github.io`
- Project site: `quantdev-page`, `quant-research-lab`, or `freddy-ogando.github.io`

### 2. Enable GitHub Pages

In the repository:

`Settings` → `Pages` → `Build and deployment` → `Source` → `GitHub Actions`

### 3. Edit site identity

Edit `_quarto.yml`:

```yaml
website:
  title: "Your Name | Quantitative Development"
  site-url: "https://<username>.github.io/<repository>/"
```

### 4. Local preview

Install Quarto, then run:

```bash
quarto preview
```

### 5. Publish

```bash
git add .
git commit -m "Initialize quantitative development GitHub Pages site"
git push origin main
```

The workflow in `.github/workflows/publish.yml` will render and deploy the website.

## Standard repository structure

```text
.
├── .github/workflows/publish.yml
├── _quarto.yml
├── index.qmd
├── about.qmd
├── research.qmd
├── projects.qmd
├── systems.qmd
├── blog.qmd
├── styles.css
├── references.bib
├── requirements.txt
├── DESCRIPTION
├── R/install-packages.R
├── assets/
├── projects/
│   └── garchx-deposit-volatility/index.qmd
└── posts/
    └── 2026-05-07-github-pages-standard/index.qmd
```

## Content standard

Each project page should include:

1. Problem
2. Method
3. Implementation
4. Data policy
5. Reproducibility
6. Results
7. Repository links
8. Limitations
9. Next steps

Each technical blog post should include:

1. Motivation
2. Minimal reproducible example
3. Code
4. Interpretation
5. Practical implications
6. References

## Security and confidentiality rules

Do not publish:

- confidential institutional data;
- database credentials;
- API keys or tokens;
- internal reports not cleared for publication;
- screenshots with sensitive metadata;
- raw banking, client, or supervisory information.

Use synthetic or public data in examples.

## Commit convention

Use concise semantic commits:

```text
docs: add GARCH-X project page
post: publish missing data workflow
style: refine navbar and CSS
ci: update Quarto deployment workflow
fix: correct Python dependency list
```

## Recommended branch policy

- `main`: stable public source.
- `dev`: optional draft integration branch.
- feature branches: `post/<topic>`, `project/<name>`, `fix/<issue>`.

## Local commands

```bash
quarto check
quarto preview
quarto render
```

Python dependency check:

```bash
python -m pip install -r requirements.txt
```

R dependency check:

```r
source("R/install-packages.R")
```
