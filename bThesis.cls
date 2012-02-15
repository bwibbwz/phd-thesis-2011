% --- Define my class ---
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{bThesis}

% --- Define the baseclass ---
%\def\baseclass{report}
%\def\baseclass{scrreprt}
\def\baseclass{scrbook}
%\def\baseclass{memoir}

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
%\usepackage{vmargin}     % Margins
%\usepackage{setspace}    % Linespacing
%\usepackage{caption}     % Control the captions
%\usepackage{wrapfig}     % Figures that allow text to wrap around
%\usepackage{footmisc}    % Footnote refernce
\usepackage[scriptsize, loose]{subfigure}
\usepackage[T1]{fontenc} % Render \dh{} for icelandic
\usepackage{bm}          % Vectors
%\usepackage{amssymb}
%\usepackage{epstopdf}
%\usepackage{epsfig}
%\usepackage{psfrag}
%\usepackage{booktabs}
%\usepackage{rotating}
%\usepackage{listings}
%\usepackage{scrpage2}
%\usepackage{lstpatch}
%\usepackage[nolists]{endfloat} % Put the figures at the end (and possibly list of figures = LTP)
\usepackage[version=3]{mhchem} % Chemistry formulas
\usepackage[final]{pdfpages} % Used for including the papers
%\usepackage[font=small,format=plain,labelfont=bf,up,textfont=it,up]{caption}
\usepackage[font=small,format=plain,labelfont=bf,up,textfont=up]{caption}
\usepackage{nameref} % Allows for the calling of names and not just numbers with \ref
\usepackage[final]{hyperref}

% --- Fonts ---
\usepackage{cmbright}

% --- New command definitions ---
%\newcommand{\vect}[1]{\ensuremath{\mathbf{#1}}}                        % Bold vectors
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
\newcommand{\incomplete}{\tred{INCOMPLETE}}
\newcommand{\placeholder}{\tred{PLACEHOLDER}}
\newcommand{\missing}{\tred{MISSING}}
\newcommand{\unread}{\tred{OLD TEXT, NOT READ}}
\newcommand{\recent}{\tblue{WRITTEN RECENTLY, NOT READ}}
\newcommand{\okay}{\tblue{REVISED UNTIL HERE}}
\newcommand{\fix}{\tred{FIX ME!}}
\newcommand{\noneed}{\tblue{PROBABLY NOT NEEDED}}
\newcommand{\figmiss}[1]{\textcolor{red}{MISSING FIGURE: #1}}
\newcommand{\citemiss}{\textcolor{red}{[MISSING]}}
\newcommand{\pending}{\textcolor{blue}{[NAME PENDING]}}
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
%%\usepackage{vmargin}
%%\setmarginsrb {  40mm}  % left margin   (1.5in)
%%              {  25mm}  % top margin    (0.6in)
%%              {  25mm}  % right margin  (1.0in)
%%              {  25mm}  % bottom margin (0.8in)
%%              {   0mm}  % head height  (20pt)
%%              {   0mm}  % head sep     (0.25in)
%%              {   9pt}  % foot height  (9pt)
%%              {0.25in}  % foot sep  (0.3in)
%%\usepackage{times}      % Set the font to Times
%%\usepackage{caption}
%\captionsetup[figure]{width=0.9\linewidth} % Use if you use wrapfig
%%\captionsetup{width=0.9\linewidth}
%\captionsetup{labelfont=bf}
%\captionsetup{font=footnotesize}
%%\usepackage{setspace}
%\onehalfspacing
%\setlength{\parindent}{0pt}
%\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
%\setstretch{1.3}
% Bibliography style
%\bibliographystyle{achemso}
\bibliographystyle{unsrt}

% --- Create enviroments ---
% eqnref, for reprinting earlier equations. (thanks to Craig Powell, http://www.phy.umist.ac.uk/~craig/index.html)
%\newsavebox{\eqnumref}
%\newdimen\mathindent
%\AtEndOfClass{\mathindent\leftmargini}
%\newenvironment{eqnref}[1]{%
%  \sbox{\eqnumref}{\hbox{[\ref{#1}}]}
%  \@beginparpenalty\predisplaypenalty
%  \@endparpenalty\postdisplaypenalty
%  \trivlist \item[]\leavevmode
%    \hb@xt@\linewidth\bgroup \hfil$\m@th% $
%      \displaystyle\hskip\mathindent
%}{%
%    $\hfil % $
%    \displaywidth\linewidth\usebox{\eqnumref}
%    \egroup
%  \endtrivlist
%}

% --- Test stuff ---
