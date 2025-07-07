<!--
Add here global page variables to use throughout your website.
-->
+++
author = "Jimmy Chen"
mintoclevel = 2

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = true
website_title = "Jimmy Chen"
website_descr = "Jimmy Chen's Home Page"
website_url   = "https://J1MC83N.github.io/"
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}

\newcommand{\hyper}[2]{~~~<a href="/!#2">!#1</a>~~~}
\newcommand{\hyperheader}[2]{\hyper{<!#1>{{fill title !#2.md}}</!#1>}{!#2}}

\newcommand{\center}[1]{@@container ~~~<center>!#1~~~ @@}
\newcommand{\caption}[1]{ \style{color:grey; font-size:smaller}{\center{!#1}} }

\newcommand{\sizedimg}[2]{~~~<img src="!#2" style="max-width:!#1;">~~~}

\newcommand{\br}{~~~<br>~~~}
