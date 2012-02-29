% --- Define my class ---
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{bThesis}

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
\hypersetup{pdftitle={Identifying Reaction Pathways and their Environments: Methods and Applications},
            pdfauthor={J\'on Bergmann Maronsson}}%,
%              pdfsubject={\thesisdef},
%              pdfkeywords={\thesiskeywords},
%              colorlinks,
%              linkcolor=blue,
%              breaklinks,
%              bookmarksopen,
%              bookmarksnumbered}
