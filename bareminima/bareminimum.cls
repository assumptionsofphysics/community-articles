\ProvidesClass{bareminimum}

% Load the standard article class
\LoadClass{article}

\RequirePackage{../common/assumptionsofphysics}

\RequirePackage[left=1.8in,right=1.8in,top=.6in,bottom=1in]{geometry}

\RequirePackage{graphicx} % Needed to include images
\RequirePackage[destlabel]{hyperref}
\hypersetup{
	colorlinks=true,
	urlcolor=blue,
	linkcolor=blue
}
\urlstyle{same}

\RequirePackage{lipsum,cuted,setspace}
\RequirePackage{changepage}
\RequirePackage{tabularx}
\RequirePackage{adjustbox}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{array}

% Save the original maketitle
\let\oldmaketitle\maketitle

\title{}
\newcommand\topic[1]{\renewcommand\@topic{#1}}
\newcommand\@topic{}
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
			{\huge \fontfamily{qhv}\selectfont Bare Minimum: \@topic}
			\vspace{0.2em} \\
			{\scriptsize Category: \@category \ - Tags: \@tags \ \if\@video \else - \href{\@video}{Video}\fi }
		 	\vspace{0.2em} \\
			{\scriptsize \emph{More bare minima at \url{https://assumptionsofphysics.org/resources/bareminima}}} \vspace{0.6em} \\
			\end{tabular}
			& \includegraphics[width=2.5cm] {../common/AssumptionsLogo1000.png}\\
	\end{tabular}}

\begin{abstract}
	A condensed overview of \@topic. Bare minima are meant to give a rough overview, by no means complete, of the subject so that one at least knows what there is to know. It is mainly intended as background for those interested in participating in the Assumptions of Physics (\url{https://assumptionsofphysics.org}) project.
\end{abstract}
\vskip 1em	
}

\usepackage{tikz}
\usetikzlibrary{positioning}
\usepackage{hyperref}
\hypersetup{
	colorlinks=true,
	citecolor=blue,
	urlcolor=blue,
	linkcolor=blue
}
\frenchspacing

\newcommand{\marginleft}[1] {\reversemarginpar\marginpar{#1}}
\newcommand{\marginright}[1] {\normalmarginpar\marginpar{#1}}


