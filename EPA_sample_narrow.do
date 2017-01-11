****************************
*** NARROWING THE EPA    ***
*** AIR QUALITY DATA SET ***
*** 2002-2004            ***
****************************

set more off

****************************************
*** Keeping the Following Parameters ***
****************************************

* 42101 Carbon Monoxide (ppm)
* 42401 Sulfur Dioxide (ppb)
* 42602 Nitrogen Dioxide (ppb)
* 42603 Nitrogen Oxides (ppb)
* 44201 Ozone (ppm)
* 61103 Wind Speed actual (knots)

keep if parameter == 42101 | parameter == 42401 | parameter == 42602 | parameter == 42603 | parameter == 44201 | parameter == 61103


*******************************
*** Creating time variables ***
*******************************

** Monitor unique IDs
egen site_id = group(site)

** Year (string)
gen year_s = substr(datetime,1,4)

** Month (string)
gen month_s = substr(datetime,5,2)

** Day (string)
gen day_s = substr(datetime,7,2)

** Hour (string)
gen hour_s = substr(datetime,10,2)

** Year
destring year_s, gen(year)

** Month
destring month_s, gen(month)

** Day
destring day_s, gen(day)

** Hour
destring hour_s, gen(hour)

** Date variable counting days since 1/1/1960
gen date = mdy(month,day,year)

** Day of week indicator
gen day_week = dow(date)

*******************************
** Creating County Variables **
*******************************

gen OG = 0
replace OG =1 if site_id <= 8

gen LA = 0
replace LA =1 if site_id >= 9 & site_id <= 25

gen KN = 0
replace KN =1 if site_id >= 26 & site_id <= 30

gen VN = 0
replace VN = 1 if site_id >= 31

assert OG + LA + KN + VN == 1



** Dropping monitors that do not contain data for 2003 or have too much missing data
drop if site_id == 2 | site_id == 11 | site_id == 12 | site_id == 23 | site_id == 26 | site_id == 31 | site_id == 33 | site_id == 34 | site_id == 35


** Creating an indicator for rush hour
gen rush_hr = 0
replace rush_hr = 1 if hour >= 7 & hour <= 10
replace rush_hr = 2 if hour >= 14 & hour <= 20 

** keeping only rush hour data
keep if rush_hr == 1 | rush_hr == 2

** keeping only weekday data
drop if day_week == 0 | day_week == 6


***********************
** Dropping Holidays **
***********************

** dropping New Year's Day January 1, 2002-2004
drop if date == 15341 | date == 15706 | date == 16071

** dropping MLK day January 21, 2002; January 20, 2003; January 19, 2004
drop if date == 15392 | date == 15756 | date == 16120

** dropping Valentine's Day February 14, 2002-2003 (2004 was on a weekend)
drop if date == 15385 | date == 15750

** dropping President's Day February 18, 2002; February 17, 2003; February 16, 2004
drop if date == 15389 | date == 15753 | date == 16117

** dropping St. Patrick's Day March 17, 2003-2004 (2002 was on a weekday)
drop if date == 15781 | date == 16147

** dropping Memorial Day May 27, 2002; May 26, 2003; May 31, 2004
drop if date == 15487 | date == 15851 | date == 16222

** dropping Independence Day July 4, 2002; July 4, 2003; (2004 was on a weekend)
drop if date == 15525 | date == 15890

** dropping Labor Day September 2, 2002; September 1, 2003; September 6, 2004
drop if date == 15585 | date == 15949 | date == 16320

** dropping Columbus Day October 14, 2002; October 13, 2003; October 11, 2004
drop if date == 15627 | date == 15991 | date == 16355

** dropping Halloween Day October 31, 2002-2003 (2004 was on a weekend)
drop if date == 15644 | date == 16009

** dropping Veteran's Day November 11, 2002-2004
drop if date == 15655 | date == 16020 | date == 16386

** dropping Thanksgiving Day November 28, 2002; November 27, 2003; November 25, 2004
drop if date == 15672 | date == 16036 | date == 16400

** dropping Christmas Day Decemeber 25, 2002-2003 (2004 was on a weekend)
drop if date == 15699 | date == 16064

** dropping New Year's Eve December 31, 2002-2004
drop if date == 15705 | date == 16070 | date == 16436


***********************************************************
*** Creating variables to reshape to monitor-hour level ***
***    (parameters are currently in long format)        ***
***********************************************************

** Date-hour unique IDs
gen date_hour_s = year_s + month_s + day_s + hour_s

** Monitor ID string variable
tostring site_id, gen(site_id_s)

** Unique hour-monitor ID
gen date_hour_monitor_s = site_id_s + date_hour_s

** Creating parameter variables
gen co = value if parameter == 42101
gen so2 = value if parameter == 42401
gen ozone = value if parameter == 44201
gen no2 = value if parameter == 42602
gen noxides =  value if parameter == 42603
gen wind_speed = value if parameter == 61103

** Collapsing on date_hour_monitor_s to finish "reshape"
collapse (max) co so2 ozone no2 noxides wind_speed lat lon elev site_id year month day hour date rush_hr day_week OG LA KN VN, by(date_hour_monitor_s)


*******************************
*** CREATING WEEK VARIABLES ***
*******************************

** Creating week variable for 4/15/2003 - 4/13/2004 period (strike)
gen week_s = "301" if date >= (15992 - 7*26) & date < (15992 - 7*25)
replace week_s = "302" if date >= (15992 - 7*25) & date < (15992 - 7*24)
replace week_s = "303" if date >= (15992 - 7*24) & date < (15992 - 7*23)
replace week_s = "304" if date >= (15992 - 7*23) & date < (15992 - 7*22)
replace week_s = "305" if date >= (15992 - 7*22) & date < (15992 - 7*21)
replace week_s = "306" if date >= (15992 - 7*21) & date < (15992 - 7*20)
replace week_s = "307" if date >= (15992 - 7*20) & date < (15992 - 7*19)
replace week_s = "308" if date >= (15992 - 7*19) & date < (15992 - 7*18)
replace week_s = "309" if date >= (15992 - 7*18) & date < (15992 - 7*17)
replace week_s = "310" if date >= (15992 - 7*17) & date < (15992 - 7*16)
replace week_s = "311" if date >= (15992 - 7*16) & date < (15992 - 7*15)
replace week_s = "312" if date >= (15992 - 7*15) & date < (15992 - 7*14)
replace week_s = "313" if date >= (15992 - 7*14) & date < (15992 - 7*13)
replace week_s = "314" if date >= (15992 - 7*13) & date < (15992 - 7*12)
replace week_s = "315" if date >= (15992 - 7*12) & date < (15992 - 7*11)
replace week_s = "316" if date >= (15992 - 7*11) & date < (15992 - 7*10)
replace week_s = "317" if date >= (15992 - 7*10) & date < (15992 - 7*9)
replace week_s = "318" if date >= (15992 - 7*9) & date < (15992 - 7*8)
replace week_s = "319" if date >= (15992 - 7*8) & date < (15992 - 7*7)
replace week_s = "320" if date >= (15992 - 7*7) & date < (15992 - 7*6)
replace week_s = "321" if date >= (15992 - 7*6) & date < (15992 - 7*5)
replace week_s = "322" if date >= (15992 - 7*5) & date < (15992 - 7*4)
replace week_s = "323" if date >= (15992 - 7*4) & date < (15992 - 7*3)
replace week_s = "324" if date >= (15992 - 7*3) & date < (15992 - 7*2)
replace week_s = "325" if date >= (15992 - 7*2) & date < (15992 - 7)
replace week_s = "326" if date >= (15992 - 7) & date < (15992)
replace week_s = "327" if date >= 15992 & date < (15992 + 7)
replace week_s = "328" if date >= (15992 + 7) & date < (15992 + 7*2)
replace week_s = "329" if date >= (15992 + 7*2) & date < (15992 + 7*3)
replace week_s = "330" if date >= (15992 + 7*3) & date < (15992 + 7*4)
replace week_s = "331" if date >= (15992 + 7*4) & date < (15992 + 7*5)
replace week_s = "332" if date >= (15992 + 7*5) & date < (15992 + 7*6)
replace week_s = "333" if date >= (15992 + 7*6) & date < (15992 + 7*7)
replace week_s = "334" if date >= (15992 + 7*7) & date < (15992 + 7*8)
replace week_s = "335" if date >= (15992 + 7*8) & date < (15992 + 7*9)
replace week_s = "336" if date >= (15992 + 7*9) & date < (15992 + 7*10)
replace week_s = "337" if date >= (15992 + 7*10) & date < (15992 + 7*11)
replace week_s = "338" if date >= (15992 + 7*11) & date < (15992 + 7*12)
replace week_s = "339" if date >= (15992 + 7*12) & date < (15992 + 7*13)
replace week_s = "340" if date >= (15992 + 7*13) & date < (15992 + 7*14)
replace week_s = "341" if date >= (15992 + 7*14) & date < (15992 + 7*15)
replace week_s = "342" if date >= (15992 + 7*15) & date < (15992 + 7*16)
replace week_s = "343" if date >= (15992 + 7*16) & date < (15992 + 7*17)
replace week_s = "344" if date >= (15992 + 7*17) & date < (15992 + 7*18)
replace week_s = "345" if date >= (15992 + 7*18) & date < (15992 + 7*19)
replace week_s = "346" if date >= (15992 + 7*19) & date < (15992 + 7*20)
replace week_s = "347" if date >= (15992 + 7*20) & date < (15992 + 7*21)
replace week_s = "348" if date >= (15992 + 7*21) & date < (15992 + 7*22)
replace week_s = "349" if date >= (15992 + 7*22) & date < (15992 + 7*23)
replace week_s = "350" if date >= (15992 + 7*23) & date < (15992 + 7*24)
replace week_s = "351" if date >= (15992 + 7*24) & date < (15992 + 7*25)
replace week_s = "352" if date >= (15992 + 7*25) & date < (15992 + 7*26)


** Creating week variable for 4/15/2002 - 4/14/2003 period (placebo) 
replace week_s = "201" if date >= (15627 - 7*26) & date < (15627 - 7*25)
replace week_s = "202" if date >= (15627 - 7*25) & date < (15627 - 7*24)
replace week_s = "203" if date >= (15627 - 7*24) & date < (15627 - 7*23)
replace week_s = "204" if date >= (15627 - 7*23) & date < (15627 - 7*22)
replace week_s = "205" if date >= (15627 - 7*22) & date < (15627 - 7*21)
replace week_s = "206" if date >= (15627 - 7*21) & date < (15627 - 7*20)
replace week_s = "207" if date >= (15627 - 7*20) & date < (15627 - 7*19)
replace week_s = "208" if date >= (15627 - 7*19) & date < (15627 - 7*18)
replace week_s = "209" if date >= (15627 - 7*18) & date < (15627 - 7*17)
replace week_s = "210" if date >= (15627 - 7*17) & date < (15627 - 7*16)
replace week_s = "211" if date >= (15627 - 7*16) & date < (15627 - 7*15)
replace week_s = "212" if date >= (15627 - 7*15) & date < (15627 - 7*14)
replace week_s = "213" if date >= (15627 - 7*14) & date < (15627 - 7*13)
replace week_s = "214" if date >= (15627 - 7*13) & date < (15627 - 7*12)
replace week_s = "215" if date >= (15627 - 7*12) & date < (15627 - 7*11)
replace week_s = "216" if date >= (15627 - 7*11) & date < (15627 - 7*10)
replace week_s = "217" if date >= (15627 - 7*10) & date < (15627 - 7*9)
replace week_s = "218" if date >= (15627 - 7*9) & date < (15627 - 7*8)
replace week_s = "219" if date >= (15627 - 7*8) & date < (15627 - 7*7)
replace week_s = "220" if date >= (15627 - 7*7) & date < (15627 - 7*6)
replace week_s = "221" if date >= (15627 - 7*6) & date < (15627 - 7*5)
replace week_s = "222" if date >= (15627 - 7*5) & date < (15627 - 7*4)
replace week_s = "223" if date >= (15627 - 7*4) & date < (15627 - 7*3)
replace week_s = "224" if date >= (15627 - 7*3) & date < (15627 - 7*2)
replace week_s = "225" if date >= (15627 - 7*2) & date < (15627 - 7)
replace week_s = "226" if date >= (15627 - 7) & date < (15627)
replace week_s = "227" if date >= 15627 & date < (15627 + 7)
replace week_s = "228" if date >= (15627 + 7) & date < (15627 + 7*2)
replace week_s = "229" if date >= (15627 + 7*2) & date < (15627 + 7*3)
replace week_s = "230" if date >= (15627 + 7*3) & date < (15627 + 7*4)
replace week_s = "231" if date >= (15627 + 7*4) & date < (15627 + 7*5)
replace week_s = "232" if date >= (15627 + 7*5) & date < (15627 + 7*6)
replace week_s = "233" if date >= (15627 + 7*6) & date < (15627 + 7*7)
replace week_s = "234" if date >= (15627 + 7*7) & date < (15627 + 7*8)
replace week_s = "235" if date >= (15627 + 7*8) & date < (15627 + 7*9)
replace week_s = "236" if date >= (15627 + 7*9) & date < (15627 + 7*10)
replace week_s = "237" if date >= (15627 + 7*10) & date < (15627 + 7*11)
replace week_s = "238" if date >= (15627 + 7*11) & date < (15627 + 7*12)
replace week_s = "239" if date >= (15627 + 7*12) & date < (15627 + 7*13)
replace week_s = "240" if date >= (15627 + 7*13) & date < (15627 + 7*14)
replace week_s = "241" if date >= (15627 + 7*14) & date < (15627 + 7*15)
replace week_s = "242" if date >= (15627 + 7*15) & date < (15627 + 7*16)
replace week_s = "243" if date >= (15627 + 7*16) & date < (15627 + 7*17)
replace week_s = "244" if date >= (15627 + 7*17) & date < (15627 + 7*18)
replace week_s = "245" if date >= (15627 + 7*18) & date < (15627 + 7*19)
replace week_s = "246" if date >= (15627 + 7*19) & date < (15627 + 7*20)
replace week_s = "247" if date >= (15627 + 7*20) & date < (15627 + 7*21)
replace week_s = "248" if date >= (15627 + 7*21) & date < (15627 + 7*22)
replace week_s = "249" if date >= (15627 + 7*22) & date < (15627 + 7*23)
replace week_s = "250" if date >= (15627 + 7*23) & date < (15627 + 7*24)
replace week_s = "251" if date >= (15627 + 7*24) & date < (15627 + 7*25)
replace week_s = "252" if date >= (15627 + 7*25) & date < (15627 + 7*26)

drop if week_s == ""


************************************************
** COLLAPSING DATA TO THE WEEK-MONITOR LEVEL ***
************************************************


** Creating a site_id string variable
tostring site_id, gen(site_id_s)

** Creating a unique week by monitor by rush_hr id
gen monitor_week_s = site_id_s + week_s

** Creating a numeric week variable
destring week_s, gen(week)

** Creating week variable for 2003
gen week03 = week-300 if week >= 300

** Creating week variable for 2002
gen week02 = week-200 if week < 300

** Collapsing the mean of all variables to a week-monitor level
collapse (mean) mean_co=co mean_ozone=ozone mean_so2=so2 mean_no2=no2 mean_noxides = noxides mean_windsp=wind_speed lat lon elev site_id week week03 week02 OG LA KN VN, by(monitor_week_s)


**************************************
*** GENERATING NECESSARY VARIABLES ***
**************************************

** Strike indicator for 4/15/2003 - 4/13/2004 period
gen strike = 0 if week >= 300
replace strike = 1 if week03 >= 27 & week03 <= 31

** Variable indicating whether a monitor is in LA county
gen treat = 0
replace treat = 1 if LA == 1

** Week variable normalized to the first week of the strike
gen rd_date = week03 - 27

** Interaction of strike and treat
gen strike_treat = strike*treat

** Interaction of week and strike
gen week_strike = rd_date*strike

** Interaction of treat and week
gen treat_week = treat*rd_date

** Interaction of treat, week and strike
gen tr_wk_st = treat*rd_date*strike


** Creating a placebo strike variable for 2002

** Placebo strike indicator for 4/15/2002 - 4/14/2003 period 
gen strike02 = 0
replace strike02 = 1 if week02 >= 27 & week02 <= 31

gen treat02 = 0
replace treat02 = 1 if LA == 1

** Creating a week variable normalized to the first week of the placebo strike
gen rd_date02 = week02 - 27

** Interaction of placebo strike and treat
gen strike_treat02 = strike02*treat02

** Interaction of week and placebo strike
gen week_strike02 = rd_date02*strike02

** Interaction of treat and week
gen treat_week02 = treat02*rd_date02

** Interaction of treat, week and placebo strike
gen tr_wk_st02 = treat02*rd_date02*strike02


** Creating "month" indicators
gen month03 = 1 if week03 >= 1 & week03 <= 4
replace month03 = 2 if week03 >= 5 & week03 <= 8
replace month03 = 3 if week03 >= 9 & week03 <= 12
replace month03 = 4 if week03 >= 13 & week03 <= 16
replace month03 = 5 if week03 >= 17 & week03 <= 20
replace month03 = 6 if week03 >= 21 & week03 <= 24
replace month03 = 7 if week03 >= 25 & week03 <= 28
replace month03 = 8 if week03 >= 29 & week03 <= 32
replace month03 = 9 if week03 >= 33 & week03 <= 36
replace month03 = 10 if week03 >= 37 & week03 <= 40
replace month03 = 11 if week03 >= 41 & week03 <= 44
replace month03 = 12 if week03 >= 45 & week03 <= 48
replace month03 = 13 if week03 >= 49 & week03 <= 52

gen month02 = 1 if week02 >= 1 & week02 <= 4
replace month02 = 2 if week02 >= 5 & week02 <= 8
replace month02 = 3 if week02 >= 9 & week02 <= 12
replace month02 = 4 if week02 >= 13 & week02 <= 16
replace month02 = 5 if week02 >= 17 & week02 <= 20
replace month02 = 6 if week02 >= 21 & week02 <= 24
replace month02 = 7 if week02 >= 25 & week02 <= 28
replace month02 = 8 if week02 >= 29 & week02 <= 32
replace month02 = 9 if week02 >= 33 & week02 <= 36
replace month02 = 10 if week02 >= 37 & week02 <= 40
replace month02 = 11 if week02 >= 41 & week02 <= 44
replace month02 = 12 if week02 >= 45 & week02 <= 48
replace month02 = 13 if week02 >= 49 & week02 <= 52
