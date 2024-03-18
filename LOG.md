# Mon 18 Mar 12:14:53 CET 2024

* moved testbench out to start layout
* broke without vdd and vgnd why?
* how to do plots in the sub circuit?

# Sun 17 Mar 13:06:43 CET 2024

* how to get it to oscillate
* what current to provide  in the sources
* what order of magnitude components to use
* why fets have lots of config equations inside
 * what is nf and mult and why don't they work?
* why does changing r from 20 to 10 make such a huge spice sim time difference
* ngspice method=gear ?
* replaced current sources with current mirrors and it started working. why?

| period | c                      | r   | rc    |
| 1.25u  | 2.00e-11 (2 of 50x100) | 2e4 | 40u   |
| 1.0 u  | 1.81e-11 (10 of 30x30) | 2e4 | 36.4u |

