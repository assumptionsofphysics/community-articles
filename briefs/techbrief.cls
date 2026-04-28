\ProvidesClass{techbrief}

% Load the standard article class
\LoadClass{article}

\RequirePackage{../common/assumptionsofphysics}

\RequirePackage{graphicx} % Needed to include images
\RequirePackage[destlabel]{hyperref}
\hypersetup{
	colorlinks=true,
	urlcolor=blue,
	linkcolor=blue
}
\urlstyle{same}

\RequirePackage{lipsum,cuted,setspace,enumerate}
\RequirePackage{changepage}
\RequirePackage{tabularx}
\RequirePackage{adjustbox}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{array}

\frenchspacing

% Save the original maketitle
\let\oldmaketitle\maketitle

\newcommand\category[1]{\renewcommand\@category{#1}}
\newcommand\@category{}
\newcommand\tags[1]{\renewcommand\@tags{#1}}
\newcommand\@tags{}
\newcommand\video[1]{\renewcommand\@video{#1}}
\newcommand\@video{}

% Redefine maketitle
% - {\small \url{https://assumptionsofphysics.org}}
\renewcommand{\maketitle}{
	\makebox[\textwidth][c]{
		\begin{tabular}[t]{b{15cm} m{2.5cm}}
			\begin{tabular}{@{}l@{}}
			\includegraphics {../common/AssumptionsOfPhysics14pt.png}  \vspace{0.3em} \\
			{\LARGE \fontfamily{qhv}\selectfont Technical Brief}
		 	\vspace{0.2em} \\
			{\scriptsize \emph{More technical briefs at \url{https://assumptionsofphysics.org/resources/briefs}}} \vspace{0.6em} \\
			\end{tabular}
			& \includegraphics[width=2.5cm] {../common/AssumptionsLogo1000.png}\\
	\end{tabular}}

\begin{center}
	{\LARGE \@title \par}%
	\vskip 1em
	{\large
		\lineskip .75em%
		\begin{tabular}[t]{c}%
			\@author \ for the AoP collaboration
		\end{tabular}\par}%
	\vskip 1em
	{ \small Category: \@category \ - Tags: \@tags \ \if\@video \else - \href{\@video}{Video}\fi }
\end{center}
\vskip 1em	


%	\begingroup
%	\let\newpage\relax% Void the actions of \newpage
%	\oldmaketitle
%	\endgroup
}

