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

% Save the original maketitle
\let\oldmaketitle\maketitle

% Redefine maketitle
\renewcommand{\maketitle}{
	\makebox[\textwidth][c]{
		\begin{tabular}[t]{b{15cm} m{2.5cm}}
			\begin{tabular}{@{}l@{}}{\Large\fontfamily{phv}\selectfont\bfseries{Assumptions of Physics}} \vspace{0.15em} \\  {\large \emph{Technical Briefs}} \vspace{0.4em} \\  {\small \url{https://assumptionsofphysics.org}} \\ \end{tabular}
			& \includegraphics[width=2.5cm] {../common/AssumptionsLogo1000.png}\\
	\end{tabular}}
	
	\begingroup
	\let\newpage\relax% Void the actions of \newpage
	\oldmaketitle
	\endgroup
}

