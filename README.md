# Anton Dergunov CV

LaTeX source for my resume.

## Build

Requirements:

- LaTeX

Build:

```
make
```

Output:

```
output/Anton_Dergunov.pdf
```

## Structure

```
src/      LaTeX sources
assets/   images
output/   generated PDF
build/    temporary files
formats/  other formats
```

## Logo Font

The logo uses the calligraphic **Zapfino** font. You can simply use the already generated 'asserts/logo-crop.pdf` file, and skip reading this section.

To regenerate the logo, two options are supported:

### 1. System Font (default)

The logo will render using the built-in macOS Zapfino font.

Note: Modern macOS versions removed some stylistic variants, so the appearance may differ slightly from older systems.

### 2. Zapfino Extra LT Three (optional)

For the original appearance, download the commercial font:

[Zapfino Extra LT Three](https://www.myfonts.com/products/three-zapfino-extra-359836)

And place the font file locally:

```
fonts/ZapfinoExtraLT-Three.otf
```

The build system will automatically detect and use it.

### Building the logo

```
make logo
```

This generates:

```
assets/logo-crop.pdf
```

which is used by the CV.


