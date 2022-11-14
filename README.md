# PATH4-public
## GENERAL
PATH 4.0 (progression and transmission of HIV) simulation model 
Developed in Netlogo 6.2.2 https://ccl.northwestern.edu/netlogo/ 
* The model is calibrated to simulate HIV in the United States for the period 2010 to 2017.

## PROGRESSION AND TRANSMISSiON OF HIV (PATH) 4.0 MODEL
* Open model in Netlogo
* Modify inputs on interface as needed. Keep defaults on interface to generate HIV representative of years 2010 to 2017 in US. 
* For computational purposes, initial_infected can be set to a small number. initial_infected refers to population size prior to dryrun. Default of 3000 generates ~9000 to 11000 HIV infected persons between 2010 to 2017. 
* To simulate model beyond 2017, analyses correponding to changes in care can be conducted by updating input files in 'data' subfolder (see ReadMe file in subfolder for instructions). 

* To run model click 'RunExperiment' on interface. Epidemic features are output in csv file, and contains data for everymonth of simulation. Analyses can be conducted using these results. Alternatively, the following app can be downloaded to visualize key epidemic metrics by transmisison-group and age-group  
[Download PATHUI_App](https://people.umass.edu/chaitrag/Research/PATH-App/PATHUISetup.exe)
  * App installation instructions: after downloaing app, when installing it will ask for location of PATH model is. Go to folder where above PATH4 folder was downladed and select the .Netlogo file. To use app for visualze results, make sure the model has finished all runs.

#### Four main modules (see Singh et. al., 2021) and corresponding .nls files
1.  Disease progression module for simulating progression along disease and care continuum stages:     
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
