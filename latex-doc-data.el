;;; latex-doc-data
;;
;; X-RCS: $Id: latex-doc-data.el,v 1.3 2002/01/05 01:22:15 thlai Exp $
;;

;; code:

(require 'latex-doc-build)

;; Document of LaTeX commands and environments is taken from
;; "Ktexmaker2 : LaTeX Reference".

(eval-when-compile

  (latex-doc-defcmd "\\\!"
		     "\\\!"
		     "A negative thin space (Math mode)" t)



  (latex-doc-defcmd "\\\,"
		     "\\\,"
		     "A thin space (Math mode)" t)



  (latex-doc-defcmd "\\\-"
		     "\\\-"
"The \\\- command tells LaTeX that it may hyphenate the word at that
point. LaTeX is very good at hyphenating, and it will usually find all
correct hyphenation points. The \\\- command is used for the exceptional
cases.

Note that when you insert \\\- commands in a word, the word will only be
hyphenated at those points and not at any of the hyphenation points
that LaTeX might otherwise have chosen." t)



  (latex-doc-defcmd "\\\:"
		     "\\\:"
		     "A medium space (Math mode)" t)



  (latex-doc-defcmd "\\\;"
		     "\\\;"
		     "A thick space (Math mode)" t)


  (latex-doc-defcmd "\\@" "\\@" 

"The command \\@ in front of a period specifies that this period
terminates a sentence even when it follows an uppercase letter.

E.g.

I like C\\@. What about you? => I like C. What about you?" t)


  (latex-doc-defcmd "\\\\"
		     "\\\\[*][extra-space]"
"The \\\\ command tells LaTeX to start a new line. It has an optional
argument, extra-space, that specifies how much extra vertical space is
to be inserted before the next line. This can be a negative amount.

The \\\\* command is the same as the ordinary \\\\ command except that it
tells LaTeX not to start a new page after the line." t)


  ;; A

  (latex-doc-defcmd "addcontentsline"
		     "\\addcontentsline{file}{sec_unit}{entry}"
"The \\addcontentsline command adds an entry to the specified list or
table where:

  * file is the extension of the file on which information is to be
    written: toc (table of contents), lof (list of figures), or lot
    (list of tables).
  * sec_unit controls the formatting of the entry. It should be one of
    the following, depending upon the value of the file argument:
     1. toc -- the name of the sectional unit, such as part or
        subsection.
     2. lof -- figure
     3. lot -- table
  * entry is the text of the entry." t)


  (latex-doc-defcmd "address"
		     "\\address{Return address}"
		     "Your return address.

The return address, as it should appear on the letter and the
envelope. Separate lines of the address should be separated by \\\\
commands. If you do not make an \\address declaration, then the letter
will be formatted for copying onto your organisation's standard
letterhead. If you give an \\address declaration, then the letter will
be formatted as a personal letter." t)


  (latex-doc-defcmd "addtocontents"
		     "\\addtocontents{file}{text}"
"The \\addtocontents command adds text (or formatting commands)
directly to the file that generates the table of contents or list of
figures or tables.

  * file is the extension of the file on which information is to be
    written: toc (table of contents), lof (list of figures), or lot
    (list of tables).
  * text is the information to be written." t)


  (latex-doc-defcmd "addtocounter"
		     "\\addtocounter{counter}{value}"
		     "Add a quantity to a counter.

The \\addtocounter command increments the counter by the amount
specified by the value argument. The value argument can be
negative." t)


  (latex-doc-defcmd "addtolength"
		     "\\addtolength{\\gnat}{length}"
"The \\addtolength command increments a \"length command\" by the
amount specified in the length argument. It can be a negative amount." t)


  (latex-doc-defcmd "addvspace"
		     "\\addvspace{length}"
"The \\addvspace command normally adds a vertical space of height
length. However, if vertical space has already been added to the same
point in the output by a previous \\addvspace command, then this
command will not add more space than needed to make the natural length
of the total vertical space equal to length." t)


  (latex-doc-defcmd "alph"
		     "\\alph{counter}"
		     "Print value of a counter using letters.

This command causes the value of the counter to be printed in
alphabetic characters. The \\alph command uses lower case alphabetic
alphabetic characters, i.e., a, b, c... while the \\Alph command uses
upper case alphabetic characters, i.e., A, B, C..." t)


  (latex-doc-defcmd "appendix"
		     "\\appendix"
"The \\appendix command changes the way sectional units are
numbered. The \\appendix command generates no text and does not affect
the numbering of parts. The normal use of this command is something
like

\\chapter{The First Chapter}
...
\\appendix
\\chapter{The First Appendix}" t)


  (latex-doc-defcmd "arabic"
		     "\\arabic{counter}"
		     "Print value of a counter using numerals.

The \\arabic command causes the value of the counter to be printed in
Arabic numbers, i.e., 3." t)


  (latex-doc-defcmd "author"
		     "\\author{names}"
"The \\author command declares the author(s), where names is a list of
authors separated by \\and commands. Use \\\\ to separate lines within a
single author's entry -- for example, to give the author's institution
or address." t)


  ;; B
  (latex-doc-defcmd "backmatter" "\\backmatter"

"In the book class, \\backmatter command should be inserted before the
very last items in your book like the bibliography and the index.
This has no visual effect." t)

  (latex-doc-defcmd "backslash" "\\backslash"
"The backslash character \\ can not be entered by adding another
backslash in front of it (\\\\), this sequence is used for
linebreaking.  $\\backslash$ command is used instead. It produces a \\." t)

  (latex-doc-defcmd "bibitem"
		     "\\bibitem[label]{cite_key}"
"The \\bibitem command generates an entry labelled by label. If the
label argument is missing, a number is generated as the label, using
the enumi counter. The cite_key is any sequence of letters, numbers,
and punctuation symbols not containing a comma. This command writes an
entry on the \`.aux\' file containing cite_key and the item's
label. When this \`.aux\' file is read by the \\begin{document} command,
the item's label is associated with cite_key, causing the reference to
cite_key by a \\cite command to produce the associated label." t)


  (latex-doc-defcmd "bigskip"
		     "\\bigskip"
"The \\bigskip command is equivalent to \\vspace{bigskipamount} where
bigskipamount is determined by the document class." t)


  ;; C

  (latex-doc-defcmd "cc"
		     "\\cc{Kate Schechter\\\\Rob McKenna}"
		     "Cc list.

Generate a list of other persons the letter was sent to. Each name is
printed on a separate line." t)


  (latex-doc-defcmd "cdots"
		     "\\cdots"

"Produces a horizontal ellipsis where the dots are raised to the
centre of the line. eg." t)


  (latex-doc-defcmd "centering"
		     "\\centering"
		     "The declaration form of the center environment.

This declaration corresponds to the center environment. This
declaration can be used inside an environment such as quote or in a
parbox. The text of a figure or table can be centred on the page by
putting a \\centering command at the beginning of the figure or table
environment.

Unlike the center environment, the \\centering command does not start
a new paragraph; it simply changes how LaTeX formats paragraph
units. To affect a paragraph unit's format, the scope of the
declaration must contain the blank line or \\end command (of an
environment like quote) that ends the paragraph unit." t)


  (latex-doc-defcmd "chapter"
		     "\\chapter[optional]{title}"
"NOTE: report and book class only.

In addition to providing the heading in the text, the mandatory
argument of the sectioning command can appear in two other places:

 1. The table of contents
 2. The running head at the top of the page

You may not want the same thing to appear in these other two places as
appears in the text heading. To handle this situation, the sectioning
commands have an optional argument that provides the text for these
other two purposes.

All sectioning commands have *-forms that print a title, but do not
include a number and do not make an entry in the table of contents." t)


  (latex-doc-defcmd "circle"
		     "\\circle[*]{diameter}"
"The \\circle command produces a circle with a diameter as close to
the specified one as possible. If the *-form of the command is used,
LaTeX draws a solid circle.

Note that only circles up to 40 pt can be drawn." t)


  (latex-doc-defcmd "cite"
		     "\\cite[text]{key_list}"
"The key_list argument is a list of citation keys. This command
generates an in-text citation to the references associated with the
keys in key_list by entries on the \`.aux\' file read by the
\\begin{document} command.

The optional text argument will appear after the citation,
i.e. \\cite[p. 2]{knuth} might produce \`[Knuth, p. 2]\'." t)


  (latex-doc-defcmd "cleardoublepage"
		     "\\cleardoublepage"
"The \\cleardoublepage command ends the current page and causes all
figures and tables that have so far appeared in the input to be
printed. In a two-sided printing style, it also makes the next page a
right-hand (odd-numbered) page, producing a blank page if necessary." t)


  (latex-doc-defcmd "clearpage"
		     "\\clearpage"
"The \\clearpage command ends the current page and causes all figures
and tables that have so far appeared in the input to be printed." t)


  (latex-doc-defcmd "cline"
		     "\\cline{i-j}"
"The \\cline command draws horizontal lines across the columns
specified, beginning in column i and ending in column j, which are
identified in the mandatory argument." t)


  (latex-doc-defcmd "closing"
		     "\\closing{text}"
		     "Saying goodbye.

The letter closes with a \\closing command, i.e.,
  \\closing{Best Regards,}" t)


  ;; D

  (latex-doc-defcmd "dashbox"
		     "\\dashbox{dash_length}(width,height){...}"
		     "Draws a box with a dashed line.

The \\dashbox has an extra argument which specifies the width of each
dash. A dashed box looks best when the width and height are multiples
of the dash_length." t)


  (latex-doc-defcmd "date"
		     "\\date{text}"
"The \\date command declares text to be the document's date. With no
\\date command, the current date is used." t)


  (latex-doc-defcmd "ddots"
		     "\\ddots"
"Produces a diagonal ellipsis." t)


  (latex-doc-defcmd "documentclass"
		     "\\documentclass [options] {class}"
		     "Valid LaTeX document classes include:

  * article
  * report
  * letter
  * book
  * slides

Other document classes are often available. They are selected with the
following command:

\\documentclass [options] {class}

All the standard classes (except slides) accept the following options
for selecting the typeface size (10 pt is default): 10pt, 11pt, 12pt.

All classes accept these options for selecting the paper size (default
is letter): a4paper, a5paper, b5paper, letterpaper, legalpaper,
executivepaper.

Miscellaneous options:

  * landscape -- selects landscape format. Default is portrait.
  * titlepage, notitlepage -- selects if there should be a separate
    title page.
  * leqno -- equation number on left side of equations. Default is
    right side.
  * fleqn -- displayed formulas flush left. Default is centred.
  * openbib -- use \"open\" bibliography format.
  * draft, final -- mark/do not mark overfull boxes with a
    rule. Default is final.

These options are not available with the slides class:

  * oneside, twoside -- selects one- or twosided layout. Default is
    oneside, except for the book class.
  * openright, openany -- determines if a chapter should start on a
    right-hand page. Default is openright for book.
  * onecolumn, twocolumn -- one or two columns. Defaults to one
    column.

The slides class offers the option clock for printing the time at the
bottom of each note.

If you specify more than one option, they must be separated by a
comma.

Additional packages are loaded by a

\\usepackage[options]{pkg}

command. If you specify more than one package, they must be separated
by a comma.

Any options given in the \\documentclass command that are unknown by
the selected document class are passed on to the packages loaded with
\\usepackage." t)


  (latex-doc-defcmd "dotfill"
		     "\\dotfill"
"The \\dotfill command produces a \"rubber length\" that produces dots
instead of just spaces." t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; E

  (latex-doc-defcmd "emph"
		     "\\emph"
		     "Emphasis (toggles between \\textit and \\textrm)." t)


  (latex-doc-defcmd "encl"
		     "\\encl{CV\\\\Certificates}"
		     "List of enclosed material.

Generate a list of enclosed material." t)


  (latex-doc-defcmd "enlargethispage"
"\\enlargethispage{size}
 or
\\enlargethispage*{size}"

"Enlarge the \\textheight for the current page by the specified amount;
e.g. \\enlargethispage{\\baselineskip} will allow one additional line.

The starred form tries to squeeze the material together on the page as
much as possible. This is normally used together with an explicit
\\pagebreak." t)


  ;; F

  (latex-doc-defcmd "fbox"
		     "\\fbox{text}"
"The \\fbox command is exactly the same as the \\mbox command, except
that it puts a frame around the outside of the box that it creates." t)


  (latex-doc-defcmd "flushbottom"
		     "\\flushbottom"
		     "Make all text pages the same height.

The \\flushbottom declaration makes all text pages the same height,
adding extra vertical space when necessary to fill out the page.

This is the standard if twocolumn mode is selected." t)


  (latex-doc-defcmd "fnsymbol"
		     "\\fnsymbol{counter}"
		     "Print value of a counter using symbols.

The \\fnsymbol command causes the value of the counter to be printed
in a specific sequence of nine symbols that can be used for numbering
footnotes.

NB. counter must have a value between 1 and 9 inclusive." t)


  (latex-doc-defcmd "fontencoding"
		     "\\fontencoding{enc}"
"Select font encoding. Valid encodings include OT1, T1 and T5." t)


  (latex-doc-defcmd "fontfamily"
		     "\\fontfamily{family}"
"Select font family. Valid families include:
  + cmr for Computer Modern Roman
  + cmss for Computer Modern Sans Serif
  + cmtt for Computer Modern Typewriter
and numerous others." t)


  (latex-doc-defcmd "fontseries"
		     "\\fontseries{series}"
"Select font series. Valid series include:
  + m Medium (normal)
  + b Bold
  + c Condensed
  + bc Bold condensed
  + bx Bold extended
and various other combinations." t)


  (latex-doc-defcmd "fontshape"
		     "\\fontshape{shape}"
"Select font shape. Valid shapes are:
  + n Upright (normal)
  + it Italic
  + sl Slanted (oblique)
  + sc Small caps
  + ui Upright italics
  + ol Outline
the two last shapes are not available for most font families." t)


  (latex-doc-defcmd "fontsize"
		     "\\fontsize{size}{skip}"
"Set font size. The first parameter is the font size to switch to; the
second is the \\baselineskip to use. The unit of both parameters
defaults to pt. A rule of thumb is that the baselineskip should be 1.2
times the font size." t)


  (latex-doc-defcmd "footnote"
		     "\\footnote[number]{text}"
"The \\footnote command places the numbered footnote text at the
bottom of the current page. The optional argument, number, is used to
change the default footnote number. This command can only be used in
outer paragraph mode; i.e., you cannot use it in sectioning commands
like \\chapter, in figures, tables or in a tabular environment." t)


  (latex-doc-defcmd "footnotemark"
		     "\\footnotemark[\\value{footnote}]"
"The \\footnotemark command puts the footnote number in the text. This
command can be used in inner paragraph mode. The text of the footnote
is supplied by the \\footnotetext command.

This command can be used to produce several consecutive footnote
markers referring to the same footnote by using

\\footnotemark[\\value{footnote}]

after the first \\footnote command." t)


  (latex-doc-defcmd "footnotesize"
		     "\\footnotesize" nil t)


  (latex-doc-defcmd "footnotetext"
		     "\\footnotetext[number]{text}"
"The \\footnotetext command produces the text to be placed at the
bottom of the page. This command can come anywhere after the
\\footnotemark command. The \\footnotetext command must appear in outer
paragraph mode.

The optional argument, number, is used to change the default footnote
number." t)


  (latex-doc-defcmd "frac"
		     "\\frac{num}{den}"
"Produces the fraction num divided by den." t)


  (latex-doc-defcmd "frame"
		     "\\frame{...}"
"The \\frame command puts a rectangular frame around the object
specified in the argument. The reference point is the bottom left
corner of the frame. No extra space is put between the frame and the
object." t)


  (latex-doc-defcmd "framebox"
		     "\\framebox[width][position]{text}"
"The \\framebox command is exactly the same as the \\makebox command,
except that it puts a frame around the outside of the box that it
creates.

The framebox command produces a rule of thickness \\fboxrule, and
leaves a space \\fboxsep between the rule and the contents of the box." t)


  (latex-doc-defcmd "fussy"
		     "\\fussy"
"This declaration (which is the default) makes TeX more fussy about
line breaking. This can avoids too much space between words, but may
produce overfull boxes.

This command cancels the effect of a previous \\sloppy command. See
\\sloppy" t)


  ;; G


  ;; H

  (latex-doc-defcmd "hfill"
		     "\\hfill"
"The \\hfill fill command produces a \"rubber length\" which can stretch
or shrink horizontally.  It will be filled with spaces." t)


  (latex-doc-defcmd "hline"
		     "\\hline"
"The \\hline command will draw a horizontal line the width of the
table. It's most commonly used to draw a line at the top, bottom, and
between the rows of the table." t)


  (latex-doc-defcmd "hrulefill"
		     "\\hrulefill"
"The \\hrulefill fill command produces a \"rubber length\" which can
stretch or shrink horizontally. It will be filled with a horizontal
rule." t)


  (latex-doc-defcmd "hspace"
		     "\\hspace[*]{length}"
"The \\hspace command adds horizontal space. The length of the space
can be expressed in any terms that LaTeX understands, i.e., points,
inches, etc. You can add negative as well as positive space with an
\\hspace command. Adding negative space is like backspacing.

LaTeX removes horizontal space that comes at the end of a line. If you
don't want LaTeX to remove this space, include the optional *
argument. Then the space is never removed." t)


  (latex-doc-defcmd "Huge"
		     "\\Huge" nil t)


  (latex-doc-defcmd "huge"
		     "\\huge" nil t)


  (latex-doc-defcmd "hyphenation"
		     "\\hyphenation{words}"
"The \\hyphenation command declares allowed hyphenation points, where
words is a list of words, separated by spaces, in which each
hyphenation point is indicated by a - character." t)


  ;; I

  (latex-doc-defcmd "include"
		     "\\include{file}"
"The \\include command is used in conjunction with the \\includeonly
command for selective inclusion of files. The file argument is the
first name of a file, denoting \`file.tex\'. If file is one the file
names in the file list of the \\includeonly command or if there is no
\\includeonly command, the \\include command is equivalent to

  \\clearpage \\input{file} \\clearpage

except that if the file \`file.tex\' does not exist, then a warning
message rather than an error is produced. If the file is not in the
file list, the \\include command is equivalent to \\clearpage.

The \\include command may not appear in the preamble or in a file read
by another \\include command." t)


  (latex-doc-defcmd "includeonly"
		     "\\includeonly{file_list}"
"The \\includeonly command controls which files will be read in by an
\\include command.  file_list should be a comma-separated list of
filenames. Each filename must match exactly a filename specified in a
\\include command. This command can only appear in the preamble." t)


  (latex-doc-defcmd "indent"
		     "\\indent"
"This produces a horizontal space whose width equals the width of the
paragraph indentation. It is used to add paragraph indentation where
it would otherwise be suppressed." t)


  (latex-doc-defcmd "input"
		     "\\input{file}"
"The \\input command causes the indicated file to be read and
processed, exactly as if its contents had been inserted in the current
file at that point. The file name may be a complete file name with
extension or just a first name, in which case the file \`file.tex\' is
used." t)


  ;; J


  ;; K


  ;; L

  (latex-doc-defcmd "LARGE"
		     "\\LARGE" nil t)


  (latex-doc-defcmd "Large"
		     "\\Large" nil t)


  (latex-doc-defcmd "label"
		     "\\label{key}"
		     "Assign a symbolic name to a piece of text.

A \\label command appearing in ordinary text assigns to the key the
number of the current sectional unit; one appearing inside a numbered
environment assigns that number to the key.

A key can consist of any sequence of letters, digits, or punctuation
characters. Upper and lowercase letters are different.

To avoid accidentally creating two labels with the same name, it is
common to use labels consisting of a prefix and a suffix separated by
a colon. The prefixes conventionally used are

  * cha for chapters
  * sec for lower-level sectioning commands
  * fig for figures
  * tab for tables
  * eq for equations

Thus, a label for a figure would look like fig:bandersnatch." t)


  (latex-doc-defcmd "large"
		     "\\large" nil t)


  (latex-doc-defcmd "ldots"
		     "\\ldots"
"Produces an ellipsis. This command works in any mode, not just math
mode." t)


  (latex-doc-defcmd "line"
		     "\\line(x slope,y slope){length}"
"The \\line command draws a line of the specified length and slope.

Note that LaTeX can only draw lines with slope = x/y, where x and y
have integer values from -6 through 6." t)


  (latex-doc-defcmd "linebreak"
		     "\\linebreak[number]"
"The \\linebreak command tells LaTeX to break the current line at the
point of the command. With the optional argument, number, you can
convert the \\linebreak command from a demand to a request. The number
must be a number from 0 to 4. The higher the number, the more
insistent the request is.

The \\linebreak command causes LaTeX to stretch the line so it extends
to the right margin." t)


  (latex-doc-defcmd "linethickness"
		     "\\linethickness{dimension}"

"Declares the thickness of horizontal and vertical lines in a picture
environment to be dimension, which must be a positive length. It does
not affect the thickness of slanted lines and circles, or the quarter
circles drawn by \\oval to form the corners of an oval." t)


  (latex-doc-defcmd "location"
		     "\\location{address}"
		     "Your organisation's address.

This modifies your organisation's standard address. This only appears
if the firstpage pagestyle is selected." t)


  ;; M

  (latex-doc-defcmd "makebox"
		     "\\makebox[width][position]{text}"
"The \\makebox command creates a box just wide enough to contain the
text specified. The width of the box is specified by the optional
width argument. The position of the text within the box is determined
by the optional position argument.

  * c -- centred (default)
  * l -- flushleft
  * r -- flushright
  * s -- stretch from left to right margin. The text must contain
    stretchable space for this to work.

See command \\makebox." t)


  (latex-doc-defcmd "makelabels"
		     "\\makelabels{number}"
		     "Making address labels.

If you issue this command in the preamble, LaTeX will create a sheet
of address labels. This sheet will be output before the letters." t)


  (latex-doc-defcmd "maketitle"
		     "\\maketitle"
"The \\maketitle command generates a title on a separate title page -
except in the article class, where the title normally goes at the top
of the first page. Information used to produce the title is obtained
from the following declarations:
  * \\author: Who wrote this stuff?
  * \\date: The date the document was created.
  * \\thanks: A special form of footnote.
  * \\title: How to set the document title." t)


  (latex-doc-defcmd "markboth"
		     "\\markboth{left head}{right head}"
"The \\markboth command is used in conjunction with the page style
myheadings for setting both the left and the right heading. You should
note that a \"left-hand heading\" is generated by the last \\markboth
command before the end of the page, while a \"right-hand heading\" is
generated by the first \\markboth or \\markright that comes on the page
if there is one, otherwise by the last one before the page." t)


  (latex-doc-defcmd "markright"
		     "\\markright{right head}"
"The \\markright command is used in conjunction with the page style
myheadings for setting the right heading, leaving the left heading
unchanged. You should note that a \"left-hand heading\" is generated by
the last \\markboth command before the end of the page, while a
\"right-hand heading\" is generated by the first \\markboth or \\markright
that comes on the page if there is one, otherwise by the last one
before the page." t)


  (latex-doc-defcmd "mathbf"
		     "\\mathbf"
		     "Boldface, for use in math mode." t)


  (latex-doc-defcmd "mathcal"
		     "\\mathcal"
		     "\`Calligraphic\' letters, for use in math mode." t)


  (latex-doc-defcmd "mathit"
		     "\\mathit"
"Italics, for use in math mode, e.g. variable names with several
letters." t)


  (latex-doc-defcmd "mathnormal"
		     "\\mathnormal"
"For use in math mode, e.g. inside another type style declaration." t)


  (latex-doc-defcmd "mathrm"
		     "\\mathrm"
		     "Roman, for use in math mode." t)


  (latex-doc-defcmd "mathsf"
		     "\\mathsf"
		     "Sans serif, for use in math mode." t)


  (latex-doc-defcmd "mathtt"
		     "\\mathtt"
		     "Typewriter, for use in math mode." t)


  (latex-doc-defcmd "mbox"
		     "\\mbox{text}"
"The \\mbox command creates a box just wide enough to hold the text
created by its argument.

Use this command to prevent text from being split across lines." t)


  (latex-doc-defcmd "medskip"
		     "\\medskip"
"The \\medskip command is equivalent to \\vspace{medskipamount} where
medskipamount is determined by the document class." t)


  (latex-doc-defcmd "multiput"
"\\multiput(x coord,y coord)(delta x,delta y){number of copies}{object}"

"The \\multiput command can be used when you are putting the same
object in a regular pattern across a picture." t)


  (latex-doc-defcmd "multicolumn"
		     "\\multicolumn{cols}{pos}{text}"
"The \\multicolumn is used to make an entry that spans several
columns. The first mandatory argument, cols, specifies the number of
columns to span. The second mandatory argument, pos, specifies the
formatting of the entry; c for centred, l for flushleft, r for
flushright. The third mandatory argument, text, specifies what text is
to make up the entry." t)


  ;; N

  (latex-doc-defcmd "name"
		     "\\name{Your Name}"
		     "Your name, for the return address.

Your name, used for printing on the envelope together with the return
address." t)


  (latex-doc-defcmd "newcommand"
		     "\\newcommand{cmd}[args][default]{definition}"
		     "Define a new command.

cmd
    A command name beginning with a \\. For \\newcommand it must not
    be already defined and must not begin with \\end.

args
    An integer from 1 to 9 denoting the number of arguments of the
    command being defined. The default is for the command to have no
    arguments.

default
    If this optional parameter is present, it means that the command's
    first argument is optional. The default value of the optional
    argument is default.

definition
    The text to be substituted for every occurrence of cmd; a parameter
    of the form #n in cmd is replaced by the text of the nth argument
    when this substitution takes place." t)


  (latex-doc-defcmd "newcounter"
		     "\\newcounter{foo}[counter]"
		     "Define a new counter.

The \\newcounter command defines a new counter named foo. The counter
is initialized to zero.

The optional argument [counter] causes the counter foo to be reset
whenever the counter named in the optional argument is incremented." t)


  (latex-doc-defcmd "newenvironment"
		     "\\newenvironment{nam}[args][default]{begdef}{enddef}"
		     "Define a new environment.

nam
    The name of the environment. For \\newenvironment there must be no
    currently defined environment by that name, and the command \\nam
    must be undefined.

args
    An integer from 1 to 9 denoting the number of arguments of the
    newly-defined environment.  The default is no arguments.

default
    If this is specified, the first argument is optional, and default
    gives the default value for that argument.

begdef
    The text substituted for every occurrence of \\begin{nam}; a parameter
    of the form #n in cmd is replaced by the text of the nth argument when
    this substitution takes place.

enddef
    The text substituted for every occurrence of \\end{nam}. It may
    not contain any argument parameters." t)


  (latex-doc-defcmd "newfont"
		     "\\newfont{cmd}{font_name}"
		     "Define a new font name.

Defines the command name cmd, which must not be currently defined, to
be a declaration that selects the font named font_name to be the
current font." t)


  (latex-doc-defcmd "newlength"
		     "\\newlength{\\gnat}"
"The \\newlength command defines the mandatory argument, \\gnat, as a
length command with a value of 0in. An error occurs if a \\gnat command
already exists." t)


  (latex-doc-defcmd "newline"
		     "\\newline"
"The \\newline command breaks the line right where it is. It can only
be used in paragraph mode." t)


  (latex-doc-defcmd "newpage"
		     "\\newpage"
"The \\newpage command ends the current page." t)


  (latex-doc-defcmd "newsavebox"
		     "\\newsavebox{cmd}"
"Declares cmd, which must be a command name that is not already
defined, to be a bin for saving boxes." t)


  (latex-doc-defcmd "newtheorem"
		     "\\newtheorem{env_name}{caption}[within]
\\newtheorem{env_name}[numbered_like]{caption}"
		     "Define a new theorem-like environment.

env_name
    The name of the environment to be defined. A string of letters. It
    must not be the name of an existing environment or counter.

caption
    The text printed at the beginning of the environment, right before
    the number. This may simply say \"Theorem\", for example.

within
    The name of an already defined counter, usually of a sectional
    unit. Provides a means of resetting the new theorem counter within
    the sectional unit.

numbered_like
    The name of an already defined theorem-like environment.

The \\newtheorem command may have at most one optional argument." t)


  (latex-doc-defcmd "nocite"
		     "\\nocite{key_list}"
"The \\nocite command produces no text, but writes key_list, which is a
list of one or more citation keys, on the \`.aux\' file." t)


  (latex-doc-defcmd "noindent"
		     "\\noindent"
"When used at the beginning of the paragraph, it suppresses the
paragraph indentation. It has no effect when used in the middle of a
paragraph." t)


  (latex-doc-defcmd "nolinebreak"
		     "\\nolinebreak[number]"
"The \\nolinebreak command prevents LaTeX from breaking the current
line at the point of the command. With the optional argument, number,
you can convert the \\nolinebreak command from a demand to a
request. The number must be a number from 0 to 4. The higher the
number, the more insistent the request is." t)


  (latex-doc-defcmd "nopagebreak"
		     "\\nopagebreak[number]"
"The \\nopagebreak command prevents LaTeX from breaking the current
page at the point of the command. With the optional argument, number,
you can convert the \\nopagebreak command from a demand to a
request. The number must be a number from 0 to 4. The higher the
number, the more insistent the request is." t)


  (latex-doc-defcmd "normalsize"
		     "\\normalsize" nil t)


  ;; O

  (latex-doc-defcmd "onecolumn"
		     "\\onecolumn"
		     "Use one-column layout.

The \\onecolumn declaration starts a new page and produces
single-column output." t)


  (latex-doc-defcmd "opening"
		     "\\opening{text}"
		     "Saying hello.

The letter begins with the \\opening command. The mandatory argument,
text, is whatever text you wish to start your letter, i.e.,
 \\opening{Dear Joe,}" t)


  (latex-doc-defcmd "oval"
		     "\\oval(width,height)[portion]"
"The \\oval command produces a rectangle with rounded corners. The
optional argument, [portion], allows you to select part of the oval.

  * t - Selects the top portion
  * b - Selects the bottom portion
  * r - Selects the right portion
  * l - Selects the left portion

Note that the \"corners\" of the oval are made with quarter circles
with a maximum radius of 20 pt, so large \"ovals\" will look more like
boxes with rounded corners." t)


  (latex-doc-defcmd "overbrace"
		     "\\overbrace{text}"
"Generates a brace over text." t)


  (latex-doc-defcmd "overline"
		     "\\overline{text}"
"Causes the argument text to be overlined." t)


  ;; P

  (latex-doc-defcmd "pagebreak"
		     "\\pagebreak[number]"
"The \\pagebreak command tells LaTeX to break the current page at the
point of the command. With the optional argument, number, you can
convert the \\pagebreak command from a demand to a request. The number
must be a number from 0 to 4. The higher the number, the more
insistent the request is." t)


  (latex-doc-defcmd "pagenumbering"
		     "\\pagenumbering{num_style}"
"Specifies the style of page numbers. Possible values of num_style
are:

  * arabic - Arabic numerals
  * roman - Lowercase Roman numerals
  * Roman - Uppercase Roman numerals
  * alph - Lowercase letters
  * Alph - Uppercase letters" t)


  (latex-doc-defcmd "pageref"
		     "\\pageref{key}"
		     "Refer to a page number.

The \\pageref command produces the page number of the place in the
text where the corresponding \\label command appears. ie. where
\\label{key} appears." t)


  (latex-doc-defcmd "pagestyle"
		     "\\pagestyle{option}"
"The \\pagestyle command changes the style from the current page on
throughout the remainder of your document.

The valid options are:

  * plain - Just a plain page number.
  * empty - Produces empty heads and feet - no page numbers.
  * headings - Puts running headings on each page. The document style
    specifies what goes in the headings.
  * myheadings - You specify what is to go in the heading with the
    \\markboth or the \\markright commands." t)


  (latex-doc-defcmd "par"
		     "\\par"
"Equivalent to a blank line; often used to make command or environment
definitions easier to read." t)


  (latex-doc-defcmd "parbox"
		     "\\parbox[position][height][inner-pos]{width}{text}"
"A parbox is a box whose contents are created in paragraph mode. The
\\parbox has two mandatory arguments:

  * width - specifies the width of the parbox, and
  * text - the text that goes inside the parbox.

LaTeX will position a parbox so its centre lines up with the centre of
the text line. The optional position argument allows you to line up
either the top or bottom line in the parbox (default is top).

If the height argument is not given, the box will have the natural
height of the text.

The inner-pos argument controls the placement of the text inside the
box. If it is not specified, position is used.

  * t -- text is placed at the top of the box.
  * c -- text is centred in the box.
  * b -- text is placed at the bottom of the box.
  * s -- stretch vertically. The text must contain vertically
    stretchable space for this to work.

A \\parbox command is used for a parbox containing a small piece of
text, with nothing fancy inside. In particular, you shouldn't use any
of the paragraph-making environments inside a \\parbox argument. For
larger pieces of text, including ones containing a paragraph-making
environment, you should use a minipage environment See environment
minipage." t)


  (latex-doc-defcmd "ps"
		     "\\ps"
		     "Adding a postscript." t)


  (latex-doc-defcmd "put"
		     "\\put(x coord,y coord){ ... }"

"The \\put command places the item specified by the mandatory argument
at the given coordinates." t)


  ;; Q


  ;; R

  (latex-doc-defcmd "raggedbottom"
		     "\\raggedbottom"
		     "Allow text pages of differing height.

The \\raggedbottom declaration makes all pages the height of the text
on that page. No extra vertical space is added." t)


  (latex-doc-defcmd "raggedleft"
		     "\\raggedleft"
		     "The declaration form of the flushright environment.

This declaration corresponds to the flushright environment. This
declaration can be used inside an environment such as quote or in a
parbox.

Unlike the flushright environment, the \\raggedleft command does not
start a new paragraph; it simply changes how LaTeX formats paragraph
units. To affect a paragraph unit's format, the scope of the
declaration must contain the blank line or \\end command (of an
environment like quote) that ends the paragraph unit." t)


  (latex-doc-defcmd "raggedright"
		     "\\raggedright"
		     "The declaration form of the flushleft environment.

This declaration corresponds to the flushleft environment. This
declaration can be used inside an environment such as quote or in a
parbox.

Unlike the flushleft environment, the \\raggedright command does not
start a new paragraph; it simply changes how LaTeX formats paragraph
units. To affect a paragraph unit's format, the scope of the
declaration must contain the blank line or \\end command (of an
environment like quote) that ends the paragraph unit." t)


  (latex-doc-defcmd "raisebox"
		     "\\raisebox{distance}[extend-above][extend-below]{text}"
"The \\raisebox command is used to raise or lower text. The first
mandatory argument specifies how high the text is to be raised (or
lowered if it is a negative amount). The text itself is processed in
LR mode.

Sometimes it's useful to make LaTeX think something has a different
size than it really does - or a different size than LaTeX would
normally think it has. The \\raisebox command lets you tell LaTeX how
tall it is.

The first optional argument, extend-above, makes LaTeX think that the
text extends above the line by the amount specified. The second
optional argument, extend-below, makes LaTeX think that the text
extends below the line by the amount specified." t)


  (latex-doc-defcmd "ref"
		     "\\ref{key}"
		     "Refer to a section, figure or similar.

The \\ref command produces the number of the sectional unit, equation
number, ... of the corresponding \\label command." t)


  (latex-doc-defcmd "renewcommand"
		     "\\renewcommand{cmd}[args][default]{definition}"
		     "Redefine an existing command.  See newcommand.

cmd
    A command name beginning with a \\.  It must not begin with \\end.

args
    An integer from 1 to 9 denoting the number of arguments of the
    command being defined. The default is for the command to have no
    arguments.

default
    If this optional parameter is present, it means that the command's
    first argument is optional. The default value of the optional
    argument is default.

definition
    The text to be substituted for every occurrence of cmd; a parameter
    of the form #n in cmd is replaced by the text of the nth argument
    when this substitution takes place." t)


  (latex-doc-defcmd "renewenvironment"
		     "\\renewenvironment{nam}[args]{begdef}{enddef}"
		     "Redefine an existing environment.  See \\newenvironment.

nam
    The name of the environment. The environment must already be
    defined by that name.

args
    An integer from 1 to 9 denoting the number of arguments of the
    newly-defined environment.  The default is no arguments.

begdef
    The text substituted for every occurrence of \\begin{nam}; a parameter
    of the form #n in cmd is replaced by the text of the nth argument when
    this substitution takes place.

enddef
    The text substituted for every occurrence of \\end{nam}. It may
    not contain any argument parameters." t)


  (latex-doc-defcmd "refstepcounter"
		     "\\refstepcounter{counter}"
		     "Add to counter, resetting subsidiary counters.

The \\refstepcounter command works like \\stepcounter See section
\\stepcounter, except it also defines the current \\ref value to be
the result of \\thecounter." t)


  (latex-doc-defcmd "roman"
		     "\\roman{counter}"
		     "Print value of a counter using roman numerals.

This command causes the value of the counter to be printed in Roman
numerals. The \\roman command uses lower case Roman numerals, i.e., i,
ii, iii..., while the \\Roman command uses upper case Roman numerals,
i.e., I, II, III...." t)


  (latex-doc-defcmd "rule"
		     "\\rule[raise-height]{width}{thickness}"
"The \\rule command is used to produce horizontal lines. The arguments
are defined as follows:

  * raise-height - specifies how high to raise the rule (optional)
  * width - specifies the length of the rule (mandatory)
  * thickness - specifies the thickness of the rule (mandatory)" t)


  ;; S

  (latex-doc-defcmd "savebox"
		     "\\savebox{cmd}[width][pos]{text}"
"This command typeset text in a box just as for \\makebox. However,
instead of printing the resulting box, it saves it in bin cmd, which
must have been declared with \\newsavebox." t)


  (latex-doc-defcmd "sbox"
		     "\\sbox{text}"
"This commands typeset text in a box just as for \\mbox. However,
instead of printing the resulting box, it saves it in bin cmd, which
must have been declared with \\newsavebox." t)


  (latex-doc-defcmd "scriptsize"
		     "\\scriptsize" nil t)


  (latex-doc-defcmd "selectfont"
		     "\\selectfont"
"The changes made by calling the four font commands described above do
not come into effect until \\selectfont is called." t)


  (latex-doc-defcmd "setcounter"
		     "\\setcounter{counter}{value}"
		     "Set the value of a counter.

The \\setcounter command sets the value of the counter to that
specified by the value argument." t)


  (latex-doc-defcmd "setlength"
		     "\\setlength{\\gnat}{length}"
"The \\setlength command is used to set the value of a length
command. The length argument can be expressed in any terms of length
LaTeX understands, i.e., inches (in), millimetres (mm), points (pt),
etc." t)


  (latex-doc-defcmd "settodepth"
		     "\\settodepth{\\gnat}{text}"
"The \\settodepth command sets the value of a length command equal to
the depth of the text argument." t)


  (latex-doc-defcmd "settoheight"
		     "\\settoheight{\\gnat}{text}"
"The \\settoheight command sets the value of a length command equal to
the height of the text argument." t)


  (latex-doc-defcmd "settowidth"
		     "\\settowidth{\\gnat}{text}"
"The \\settowidth command sets the value of a length command equal to
the width of the text argument." t)


  (latex-doc-defcmd "signature"
		     "\\signature{Your Signature}"
		     "Your signature.

Your name, as it should appear at the end of the letter underneath the
space for your signature. Items that should go on separate lines
should be separated by \\\\ commands." t)


  (latex-doc-defcmd "shortstack"
		     "\\shortstack[position]{... \\\\ ... \\\\ ...}"

"The \\shortstack command produces a stack of objects. The valid
positions are:

  * r - Moves the objects to the right of the stack
  * l - Moves the objects to the left of the stack
  * c - Moves the objects to the centre of the stack (default)" t)


  (latex-doc-defcmd "sloppy"
		     "\\sloppy"
"This declaration makes TeX less fussy about line breaking. This can
prevent overfull boxes, but may leave too much space between words.

Lasts until a \\fussy command is issued.  See \\fussy." t)


  (latex-doc-defcmd "small"
		     "\\small" nil t)


  (latex-doc-defcmd "smallskip"
		     "\\smallskip"
"The \\smallskip command is equivalent to \\vspace{smallskipamount}
where smallskipamount is determined by the document class." t)


  (latex-doc-defcmd "sqrt"
		     "\\sqrt[root]{arg}"
"Produces the square root of its argument. The optional argument,
root, determines what root to produce, i.e., the cube root of x+y
would be typed as $\\sqrt[3]{x+y}$." t)


  (latex-doc-defcmd "startbreaks"
		     "\\startbreaks"
		     "Allow page breaks.

Used after a \\stopbreaks command to allow page breaks again." t)


  (latex-doc-defcmd "stepcounter"
		     "\\stepcounter{counter}"
		     "Add to counter, resetting subsidiary counters.

The \\stepcounter command adds one to the counter and resets all
subsidiary counters." t)


  (latex-doc-defcmd "stopbreaks"
		     "\\stopbreaks"
		     "Disallow page breaks.

Inhibit page breaks until a \\startbreaks command occurs." t)


  ;; T

  (latex-doc-defcmd "thanks"
		     "\\thanks{text}"
"The \\thanks command produces a \\footnote to the title." t)


  (latex-doc-defcmd "telephone"
		     "\\telephone{number}"
		     "Your phone number.

This is your telephone number. This only appears if the firstpage
pagestyle is selected." t)


  (latex-doc-defcmd "textrm"
		     "\\textrm"
		     "Use Roman fonts." t)


  (latex-doc-defcmd "textit"
		     "\\textit"
		     "Use italic fonts." t)


  (latex-doc-defcmd "textmd"
		     "\\textmd"
		     "Use medium weight (default) fonts. The opposite of boldface." t)


  (latex-doc-defcmd "textbf"
		     "\\textbf"
		     "Use boldface fonts." t)


  (latex-doc-defcmd "textup"
		     "\\textup"
		     "Use upright (default) fonts.  The opposite of slanted." t)


  (latex-doc-defcmd "textsl"
		     "\\textsl"
		     "Use slanted fonts." t)


  (latex-doc-defcmd "textsf"
		     "\\textsf"
		     "Use sans serif fonts." t)


  (latex-doc-defcmd "textsc"
		     "\\textsc"
		     "Use small caps fonts." t)


  (latex-doc-defcmd "texttt"
		     "\\texttt"
		     "Use typewriter fonts." t)


  (latex-doc-defcmd "textnormal"
		     "\\textnormal"
		     "Main document font." t)


  (latex-doc-defcmd "tiny"
		     "\\tiny" nil t)


  (latex-doc-defcmd "title"
		     "\\title{text}"
"The \\title command declares text to be the title. Use \\\\ to tell
LaTeX where to start a new line in a long title." t)


  (latex-doc-defcmd "thispagestyle"
		     "\\thispagestyle{option}"
"The \\thispagestyle command works in the same manner as the \\pagestyle
command except that it changes the style for the current page only." t)


  (latex-doc-defcmd "twocolumn"
		     "\\twocolumn[text]"
		     "Use two-column layout.

The \\twocolumn declaration starts a new page and produces two-column
output. If the optional text argument is present, it is typeset in
one-column mode." t)


  (latex-doc-defcmd "typein"
		     "\\typein[cmd]{msg}"
"Prints msg on the terminal and causes LaTeX to stop and wait for you
to type a line of input, ending with return. If the cmd argument is
missing, the typed input is processed as if it had been included in
the input file in place of the \\typein command. If the cmd argument is
present, it must be a command name. This command name is then defined
or redefined to be the typed input." t)


  (latex-doc-defcmd "typeout"
		     "\\typeout{msg}"
"Prints msg on the terminal and in the log file. Commands in msg that
are defined with \\newcommand or \\renewcommand are replaced by their
definitions before being printed.

LaTeX's usual rules for treating multiple spaces as a single space and
ignoring spaces after a command name apply to msg. A \\space command in
msg causes a single space to be printed. A ^^J in msg prints a
newline." t)


  ;; U

  (latex-doc-defcmd "underbrace"
		     "\\underbrace{text}"
"Generates text with a brace underneath. eg." t)


  (latex-doc-defcmd "underline"
		     "\\underline{text}"
"Causes the argument text to be underlined. This command can also be
used in paragraph and LR modes." t)


  (latex-doc-defcmd "usebox"
		     "\\usebox{cmd}"
"Prints the box most recently saved in bin cmd by a \\savebox command." t)


  (latex-doc-defcmd "usecounter"
		     "\\usecounter{counter}"
		     "Use a specified counter in a list environment.

The \\usecounter command is used in the second argument of the list
environment to allow the counter specified to be used to number the
list items." t)


  (latex-doc-defcmd "usefont"
		     "\\usefont{enc}{family}{series}{shape}"
"Equivalent to calling \\fontencoding, \\fontfamily, \\fontseries and
\\fontshape with the given parameters, followed by \\selectfont." t)


  ;; V

  (latex-doc-defcmd "value"
		     "\\value{counter}"
		     "Use the value of a counter in an expression.

The \\value command produces the value of the counter named in the
mandatory argument. It can be used where LaTeX expects an integer or
number, such as the second argument of a \\setcounter or
\\addtocounter command, or in:

        \\hspace{\\value{foo}\\parindent}

It is useful for doing arithmetic with counters." t)


  (latex-doc-defcmd "vdots"
		     "\\vdots"
"Produces a vertical ellipsis." t)


  (latex-doc-defcmd "vector"
		     "\\vector(x slope,y slope){length}"

"The \\vector command draws a line with an arrow of the specified
length and slope. The x and y values must lie between -4 and +4,
inclusive." t)


  (latex-doc-defcmd "verb"
"\\verb char literal_text char
or
\\verb*char literal_text char"

"The macro form of the verbatim environment.

Typesets literal_text exactly as typed, including special characters
and spaces, using a typewriter (\\tt) type style. There may be no space
between \\verb or \\verb* and char (space is shown here only for
clarity). The *-form differs only in that spaces are printed as
`\\verb*| |'." t)


  (latex-doc-defcmd "vfill"
		     "\\vfill"
"The \\vfill fill command produces a rubber length which can stretch or
shrink vertically." t)


  (latex-doc-defcmd "vline"
		     "\\vline"
"The \\vline command will draw a vertical line extending the full
height and depth of its row.  An \\hfill command can be used to move
the line to the edge of the column. It can also be used in an
@-expression." t)


  (latex-doc-defcmd "vspace"
		     "\\vspace[*]{length}"
"The \\vspace command adds vertical space. The length of the space can
be expressed in any terms that LaTeX understands, i.e., points,
inches, etc. You can add negative as well as positive space with an
\\vspace command.

LaTeX removes vertical space that comes at the end of a page. If you
don't want LaTeX to remove this space, include the optional *
argument. Then the space is never removed." t)


  ;; W


  ;; X


  ;; Y


  ;; Z



;; Environment

  ;; A

  (latex-doc-defenv "array"
		     "\\begin{array}{col1col2...coln}
column 1 entry & column 2 entry ... & column n entry \\\\
 .
 .
 .
\\end{array}"

"Math arrays are produced with the array environment. It has a single
mandatory argument describing the number of columns and the alignment
within them. Each column, coln, is specified by a single letter that
tells how items in that row should be formatted.

  * c -- for centred
  * l -- for flush left
  * r -- for flush right

Column entries must be separated by an &. Column entries may include
other LaTeX commands.  Each row of the array must be terminated with
the string \\\\.

Note that the array environment can only be used in math mode, so
normally it is used inside an equation environment." t)


  ;; B


  ;; C

  (latex-doc-defenv "center"
		     "\\begin{center}
 Text on line 1 \\\\
 Text on line 2 \\\\
 .
 .
 .
\\end{center}"

"The center environment allows you to create a paragraph consisting of
lines that are centred within the left and right margins on the
current page. Each line must be terminated with the string \\\\." t)


  ;; D

  (latex-doc-defenv "description"
"\\begin{description}
 \\item [label] First item
 \\item [label] Second item
 .
 .
 .
\\end{description}"
"The description environment is used to make labelled lists. The label
is bold face and flushed right." t)


  ;; E

  (latex-doc-defenv "enumerate"
"\\begin{enumerate}
 \\item First item
 \\item Second item
 .
 .
 .
\\end{enumerate}" 

"The enumerate environment produces a numbered list. Enumerations can
be nested within one another, up to four levels deep. They can also be
nested within other paragraph-making environments.

Each item of an enumerated list begins with an \\item command. There
must be at least one \\item command within the environment.

The enumerate environment uses the enumi through enumiv counters (see
section Counters). The type of numbering can be changed by redefining
\\theenumi etc." t)


  (latex-doc-defenv "eqnarray"
"\\begin{eqnarray}
 math formula 1 \\\\
 math formula 2 \\\\
 .
 .
 .
\\end{eqnarray}"

"The eqnarray environment is used to display a sequence of equations
or inequalities. It is very much like a three-column array
environment, with consecutive rows separated by \\\\ and consecutive
items within a row separated by an &.

An equation number is placed on every line unless that line has a
\\nonumber command.

The command \\lefteqn is used for splitting long formulas across
lines. It typesets its argument in display style flush left in a box
of zero width." t)


  (latex-doc-defenv "equation"
"\\begin{equation}
  math formula
\\end{equation}"

"The equation environment centres your equation on the page and places
the equation number in the right margin." t)


  ;; F

  (latex-doc-defenv "figure"
"\\begin{figure}[placement]

  body of the figure

 \\caption{figure title}
\\end{figure}"

"Figures are objects that are not part of the normal text, and are
usually \"floated\" to a convenient place, like the top of a
page. Figures will not be split between two pages.

The optional argument [placement] determines where LaTeX will try to
place your figure. There are four places where LaTeX can possibly put
a float:

 1. h (Here) - at the position in the text where the figure
    environment appears.
 2. t (Top) - at the top of a text page.
 3. b (Bottom) - at the bottom of a text page.
 4. p (Page of floats) - on a separate float page, which is a page
    containing no text, only floats.

The standard report and article classes use the default placement tbp.

The body of the figure is made up of whatever text, LaTeX commands,
etc. you wish. The \\caption command allows you to title your figure." t)


  (latex-doc-defenv "flushleft"
"\\begin{flushleft}
 Text on line 1 \\\\
 Text on line 2 \\\\
 .
 .
 .
\\end{flushleft}"

"The flushleft environment allows you to create a paragraph consisting
of lines that are flushed left, to the left-hand margin. Each line
must be terminated with the string \\\\." t)


  (latex-doc-defenv "flushright"
"\\begin{flushright}
 Text on line 1 \\\\
 Text on line 2 \\\\
 .
 .
 .
\\end{flushright}"

"The flushright environment allows you to create a paragraph
consisting of lines that are flushed right, to the right-hand
margin. Each line must be terminated with the string \\\\." t)


  ;; G


  ;; H


  ;; I

  (latex-doc-defenv "itemize"
"\\begin{itemize}
 \\item First item
 \\item Second item
 .
 .
 .
\\end{itemize}"

"The itemize environment produces a \"bulleted\" list. Itemizations
can be nested within one another, up to four levels deep. They can
also be nested within other paragraph-making environments.

Each item of an itemized list begins with an \\item command. There must
be at least one \\item command within the environment.

The itemize environment uses the itemi through itemiv counters (see
section Counters). The type of numbering can be changed by redefining
\\theitemi etc." t)


  ;; J


  ;; K


  ;; L

  (latex-doc-defenv "list"
"\\begin{list}{label}{spacing}
 \\item First item
 \\item Second item
 .
 .
 .
\\end{list}"

"The list environment is a generic environment which is used for
defining many of the more specific environments. It is seldom used in
documents, but often in macros.

The {label} argument specifies how items should be labelled. This
argument is a piece of text that is inserted in a box to form the
label. This argument can and usually does contain other LaTeX
commands.

The {spacing} argument contains commands to change the spacing
parameters for the list. This argument will most often be null, i.e.,
{}. This will select all default spacing which should suffice for most
cases." t)


  (latex-doc-defenv "lrbox"
		     "\\begin{lrbox}{cmd} text \\end{lrbox}"
"This is the environment form of \\sbox.

The text inside the environment is saved in the box cmd, which must
have been declared with \\newsavebox." t)


  ;; M

  (latex-doc-defenv "minipage"
"\\begin{minipage}[position]{width}
  text
\\end{minipage}"

"The minipage environment is similar to a \\parbox command. It takes
the same optional position argument and mandatory width argument. You
may use other paragraph-making environments inside a minipage.

Footnotes in a minipage environment are handled in a way that is
particularly useful for putting footnotes in figures or tables. A
\\footnote or \\footnotetext command puts the footnote at the bottom
of the minipage instead of at the bottom of the page, and it uses the
mpfootnote counter instead of the ordinary footnote counter See
counters." t)


  ;; N


  ;; O


  ;; P

  (latex-doc-defenv "picture"
"\\begin{picture}(width,height)(x offset,y offset)
  .
  .
  picture commands
  .
  .
\\end{picture}"

"The picture environment allows you to create just about any kind of
picture you want containing text, lines, arrows and circles. You tell
LaTeX where to put things in the picture by specifying their
coordinates. A coordinate is a number that may have a decimal point
and a minus sign -- a number like 5, 2.3 or -3.1416. A coordinate
specifies a length in multiples of the unit length \\unitlength, so if
\\unitlength has been set to 1cm, then the coordinate 2.54 specifies a
length of 2.54 centimetres. You can change the value of \\unitlength
anywhere you want, using the \\setlength command, but strange things
will happen if you try changing it inside the picture environment.

A position is a pair of coordinates, such as (2.4,-5), specifying the
point with x-coordinate 2.4 and y-coordinate -5. Coordinates are
specified in the usual way with respect to an origin, which is
normally at the lower-left corner of the picture. Note that when a
position appears as an argument, it is not enclosed in braces; the
parentheses serve to delimit the argument.

The picture environment has one mandatory argument, which is a
position. It specifies the size of the picture. The environment
produces a rectangular box with width and height determined by this
argument's x- and y-coordinates.

The picture environment also has an optional position argument,
following the size argument, that can change the origin. (Unlike
ordinary optional arguments, this argument is not contained in square
brackets.) The optional argument gives the coordinates of the point at
the lower-left corner of the picture (thereby determining the
origin). For example, if \\unitlength has been set to 1mm, the command
   \\begin{picture}(100,200)(10,20)

produces a picture of width 100 millimetres and height 200
millimetres, whose lower-left corner is the point (10,20) and whose
upper-right corner is therefore the point (110,220).  When you first
draw a picture, you will omit the optional argument, leaving the
origin at the lower-left corner. If you then want to modify your
picture by shifting everything, you just add the appropriate optional
argument.

The environment's mandatory argument determines the nominal size of
the picture. This need bear no relation to how large the picture
really is; LaTeX will happily allow you to put things outside the
picture, or even off the page. The picture's nominal size is used by
LaTeX in determining how much room to leave for it.

Everything that appears in a picture is drawn by the \\put command. The
command: \\put (11.3,-.3){...}

puts the object specified by ... in the picture, with its reference
point at coordinates (11.3,-.3). The reference points for various
objects will be described below.

The \\put command creates an LR box. You can put anything in the text
argument of the \\put command that you'd put into the argument of an
\\mbox and related commands. When you do this, the reference point
will be the lower left corner of the box." t)


  ;; Q

  (latex-doc-defenv "quotation"
		     "\\begin{quotation}
  text
\\end{quotation}"

"The margins of the quotation environment are indented on the left and
the right. The text is justified at both margins and there is
paragraph indentation. Leaving a blank line between text produces a
new paragraph." t)


  (latex-doc-defenv "quote"
"\\begin{quote}
  text
\\end{quote}"

"The margins of the quote environment are indented on the left and the
right. The text is justified at both margins. Leaving a blank line
between text produces a new paragraph." t)


  ;; R


  ;; S


  ;; T

  (latex-doc-defenv "tabbing"
"\\begin{tabbing}
 text \\= more text \\= still more text \\= last text \\\\
 second row \\>  \\> more \\\\
 .
 .
 .
\\end{tabbing}"

"The tabbing environment provides a way to align text in columns. It
works by setting tab stops and tabbing to them much the way you do
with an ordinary typewriter.

It is best suited for cases where the width of each column is constant
and known in advance.

This environment can be broken across pages, unlike the tabular
environment.

The following commands can be used inside a tabbing enviroment:

\\=  Sets a tab stop at the current position.
\\>  Advances to the next tab stop.
\\< This command allows you to put something to the left of the local
   margin without changing the margin. Can only be used at the start
   of the line.
\\+ Moves the left margin of the next and all the following commands
   one tab stop to the right.
\\- Moves the left margin of the next and all the following commands
  one tab stop to the left.
\\' Moves everything that you have typed so far in the current column,
   i.e. everything from the most recent \\>, \\<, \\', \\\\, or \\kill
   command, to the right of the previous column, flush against the
   current column's tab stop.
\\` Allows you to put text flush right against any tab stop, including
   tab stop 0. However, it can't move text to the right of the last
   column because there's no tab stop there. The \\` command moves all
   the text that follows it, up to the \\\\ or \\end{tabbing} command
   that ends the line, to the right margin of the tabbing
   environment. There must be no \\> or \\' command between the \\` and
   the command that ends the line.
\\kill
    Sets tab stops without producing text. Works just like \\\\ except
    that it throws away the current line instead of producing output
    for it. The effect of any \\=, \\+ or \\- commands in that line
    remain in effect.
\\pushtabs
    Saves all current tab stop positions. Useful for temporarily
    changing tab stop positions in the middle of a tabbing
    environment.
\\pushtabs
    Restores the tab stop positions saved by the last \\pushtabs.

\\a In a tabbing environment, the commands \\=, \\' and \\` do not
   produce accents as normal.  Instead, the commands \\a=, \\a' and \\a`
   are used.

This example typesets a Pascal function in a traditional format:

        \\begin{tabbing}
        function \\= fact(n : integer) : integer;\\\\
                 \\> begin \\= \\+ \\\\
                       \\> if \\= n $>$ 1 then \\+ \\\\
                                fact \:\= n * fact(n-1) \\- \\\\
                          else \\+ \\\\
                                fact \:\= 1; \\-\\- \\\\
                    end;\\\\
        \\end{tabbing}" t)


  (latex-doc-defenv "table"
"\\begin{table}[placement]

  body of the table

 \\caption{table title}
\\end{table}"

"Tables are objects that are not part of the normal text, and are
usually \"floated\" to a convenient place, like the top of a
page. Tables will not be split between two pages.

The optional argument [placement] determines where LaTeX will try to
place your table. There are four places where LaTeX can possibly put a
float:

  * h : Here - at the position in the text where the table environment
    appears.
  * t : Top - at the top of a text page.
  * b : Bottom - at the bottom of a text page.
  * p : Page of floats - on a separate float page, which is a page
    containing no text, only floats.

The standard report and article classes use the default placement
\[tbp\].

The body of the table is made up of whatever text, LaTeX
commands,etc., you wish. The \\caption command allows you to title
your table." t)


  (latex-doc-defenv "tabular"
"\\begin{tabular}[pos]{cols}
 column 1 entry & column 2 entry ... & column n entry \\\\
 .
 .
 .
\\end{tabular}

or

\\begin{tabular*}{width}[pos]{cols}
 column 1 entry & column 2 entry ... & column n entry \\\\
 .
 .
 .
\\end{tabular*}"

"These environments produce a box consisting of a sequence of rows of
items, aligned vertically in columns. The mandatory and optional
arguments consist of:

width
    Specifies the width of the tabular* environment. There must be
    rubber space between columns that can stretch to fill out the
    specified width.
pos Specifies the vertical position; default is alignment on the
    centre of the environment.
      + t - align on top row
      + b - align on bottom row
cols
    Specifies the column formatting. It consists of a sequence of the
    following specifiers, corresponding to the sequence of columns and
    intercolumn material.
      + l - A column of left-aligned items.
      + r - A column of right-aligned items.
      + c - A column of centred items.
      + | - A vertical line the full height and depth of the environment.
      + @{text} - This inserts text in every row. An @-expression
        suppresses the intercolumn space normally inserted between
        columns; any desired space between the inserted text and the
        adjacent items must be included in text. An \\extracolsep{wd}
        command in an @-expression causes an extra space of width wd
        to appear to the left of all subsequent columns, until
        countermanded by another \\extracolsep command. Unlike ordinary
        intercolumn space, this extra space is not suppressed by an
        @-expression. An \\extracolsep command can be used only in an
        @-expression in the cols argument.
      + p{wd} - Produces a column with each item typeset in a parbox
        of width wd, as if it were the argument of a \\parbox[t]{wd}
        command. However, a \\\\ may not appear in the item, except in
        the following situations:
         1. inside an environment like minipage, array, or tabular.
         2. inside an explicit \\parbox.
         3. in the scope of a \\centering, \\raggedright, or \\raggedleft
            declaration. The latter declarations must appear inside
            braces or an environment when used in a p-column element.
      + *{num}{cols} - Equivalent to num copies of cols, where num is
        any positive integer and cols is any list of
        column-specifiers, which may contain another *-expression.

These commands can be used inside a tabular environment:

  * \\cline: Draw a horizontal line spanning some columns.
  * \\hline: Draw a horizontal line spanning all columns.
  * \\multicolumn: Make an item spanning several columns.
  * \\vline: Draw a vertical line." t)


  (latex-doc-defenv "thebibliography"
"\\begin{thebibliography}{widest-label}
 \\bibitem[label]{cite_key}
 .
 .
 .
\\end{thebibliography}"

"The thebibliography environment produces a bibliography or reference
list. In the article class, this reference list is labelled
\"References\"\; in the report class, it is labelled \"Bibliography\".

  * widest-label: Text that, when printed, is approximately as wide as
    the widest item label produces by the \\bibitem commands.

  * \\bibitem: Specify a bibliography item.
  * \\cite: Refer to a bibliography item.
  * \\nocite: Include an item in the bibliography.
  * Using BibTeX: Automatic generation of bibliographies.

Using BibTeX

If you use the BibTeX program by Oren Patashnik (highly recommended if
you need a bibliography of more than a couple of titles) to maintain
your bibliography, you don't use the thebibliography
environment. Instead, you include the lines

        \\bibliographystyle{style}
        \\bibliography{bibfile}

where style refers to a file style.bst, which defines how your
citations will look. The standard styles distributed with BibTeX are:

alpha
    Sorted alphabetically. Labels are formed from name of author and
    year of publication.
plain
    Sorted alphabetically. Labels are numeric.
unsrt
    Like plain, but entries are in order of citation.
abbrv
    Like plain, but more compact labels.

In addition, numerous other BibTeX style files exist tailored to the
demands of various publications.

The argument to \\bibliography refers to the file bibfile.bib, which
should contain your database in BibTeX format. Only the entries
referred to via \\cite and \\nocite will be listed in the bibliography." t)


  (latex-doc-defenv "theorem"
"\\begin{theorem}
  theorem text
\\end{theorem}"

"The theorem environment produces \"Theorem x\" in boldface followed by
your theorem text." t)


  (latex-doc-defenv "titlepage"
"\\begin{titlepage}
  text
\\end{titlepage}"

"The titlepage environment creates a title page, i.e. a page with no
printed page number or heading. It also causes the following page to
be numbered page one. Formatting the title page is left to you. The
\\today command comes in handy for title pages.

Note that you can use the \\maketitle (see \\maketitle) command to
produce a standard title page." t)


  ;; U


  ;; V

  (latex-doc-defenv "verbatim"
"\\begin{verbatim}
  text
\\end{verbatim}"

"The verbatim environment is a paragraph-making environment that gets
LaTeX to print exactly what you type in. It turns LaTeX into a
typewriter with carriage returns and blanks having the same effect
that they would on a typewriter." t)


  (latex-doc-defenv "verse"
"\\begin{verse}
  text
\\end{verse}"

"The verse environment is designed for poetry, though you may find
other uses for it.

The margins are indented on the left and the right. Separate the lines
of each stanza with \\\\, and use one or more blank lines to separate
the stanzas." t)


  ;; W


  ;; X


  ;; Y



  ;; Z
  (latex-doc-defpkg "afterpage"
		    "\\usepackage{afterpage}"
"This package implements a command, \\afterpage, that causes the
commands specified in its argument to be expanded after the curent
page is output.

\\clearpage command flushes out all the unprocessed floats, but it has
the effect of making the current page end prematurely. Now you can
issue
	\\afterpage{\\clearpage}
and the current page will be filled up with text as usual, but then a
\\clearpage command will flush out all the floats before the next text
page begins.

It is difficult to set the text surrounding the long table using
longtable environment.  However, if the table is in a separate file,
say ltfile.tex, you can float the long table using one of:
	\\afterpage{\\clearpage\\input{ltfile}}
	\\afterpage{\\clearpage\\input{ltfile}\\clearpage}.
The first form lets text apear on the same page as the end of the
longtable, the second ensures that the surrounding text starts again
on a new page." t)

  (latex-doc-defpkg "draftcopy"
"\\usepackage[option]{draftcopy}"

"This package is used to print on some pages the word DRAFT.

Options for this package are:
-----------------------------------------------------------------------
english, 	This package accepts the language options of the babel
german, etc.	package. The babel package is not loaded by draftcopy.
-----------------------------------------------------------------------
none		Don't print DRAFT across of any page.
-----------------------------------------------------------------------
first		Prints DRAFT across only on the  rst page.
-----------------------------------------------------------------------
firsttwo	Prints DRAFT across only on the  rst two pages.
-----------------------------------------------------------------------
all		Prints DRAFT across on all pages of the document.
-----------------------------------------------------------------------
bottom		Prints DRAFT on all pages at the bottom of the page.
-----------------------------------------------------------------------
bottomafter 	Prints DRAFT at the bottom of the pages following the
		pages which have DRAFT across them.
-----------------------------------------------------------------------
outline 	The word DRAFT is printed with outlined letters.
-----------------------------------------------------------------------
light 		The word DRAFT is printed with a light grey.
-----------------------------------------------------------------------
dark 		The word DRAFT is printed with a dark grey.
-----------------------------------------------------------------------
textures, 	This package accepts the options of the graphics package.
dvips, etc.	The graphics package is not loaded by draftcopy.
-----------------------------------------------------------------------

Additionally to the options, each feature may be set by commands,
which must be placed in the preamble of the document.

\\draftcopySetGrey 	Set the intensity of the gray. The argument value
			range from 0.0 to 1.0, where the smaller values
			darker.
\\draftcopyFirstPage	The argument specifies the  first page onto which
			DRAFT will be printed. This is the physical page
			number.
\\draftcopyLastPage	The argument specifies the last page onto which
			DRAFT will be printed. This is the physical page
			number.
\\draftcopyName		The  first argument specifies the word to be
			printed instead of DRAFT, the second, gives the
			scale factor for the font to be used. E.g. the
			english word DRAFT needs 215, the german ENTWURF
			needs 155.
\\draftcopySetScale	Change the default size of the word DRAFT" t)

  (latex-doc-defpkg "droping"
		    "\\usepackage{droping}

\\dropping[len]{numb}{text}"

"The len argument is a LaTeX length (with unit) which states how far
from the left margin the dropped text should start. A positive number
corresponds to an indentation rightwards, a negative number will force
the dropped text to start to the left of the paragraph. The default
value is 0pt, meaning the dropped text will be aligned with the rest
of the paragraph.

The mandatory numb argument should be an integer number which states
how many lines tall the dropped text should be.

The last argument, text, is the text which should be dropped. This
argument may either be a single letter or several letters without any
formatting information, or the argument may start with a font-changing
command of the type \\rmfamily. In the former case, there are no
special things to think about, and the dropped text will be type-set
in the document's default font. However, if a font-changing command is
used, there are two things to be aware of:

1. You can only use the font-changing commands \\rmfamily, \\sffamily,
\\ttfamily, \\mdseries, \\bfseries, \\upshape, \\itshape, \\slshape, or
\\scshape (i. e. not the \\textxx commands).

2. The font-changing command(s) must be followed by a pair of braces,
and a blank space for the internal stripping routines to work. Several
font-changing commands may be used in series. Thus, both {This},
{\\bfseries{} this}, and {\\ttfamily\\itshape{} this} are examples of
valid text arguments to \\dropping.

Note that the construct \\textit{\\dropping[len]{numb}{text}} does
not work properly." t)

  (latex-doc-defpkg "graphicx"
"\\usepackage[driver]{graphicx}

\\includegraphics[key=value, . . . ]{file}"

"driver is the name of your dvi to postscript converter program. The
most widely used program is called dvips.

Use the command

	\\includegraphics[key=value, . . . ]{file}

to include file into your document. The optional parameter accepts a
comma separated list of keys and associated values. The keys can be
used to alter the width, height and rotation of the included
graphic. Table below lists the most important keys.

Options	Description
---------------------------------------------
width	scale graphic to the specified width
height 	scale graphic to the specified height
angle 	rotate graphic counterclockwise
scale 	scale graphic

E.g.:

\\begin{figure}
  \\begin{center}
     \\includegraphics[angle=90, width=0.5\\textwidth]{test}
  \\end{center}
\\end{figure}" t)

  (latex-doc-defpkg "hyperref"
		    "\\usepackage[options]{hyperref}

Make sure it comes last of your loaded packages, to give it a fighting
chance of not being over-written, since its job is to redefine many
LaTeX commands.

* \\href{URL}{text}
  The text is made a hyperlink to the URL\; this must be a full URL
  (relative to the base URL, if that is defined). The special
  characters \# and ~ do not need to be escaped in any way.

* \\hyperbaseurl{URL}
  A base URL is established, which is prepended to other specified
  URLs, to make it easier to write portable documents.

* \\hyperimage{image URL}
  The image referenced by the URL is inserted.

* \\hyperdef{category}{name}text
  A target area of the document (the text) is marked, and given the
  name category.name

* \\hyperref{URL}{category}{name}{text}
  text is made into a link to URL\#category.name

* \\hyperlink{name}{text}
* \\hypertarget{name}{text}
  A simple internal link is created with \\hypertarget, with two
  parameters of an anchor name, and anchor text. \\hyperlink has two
  arguments, the name of a hypertext object defined somewhere by
  \\hypertarget, and the text which be used as the link on the page."

"Package Options:
---------------
The options can be set either in the optional argument to the
\\usepackage command, or using the \\hypersetup macro. When the package
is loaded, a file hyperref.cfg is read if it can be found, and this is
a convenient place to set options on a site-wide basis.

E.g., the behaviour of a particular file could be controlled by:

- a site-wide hyperref.cfg setting up:
  \\hypersetup{backref, pdfpagemode=FullScreen, colorlinks=true}

- A global option in the file, which is passed down to hyperref:
  \\documentclass[dvips]{article}

- File-specific options in the \\usepackage commands, which override
  the ones set in hyperref.cfg:
  \\usepackage[pdftitle={A Perfect Day},colorlinks=false]{hyperref}

* General options (boolean): draft, debug, a4paper (default), a5paper,
  b5paper, letterpaper, legalpaper, executivepaper.

* Extension options:
-----------------------------------------------------------------------
extension	Set the file extension (eg dvi) which will be appended
(text)		to file links created if you use the xr package.

hyperfigures
(boolean)

backref		Adds backlink text to the end of each item in the
(boolean)	bibliography, as a list of section numbers. This can
(false)		only work properly if there is a blank line after each
		\\bibitem.

pagebackref	Adds backlink text to the end of each item in the
(boolean)	bibliography, as a list of page numbers.
(false)

hyperindex	Makes the text of index entries into hyperlinks. Easily
(boolean)	broken ...
(false)

colorlinks	Colours the text of links and anchors. The colors
(boolean)	chosen depend on the the type of link. At present the
(false)		only types of link distinguished are citations, page
		references, URLs, local file references, and other
		links.

linkcolor	Color for normal internal links.
(color) (red)

anchorcolor	Color for anchor text.
(color) (black)

citecolor	Color for bibligraphical citations in text.
(color) (green)

filecolor	Color for URLs which open local files.
(color) (magenta)

menucolor	Color for Acrobat menu items.
(color) (red)

pagecolor	Color for links to other pages.
(color) (red)

urlcolor	Color for linked URLs.
(color) (cyan)
-----------------------------------------------------------------------

* PDF display and information options
-----------------------------------------------------------------------
baseurl		Sets the base URL of the PDF document
(URL)

pdfpagemode	Determines how the file is opening in Acrobat\; the
(text)		possibilies are None, UseThumbs (show thumbails),
(none)		UseOutlines (show bookmarks), and FullScreen. If no
		mode if explicitly chosen, but the bookmarks option is
		set, UseOutlines is used.

pdftitle	Sets the document information Title field
pdfauthor	Sets the document information Author field
pdfsubject	Sets the document information Subject field
pdfcreator	Sets the document information Creator field
pdfproducer	Sets the document information Producer field
pdfkeywords	Sets the document information Keywords field
pdfview		Sets the default PDF  view  for each link
pdfstartpage	Determines on which page the PDF file is opened.
pdfstartview	Set the startup page view
pdfpagescrop	Sets the default PDF crop box for pages. This should be
		a set of four numbers
-----------------------------------------------------------------------

* Configuration options:
-----------------------------------------------------------------------
raiselinks	In the hypertex driver, the height of links is normally
(boolean)	calculcated by the driver as simply the base line of
(true)		contained text\; this options forces \\special commands
		to reflect the real height of the link (which could
		contain a graphic)

breaklinks	Allows link text to break across lines\; since this
(boolean)	cannot be accomodated in PDF, it is only set true by
(false)		default if the pdftex driver is used. This makes links
		on multiple lines into different PDF links to the same
		target.

pageanchor	Determines whether every page is given an implicit
(boolean)	anchor at the top left corner. If this is turned off,
(false)		\\tableofcontents will not contain hyperlinks.

plainpages	Forces page anchors to be named by the arabic form of
(boolean)	the page number, rather than the formatted form.
(true)

nesting		Allows links to be nested\; no drivers currently
(boolean)	support this.
(false)
------------------------------------------------------------------------

* Backend drivers options (boolean): pdftex, nativepdf, pdfmark,
  dvips, hypertex, dviwindo, dvipsone, vtex, latex2html, ps2pdf.  If
  no driver is specified, the package defaults to loading the hypertex
  driver.

NOTE: Refer to hyperref manual for other (seldomly used) options." t)

  (latex-doc-defcmd "href"
"\\href{URL}{text}"
"The text is made a hyperlink to the URL\; this must be a full URL
(relative to the base URL, if that is defined). The special characters
\# and ~ do not need to be escaped in any way.

See package hyperref" t)

  (latex-doc-defcmd "hyperbaseurl"
"\\hyperbaseurl{URL}"

"A base URL is established, which is prepended to other specified
URLs, to make it easier to write portable documents.

See package hyperref" t)

  (latex-doc-defcmd "hyperimage"
"\\hyperimage{image}"

"The image referenced by the URL is inserted.

See package hyperref" t)

  (latex-doc-defcmd "hyperdef"
"\\hyperdef{category}{name}text"

"A target area of the document (the text) is marked, and given the
name category.name

See package hyperref" t)

  (latex-doc-defcmd "hyperref"
"\\hyperref{URL}{category}{name}{text}"

"text is made into a link to URL\#category.name

See package hyperref" t)

  (latex-doc-defcmd "hyperlink"
"\\hyperlink{name}{text}"

"The name of a hypertext object defined somewhere by \\hypertarget,
and the text which be used as the link on the page.

See package hyperref" t)

  (latex-doc-defcmd "hypertarget"
"\\hypertarget{name}{text}"

"Create a simple internal link with two parameters of an anchor name,
and anchor text.

See package hyperref" t)

  (latex-doc-defpkg "ifthen"
"\\usepackage{ifthen}

\\ifthenelse, \\newboolean, \\provideboolean, \\setboolean, \\whiledo"

"\\ifthenelse{test}{then clause}{else clause}
Evaluates test as a boolean function, and then executes either then
clause or else clause.  test is a boolean expression using the in x
connectives, \\and, \\or, the unary \\not and parentheses \\( \\).

\\newboolean{name} and \\provideboolean{name}
are provided so the user can easily create new boolean ags. As for
\\newcommand, \\newboolean generates an error if the command name is
not new. \\provideboolean silently does nothing in that case.

\\setboolean{name}{value}
value may be either true or false. Note that there is no precedence
between \\and and \\or. The proposition is evaluated in a left right
manner. \\not only applies to the immediately following proposition.

\\whiledo{test}{while clause} With test as above, repeatedly executes
while clause while the test remains true." t)

  (latex-doc-defpkg "longtable"
		    "\\usepackage{longtable}"
"------------------------------------------------------------------
                          PARAMETER
------------------------------------------------------------------
\\LTleft		Glue to the left of the table. 		(\\fill)
------------------------------------------------------------------
\\LTright	Glue to the right of the table.		(\\fill)
------------------------------------------------------------------
\\LTpre		Glue before the the table. 	(\\bigskipamount)
------------------------------------------------------------------
\\LTpost		Glue after the the table.	(\\bigskipamount)
------------------------------------------------------------------
\\LTcapwidth	The width of a parbox containing	(4in) 
              	the caption.                                        
------------------------------------------------------------------
LTchunksize	The number of rows per chunk.		 (20) 
------------------------------------------------------------------

-------------------------------------------------------
      OPTIONAL ARGUMENTS TO \\begin{longtable}
-------------------------------------------------------
none	Position as speci ed by \\LTleft and \\LTright. 
-------------------------------------------------------
[c] 	Centre the table.                               
-------------------------------------------------------
[l] 	Place the table ush left.                       
-------------------------------------------------------
[r] 	Place the table ush right.                      
-------------------------------------------------------

---------------------------------------------------------------------
			COMMANDS TO END TABLE ROWS
---------------------------------------------------------------------
\\\\			Specifies the end of a row
---------------------------------------------------------------------
\\\\[dim]			Ends row, then adds vertical space (as in the
			tabular environment).
---------------------------------------------------------------------
\\\\*             	The same as \\\\ but disallows a page break
			after the row.
---------------------------------------------------------------------
\\tabularnewline  	Alternative to \\\\ for use in the scope
			of \\raggedright and similar commands that
			redefine \\\\.
---------------------------------------------------------------------
\\kill            	Row is `killed', but is used in calculating
			widths.
---------------------------------------------------------------------
\\endhead         	Specifies rows to appear at the top of every
			page.
---------------------------------------------------------------------
\\endfirsthead    	Specifies rows to appear at the top the	first
			page.
---------------------------------------------------------------------
\\endfoot         	Specifies rows to appear at the bottom of every
			page.
---------------------------------------------------------------------
\\endlastfoot     	Specifies rows to appear at the bottom of the
			last page.
---------------------------------------------------------------------

---------------------------------------------------------------------
			LONGTABLE CAPTION COMMANDS
---------------------------------------------------------------------
\\caption{caption}	Caption `Table ?: <caption>', and a `caption'
			entry in the list of tables.
---------------------------------------------------------------------
\\caption[lot]{caption}	Caption `Table ?: <caption>', and a `<lot>'
			entry in the list of tables.
---------------------------------------------------------------------
\\caption[]{caption} 	Caption `Table ?: <caption>', but no entry
			in the list of tables.
---------------------------------------------------------------------
\\caption*{caption} 	Caption `<caption>', but no entry in the list
			of tables.
---------------------------------------------------------------------

---------------------------------------------------------------------
		COMMANDS AVAILABLE AT THE START OF A ROW
---------------------------------------------------------------------
\\pagebreak 		Force a page break.
---------------------------------------------------------------------
\\pagebreak[val] 	A `hint' between 0 and 4 of the desirability
			of a break.
---------------------------------------------------------------------
\\nopagebreak 		Prohibit a page break.
---------------------------------------------------------------------
\\nopagebreak[val]	A `hint' between 0 and 4 of the undesirability
			of a break.
---------------------------------------------------------------------
\\newpage 		Force a page break.
---------------------------------------------------------------------

---------------------------------------------------------------------
		FOOTNOTE COMMANDS AVAILABLE INSIDE LONGTABLE
---------------------------------------------------------------------
\\footnote 	Footnotes, but may not be used in the table head &
		foot.
---------------------------------------------------------------------
\\footnotemark	Footnotemark, may be used in the table head & foot.
---------------------------------------------------------------------
\\footnotetext	Footnote text, use in the table body.
---------------------------------------------------------------------

E.g.:

\\begin{longtable}{@{*}r||p{1in}@{*}}
KILLED & LINE!!!! \\kill
\\caption[An optional table caption ...]{A long table\\label{long}}\\\\
\\hline\\hline
\\multicolumn{2}{@{*}c@{*}}%
	{This part appears at the top of the table}\\\\
\\textsc{First}&\\textsc{Second}\\\\
\\hline\\hline
\\endfirsthead
\\caption[]{(continued)}\\\\
\\hline\\hline
\\multicolumn{2}{@{*}c@{*}}%
	{This part appears at the top of every other page}\\\\
\\textbf{First} & \\textbf{Second}\\\\
\\hline\\hline
\\endhead
\\hline This goes at the & bottom.\\\\
\\hline
\\endfoot
\\hline
These lines will & appear\\\\
in place of the  & usual foot\\\\
at the end       & of the table\\\\
\\hline
\\endlastfoot
\\env{longtable} columns are specified & in the \\\\
same way as in the \\env{tabular} & environment.\\\\
...
\\multicolumn{2}{||c||}{This is a ...}\\\\
...
Some lines may take...&
	\\raggedleft This last column is a ``p'' column...
	\\tabularnewline
...
Lots of lines & like this.\\\\
...
\\hline
Lots\\footnote{...} of lines & like this.\\\\
Lots of lines & like this\\footnote{...}\\\\
\\hline
Lots of lines & like this.\\\\ 
... 
\\end{longtable}" t)

   (latex-doc-defpkg "makeidx"
"\\usepackage{makeidx}

\\makeindex, \\index{key}, \\printindex"

"The special indexing commands must be enabled by putting the
	\\makeindex
command into the input file preamble.

The content of the index is specified with
	\\index{key}
commands, where key is the index entry. You enter the index commands
at the points in the text where you want the final index entries to
point to.  E.g.:

\\index{hello} 			Plain entry
\\index{hello!Peter} 		Subentry under hello
\\index{Sam@\\textsl{Sam}} 	Formatted entry
\\index{Lin@\\textbf{Lin}} 	Same as above
\\index{Jenny|textbf} 		Formatted page number
\\index{Joe|textit} 		Same as above

The makeindex program generates a sorted index with the same base file
name, but this time with the extension .ind. If now the LaTeX
input file is processed again, this sorted index gets included into
the document at the point where LaTeX finds
	\\printindex" t)

  (latex-doc-defpkg "subfigure"
		    "\\usepackage[options]{subfigure}
\\subfigure[caption]{figure}
\\subtable[caption]{figure}"
"Option		Description
----------------------------------------------------------------------
normal		Provides `normal' captions, this is the default.
----------------------------------------------------------------------
hang		Causes the label to be a hanging indentation to the
		caption paragraph.
----------------------------------------------------------------------
center		Causes each line of the paragraph to be separately
		centered.
----------------------------------------------------------------------
centerlast	Causes the last line only to be centered.
----------------------------------------------------------------------
nooneline	If a caption fits on one line it will, by default, be
		centered.  This option left-justifies the one line
		caption.  scriptsize, . . . , Large Sets the font size
		of the captions.
----------------------------------------------------------------------
up, it, sl,	Sets the font attributes of the caption labels.
sc, md, bf,
rm, sf or tt
----------------------------------------------------------------------

 ------------------------------------------------------------
 |                                \\subfigtopskip            |
 ------------------------------------------------------------
 |                                                          |
 |                      FIGURE OR TABLE                     |
 |                                               (Baseline) |
 ------------------------------------------------------------
 |                                \\subfigcapskip            |
 |                      ---------------                     |
 |                      |   CAPTION   |                     |
 |<...................> --------------- <..................>|
 |   \\subfigcapmargin                     \\subfigcapmargin  |
 ------------------------------------------------------------
 |                                \\subfigbottomskip         |
 ------------------------------------------------------------

Example:
-------
\\newcommand{\\goodgap}{%
\\hspace{\\subfigtopskip}%
\\hspace{\\subfigbottomskip}}
...
\\begin{figure}%
 \\centering
 \\subfigure[First]{...}\\goodgap
 \\subfigure[Second Figure]{...}\\\\
 \\subfigure[Third]{\\label{3figs-c}...}%
 \\caption{Three subfigures.}
 \\label{3figs}
\\end{figure}
...
Figure~\\ref{3figs} contains two top `subfigures' and
Figure~\\ref{3figs-c}." t)


;; NOTE: No more latex-doc-def* after this line since we are going to
;; save the working buffer and the index file.
;;
;; Dummy environtment.
;; The DONT-SAVE-P argument in the last call must be nil so that the
;; info will be written into `latex-doc-file'.  I leave it here to
;; emphasize this.
  (latex-doc-defpkg "zzz" "zzz" nil nil)

;; Update the `latex-doc-index-file'.
  (latex-doc-write-index)
)
