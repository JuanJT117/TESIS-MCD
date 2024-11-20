%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Este archivo provee la clase uanl %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{uanl}
\LoadClass[12pt,oneside]{book}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cargando paquetes y definiendo opciones %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[spanish]{babel}
	\deactivatetilden
	\spanishdecimal{.}
	\addto\captionsspanish{\def\listtablename{\'Indice de tablas}}
\usepackage[utf8]{inputenc}
\usepackage{natbib}
\usepackage{amsmath,amsfonts,amssymb}
	\allowdisplaybreaks[4]
\usepackage{graphicx}
	\graphicspath{{Figuras/}}
\usepackage[clearempty,pagestyles]{titlesec}
	\setcounter{secnumdepth}{4}


%%%%%%%%%%%%%%%%%%%%%%%%
% Entornos matemáticos %
%%%%%%%%%%%%%%%%%%%%%%%%
\newtheorem{teorema}{\sc Teorema}[chapter]
\newtheorem{algoritmo}[teorema]{\sc Algoritmo}
\newtheorem{axioma}[teorema]{\sc Axioma}
\newtheorem{corolario}[teorema]{\sc Corolario}
\newtheorem{definicion}[teorema]{\sc Definici\'on}
\newtheorem{ejemplo}[teorema]{\sc Ejemplo}
\newtheorem{lema}[teorema]{\sc Lema}
\newtheorem{observacion}[teorema]{\sc Observaci\'on}
\newtheorem{proposicion}[teorema]{\sc Proposici\'on}
\newenvironment{demostracion}[1][\sc Demostraci\'on]{\noindent\textbf{#1:} }{\ \rule{0.5em}{0.5em}}

%%%%%%%%%%%%%%%%%%%%
% Diseño de página %
%%%%%%%%%%%%%%%%%%%%
%\voffset = 0.0cm
%\topmargin = 0.0cm
%\headheight = 0.6cm
%\headsep = 0.66cm
%\textheight = 24.04cm
%\hoffset = 0.0cm
%\oddsidemargin = -0.04cm
%\textwidth = 12.5cm


\voffset = 0cm
\topmargin = 0cm
\headheight = 0.0cm
\headsep = 0.66cm
\textheight = 23cm
\hoffset = 0cm
\oddsidemargin = -1in
\evensidemargin = \oddsidemargin
\textwidth = 15cm

% Para los márgenes superiores e inferiores:
\setlength{\topmargin}{-1in}
\addtolength{\topmargin}{2.5cm}
\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-5cm}

% Para los márgenes izquierdos y derechos:
\setlength{\oddsidemargin}{-1in}
\addtolength{\oddsidemargin}{4cm}
\setlength{\textwidth}{15cm}
\addtolength{\textwidth}{0cm}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Encabezados y cabeceras de página %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\chapter}[display]{\large \scshape}
	{\filcenter \chaptertitlename\ \thechapter}{0.9em}
	{\filcenter \Large}[\titlerule\vspace{-0.4em}]
\titleformat{\section}[hang]{\filcenter \Large \scshape}
	{}{0mm}{\thesection\hspace{1em}}
\titleformat{\subsection}[hang]{\vspace{0.9em}\large \scshape}
	{}{0mm}{\filright \thesubsection\hspace{1em}}
\titleformat{\subsubsection}[hang]{\vspace{0.9em}\scshape}
	{}{0mm}{\filright \hspace{5mm}\thesubsubsection\hspace{1em}}
\titleformat{\paragraph}[runin]{\vspace{-0.4em}\scshape}{}{0mm}{}
\titleformat{\subparagraph}[runin]{\vspace{-0.4em}\scshape}{}{0mm}{}
\newpagestyle{main}[\scshape]{
	\sethead{\chaptertitle}{}{\thepage}
	\headrule}
\newpagestyle{uanl}[\scshape]{
	\sethead{\chaptertitlename\ \thechapter. \chaptertitle}{}{\thepage}
	\headrule}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Leyendas de figuras y encabezados de tablas %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\fnum@figure}{\textsc{Figura~\thefigure}}
\renewcommand{\fnum@table}{\textsc{Tabla~\thetable}\vspace{7mm}}
\setlength{\belowcaptionskip}{6pt}
\setlength{\abovecaptionskip}{6pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sangría e interlineado %
%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{10mm}
\setlength{\parskip}{0.9em}
\def\baselinestretch{1.5}

%%%%%%%%%%%%%%%%%%%%%%%%
% Algunas definiciones %
%%%%%%%%%%%%%%%%%%%%%%%%
\def\uanl{Universidad Autónoma de Nuevo León}
\def\fcfm{Facultad de Ciencias Físico Matemático}
\def\pifi{Posgrado en Ingeniería Física Industrial}
\def\mcd{Maestría en Ciencias de Datos}
\def\snnl{San Nicolás de los Garza, Nuevo León}

