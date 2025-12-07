+++
title = "FastLSystemRenderer.jl"
preview_paths = """
    /assets/Lsystem/ADH462-thumbnail.png
    /assets/Lsystem/binomial-tree-thumbnail.png
    /assets/Lsystem/ADH107h22b-thumbnail.png
"""
+++

# {{title}}

[A Julia package](https://github.com/J1MC83N/FastLSystemRenderer.jl) that does one thing and does it pretty efficiently: rendering [Lindermayer Systems](https://en.wikipedia.org/wiki/L-system) (or L-systems for short). 

Lindermayer Systems are wonderful. They're one of the best demonstrations of how simple rules produce incredible complexities (similar to cellular automata in that regard). Paul Bourke has a [nice page](http://paulbourke.net/fractals/lsys/) going through how it works, how it is commonly implemented, and many pretty examples. 

This package started out as a hobby project that I later decided to (rather rashly) wrap into a package. Heavy optimization was my goal from the beginning, and I had to trade certain extended L-system functionalities for speed. My hope was that the speed factor would also open up new possibilities to explore L-systems at higher iterations. And I think I have achieved this reasonably well. Coincidentally, the specific optimizations used here are similar to [this L-system implementation](https://mzucker.github.io/2020/03/28/optimizing-lsystems.html) in C by Matt Zucker, and the resulting performance is similar (according to some informal benchmarking by me).

Many examples below are taken from [a great collection](/assets/Lsystem/VoC-examples.zip) of L-systems that comes with the [Vision of Chaos](https://softology.pro/voc.htm) software (a fantastic goldmine of visual algorithms and a generous playground of computer art, and the starter of many personal obsessions). All images are rendered with FastLSystemRenderer.jl.

\center{ {{tothumbnail /assets/Lsystem/ADH462.png 100% 4000000}} }
\caption{"ADH462" (L-system by Anthony Hanmer, listed in "HORIZONS")}
\\

\center{ {{tothumbnail /assets/Lsystem/T186a.png 80% 4000000}} }
\caption{"T186a" (L-system by Anthony Hanmer, listed in "MAZE09")}
\\

\center{ {{tothumbnail /assets/Lsystem/ADH107h22b.png 80% 4000000}} }
\caption{"ADH107h22b" (L-system by Anthony Hanmer, listed in "HANMER4")}
\\


\center{ {{tothumbnail /assets/Lsystem/binomial-tree.png 70% 4000000}} }
\caption{Two binomial trees (L-system by me)}
\\

\center{ {{tothumbnail /assets/Lsystem/T228.png 80% 4000000}} }
\caption{"T228" (L-system by Anthony Hanmer, listed in "MAZE09")}
\\

\center{ {{tothumbnail /assets/Lsystem/ADH306.png 80% 4000000}} }
\caption{"ADH306" (L-system by Anthony Hanmer, listed in "HORIZONS")}
\\

\center{ {{tothumbnail /assets/Lsystem/Flower02.png 80% 4000000}} }
\caption{"Flower02" (L-system by Ole Jorgensen, listed in "OF-FIBONA")}
\\





{{ addcomments }}