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
