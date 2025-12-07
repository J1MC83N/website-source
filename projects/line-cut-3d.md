+++
title = "Lines Cutting A Plane"
preview_paths = """
    /assets/line-cut-3d/1-thumbnail.png
    /assets/line-cut-3d/6-thumbnail.png
    /assets/line-cut-3d/3D-1-thumbnail.png
"""
+++


# {{title}}

Same idea as [this gif](https://www.facebook.com/Fine-Art-United-States-505119649507073/videos/by-david-braun-leviathan-with-software-touchdesigner/711458902646252/) (and alternatively [this](https://gfycat.com/ko/nearbriefintermediateegret-papier4)). Each line splits the plane and pushes everything sideways a little. Unlike the original, everything here is perfectly straight and polygonal. Colors are roughly based on how many times a region has been cut through. 

(Please excuse my taste in colors; better ones exist, but they weren't as convenient to use.)

<!-- @def testimg = "/assets/test.png"
![this]({{fill testimg}})
@def recur = vcat(locvar("recur"), locvar("testimg"))
-->



<!-- ![this](\tothumbnail{/assets/folder/test.png}) -->
<!-- \topreview{/assets/test.png} -->

<!-- {{fill preview_img_paths}} -->

<!-- ~~~<a href="/assets/folder/test.png"><img src="/assets/folder/test-thumbnail.png"></a>~~~ -->



\center{ {{tothumbnail /assets/line-cut-3d/1.png 70%}} }
\\
\center{ {{tothumbnail /assets/line-cut-3d/2.png 70%}} }
\\
\center{ {{tothumbnail /assets/line-cut-3d/3.png 70%}} }
\\
\center{ {{tothumbnail /assets/line-cut-3d/4.png 70%}} }
\\
\center{ {{tothumbnail /assets/line-cut-3d/7.png 70%}} }

The ones below are draw slightly different. Polygon borders are drawn with exaggerated stroke widths, resulting a jagged texture. 

\center{ {{tothumbnail /assets/line-cut-3d/5.png 70%}} }
\\
\center{ {{tothumbnail /assets/line-cut-3d/6.png 70%}} }

## 3D Renderings

The same information can also be made into a 3D mesh and nicely rendered. All of these have a futuristic-cityscape-ish look to them. Height at each point, like color, corresponds to the frequency of cuts around it.
The first is rendered with with [Adobe Dimension](https://www.adobe.com/products/dimension.html), and the rest with [Artlantis](https://artlantis.com).


\center{ {{tothumbnail /assets/line-cut-3d/3D-1.png 70%}} }
\\
\center{ {{tothumbnail /assets/line-cut-3d/3D-2.jpg 70%}} }
\\
\center{ {{tothumbnail /assets/line-cut-3d/3D-3.png 70%}} }



{{ addcomments }}