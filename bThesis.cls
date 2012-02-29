% --- Define my class ---
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{bThesis}

\def\thesisversion{print}

% --- Define the baseclass ---
\def\baseclass{book}

% --- Pass the normal options to the baseclass ---
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\ProcessOptions\relax

% --- Load the baseclass ---
\LoadClass{\baseclass}

% --- Load external packages ---
\usepackage{amsmath}     % General mathy stuff (\text{} and more)
\usepackage{amssymb}     % 
%\usepackage{amsfonts}     % 
\usepackage{graphicx}
\usepackage{upgreek}      % Sane greek letter vectors. NB: This is a hack! (Might be a different font)
\usepackage[plain]{fancyref} % Support for \fref, context aware reference macro.
\usepackage[scriptsize, loose]{subfigure}
\usepackage[T1]{fontenc} % Render \dh{} for icelandic
\usepackage[utf8]{inputenc}
\usepackage{bm}          % Vectors
\usepackage[version=3]{mhchem} % Chemistry formulas
\usepackage[final]{pdfpages} % Used for including the papers
\usepackage[font=small,format=plain,labelfont=bf,up,textfont=up]{caption}
\usepackage{nameref} % Allows for the calling of names and not just numbers with \ref
\usepackage[final]{hyperref}
\usepackage{sidecap}
\sidecaptionvpos{figure}{t}

% --- Fonts ---
%\usepackage{cmbright} % Displayes vectors in suprscripts wrong

% --- New command definitions ---
\newcommand{\vect}[1]{{\ensuremath{\mathrm{\mathbf{\bm{#1}}}}}}        % Bold vectors. HACK: Extra {} to fix issues with sub/superscript vectors. BUG: Greek stuff is in italics without the upgreek package.
\newcommand{\HRule}{\rule{15cm}{0.5mm}}                                % Horizontal line
\newcommand{\mAA}{\mathring{\mathrm{A}}}                               % AAngstrom
\def\urltilda{\kern -.15em\lower .7ex\hbox{\~{}}\kern .04em}           % Tilda for use in URLs
\newcommand{\mytilde}{{\raise.17ex\hbox{$\scriptstyle\mathtt{\sim}$}}} % A nicer looking tilde for use in the text
\newcommand{\sap}[1]{\ensuremath{\text{SP}_{#1}}}                      % Saddle Point (SP) shortcut
\newcommand{\unit}[1]{\ensuremath{\, \mathrm{#1}}}                     % Ensure that units are not italic
\newcommand{\nref}[1]{\fref{#1} : \nameref{#1}}
\newcommand{\Nref}[1]{\Fref{#1} : \nameref{#1}}

% --- Vector shortcuts ---
\newcommand{\vF}{\vect{F}}
\newcommand{\vR}{\vect{R}}
\newcommand{\vr}{\vect{r}}
\newcommand{\vs}{\vect{s}}
\newcommand{\uvs}{\hat{\vs}}
\newcommand{\vt}{\vect{\uptau}}
\newcommand{\uvt}{\hat{\vt}}
\newcommand{\vn}{\vect{\upepsilon}}
\newcommand{\uvn}{\hat{\vn}}
\newcommand{\uvm}{\hat{\vn}^\text{min}}
\newcommand{\vT}{\vect{\uptheta}}
\newcommand{\uvT}{\hat{\vT}}
\newcommand{\vQ}{\vect{Q}}

% Notation
\newcommand{\bra}{\langle}
\newcommand{\ket}{\rangle}
\newcommand{\ts}{\ddagger}
\newcommand{\kB}{k_\text{B}}

% --- Stuff that might change definitions ---
\newcommand{\Dsep}{\Delta_\text{D}}

% --- New commands, macros and external packages for development purposes ---
\usepackage{verbatim} % Comment environment.
\usepackage{color} % To color indocument comments.
%\usepackage[notcite, notref]{showkeys} % Keep track of the labels
\newcommand{\tred}[1]{\textcolor{red}{#1}}
\newcommand{\tblue}[1]{\textcolor{blue}{#1}}
%\newcommand{\incomplete}{\tred{INCOMPLETE}}
\newcommand{\placeholder}{\tred{PLACEHOLDER}}
%\newcommand{\missing}{\tred{MISSING}}
\newcommand{\figmiss}[1]{\textcolor{red}{MISSING FIGURE: #1}}
\newcommand{\citemiss}{\textcolor{red}{[MISSING]}}
%\newcommand{\pending}{\textcolor{blue}{[NAME PENDING]}}
\newcommand{\expand}{\textcolor{red}{EXPAND}}

% --- Shortcuts for environments
\newcommand{\bit}{\begin{itemize}}
\newcommand{\eit}{\end{itemize}}
\newcommand{\ben}[1]{\begin{enumerate}\label{enum:#1}}
\newcommand{\een}{\end{enumerate}}
\newcommand{\beq}[1]{\begin{equation}\label{eq:#1}}
\newcommand{\eeq}{\end{equation}}
\newcommand{\bfig}[1]{\begin{figure}\label{fig:#1}}
\newcommand{\efig}{\end{figure}}
\newcommand{\btab}[1]{\begin{tabular}\label{tab:#1}}
\newcommand{\etab}{\end{tabular}}
\newcommand{\explain}[1]{\paragraph{#1}\hangindent=1em\hangafter=0}

% --- Define the general look ---
%\usepackage{fancyhdr}
%%%\addtolength{\parskip}{\baselineskip}
%%%\setlength{\parindent}{0pt}
%\pagestyle{myheadings}
%\setlength{\paperwidth}{176mm}  %b5
%\setlength{\paperheight}{250mm} %b5
%\setlength{\textheight}{185mm} % 540pt = 7.5inch = 190.5mm
%\setlength{\topmargin}{-5.4mm}
%\setlength{\headheight}{8mm}
%\setlength{\headsep}{7mm}
%\setlength{\footskip}{10.0mm}
%\setlength{\textwidth}{121.36mm}  % 129.36 mm  % width and margins must add to 176 mm:
%\setlength{\oddsidemargin}{1.24mm} % 1 inch + 1.24 mm = 26.64 mm inside
%\setlength{\evensidemargin}{-5.4mm} % 1 inch - 5.4 mm = 20 mm outside

%\pagestyle{fancyplain}
%\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
%\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
%\lhead[\fancyplain{}{\sffamily\bfseries\thepage}]%
%      {\fancyplain{}{\sffamily\bfseries\rightmark}}
%\rhead[\fancyplain{}{\sffamily\bfseries\leftmark}]%
%      {\fancyplain{}{\sffamily\bfseries\thepage}}
%\cfoot{}

%%\usepackage{vmargin}
%%\setmarginsrb {  40mm}  % left margin   (1.5in)
%%              {  25mm}  % top margin    (0.6in)
%%              {  25mm}  % right margin  (1.0in)
%%              {  25mm}  % bottom margin (0.8in)
%%              {   0mm}  % head height  (20pt)
%%              {   0mm}  % head sep     (0.25in)
%%              {   9pt}  % foot height  (9pt)
%%              {0.25in}  % foot sep  (0.3in)

% Bibliography style
\usepackage[numbers,sort&compress]{natbib}
\bibliographystyle{achemso}

% PDF meta info
%\hypersetup{pdftitle={Identifying Reaction Pathways and their Environments: Methods and Applications},
%            pdfauthor={J\'on Bergmann Maronsson}}%,
%%              pdfsubject={\thesisdef},
%%              pdfkeywords={\thesiskeywords},
%%              colorlinks,
%%              linkcolor=blue,
%%              breaklinks,
%%              bookmarksopen,
%%              bookmarksnumbered}

% fancyheadings.sty version 1.92
% Fancy headers and footers.
% Piet van Oostrum, Dept of Computer Science, University of Utrecht
% Padualaan 14, P.O. Box 80.089, 3508 TB Utrecht, The Netherlands
% Telephone: +31-30-531806. piet@cs.ruu.nl (mcvax!sun4nl!ruuinf!piet)
% Sep 16, 1994
% version 1.4: Correction for use with \reversemargin
% Sep 29, 1994:
% version 1.5: Added the \iftopfloat, \ifbotfloat and \iffloatpage commands
% Oct 4, 1994:
% version 1.6: Reset single spacing in headers/footers for use with
% setspace.sty or doublespace.sty
% Oct 4, 1994:
% version 1.7: changed \let\@mkboth\markboth to
% \def\@mkboth{\protect\markboth} to make it more robust
% Dec 5, 1994:
% version 1.8: corrections for amsbook/amsart: define \@chapapp and (more
% importantly) use the \chapter/sectionmark definitions from ps@headings if
% they exist (which should be true for all standard classes).
% May 31, 1995:
% version 1.9: The proposed \renewcommand{\headrulewidth}{\iffloatpage...
% construction in the doc did not work properly with the fancyplain style. 
% June 1, 1995:
% version 1.91: The definition of \@mkboth wasn't restored on subsequent
% \pagestyle{fancy}'s.
% June 1, 1995:
% version 1.92: The sequence \pagestyle{fancyplain} \pagestyle{plain}
% \pagestyle{fancy} would erroneously select the plain version.

\def\lhead{\@ifnextchar[{\@xlhead}{\@ylhead}}
\def\@xlhead[#1]#2{\gdef\@elhead{#1}\gdef\@olhead{#2}}
\def\@ylhead#1{\gdef\@elhead{#1}\gdef\@olhead{#1}}

\def\chead{\@ifnextchar[{\@xchead}{\@ychead}}
\def\@xchead[#1]#2{\gdef\@echead{#1}\gdef\@ochead{#2}}
\def\@ychead#1{\gdef\@echead{#1}\gdef\@ochead{#1}}

\def\rhead{\@ifnextchar[{\@xrhead}{\@yrhead}}
\def\@xrhead[#1]#2{\gdef\@erhead{#1}\gdef\@orhead{#2}}
\def\@yrhead#1{\gdef\@erhead{#1}\gdef\@orhead{#1}}

\def\lfoot{\@ifnextchar[{\@xlfoot}{\@ylfoot}}
\def\@xlfoot[#1]#2{\gdef\@elfoot{#1}\gdef\@olfoot{#2}}
\def\@ylfoot#1{\gdef\@elfoot{#1}\gdef\@olfoot{#1}}

\def\cfoot{\@ifnextchar[{\@xcfoot}{\@ycfoot}}
\def\@xcfoot[#1]#2{\gdef\@ecfoot{#1}\gdef\@ocfoot{#2}}
\def\@ycfoot#1{\gdef\@ecfoot{#1}\gdef\@ocfoot{#1}}

\def\rfoot{\@ifnextchar[{\@xrfoot}{\@yrfoot}}
\def\@xrfoot[#1]#2{\gdef\@erfoot{#1}\gdef\@orfoot{#2}}
\def\@yrfoot#1{\gdef\@erfoot{#1}\gdef\@orfoot{#1}}

\newdimen\headrulewidth
\newdimen\footrulewidth
\newdimen\plainheadrulewidth
\newdimen\plainfootrulewidth
\newdimen\headwidth
\newif\if@fancyplain
\def\fancyplain#1#2{\if@fancyplain#1\else#2\fi}

% Command to reset various things in the headers:
% a.o.  single spacing (taken from setspace.sty)
% and the catcode of ^^M (so that epsf files in the header work if a
% verbatim crosses a page boundary)
\def\fancy@reset{\restorecr
 \def\baselinestretch{1}%
 \ifx\undefined\@newbaseline% NFSS not present; 2.09 or 2e
  \ifx\@currsize\normalsize\@normalsize\else\@currsize\fi%
 \else% NFSS (2.09) present
  \@newbaseline%
 \fi}

% Initialization of the head and foot text.

\headrulewidth 0.4pt
\footrulewidth\z@
\plainheadrulewidth\z@
\plainfootrulewidth\z@

\lhead[\fancyplain{}{\sl\rightmark}]{\fancyplain{}{\sl\leftmark}}
%  i.e. empty on ``plain'' pages, \rightmark on even, \leftmark on odd pages
\chead{}
\rhead[\fancyplain{}{\sl\leftmark}]{\fancyplain{}{\sl\rightmark}}
%  i.e. empty on ``plain'' pages, \leftmark on even, \rightmark on odd pages
\lfoot{}
\cfoot{\rm\thepage} % page number
\rfoot{}

% Put together a header or footer given the left, center and
% right text, fillers at left and right and a rule.
% The \lap commands put the text into an hbox of zero size,
% so overlapping text does not generate an errormessage.

\def\@fancyhead#1#2#3#4#5{#1\hbox to\headwidth{\fancy@reset\vbox{\hbox
{\rlap{\parbox[b]{\headwidth}{\raggedright#2\strut}}\hfill
\parbox[b]{\headwidth}{\centering#3\strut}\hfill
\llap{\parbox[b]{\headwidth}{\raggedleft#4\strut}}}\headrule}}#5}


\def\@fancyfoot#1#2#3#4#5{#1\hbox to\headwidth{\fancy@reset\vbox{\footrule
\hbox{\rlap{\parbox[t]{\headwidth}{\raggedright#2\strut}}\hfill
\parbox[t]{\headwidth}{\centering#3\strut}\hfill
\llap{\parbox[t]{\headwidth}{\raggedleft#4\strut}}}}}#5}

\def\headrule{{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
\hrule\@height\headrulewidth\@width\headwidth \vskip-\headrulewidth}}

\def\footrule{{\if@fancyplain\let\footrulewidth\plainfootrulewidth\fi
\vskip-0.3\normalbaselineskip\vskip-\footrulewidth
\hrule\@width\headwidth\@height\footrulewidth\vskip0.3\normalbaselineskip}}

\def\ps@fancy{%
\@ifundefined{@chapapp}{\let\@chapapp\chaptername}{}%for amsbook
\@ifundefined{chapter}{\def\sectionmark##1{\markboth
{\uppercase{\ifnum \c@secnumdepth>\z@
 \thesection\hskip 1em\relax \fi ##1}}{}}%
\def\subsectionmark##1{\markright {\ifnum \c@secnumdepth >\@ne
 \thesubsection\hskip 1em\relax \fi ##1}}}%
{\def\chaptermark##1{\markboth {\uppercase{\ifnum \c@secnumdepth>\m@ne
 \@chapapp\ \thechapter. \ \fi ##1}}{}}
\def\sectionmark##1{\markright{\uppercase{\ifnum \c@secnumdepth >\z@
 \thesection. \ \fi ##1}}}}%
\csname ps@headings\endcsname % use \ps@headings defaults if they exist
\ps@@fancy
\gdef\ps@fancy{\@fancyplainfalse\ps@@fancy}%
\headwidth\textwidth}
\def\ps@fancyplain{\ps@fancy \let\ps@plain\ps@plain@fancy}
\def\ps@plain@fancy{\@fancyplaintrue\ps@@fancy}
\def\ps@@fancy{%
\def\@mkboth{\protect\markboth}%
\def\@oddhead{\@fancyhead\@lodd\@olhead\@ochead\@orhead\@rodd}%
\def\@oddfoot{\@fancyfoot\@lodd\@olfoot\@ocfoot\@orfoot\@rodd}%
\def\@evenhead{\@fancyhead\@rodd\@elhead\@echead\@erhead\@lodd}%
\def\@evenfoot{\@fancyfoot\@rodd\@elfoot\@ecfoot\@erfoot\@lodd}%
}
\def\@lodd{\if@reversemargin\hss\else\relax\fi}
\def\@rodd{\if@reversemargin\relax\else\hss\fi}

\let\latex@makecol\@makecol
\def\@makecol{\let\topfloat\@toplist\let\botfloat\@botlist\latex@makecol}
\def\iftopfloat#1#2{\ifx\topfloat\empty #2\else #1\fi}
\def\ifbotfloat#1#2{\ifx\botfloat\empty #2\else #1\fi}
\def\iffloatpage#1#2{\if@fcolmade #1\else #2\fi}



%==================================================================================================
% LUKE PHD THESIS LAYOUT STYLE FILE
% ---------------------------------
% Based upon work by: Henrik Aalborg Nielsen, Thomas Fabricius, Jan Larsen and Finn Kuno 
% Christensen
% Contact: Luke Herbert (lthhe@imm.dtu.dk)
%==================================================================================================
\typeout{----------------------------------------------------}
\typeout{USING LUKE'S PHD THESIS TEMPLATE 1.2}
\typeout{----------------------------------------------------}
%
%==================================================================================================
% BASE PACKAGES
%==================================================================================================
%\usepackage[utf8]{inputenc}					          %Allows input of tex files encoded in UTF8
%\usepackage[T1]{fontenc}                            %Set font encoding for output PDF 
%\usepackage[danish,english]{babel}			          %Allows langauge switching (English is default)
%\usepackage{graphicx}							          %Support for including graphics
%\usepackage{xcolor}                                 %Support for using colours
%\usepackage[hang,normalsize,bf]{caption}            %Make pretty captions
%\usepackage{hyperref}                               %References package
%\usepackage{varioref}							          %Enhances references (\vref {label})
\usepackage{fancyhdr}                               %Pretty headers/footers
\usepackage{amsmath,amssymb,latexsym}               %AMS and other symbols
\usepackage{epic,eepic,epsfig,graphics,psfrag}      %Figure/picture packages
\usepackage{theorem}                                %Allows creation of custom enviroments 
%
%==================================================================================================
% PAGE GEOMETRY
%==================================================================================================
%\addtolength{\parskip}{\baselineskip}
%\setlength{\parindent}{0pt}
\pagestyle{myheadings}
\setlength{\paperwidth}{176mm}  %b5
\setlength{\paperheight}{250mm} %b5
\setlength{\textheight}{185mm} % 540pt = 7.5inch = 190.5mm
\setlength{\topmargin}{-5.4mm}
\setlength{\headheight}{8mm}
\setlength{\headsep}{7mm}
\setlength{\footskip}{10.0mm}
\setlength{\textwidth}{121.36mm}  % 129.36 mm  % width and margins must add to 176 mm:
\setlength{\oddsidemargin}{1.24mm} % 1 inch + 1.24 mm = 26.64 mm inside
\setlength{\evensidemargin}{-5.4mm} % 1 inch - 5.4 mm = 20 mm outside
%==================================================================================================
% HEADINGS SETUP
%==================================================================================================
\pagestyle{fancyplain}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\lhead[\fancyplain{}{\sffamily\bfseries\thepage}]%
      {\fancyplain{}{\sffamily\bfseries\rightmark}}
\rhead[\fancyplain{}{\sffamily\bfseries\leftmark}]%
      {\fancyplain{}{\sffamily\bfseries\thepage}}
\cfoot{}
%
%==================================================================================================
% GENERATE DERIVED THESIS PROPERTIES
%==================================================================================================
\newcommand{\derivethesisprops}{
   \def\ttitle{{\sf\textbf{\thesistitle}}}
   \def\thesisdef{IMM-PhD-\thesisyear-\thesisnumber}   %For MSc's you can modify this
   \def\printversion{print}
   \ifx\thesisversion\printversion
      \special{papersize=176mm,250mm}                  %DTU-IMM special paper size
      \hypersetup{pdftitle={\thesistitle},
         pdfauthor={\thesisauthor},
         pdfsubject={\thesisdef},
         pdfkeywords={\thesiskeywords},
         breaklinks,
         bookmarksopen,
         bookmarksnumbered,
         plainpages=false}
      \else
      \hypersetup{pdftitle={\thesistitle},
         pdfauthor={\thesisauthor},
         pdfsubject={\thesisdef},
         pdfkeywords={\thesiskeywords},
         colorlinks,
         linkcolor=blue,
         breaklinks,
         bookmarksopen,
         bookmarksnumbered,
         plainpages=false}
   \fi
}
%
%==================================================================================================
% GENERATE PREFRONTMATTER
%==================================================================================================
\newcommand{\prefrontmatter}{
   \thispagestyle{empty}                               %Front page (inside cover)
   \vspace*{\fill}
   \begin{center}
      {\huge\ttitle}\\*[2cm]
      \LARGE\sf\thesisauthor\\*[2.5cm]
      \includegraphics[scale=2]{figures/DTU-logo} \\*[1cm]
      \small\sf Kongens Lyngby \thesisyear\\
      \small\sf IMM-PhD-\thesisyear-\thesisnumber
   \end{center}
   \vspace*{\fill}
   \newpage                                            %Back of front page
   \thispagestyle{empty}
   \vspace*{11cm}
   {\sf Technical University of Denmark}\\
   {\sf Informatics and Mathematical Modelling}\\
   {\sf Building 321, DK-2800 Kongens Lyngby, Denmark}\\
   {\sf Phone +45 45253351, Fax +45 45882673}\\
   {\sf reception@imm.dtu.dk}\\
   {\sf www.imm.dtu.dk}
   \vspace*{2.5cm}
   \def\empty{}
   {\sf IMM-PhD-\thesisyear-\thesisnumber}
} 
%
%==================================================================================================
% ENVIROMENTS SETUP
%==================================================================================================
\newtheorem{lemma}{Lemma}[chapter]
\newtheorem{proposition}[lemma]{Proposition}
\newtheorem{theorem}[lemma]{Theorem}
\newtheorem{corollary}[lemma]{Corollary}{\theorembodyfont{\rmfamily}
\newtheorem{definition}[lemma]{Definition}}\theoremheaderfont{\scshape\bfseries}
\newenvironment{proof}{{\scshape Proof.}}{}
\newcommand{\qed}{\hfill $\square$ \vspace{5mm}}
\newtheorem{example}{Example}[chapter]
%
%==================================================================================================
% CHAPTER AND APPENDIX STYLING SETUP
%==================================================================================================
\renewcommand{\chaptername}{C h a p t e r }
\renewcommand{\appendixname}{A p p e n d i x }
%
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
   \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \large\scshape \@chapapp \space\space \Huge\upshape\thechapter
        \par\nobreak
        \vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \flushleft\parbox{\textwidth}{\raggedleft \sffamily\Huge\bfseries  #1}
     \par\nobreak
     \vskip 15pt
     \hrule height 0.4pt
    \vskip 80\p@
  }}
%
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \interlinepenalty\@M
     \sffamily\huge\bfseries  #1
     \par\nobreak
     \vskip 15pt
     \hrule height 0.4pt
    \vskip 80\p@
  }}
% % % EOF % % %