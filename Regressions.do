*************************************************
*** SUMMARY STATISTICS AND REGRESSION OUTPUTS ***
*************************************************



*******************************************
*** Running Summary Statistics (Table 2) ***
*******************************************

tabstat mean_co mean_no2 mean_noxides mean_ozone mean_windsp rd_date strike treat strike_treat week_strike treat_week tr_wk_st, stat(mean sd min max count)



*****************************************
*** Running 5-Week T-test Comparisons ***
*****************************************


** Table 3

** Running ttests comparing one month before to during strike 2003
ttest mean_co if week03 >= 22 & week03 <= 31 & LA == 1, by(strike)
ttest mean_no2 if week03 >= 22 & week03 <= 31 & LA == 1, by(strike)
ttest mean_noxides if week03 >= 22 & week03 <= 31 & LA == 1, by(strike)
ttest mean_ozone if week03 >= 22 & week03 <= 31 & LA == 1, by(strike)

** Running ttests comparing one month during to one month after 2003
ttest mean_co if week03 >= 27 & week03 <= 36 & LA == 1, by(strike)
ttest mean_no2 if week03 >= 27 & week03 <= 36 & LA == 1, by(strike)
ttest mean_noxides if week03 >= 27 & week03 <= 36 & LA == 1, by(strike)
ttest mean_ozone if week03 >= 27 & week03 <= 36 & LA == 1, by(strike)


** Table 4

** Running ttests comparing one month before to during strike 2002
ttest mean_co if week02 >= 22 & week02 <= 31 & LA == 1, by(strike02)
ttest mean_no2 if week02 >= 22 & week02 <= 31 & LA == 1, by(strike02)
ttest mean_noxides if week02 >= 22 & week02 <= 31 & LA == 1, by(strike02)
ttest mean_ozone if week02 >= 22 & week02 <= 31 & LA == 1, by(strike02)

** Running ttests comparing one month during to one month after 2002
ttest mean_co if week02 >= 27 & week02 <= 36 & LA == 1, by(strike02)
ttest mean_no2 if week02 >= 27 & week02 <= 36 & LA == 1, by(strike02)
ttest mean_noxides if week02 >= 27 & week02 <= 36 & LA == 1, by(strike02)
ttest mean_ozone if week02 >= 27 & week02 <= 36 & LA == 1, by(strike02)



***************************************
*** Creating Graphs for NO2 and SO2 ***
***************************************

** 4/15/2003 - 4/13/2004

* Downtown LA (Figure 2)
twoway (scatter mean_no2 week03 if site_id == 15)(qfit mean_no2 week03 if week03 <27 & site_id == 15)(qfit mean_no2 week03 if week03 >= 27 & week03 <= 31 & site_id == 15)(qfit mean_no2 week03 if week03 > 31 & site_id == 15)(lfit mean_no2 week03 if week03 <27 & site_id == 15)(lfit mean_no2 week03 if week03 >= 27 & week03 <= 31 & site_id == 15)(lfit mean_no2 week03 if week03 > 31 & site_id == 15), xline (26.5) xline(31.5)

* Lynwood (Figure 3)
twoway (scatter mean_no2 week03 if site_id == 17)(qfit mean_no2 week03 if week03 <27 & site_id == 17)(qfit mean_no2 week03 if week03 >= 27 & week03 <= 31 & site_id == 17)(qfit mean_no2 week03 if week03 > 31 & site_id == 17)(lfit mean_no2 week03 if week03 <27 & site_id == 17)(lfit mean_no2 week03 if week03 >= 27 & week03 <= 31 & site_id == 17)(lfit mean_no2 week03 if week03 > 31 & site_id == 17), xline (26.5) xline(31.5)

* Ventura (Figure 4)
twoway (scatter mean_no2 week03 if site_id == 39)(qfit mean_no2 week03 if week03 <27 & site_id == 39)(qfit mean_no2 week03 if week03 >= 27 & week03 <= 31 & site_id == 39)(qfit mean_no2 week03 if week03 > 31 & site_id == 39)(lfit mean_no2 week03 if week03 <27 & site_id == 39)(lfit mean_no2 week03 if week03 >= 27 & week03 <= 31 & site_id == 39)(lfit mean_no2 week03 if week03 > 31 & site_id == 39), xline (26.5) xline(31.5)


** 4/15/2002 - 4/13/2003

* Downtown LA (Figure 5)
twoway (scatter mean_no2 week02 if site_id == 15)(qfit mean_no2 week02 if week02 <27 & site_id == 15)(qfit mean_no2 week02 if week02 >= 27 & week02 <= 31 & site_id == 15)(qfit mean_no2 week02 if week02 > 31 & site_id == 15)(lfit mean_no2 week02 if week02 <27 & site_id == 15)(lfit mean_no2 week02 if week02 >= 27 & week02 <= 31 & site_id == 15)(lfit mean_no2 week02 if week02 > 31 & site_id == 15), xline (26.5) xline(31.5)

* Lynwood (Figure 6)
twoway (scatter mean_no2 week02 if site_id == 17)(qfit mean_no2 week02 if week02 <27 & site_id == 17)(qfit mean_no2 week02 if week02 >= 27 & week02 <= 31 & site_id == 17)(qfit mean_no2 week02 if week02 > 31 & site_id == 17)(lfit mean_no2 week02 if week02 <27 & site_id == 17)(lfit mean_no2 week02 if week02 >= 27 & week02 <= 31 & site_id == 17)(lfit mean_no2 week02 if week02 > 31 & site_id == 17), xline (26.5) xline(31.5)

* Ventura (Figure 7)
twoway (scatter mean_no2 week02 if site_id == 39)(qfit mean_no2 week02 if week02 <27 & site_id == 39)(qfit mean_no2 week02 if week02 >= 27 & week02 <= 31 & site_id == 39)(qfit mean_no2 week02 if week02 > 31 & site_id == 39)(lfit mean_no2 week02 if week02 <27 & site_id == 39)(lfit mean_no2 week02 if week02 >= 27 & week02 <= 31 & site_id == 39)(lfit mean_no2 week02 if week02 > 31 & site_id == 39), xline (26.5) xline(31.5)


** SO2 Test

* Downtown LA (Figure 8)
twoway (scatter mean_so2 week03 if site_id == 15)(qfit mean_so2 week03 if week03 <27 & site_id == 15)(qfit mean_so2 week03 if week03 >= 27 & week03 <= 31 & site_id == 15)(qfit mean_so2 week03 if week03 > 31 & site_id == 15)(lfit mean_so2 week03 if week03 <27 & site_id == 15)(lfit mean_so2 week03 if week03 >= 27 & week03 <= 31 & site_id == 15)(lfit mean_so2 week03 if week03 > 31 & site_id == 15), xline (26.5) xline(31.5)



***********************************************
*** TREND ADJUSTED DIFFERENCE-IN-DIFFERENCE ***
***             MAIN RESULTS                ***
***********************************************

ssc install outreg2

* Strike period (Table 5)

reg mean_co strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id, cluster(site_id)
outreg2 using main.xls, replace dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_co strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id i.month03 i.site_id#c.week03, cluster(site_id)
outreg2 using main.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_no2 strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id, cluster(site_id)
outreg2 using main.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_no2 strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id i.month03 i.site_id#c.week03, cluster(site_id)
outreg2 using main.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_noxides strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id, cluster(site_id)
outreg2 using main.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_noxides strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id i.month03 i.site_id#c.week03, cluster(site_id)
outreg2 using main.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_ozone strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id, cluster(site_id)
outreg2 using main.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_ozone strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id i.month03 i.site_id#c.week03, cluster(site_id)
outreg2 using main.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)


* Placebo period (Table 6)

reg mean_co strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id, cluster(site_id)
outreg2 using mainp.xls, replace dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_co strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id i.month02 i.site_id#c.week02, cluster(site_id)
outreg2 using mainp.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_no2 strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id, cluster(site_id)
outreg2 using mainp.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_no2 strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id i.month02 i.site_id#c.week02, cluster(site_id)
outreg2 using mainp.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_noxides strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id, cluster(site_id)
outreg2 using mainp.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_noxides strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id i.month02 i.site_id#c.week02, cluster(site_id)
outreg2 using mainp.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_ozone strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id, cluster(site_id)
outreg2 using mainp.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_ozone strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id i.month02 i.site_id#c.week02, cluster(site_id)
outreg2 using mainp.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)


************************************
** Finding mean pollutant levels  **
** the week before the strike for **
** monitors in LA                 **
************************************

mean mean_co mean_ozone mean_no2 mean_noxides if week03 == 26 & LA == 1



***********************************************
*** Trend Adjusted Difference-in-difference ***
***            For 25 week period           ***
***********************************************


* Strike period 7/22/03-1/13/04 (Table 7)

reg mean_co strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id if week03 >= 15 & week03 <= 39, cluster(site_id)
outreg2 using 12.xls, replace dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_co strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id i.month03 i.site_id#c.week03 if week03 >= 15 & week03 <= 39, cluster(site_id)
outreg2 using 12.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_no2 strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id if week03 >= 15 & week03 <= 39, cluster(site_id)
outreg2 using 12.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_no2 strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id i.month03 i.site_id#c.week03 if week03 >= 15 & week03 <= 39, cluster(site_id)
outreg2 using 12.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_noxides strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id if week03 >= 15 & week03 <= 39, cluster(site_id)
outreg2 using 12.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_noxides strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id i.month03 i.site_id#c.week03 i.site_id if week03 >= 15 & week03 <= 39, cluster(site_id)
outreg2 using 12.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_ozone strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id if week03 >= 15 & week03 <= 39, cluster(site_id)
outreg2 using 12.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)

reg mean_ozone strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp i.site_id i.month03 i.site_id#c.week03 i.site_id if week03 >= 15 & week03 <= 39, cluster(site_id)
outreg2 using 12.xls, append dec(3) keep (strike_treat treat strike rd_date week_strike treat_week tr_wk_st mean_windsp)


* Placebo period 7/22/02-1/13/03 (Table 8)

reg mean_co strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id if week02 >= 15 & week02 <= 39, cluster(site_id)
outreg2 using 12p.xls, replace dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_co strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id i.month02 i.site_id#c.week02 if week02 >= 15 & week02 <= 39, cluster(site_id)
outreg2 using 12p.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_no2 strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id if week02 >= 15 & week02 <= 39, cluster(site_id)
outreg2 using 12p.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_no2 strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id i.month02 i.site_id#c.week02 if week02 >= 15 & week02 <= 39, cluster(site_id)
outreg2 using 12p.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_noxides strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id if week02 >= 15 & week02 <= 39, cluster(site_id)
outreg2 using 12p.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_noxides strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id i.month02 i.site_id#c.week02 if week02 >= 15 & week02 <= 39, cluster(site_id)
outreg2 using 12p.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_ozone strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id if week02 >= 15 & week02 <= 39, cluster(site_id)
outreg2 using 12p.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)

reg mean_ozone strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp i.site_id i.month02 i.site_id#c.week02 if week02 >= 15 & week02 <= 39, cluster(site_id)
outreg2 using 12p.xls, append dec(3) keep (strike_treat02 treat02 strike02 rd_date02 week_strike02 treat_week02 tr_wk_st02 mean_windsp)



*********************************
** Pure diff in diff (Table 9) **
*********************************


* Strike period

reg mean_co strike_treat treat strike mean_windsp i.site_id, cluster(site_id)
outreg2 using dd.xls, replace dec(3) keep (strike_treat treat strike mean_windsp)

reg mean_co strike_treat treat strike mean_windsp i.site_id i.month03 i.site_id#c.week03, cluster(site_id)
outreg2 using dd.xls, append dec(3) keep (strike_treat treat strike mean_windsp)

reg mean_no2 strike_treat treat strike mean_windsp i.site_id, cluster(site_id)
outreg2 using dd.xls, append dec(3) keep (strike_treat treat strike mean_windsp)

reg mean_no2 strike_treat treat strike mean_windsp i.site_id i.month03 i.site_id#c.week03, cluster(site_id)
outreg2 using dd.xls, append dec(3) keep (strike_treat treat strike mean_windsp)

reg mean_noxides strike_treat treat strike mean_windsp i.site_id, cluster(site_id)
outreg2 using dd.xls, append dec(3) keep (strike_treat treat strike mean_windsp)

reg mean_noxides strike_treat treat strike mean_windsp i.site_id i.month03 i.site_id#c.week03, cluster(site_id)
outreg2 using dd.xls, append dec(3) keep (strike_treat treat strike mean_windsp)

reg mean_ozone strike_treat treat strike mean_windsp i.site_id, cluster(site_id)
outreg2 using dd.xls, append dec(3) keep (strike_treat treat strike mean_windsp)

reg mean_ozone strike_treat treat strike mean_windsp i.site_id i.month03 i.site_id#c.week03, cluster(site_id)
outreg2 using dd.xls, append dec(3) keep (strike_treat treat strike mean_windsp)




**************************
*** APPENDIX MATERIALS ***
**************************


**************************************************************
** Regression Discontinuity 2003 (strike) for LA (Table A1) **
**************************************************************

gen rd_date_strike = rd_date * strike

gen kweight = 1-(abs(rd_date)/5)
replace kweight = 0 if abs(rd_date) > 5

reg mean_co strike rd_date rd_date_strike mean_windsp [pweight = kweight] if LA == 1, cluster(site_id)
outreg2 using rd.xls, replace dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_co strike rd_date rd_date_strike mean_windsp i.site_id [pweight = kweight] if LA == 1, cluster(site_id)
outreg2 using rd.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_no2 strike rd_date rd_date_strike mean_windsp [pweight = kweight] if LA == 1, cluster(site_id)
outreg2 using rd.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_no2 strike rd_date rd_date_strike mean_windsp i.site_id [pweight = kweight] if LA == 1, cluster(site_id)
outreg2 using rd.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_noxides strike rd_date rd_date_strike mean_windsp [pweight = kweight] if LA == 1, cluster(site_id)
outreg2 using rd.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_noxides strike rd_date rd_date_strike mean_windsp i.site_id [pweight = kweight] if LA == 1, cluster(site_id)
outreg2 using rd.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_ozone strike rd_date rd_date_strike mean_windsp [pweight = kweight] if LA == 1, cluster(site_id)
outreg2 using rd.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_ozone strike rd_date rd_date_strike mean_windsp i.site_id [pweight = kweight] if LA == 1, cluster(site_id)
outreg2 using rd.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)


*******************************************************************************************************
** Regression Discontinuity 2003 (strike) for controls (Kern, Orange and Ventura Counties) (Table A2 **
*******************************************************************************************************


reg mean_co strike rd_date rd_date_strike mean_windsp [pweight = kweight] if LA != 1, cluster(site_id)
outreg2 using rdc.xls, replace dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_co strike rd_date rd_date_strike mean_windsp i.site_id [pweight = kweight] if LA != 1, cluster(site_id)
outreg2 using rdc.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_no2 strike rd_date rd_date_strike mean_windsp [pweight = kweight] if LA != 1, cluster(site_id)
outreg2 using rdc.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_no2 strike rd_date rd_date_strike mean_windsp i.site_id [pweight = kweight] if LA != 1, cluster(site_id)
outreg2 using rdc.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_noxides strike rd_date rd_date_strike mean_windsp [pweight = kweight] if LA != 1, cluster(site_id)
outreg2 using rdc.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_noxides strike rd_date rd_date_strike mean_windsp i.site_id [pweight = kweight] if LA != 1, cluster(site_id)
outreg2 using rdc.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_ozone strike rd_date rd_date_strike mean_windsp [pweight = kweight] if LA != 1, cluster(site_id)
outreg2 using rdc.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)

reg mean_ozone strike rd_date rd_date_strike mean_windsp i.site_id [pweight = kweight] if LA != 1, cluster(site_id)
outreg2 using rdc.xls, append dec(3) keep (strike rd_date rd_date_strike mean_windsp)


***************************************************************
** Regression Discontinuity 2002 (placebo) for LA (Table A3) **
***************************************************************


gen rd_date_strike02 = rd_date02 * strike02

gen kweight02 = 1-(abs(rd_date02)/5)
replace kweight02 = 0 if abs(rd_date02) > 5

reg mean_co strike02 rd_date02 rd_date_strike02 mean_windsp [pweight = kweight02] if LA == 1, cluster(site_id)
outreg2 using rdp.xls, replace dec(3) keep (strike02 rd_date02 rd_date_strike02 mean_windsp)

reg mean_co strike02 rd_date02 rd_date_strike02 mean_windsp i.site_id [pweight = kweight02] if LA == 1, cluster(site_id)
outreg2 using rdp.xls, append dec(3) keep (strike02 rd_date02 rd_date_strike02 mean_windsp)

reg mean_no2 strike02 rd_date02 rd_date_strike02 mean_windsp [pweight = kweight02] if LA == 1, cluster(site_id)
outreg2 using rdp.xls, append dec(3) keep (strike02 rd_date02 rd_date_strike02 mean_windsp)

reg mean_no2 strike02 rd_date02 rd_date_strike02 mean_windsp i.site_id [pweight = kweight02] if LA == 1, cluster(site_id)
outreg2 using rdp.xls, append dec(3) keep (strike02 rd_date02 rd_date_strike02 mean_windsp)

reg mean_noxides strike02 rd_date02 rd_date_strike02 mean_windsp [pweight = kweight02] if LA == 1, cluster(site_id)
outreg2 using rdp.xls, append dec(3) keep (strike02 rd_date02 rd_date_strike02 mean_windsp)

reg mean_noxides strike02 rd_date02 rd_date_strike02 mean_windsp i.site_id [pweight = kweight02] if LA == 1, cluster(site_id)
outreg2 using rdp.xls, append dec(3) keep (strike02 rd_date02 rd_date_strike02 mean_windsp)

reg mean_ozone strike02 rd_date02 rd_date_strike02 mean_windsp [pweight = kweight02] if LA == 1, cluster(site_id)
outreg2 using rdp.xls, append dec(3) keep (strike02 rd_date02 rd_date_strike02 mean_windsp)

reg mean_ozone strike02 rd_date02 rd_date_strike02 mean_windsp i.site_id [pweight = kweight02] if LA == 1, cluster(site_id)
outreg2 using rdp.xls, append dec(3) keep (strike02 rd_date02 rd_date_strike02 mean_windsp)
