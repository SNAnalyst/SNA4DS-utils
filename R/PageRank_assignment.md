
Let's simulate 

1. Download the file __PageRank.nlogo__ to your computer, from 
[https://github.com/SNAnalyst/SNA4DS-utils/tree/master/R](https://github.com/SNAnalyst/SNA4DS-utils/tree/master/R). (e.g., For Windows: Right-Click on the file and choose "Save link as").
1. Launch application: [https://www.netlogoweb.org/launch](https://www.netlogoweb.org/launch)
1. Right Top: _Choose file_: select the downloaded file _PageRank.nlogo_

---
### How it works.

#### Choices to make:
- choose a network structure to play with under "network-choice".
  + "Tutorial network" and "Tutorial network" are the networks used in the tutorial. 

- set a damping factor to try out

- pick a method: __random surfer__ is the method just explained, _diffusion_ is the method explained in the tutorial.

- you can increase the number of surfers that surf the web simultaneously

---

Start a simulation by FIRST clicking __setup__ (to create a network) and then __step__ (for a single step), or __go__ (for continuous running).
You can change the speed of the simulation using the slider on top.

### Assignment:

- Compare the "random-surfer" and "diffusion" methods.
  + How do their results compare?
  + Which one is faster?
 
- Play with the _damping factor_ to how it affects the process and outcome. 
  + Try at least values 0, 0.85, 1.

- Look at the tutorial networks, but also try the other networks. What do you notice?
