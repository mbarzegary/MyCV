\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cv}

\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage{fontawesome}
\RequirePackage{hyperref}
\RequirePackage
[
  left=0.65in,
  top=0.65in,
  right=0.65in,
  bottom=0.65in
]
{geometry} 

\titleformat{\section}  
  {\LARGE\scshape\raggedright} 
  {}{0em}                      
  {}                           
  [\titlerule] 

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\name}[1]
{
  \centerline{\Huge{\MakeUppercase{\textbf{#1}}}}
  \bigskip
  \bigskip
}

\newcommand{\address}[1]
{
  \centerline{\Large{#1}} \smallskip
}

\newcommand{\mail}[1]
{
  \centerline{\Large{\faEnvelopeO \,\, #1}} \smallskip
}

\newcommand{\phone}[1]
{
  \centerline{\Large{\faMobilePhone \,\, #1}} \smallskip
}

\newcommand{\webpage}[1]
{
  \centerline{\Large{\faGithub \,\, #1}} \smallskip
}

\newcommand{\datedsection}[2]
{
  \section[#1]{#1 \hfill #2}
}

\newcommand{\datedsubsection}[4]
{
  \subsection[#1]{{#1} \hfill #2 \\
	  		          {#3} \hfill #4}
}