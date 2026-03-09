# Anton Dergunov CV

LaTeX source for my resume.

The repository contains the complete source required to reproduce the final PDF.

## Build

Requirements:

- LaTeX distribution (e.g. TeX Live or MacTeX)
- `latexmk`

Build the CV:

```
make
```

Output:

```
output/Anton_Dergunov.pdf
```

---

## Repository Structure

```
src/        LaTeX sources
assets/     static assets (logo, images)
fonts/      optional fonts
build/      temporary build artifacts
output/     final generated PDF
formats/    alternative formats
```


---

## Editing in VS Code

If you edit the CV in **VS Code** using the **LaTeX Workshop** extension, you can enable automatic compilation and a live PDF preview.

Add the following configuration to your **VS Code `settings.json`**:

```json
"latex-workshop.latex.outDir": "%DIR%/../build",
"latex-workshop.latex.tools": [
    {
        "name": "latexmk",
        "command": "/Library/TeX/texbin/latexmk",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "-outdir=%OUTDIR%",
            "%DOC%"
        ],
        "env": { "PATH": "/Library/TeX/texbin:/usr/bin:/bin:/usr/sbin:/sbin" }
    }
],
"latex-workshop.latex.recipes": [
    {
        "name": "latexmk",
        "tools": ["latexmk"]
    }
],
```

This configuration ensures that:

- all temporary LaTeX build files are written to `build/`
- the `src/` directory remains clean
- VS Code can correctly find and execute `latexmk`

---

### Finding the `latexmk` Path

The exact path to `latexmk` depends on your operating system and LaTeX distribution.

You can locate it with:

```
which latexmk
```

Example outputs:

**macOS (MacTeX)**

```
/Library/TeX/texbin/latexmk
```

**Linux (TeX Live)**

```
/usr/bin/latexmk
```

**Windows (MiKTeX or TeX Live)**

```
C:\texlive\2024\bin\windows\latexmk.exe
```

Replace the `"command"` value in the configuration above with the path returned by `which latexmk`.

You may also need to adjust the `PATH` variable in the configuration so that the directory containing `latexmk` is included.

---

### Viewing the PDF in VS Code

After adding the configuration:

1. Open `src/cv.tex` in VS Code.
2. Click **“View LaTeX PDF”** in the editor toolbar.

VS Code will open a **side-by-side PDF preview**.

When you **save the `.tex` file**, the PDF preview will **automatically rebuild and refresh**.

---

## Logo

The CV uses a calligraphic **Zapfino** logo.

A pre-generated version is already included:

```
assets/logo-crop.pdf
```

In most cases **there is no need to regenerate it**.

The step below are only for reproducibility.

---

### Regenerating the Logo (Optional)

The logo can be regenerated using `logo.tex`.

```
make logo
```

This produces:

```
assets/logo-crop.pdf
```

---

### Font Options

Two font sources are supported.

#### 1. System Font (default)

If no custom font is provided, the logo uses the system **Zapfino** font available on macOS.

Note that modern macOS versions removed some stylistic variants, so the appearance may differ slightly from older systems.

---

#### 2. Zapfino Extra LT Three (optional)

To reproduce the exact historical appearance of the logo, download the commercial font:

[Zapfino Extra LT Three](https://www.myfonts.com/products/three-zapfino-extra-359836)

Place the font file locally:

```
fonts/ZapfinoExtraLT-Three.otf
```

The build system will automatically detect and use it.
