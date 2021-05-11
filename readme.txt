I was having problems with installation of Libertine font on MacOS.
Generally it was required to follow process from fontinstall.html.
But the font was not found, so I have used command updmap-sys to
remove the information about incorrectly added map file and then
rerun it several times. After this it worked.

   57  updmap-sys --syncwithtrees
   59  updmap-sys
   63  mktexlsr
   64  updmap-sys
   65  mktexlsr

So, maybe it is not required to specify exact map file when calling updmap-sys?

Note: I was using installation to system directory.

On Windows I followed fontinstall.html instructions directly and it was ok.
But it was also required to install fontaxes. For it I used the instructions
on its download page exactly:

1. Run `latex fontaxes.ins` to generate the LaTeX package.

2. Create the following directories in a local texmf tree:

   - doc/latex/fontaxes
   - tex/latex/fontaxes

3. Copy all necessary files into the texmf tree:

   - fontaxes.pdf and test-fontaxes.tex go to doc/latex/fontaxes
   - fontaxes.sty goes to tex/latex/fontaxes

4. Afterwards, you may need to regenerate the file database:

    texhash
    
    (Miktex -> Setup -> Regenerate file database)


