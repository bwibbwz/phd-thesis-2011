% --- Define my class ---
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{bThesis}

% --- Define the baseclass ---
\def\baseclass{report}

% --- Pass the normal options to the baseclass ---
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\ProcessOptions\relax

% --- Load the baseclass ---
\LoadClass{\baseclass}

% --- Load external packages ---
\usepackage{amsmath}     % begin{multline}
\usepackage{graphicx}
%\usepackage{vmargin}     % Margins
%\usepackage{setspace}    % Linespacing
%\usepackage{caption}     % Control the captions
%\usepackage{wrapfig}     % Figures that allow text to wrap around
%\usepackage{footmisc}    % Footnote refernce
%\usepackage[scriptsize,loose]{subfigure}
\usepackage[T1]{fontenc} % Render \dh{} for icelandic
%\usepackage{amssymb}
%\usepackage{epstopdf}
%\usepackage{epsfig}
%\usepackage{psfrag}
%\usepackage{booktabs}
%\usepackage{rotating}
%\usepackage{listings}
%\usepackage{lstpatch}

% --- New command definitions ---
\newcommand{\vect}[1]{\ensuremath{\mathbf{#1}}}                        % Bold vectors
\newcommand{\HRule}{\rule{15cm}{0.5mm}}                                % Horizontal line
\newcommand{\mAA}{\mathring{\mathrm{A}}}                               % AAngstrom
\def\urltilda{\kern -.15em\lower .7ex\hbox{\~{}}\kern .04em}           % Tilda for use in URLs
\newcommand{\mytilde}{{\raise.17ex\hbox{$\scriptstyle\mathtt{\sim}$}}} % A nicer looking tilde for use in the text

% --- New commands, macros and external packages for development purposes ---
\usepackage{verbatim} % Comment environment. NB: Remove before submission
\usepackage{color} % To color indocument comments. NB: Remove before submission
\newcommand{\tred}[1]{\textcolor{red}{#1}}
\newcommand{\tblue}[1]{\textcolor{blue}{#1}}
\newcommand{\incomplete}{\tred{INCOMPLETE}}
\newcommand{\placeholder}{\tred{PLACEHOLDER}}
\newcommand{\unread}{\tred{OLD TEXT, NOT READ}}

% --- Shortcuts for environments
\newcommand{\bit}{\begin{itemize}}
\newcommand{\eit}{\end{itemize}}
\newcommand{\beq}{\begin{equation}}
\newcommand{\eeq}{\end{equation}}
\newcommand{\bfig}{\begin{figure}}
\newcommand{\efig}{\end{figure}}
\newcommand{\btab}{\begin{tabular}}
\newcommand{\etab}{\end{tabular}}

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
