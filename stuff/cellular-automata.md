+++
title = "Cellular Automata"
preview_paths = """
    /assets/CA/spiral.gif
    /assets/CA/propagation.gif
    /assets/CA/fractal-fungi.gif
"""
+++

# {{title}}

It is hard to describe what a cellular automaton really is; I have learned this fact through my many (failed) attempts at explaining what these dots on my screen represent to a friend. Maybe I should start with the most well-known example: [Conway's Game of Life](https://mathworld.wolfram.com/GameofLife.html) (CGoL). 

In the Game of Life, cells lie on a square grid, each with a binary state: *on* or *off*. At each discrete time step, each cell updates its state according the count of *on* states in a neighborhood of cells, and all cells update at the same time according to the previous "snapshot" of the grid. 

<!-- Some obvious extensions of CGoL have been explored: the grid can be in arbitrary dimensions and arbitrarily tessellated; the cell can have multiple possible states or even continuous values; a cell's update rules can depend on the actual arrangement of its neighbors' states, not just the count; and cells can be updated in some order.  -->

Run a given initial configuration for enough iterations (or *generations*) and stuff appears: patterns that stay invariant every generation ([*still lifes*](https://conwaylife.com/wiki/Still_life)); patterns that repeats after a number of generations ([*oscillators*](https://conwaylife.com/wiki/Oscillator)); patterns that move to a different location after some generations ([*spaceships*](https://conwaylife.com/wiki/Spaceship)); patterns whose number of *on* cells (*population*) grows [linearly](https://conwaylife.com/wiki/Linear_growth), [quadratically](https://conwaylife.com/wiki/Quadratic_growth) or [logarithmically](https://conwaylife.com/wiki/Logarithmic_growth); and [many more](https://conwaylife.com/wiki/Category:Patterns). 

Cellular automata (and CGoL itself) have been used to do many things: simulating biological systems and physical systems (e.g. [gas models](https://en.wikipedia.org/wiki/Lattice_gas_automaton)); calculating primes ([one early design by me](https://conwaylife.com/forums/viewtopic.php?f=11&t=3233&p=55338&hilit=prime#p55338) and [a much better design](https://conwaylife.com/wiki/Primer)); simulating other cellular automata (see [metacell](https://conwaylife.com/wiki/Unit_cell)); etc. (No wonder Wikipedia calls it a "[model of computation](https://en.wikipedia.org/wiki/Cellular_automaton#:~:text=is%20a%20discrete-,model%20of%20computation,-studied%20in%20automata)!")


Particularly notable discoveries by me:


### Jellyfish
```plaintext
x = 17, y = 17, rule = B2n3ai4eirt5cekqr6ce7/S2cn3-ajr4ciknqtz5-anry6-a7c8
2bo$b3o$5o$b5o$2bob3o$5b3o$5b4o$3b7o$4b7o$5b7o$6b7o$7b7o$8b2o2b3o$9bo
3b3o$12b5o$13b3o$14bo!
```
\sizedimg{50%}{/assets/CA/jellyfish.gif}

### Spiral
```plaintext
x = 8, y = 13, rule = B3aeiqr4-aijn5c6cei7/S2cn3-ajr4ceiqt5eijkq6-a7c8
2bo$b3o$5o$b5o$2b5o$3b5o$2b5o$b5o$5o$4o$3o$2o$o!
```
\sizedimg{40%}{/assets/CA/spiral.gif}

### Cross ship
```plaintext
x = 108, y = 75, rule = B3airy4-jkrw5ceikq6-an7/S2ckn3-ajqy4cnqrz5cejkq67c8
7bo59bo$6b3o57b3o$5b5o55b5o$4b7o53b7o$3b9o51b9o$2b6ob4o49b4ob6o$b10o
53b10o$9obo53bob9o$b4ob3o57b3ob4o$2b5o2bo55bo2b5o$3b5o2bo53bo2b5o$4b2o
5bo51bo5b2o$5bo6bo49bo6bo$13bo47bo$14bo45bo$15bo43bo$16bo41bo$17bo39bo
$18bo37bo$19bo35bo$20bo33bo$21bo31bo$22bo29bo$23bobo23bobo$24b2o23b2o$
23b3o23b3o$26bo21bo$27bo19bo$28bo17bo$29bo15bo$30bo13bo$31bo11bo$32bo
9bo58b3o$33bo7bo58bobobo$34bo5bo58bob3obo$35bobobo58bob2ob2obo$36b3o
54bo3bob7obo$35b5o57b3ob3ob3o$36b3o54bo3bob7obo$35bobobo58bob2ob2obo$
34bo5bo58bob3obo$33bo7bo58bobobo$32bo9bo58b3o$31bo11bo$30bo13bo$29bo
15bo$28bo17bo$27bo19bo$26bo21bo$23b3o23b3o$24b2o23b2o$23bobo23bobo$22b
o29bo$21bo31bo$20bo33bo$19bo35bo$18bo37bo$17bo39bo$16bo41bo$15bo43bo$
14bo45bo$13bo47bo$5bo6bo49bo6bo$4b2o5bo51bo5b2o$3b5o2bo53bo2b5o$2b5o2b
o55bo2b5o$b4ob3o57b3ob4o$9obo53bob9o$b10o53b10o$2b6ob4o49b4ob6o$3b9o
51b9o$4b7o53b7o$5b5o55b5o$6b3o57b3o$7bo59bo!
```
\sizedimg{90%}{/assets/CA/cross-ship.gif}

### Alien Glyph
In rule `B2i3aei4aceny5aceny6i/S2ei3ijk4acijqw5-cn6ae7e8`

\sizedimg{80%}{/assets/CA/alien-glyph.png}

### Moving Spirals


```plaintext
x = 42, y = 45, rule = B2i3aeikq4acqtyz5cery6i7e/S2ekn3ij4acinqrw5-c6ae7e8
30bo$28b2o$26b3o$24b4ob2o$22b3obo$20b4ob2o2bo$19b2obo2bo$18b2ob2o2bo$
18bobo$17b4o$17b2o$16b2o14bo$3b4o9bobobo9b5o$3bo4bobo4b3o11bo3b4o$15b
2o13bo3bob2o$bo12b2o8bo9b2ob2o$ob3o9bobo19bobo$2o11b3o20b4o$b2o11bobo
12bo8b2o$b4o9b2o8bo5bo8b2o$2bob3o8b2o12bo7b2obo$2b2o11b3o18b6o$3b2o11b
obobo7bo8b2obo$3b4o9b2o8b5o8b2o$4bob3o8b2o7bobobo7b2o$4b2o11b4o5b2ob2o
5b4o$5b2o11bobo7bo7bobo$5b4o9b2ob2o2bo2bo2bo2b2ob2o$6bob3o8b2obo3bo3bo
3bob2o$6b2o12b4ob2o3b2ob4o$7b2o13b3obo3bob3o$7b4o13b4ob4o$8bob3o13b5o$
8b2o18bo$9b2o$9b3o3bo$10bobo2bo$10b4ob2o2bo$12b3obo2bo$14b4ob2o2bo$16b
3obo$18b4ob2o$20b3ob2o$22b4o$24bo!
```
\sizedimg{70%}{/assets/CA/moving-spirals.gif}
<!-- @@viewer
~~~
<textarea class="lv-rle">x = 42, y = 45, rule = B2i3aeikq4acqtyz5cery6i7e/S2ekn3ij4acinqrw5-c6ae7e8
30bo$28b2o$26b3o$24b4ob2o$22b3obo$20b4ob2o2bo$19b2obo2bo$18b2ob2o2bo$
18bobo$17b4o$17b2o$16b2o14bo$3b4o9bobobo9b5o$3bo4bobo4b3o11bo3b4o$15b
2o13bo3bob2o$bo12b2o8bo9b2ob2o$ob3o9bobo19bobo$2o11b3o20b4o$b2o11bobo
12bo8b2o$b4o9b2o8bo5bo8b2o$2bob3o8b2o12bo7b2obo$2b2o11b3o18b6o$3b2o11b
obobo7bo8b2obo$3b4o9b2o8b5o8b2o$4bob3o8b2o7bobobo7b2o$4b2o11b4o5b2ob2o
5b4o$5b2o11bobo7bo7bobo$5b4o9b2ob2o2bo2bo2bo2b2ob2o$6bob3o8b2obo3bo3bo
3bob2o$6b2o12b4ob2o3b2ob4o$7b2o13b3obo3bob3o$7b4o13b4ob4o$8bob3o13b5o$
8b2o18bo$9b2o$9b3o3bo$10bobo2bo$10b4ob2o2bo$12b3obo2bo$14b4ob2o2bo$16b
3obo$18b4ob2o$20b3ob2o$22b4o$24bo!</textarea>
<canvas height=450 width=705></canvas>
~~~
@@ -->

### Spiral 2
```plaintext
x = 8, y = 12, rule = B3aiq4acjy5ry6i7e/S2ek3cijk4acinqwz5-cn6ae7e8
ob2obo$3ob3o$bo3b2o$2bobob2o$5bobo$6b2o$5b2o$3b4o$2b2obo$b2ob2o$bob2o$
b3o!
```
\sizedimg{70%}{/assets/CA/spiral2.gif}

### Spiral 3
```plaintext
x = 22, y = 21, rule = B3aiq4acy5kry6i7e/S2ek3ijk4acinqw5-cn6ae7e8
bo$2o$o7$13b3o$13bobo$13b4o$15bo6$21bo$20b2o$20bo!
```
\sizedimg{40%}{/assets/CA/spiral3.gif}

### Spiral 4
```plaintext
x = 8, y = 13, rule = B3aeiq4ceikrt5ackq6cen7c/S2-ai3-jqr4ceik5eijkq6-a7c8
2bo$b3o$5o$b5o$2b5o$3b5o$2b5o$b5o$5o$4o$3o$2o$o!
```
\sizedimg{45%}{/assets/CA/spiral4.gif}

### Lines Replicator
```plaintext
x = 27, y = 27, rule = B2i3aei4acey5aceny6i/S2ei3ijk4acijqw5-cn6ae7e8
10b2o$10b4o$7bo3bob3o$8bo3bob4o$14b2ob3o$16bob4o$18b2ob2o$2bo17bob2o$
3bo17bobo$22b3o$2o20b3o$3o21b2o$bobo19bobo$b2o21b3o$2b3o20b2o$2b3o19b
3o$3bobo17bobo$3b2o19b2o$4b3o15b3o$4b3o15b3o$5bobo13bobo$5b2obo11bob2o
$6b2ob2o7b2ob2o$7b4obo3bob4o$9b3obobob3o$11b7o$13b3o!
```
\sizedimg{70%}{/assets/CA/lines-replicator.gif}

### Oscillator

~~~<pre>
<code class="language-plaintext hljs" style="font-size:10px">x = 56, y = 73, rule = B3acik4acjkwy5aery6ei/S2ae3-anq4acikwyz5-acjn6eik7
27b2obo17bo$27b2obobobo11b5o$26b2obobobo11b3ob3o$26bobobobobobobo6b2obob2o$26b2obobobobobo7b3obobo$27b2obobobobobobobo3bobobo$27b3obobobobobobobobobobobobo$28bobobobobobobobobobobobobob2o$28b2o7bobobobobobobobob3o$30bo7bobobobobobobobobo$39bobobobobobobob2o$40bobobobobobob2o$41bobobobobob3o$41b4obobobobo$40b4o3bob4o$40b2o4bob3o13$44bo$8b3o31b5o$6b4o30b4ob4o$4b3obobo7bo19b3obobobob3o$2b4obobob3o5b2o15b4obobobobob4o$2bobobobobob3obobobo14b2obobobobobobobob2o$b3obobobobob3obob3o12b2obobobobobobobobob2o$b2obobobobobobobobob2o12bobobobobobobobobobobo$2obobobobobobobobobob2o10b3obobobobobobobobobobo$b2obobobobobobobob2o2bo10b2obobobobobobobobobo$b3obobobobobobobobob2o10bobobobobobobobobobobo$2bobobobobobob4o2b2o12bobobobobobobobobobo$2b4obobobob2o2b2ob2o11bobobobobobobobobobobo$4b3obobob2obo20bobobobobobobobo$6b4obobo2bo18bobobobobobobobobo$8b3obobobo19bobobobobobobobo$10b4ob2o18bobobobobobobobobo$12bob2o22bobobobobobo$13b2o22bobobobobobobo$12bo25bobobobobobo$39bobobobobobo$10bobo25bobobobobo$7b2o32bobobob2o$7b2obobo25bobobobobo$7bo3bo29bobobobo$8bobob3o25bobobob3o$13b2o26bobobo3b2o$10bob2o28bobobob3o$12bo26bobobobo2bo$13b2o25bobobo2bo$13b2o24bobobobo$13b2o25bobobo$37bobobobob2o$38bobobobob3o$37bobobobobob4o$38bobobobobobobo$36b2obobobobobob3o$36bobobobobobobobo$36b2obobobobob4o$38bobobobob3o$36b2obobobob2o$36b3obobobo$38b4obob2o$40b3ob3o$42b3o!
</pre></code>
~~~

\sizedimg{50%}{/assets/CA/osc.gif}

### Checkerboard Expansion
```plaintext
x = 14, y = 14, rule = B2e3aijky4ajrt5ai6c7c8/S1c2-in3nr4actw5aejqr6cen7c8
3bo$3b2o$3b3o$obobo$2ob2o$2bo3$11bo$9b4o$9bob3o$8bobo$9bo$9b2o!
```
\sizedimg{70%}{/assets/CA/checkerboard.gif}

### Noodles
```plaintext
x = 31, y = 55, rule = B2e3aijky4acjr5aiy6c7/S1c2-i3knr4a5-ceqy6aci7
19b2o$18b3o$17bo$20bo$17bo$19b2o2$20b2o$20bobo$20b2o6$14b3o$13bo2b2o$
13b2o3$12b3o$14b3o$14bo$13b2o3$11b3o$11b2obo$11b3o11$20b2o$16b2o2bo$
16bobo$14b2ob2o3b2o3b2o$14bobo8bo2b2o$15b2o5bob2ob2o$17bo7b4o$17b2o4b
2o4b2o$27b2obo$23b2o4bo$20bo2b2o2b2o$6b2ob2o12b2o$bobo3b3obo8b2o$o3bo
3bo11bobo$5obo3bo9b2o$8bo!
```
\sizedimg{90%}{/assets/CA/noodles.gif}

### Reaction Propagation
```plaintext
x = 131, y = 131, rule = B2e3aijky4acjnrty5aci6ce7c/S1c2cek3nr4actw5-ciky6-ek8
48bobo$49bo$48bobo4$58bobo$59bo$58bobo2$42bobo$43bo$42bobo23bobo$69bo$68bobo2$52bobo$53bo$52bobo23bobo$79bo$36bobo39bobo$37bo$36bobo23bobo$63bo$62bobo23bobo$89bo$46bobo39bobo$47bo$46bobo23bobo$73bo$30bobo39bobo23bobo$31bo67bo$30bobo23bobo39bobo$57bo$56bobo23bobo$83bo$40bobo39bobo23bobo$41bo67bo$40bobo23bobo39bobo$67bo$24bobo39bobo23bobo$25bo67bo$24bobo23bobo39bobo23bobo$51bo67bo$50bobo23bobo39bobo$77bo$34bobo39bobo23bobo$35bo67bo$34bobo23bobo39bobo23bobo$61bo67bo$18bobo39bobo23bobo39bobo$19bo67bo$18bobo23bobo39bobo23bobo$45bo67bo$44bobo23bobo39bobo$71bo$28bobo39bobo23bobo$29bo67bo$28bobo23bobo39bobo23bobo$55bo67bo$12bobo39bobo23bobo39bobo$13bo67bo$12bobo23bobo39bobo23bobo$39bo25bo41bo$38bobo23bobo39bobo$63bo3bo$22bobo39bobo23bobo$23bo41bo25bo$22bobo23bobo39bobo23bobo$49bo67bo$6bobo39bobo23bobo39bobo$7bo67bo$6bobo23bobo39bobo23bobo$33bo67bo$32bobo23bobo39bobo$59bo$16bobo39bobo23bobo$17bo67bo$16bobo23bobo39bobo23bobo$43bo67bo$obo39bobo23bobo39bobo$bo67bo$obo23bobo39bobo23bobo$27bo67bo$26bobo23bobo39bobo$53bo$10bobo39bobo23bobo$11bo67bo$10bobo23bobo39bobo23bobo$37bo67bo$36bobo23bobo39bobo$63bo$20bobo39bobo23bobo$21bo67bo$20bobo23bobo39bobo$47bo$46bobo23bobo$73bo$30bobo39bobo23bobo$31bo67bo$30bobo23bobo39bobo$57bo$56bobo23bobo$83bo$40bobo39bobo$41bo$40bobo23bobo$67bo$66bobo23bobo$93bo$50bobo39bobo$51bo$50bobo23bobo$77bo$76bobo2$60bobo$61bo$60bobo23bobo$87bo$86bobo2$70bobo$71bo$70bobo4$80bobo$81bo$80bobo!
```
\sizedimg{70%}{/assets/CA/propagation.gif}

### Sqrt Growth
```plaintext
x = 10, y = 10, rule = B2e3aijky4acjr5a6cei7c8/S1c2-in3nr4actwy5-ciqy6-ek78
4b2o$4bo$4b2o2$3o4bobo$obo4b3o2$4b2o$5bo$4b2o!
```
\sizedimg{50%}{/assets/CA/sqrt.gif}

### Fractal Fungi
In rule `B3aik4acjwy5aeiky6in/S2ae3-anq4acinqwy5-acjn6eik7e`
\sizedimg{80%}{/assets/CA/fractal-fungi.gif}


### Zoom
```plaintext
x = 74, y = 74, rule = B2e3aijky4acjr5a6cei7c8/S1c2-in3nr4actwy5-ciqy6aci78
5b2o$7bo$2b2ob2o$2bo$4b3o$obob2obo$obobobo$bo3bo4$11bob2o$12bobo$11bob
o$11b2obo4$20bo$19bobo$18bob2o$19b3o31$52b3o$52b2obo$52bobo$53bo4$59bo
b2o$60bobo$59bobo$59b2obo4$68bo3bo$67bobobobo$66bob2obobo$67b3o$71bo$
67b2ob2o$66bo$67b2o!
```
\sizedimg{70%}{/assets/CA/zoom.gif}
\\
\sizedimg{70%}{/assets/CA/zoom.png}
