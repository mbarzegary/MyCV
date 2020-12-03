\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cv}

\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage{fontawesome}
\RequirePackage{graphics}
\RequirePackage{color}
\RequirePackage{adjustbox}
\RequirePackage
[
  left=0.65in,
  top=0.65in,
  right=0.65in,
  bottom=0.65in
]
{geometry} 
\RequirePackage{hyperref}

\usepackage{dejavu}
\usepackage[T1]{fontenc}

\definecolor{linkcolour}{rgb}{0,0.2,0.6}
\hypersetup{colorlinks,breaklinks,urlcolor=linkcolour, linkcolor=linkcolour}

% The Travis CI has an old version of fontawesome package, so we should define some of the commands in case they are defined
\providecommand{\faInstagram}{}
\providecommand{\faInternetExplorer}{}

\titleformat{\section}  
  {\Large\scshape\raggedright} 
  {}{0em}                      
  {}                           
  [\titlerule] 

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}
  
\newcommand{\cvheader}[2]
{
\begin{minipage}{.7\textwidth}
{#1}
\end{minipage}
\begin{minipage}{.3\textwidth}
  \centerline{\includegraphics[width=4cm]{{#2}}}
\end{minipage}
}

\newcommand{\name}[1]
{
  \centerline{\huge{\MakeUppercase{\textbf{#1}}}}
  \bigskip
  \bigskip
}

\newcommand{\address}[1]
{
  {\large{\faMapMarker \, \, #1}} 
}

\newcommand{\mail}[1]
{
  {\large{\faEnvelope \,\, #1}} 
}

\newcommand{\mailalt}[1]
{
  {\large{\faEnvelope \,\, #1}} 
}

\newcommand{\phone}[1]
{
  {\large{\faPhone \,\, #1}} 
}

\newcommand{\social}[1]
{
  {\large{\faLinkedin \, \faGithub \, \faTwitter \, \,\, #1}} 
}

\newcommand{\webpage}[1]
{
  {\large{\faInternetExplorer \,\, #1}} 
}

\newcommand{\datedsection}[2]
{
  \section[#1]{#1 \hfill #2}
}

\newcommand{\longdatedsubsection}[4]
{
  \subsection[#1]{{#1} \hfill #2 \\
	  		          {#3} \hfill #4}
}

\newcommand{\datedsubsection}[4]
{
  \subsection[#1]{{#1} \hfill #2} 
}
