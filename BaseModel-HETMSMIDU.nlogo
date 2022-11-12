__includes
[
  ;# PATH 4.0
  "PATH4main.nls";## Main

  "global-initialization.nls" "main-code-helper-functions.nls" ;helper functions;## GLOBAL INITIALIZATIONS -
   "initial-people-ECNA.nls" "breed-susceptibles.nls" "dryrun.nls";;;## AGENT /GLOBAL INITIALIZATIONS

  "disease_progression.nls" "Data.nls" "testing-frequency.nls" "set-dropout-care.nls" "manage-care-continuum_juri.nls";;## disease progression
  "breed-T-tree-links.nls" "breed-people.nls"

  "transmissions-ECNA.nls";## Transmisison -  Bernoulli
  "ECNA-generateNetwork-v2.nls" "contact-activation.nls" ;## ECNA ALGORITHM
  "age-functions.nls" "jurisdiction.nls" "riskGroupPreference.nls" ; ## DEMOGRAPHICS risk groups selections

  ;# WRITE_OUPU0TS
  "write-output.nls" "write-output-headers.nls" ;"verify-plot.nls"
  "Visualization.nls" "write-mixing.nls" "write-epidemic-features.nls"  "write-epidemic-features-UI.nls" ;

  "overrides_example.nls" "nooverride.nls"; needed for APP User interface
]

;; Extensions of NetLogo used
extensions [py py matrix csv profiler table rnd]


;;PATH4.0
to runExperiment
  override;; needed for APP User interface
  nooverride ; needed for APP User interface
  reset-timer
 repeat 1[
    setupECNA
    repeat termination-ticks[runECNA]
    print "timer"
    print timer
  ]
end
@#$#@#$#@
GRAPHICS-WINDOW
198
13
805
474
-1
-1
10.512
1
10
1
1
1
0
0
0
1
-28
28
-21
21
1
1
1
ticks
30.0

PLOT
694
810
1011
948
CD4 count at diagnosis - Heterosexuals
NIL
NIL
0.0
10.0
0.0
1.0
true
true
"" ""
PENS
"<=200" 1.0 0 -16777216 true "" ""
"200-350" 1.0 0 -13345367 true "" ""
"350-500" 1.0 0 -5825686 true "" ""
">500" 1.0 0 -10899396 true "" ""

INPUTBOX
1774
804
1861
864
number-people
1000.0
1
0
Number

PLOT
699
942
1013
1067
People living with HIV/AIDS
Years
Number
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"MSM" 1.0 0 -13791810 true "" ""
"Heterosexual-female" 1.0 0 -13345367 true "" ""
"ALL" 1.0 0 -16777216 true "" ""
"Heterosexual-male" 1.0 0 -10899396 true "" ""

INPUTBOX
1038
176
1100
236
time-unit
12.0
1
0
Number

PLOT
0
812
440
1070
Transmissions
NIL
NIL
0.0
0.0
0.0
0.0
true
true
"" ""
PENS
"ALL" 1.0 0 -16777216 true "" ""
"HET-female" 1.0 0 -13345367 true "" ""
"MSM" 1.0 0 -13791810 true "" ""
"Trans per 10000 PLWH" 1.0 0 -5825686 true "" ""
"HET-male" 1.0 0 -10899396 true "" ""

PLOT
443
811
693
946
Stage Distribution- Heterosexuals
NIL
NIL
0.0
10.0
0.0
1.0
true
false
"" ""
PENS
"acute-unaware" 1.0 0 -16777216 true "" ""
"non-acute-unaware" 1.0 0 -7500403 true "" ""
"aware-no care" 1.0 0 -2674135 true "" ""
"aware-care-no ART" 1.0 0 -955883 true "" ""
"ART-not suppressed" 1.0 0 -1184463 true "" ""
"ART-suppressed" 1.0 0 -10899396 true "" ""

PLOT
1015
947
1390
1068
Stage Distribution- MSM
NIL
NIL
0.0
10.0
0.0
1.0
true
true
"" ""
PENS
"acute-unaware" 1.0 0 -16777216 true "" ""
"non-acute-unaware" 1.0 0 -7500403 true "" ""
"aware-no care" 1.0 0 -2674135 true "" ""
"aware-care-no ART" 1.0 0 -955883 true "" ""
"ART-not suppressed" 1.0 0 -1184463 true "" ""
"ART-suppressed" 1.0 0 -10899396 true "" ""

PLOT
435
948
703
1068
CD4 count at diagnosis - MSM
NIL
NIL
0.0
10.0
0.0
1.0
true
true
"" ""
PENS
"<=200" 1.0 0 -16777216 true "" ""
"200-350" 1.0 0 -13345367 true "" ""
"350-500" 1.0 0 -5825686 true "" ""
">500" 1.0 0 -10899396 true "" ""

PLOT
1014
807
1382
945
Proportion transmissions in stage
NIL
NIL
0.0
10.0
0.0
1.0
true
true
"" ""
PENS
"acute-unaware" 1.0 0 -16777216 true "" ""
"non-acute-unaware" 1.0 0 -7500403 true "" ""
"aware-no care" 1.0 0 -2674135 true "" ""
"aware-care-no ART" 1.0 0 -955883 true "" ""
"ART-not suppressed" 1.0 0 -1184463 true "" ""
"ART-suppressed" 1.0 0 -10899396 true "" ""

MONITOR
1504
1034
1554
1079
undiag
count people with [stage = 2 and dead = 0 and index? = true and new-infections = 0]
17
1
11

INPUTBOX
1775
863
1855
923
num-year-trans
25.0
1
0
Number

INPUTBOX
1924
864
1974
924
goal
1.0
1
0
Number

INPUTBOX
1778
987
1886
1047
prep-effectiveness
0.0
1
0
Number

INPUTBOX
1884
926
1981
986
prep-cov-positive
0.0
1
0
Number

INPUTBOX
1888
986
1982
1046
prep-cov-casual
0.0
1
0
Number

INPUTBOX
1776
927
1888
987
prep-cov-concurrent
0.0
1
0
Number

INPUTBOX
1867
803
1920
863
dry-run
0.0
1
0
Number

INPUTBOX
1922
803
1972
863
maxRun
1.0
1
0
Number

BUTTON
834
306
928
339
NIL
setupECNA
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
2083
870
2250
903
NIL
layout-ECNA Ttree-links\n
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
933
306
1029
339
NIL
runECNA
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
938
238
1036
298
maxDegree
128.0
1
0
Number

TEXTBOX
2252
806
2976
904
ECNA COLOR CODE\ngreen nodes: susceptible\nred nodes: infected and unaware\nblue nodes: infected and aware\nnode labels: [time-at-infection time-at-diagnosis]\nnumber on node die: stage (1- acute; 2- unaware;  3- aware-not-in-care; 4- aware-incare-noART; 5 -ART-noVLS; 6 -ART-VLS
11
0.0
1

BUTTON
2081
800
2247
833
layout- cluster links
layout-ECNA Ptree-links
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
2082
834
2248
867
layout- transmisison links
layout-ECNA Ttree-links\n
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
2263
1082
2459
1139
Red- cluster links\nThick grey- transmission links
15
0.0
1

TEXTBOX
2258
903
2859
1041
Clustering color code:\nRed links: if total distance < evolution-time-window\n\nRed nodes: acute phase (within past 3 months)\nYellow nodes: recent infections (within past 6 months)\n\nOnly clusters with atleast two persons diagnosed in past 'time-window' months are considered for reporting for comparing to surveillance\nclusters with blue and gray nodes: are part of surveillance clusters \nclusters with green nodes: not in surveillance cluster\n
11
0.0
1

TEXTBOX
2268
1121
2418
1149
IDENTIFY color code for intervention clusters:
11
0.0
1

MONITOR
1420
941
1548
986
NIL
eligible-agents-count
0
1
11

MONITOR
1420
988
1550
1033
NIL
eligible-nonagents-count
0
1
11

PLOT
1416
803
1753
939
Proportion of times agents selected
NIL
NIL
0.0
360.0
0.0
1.0
false
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" "plot  selected-agents / (selected-agents + selected-nonagents)"

PLOT
1551
941
1751
1126
trackTotalPop MSM
NIL
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" "plot trackTotalPop"

MONITOR
1424
1035
1506
1080
NIL
trackTotalPop
17
1
11

CHOOSER
938
120
1030
165
first-year
first-year
2006 2010
0

INPUTBOX
837
177
932
237
simulation-years
11.0
1
0
Number

INPUTBOX
838
240
936
300
initial-infected
200.0
1
0
Number

INPUTBOX
933
176
1033
236
termination-ticks
240.0
1
0
Number

TEXTBOX
1506
776
1694
804
ADHOC MONITORING-PATH4.0
11
0.0
1

TEXTBOX
1802
774
1952
792
PATH 2.0 and PATH 3.0 Inputs
11
0.0
1

TEXTBOX
2083
780
2385
808
PATH 4.0 ADHOC TESTING THROUGH VISUALIZATION
11
0.0
1

TEXTBOX
832
97
982
116
PATH 4.0 INPUTS
15
0.0
1

TEXTBOX
1115
180
1550
236
simulation-years = number of years to simulate from year 2006;\nduration of dry-run 2  = termination ticks - (simulation-years * time-unit)\n\nActual : 11, and 240\n
11
0.0
1

INPUTBOX
829
118
936
178
dry_run_1_duration
50.0
1
0
Number

TEXTBOX
957
48
1126
93
<---- RUN PATH 4.0
20
0.0
1

INPUTBOX
968
387
1065
447
num-jurisdictions
25.0
1
0
Number

INPUTBOX
1069
386
1162
446
juri_model_num
1.0
1
0
Number

SWITCH
833
347
994
380
concurrency-model
concurrency-model
0
1
-1000

INPUTBOX
1145
451
1215
511
TranFactor
1.2
1
0
Number

BUTTON
838
40
950
73
NIL
runExperiment
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
830
449
896
509
cluster_juri
1.0
1
0
Number

INPUTBOX
901
450
983
510
cluster_prop1
0.7
1
0
Number

INPUTBOX
989
451
1069
511
cluster_prop2
0.0
1
0
Number

INPUTBOX
1071
452
1145
512
dist_cluster
0.7
1
0
Number

INPUTBOX
832
386
964
446
jurisdiction-mixing-within
0.8
1
0
Number

@#$#@#$#@
## GENERAL
PATH 4.0 (progression and transmission of HIV) simulation model 
Developed in Netlogo 6.2.2 https://ccl.northwestern.edu/netlogo/ 

The code is suitable for academic purposes, for persons with good knowlegde of Netlogo and PATH 4.0 methods. Contact author for application related work.

## PROGRESSION AND TRANSMISSiON OF HIV (PATH) 4.0 MODEL
The model is calibrated to simulate HIV in the United States for the period 2010 to 2017. To run model, modify inputs on interface as needed. 
Keep defaults on interface to generate 2010 to 2017 in US. 
For computational purposes, initial_infected can be set to a small number. initial_infected refers to population size prior to dryrun. Default of 3000 generates ~9000 to 11000 HIV infected persons between 2010 to 2017. 

click 'RunExperiment' on interface to run model  

#### Four main modules (see Singh et. al., 2021) and corresponding .nls files
1.  Disease progression module for simulating progression along disease and care continuum stages: \    
"disease_progression.nls" "Data.nls" "testing-frequency.nls" "set-dropout-care.nls" "manage-care-continuum_juri.nls"
(called in PATH4main.nls--> call-DiseaseProg-Demographics) 

2. Transmission module for simulating new infections: 
transmissions-ECNA.nls 
(called in PATH4main.nls --> infect-population)

3.  HIV-ECNA network generation module for generating partnerships of newly infected nodes:
"ECNA-generateNetwork-v2.nls" "contact-activation.nls" "dryrun.nls" 
(called in PATH4main.nls -->  determine-node-neighbors)

4. Compartmental module for simulating susceptible persons: 
"age-functions.nls" "jurisdiction.nls" "riskGroupPreference.nls" 
(called in PATH4main.nls --> age-population-yearly)

## CREDITS AND REFERENCES

### FUNDING 

National Institute of Allergy and Infectious Diseases of the National Institutes of Health under Award Number R01AI127236. The funding agreement ensured the authors' independence in designing the study, interpreting the data, writing, and publishing the report.

### RELATED PUBLICATIONS

2021 Eden, M., Castonguay, R., Munkbat*, B., Balasubramanian, H., Gopalappa, C., Agent-based evolving network modeling: a new simulation method for modeling low prevalence infectious diseases, Health Care Management Science, 24, 623–639 (2021). https://doi.org/10.1007/s10729-021-09558-0 


2021 Singh*, S., France, A. M., Chen, Y-H, Farnham, P. G., Oster, A. M., Gopalappa, C., Progression and Transmission of HIV (PATH4.0): A new agent-based evolving network simulation for modeling HIV transmission clusters; Mathematical Biosciences and Engineering, 18 (3), 2021 doi: 10.3934/mbe.2021109

Y. H. Chen, A. M. France, P. G. Farnham, S. L. Sansom, C. Gopalappa, A. Oster., Replicating HIV Transmission Clusters in a U.S. HIV Agent-Based Model[abstract]. In: Abstracts: SMDM 40th Annual Meeting; 2018 Oct; Montréal, Québec, Canada. 

### CONTACT
DISEASE MODELING LAB
Chaitra Gopalappa, PhD (chaitrag@umass.edu)
Associate Professor, Mechanical and Industrial Engineering, UMass Amherst 
Associate Professor, Commonwealth Honors College, UMass Amherst    
Lab website:   https://diseasemodeling.github.io/   
Twitter: @chaitraGopalapa Instagram: @chaitra_gopalappa

### LICENSE
The code is suitable for academic purposes, for persons with good knowlegde of Netlogo and PATH 4.0 methods. Contact author for application related work.

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

die 1
false
0
Rectangle -7500403 true true 45 45 255 255
Circle -16777216 true false 129 129 42

die 2
false
0
Rectangle -7500403 true true 45 45 255 255
Circle -16777216 true false 69 69 42
Circle -16777216 true false 189 189 42

die 3
false
0
Rectangle -7500403 true true 45 45 255 255
Circle -16777216 true false 69 69 42
Circle -16777216 true false 129 129 42
Circle -16777216 true false 189 189 42

die 4
false
0
Rectangle -7500403 true true 45 45 255 255
Circle -16777216 true false 69 69 42
Circle -16777216 true false 69 189 42
Circle -16777216 true false 189 69 42
Circle -16777216 true false 189 189 42

die 5
false
0
Rectangle -7500403 true true 45 45 255 255
Circle -16777216 true false 69 69 42
Circle -16777216 true false 129 129 42
Circle -16777216 true false 69 189 42
Circle -16777216 true false 189 69 42
Circle -16777216 true false 189 189 42

die 6
false
0
Rectangle -7500403 true true 45 45 255 255
Circle -16777216 true false 84 69 42
Circle -16777216 true false 84 129 42
Circle -16777216 true false 84 189 42
Circle -16777216 true false 174 69 42
Circle -16777216 true false 174 129 42
Circle -16777216 true false 174 189 42

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
0
Rectangle -7500403 true true 151 225 180 285
Rectangle -7500403 true true 47 225 75 285
Rectangle -7500403 true true 15 75 210 225
Circle -7500403 true true 135 75 150
Circle -16777216 true false 165 76 116

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.2.2
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="experiment" repetitions="1" runMetricsEveryStep="false">
    <setup>show date-and-time
setup
;clear-all
;import-world "Base Model-HET MSM world.csv"</setup>
    <go>go</go>
    <final>;write-life-variables
show date-and-time
show numActsCasualMSM
print  numActsMainMSM
print  numActsConMSM
print  numActsMainHET
print  numActsConHET</final>
    <exitCondition>;count people with [dead = 0 and index-patient? = false and infected? = true] = 0 and ticks &gt; sim-dry-run + time-unit * num-year-trans
ticks &gt; (sim-dry-run + time-unit * num-year-trans)
;count people with [dead = 0 and infected-2013-2022? = true] = 0 and ticks &gt; sim-dry-run + time-unit * 20;; at least past 2011</exitCondition>
    <enumeratedValueSet variable="goal">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prep-effectiveness">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prep-cov-casual">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prep-cov-positive">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prep-cov-concurrent">
      <value value="0"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment2" repetitions="1" runMetricsEveryStep="false">
    <setup>show date-and-time
setup
;clear-all
;import-world "BaseModel-HETMSM world-10000-6-20-2015"
setData</setup>
    <go>go</go>
    <final>;write-life-variables
show date-and-time
show numActsCasualMSM
print  numActsMainMSM
print  numActsConMSM
print  numActsMainHET
print  numActsConHET</final>
    <exitCondition>;count people with [dead = 0 and index-patient? = false and infected? = true] = 0 and ticks &gt; sim-dry-run + time-unit * num-year-trans
ticks &gt; (sim-dry-run + time-unit * num-year-trans)
;count people with [dead = 0 and infected-2013-2022? = true] = 0 and ticks &gt; sim-dry-run + time-unit * 20;; at least past 2011</exitCondition>
    <enumeratedValueSet variable="goal">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prep-effectiveness">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prep-cov-casual">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prep-cov-positive">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="prep-cov-concurrent">
      <value value="0"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Clusters" repetitions="10" runMetricsEveryStep="false">
    <setup>setupECNA</setup>
    <go>runECNA</go>
    <final>killSusceptibles
runClusterCodes-multiple</final>
    <metric>count turtles</metric>
  </experiment>
  <experiment name="risk mix" repetitions="60" runMetricsEveryStep="true">
    <setup>setupECNA</setup>
    <go>runECNA</go>
    <metric>count turtles</metric>
  </experiment>
  <experiment name="Clusters-AnneMarie" repetitions="10" runMetricsEveryStep="false">
    <setup>setupECNA</setup>
    <go>runECNA</go>
    <final>killSusceptibles
runClusterScenarios</final>
    <metric>count turtles</metric>
  </experiment>
  <experiment name="SensitivityAnalyses" repetitions="10" runMetricsEveryStep="true">
    <setup>setupECNA</setup>
    <go>runECNA</go>
    <final>killSusceptibles
runClusterScenarios</final>
    <metric>count turtles</metric>
    <enumeratedValueSet variable="num-jurisdictions">
      <value value="1"/>
      <value value="20"/>
      <value value="50"/>
      <value value="75"/>
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="initial-infected">
      <value value="200"/>
      <value value="500"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="SA Data Visualization" repetitions="100" runMetricsEveryStep="false">
    <setup>setupECNA</setup>
    <go>runECNA</go>
    <final>killSusceptibles
runClusterScenarios</final>
    <metric>count turtles</metric>
    <enumeratedValueSet variable="num-jurisdictions">
      <value value="1"/>
      <value value="20"/>
      <value value="50"/>
      <value value="75"/>
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="initial-infected">
      <value value="200"/>
      <value value="500"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="SA Data Visualization 1500 infected only" repetitions="10" runMetricsEveryStep="false">
    <setup>setupECNA</setup>
    <go>runECNA</go>
    <final>killSusceptibles
runClusterScenarios</final>
    <metric>count turtles</metric>
    <enumeratedValueSet variable="num-jurisdictions">
      <value value="1"/>
      <value value="20"/>
      <value value="50"/>
      <value value="75"/>
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="initial-infected">
      <value value="1500"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="SA Data Visualization 1500 infected only" repetitions="10" runMetricsEveryStep="false">
    <setup>setupECNA</setup>
    <go>runECNA</go>
    <final>killSusceptibles
runClusterScenarios</final>
    <metric>count turtles</metric>
    <enumeratedValueSet variable="num-jurisdictions">
      <value value="96"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="initial-infected">
      <value value="1000"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="SA Data Visualization 1500 infected only" repetitions="3" runMetricsEveryStep="false">
    <setup>setupECNA</setup>
    <go>runECNA</go>
    <final>killSusceptibles
runClusterScenarios
change_detected-clustering</final>
    <metric>count turtles</metric>
    <enumeratedValueSet variable="initial-infected">
      <value value="2000"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="SA Data Visualization 1500 infected only" repetitions="2" runMetricsEveryStep="false">
    <setup>setupECNA</setup>
    <go>runECNA</go>
    <final>killSusceptibles
runClusterScenarios
change_detected-clustering</final>
    <metric>count turtles</metric>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
