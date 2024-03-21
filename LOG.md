# Wed 20 Mar 19:07:34 CET 2024
doesn't work on work pc with pdk
volare/sky130/versions/78b7bc32ddb4b6f14f76883c2e2dc5b5de9d1cbc/sky130A

the
    .param mc_mm_switch=0
    .param mc_pr_switch=0
issues again.

works on laptop with pdk
/home/matt/.volare/volare/sky130/versions/78b7bc32ddb4b6f14f76883c2e2dc5b5de9d1cbc

to measure current, I tried the ammeter symbol, which totally failed to do anything.
but i(V1) works to plot
however, to remove the parax version from the current measurement I removed it's supply and connected it to ground, and the parax version still simulates and generates an output.

# Tue 19 Mar 08:33:03 CET 2024

if no subs contact (lvs.report):

155c155
< Net: VSUBS                                 |Net: VDD                                   
---
> Net: x1/VNB                                |Net: VDD                                   

added a pcell subs contact and connected to gnd
added a tap cell next to the clock buf, resolved the last lvs issues

fixed some DRC issues related to tie cell not being close enough

added parax version to testbench, but can't plot the osc_out_parax net for some reason.

hit the port ordering thing again (sim extraction puts ports in "random" order).
Tried stefan's suggestion but it doesnt work. (works with xschem v3.4.5)

https://open-source-silicon.slack.com/archives/C017P3RAD42/p1709832611711049

https://open-source-silicon.slack.com/archives/C016HUV935L/p1710865292294919

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

