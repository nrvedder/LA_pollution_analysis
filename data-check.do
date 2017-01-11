************************************************
** Checking for missing data during rush hours**
************************************************

tab value if value ==.

tab value if value < 0

tab hour if (hour>=7 & hour <=10) & site_id == 1 | (hour >=14 & hour<=20) & site_id == 1

tabstat value if (hour>=7 & hour <=10) & site_id == 1 | (hour >=14 & hour<=20) & site_id == 1, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 2 | (hour >=14 & hour<=20) & site_id == 2

tabstat value if (hour>=7 & hour <=10) & site_id == 2 | (hour >=14 & hour<=20) & site_id == 2, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 3 | (hour >=14 & hour<=20) & site_id == 3

tabstat value if (hour>=7 & hour <=10) & site_id == 3 | (hour >=14 & hour<=20) & site_id == 3, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 4 | (hour >=14 & hour<=20) & site_id == 4

tabstat value if (hour>=7 & hour <=10) & site_id == 4 | (hour >=14 & hour<=20) & site_id == 4, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 5 | (hour >=14 & hour<=20) & site_id == 5

tabstat value if (hour>=7 & hour <=10) & site_id == 5 | (hour >=14 & hour<=20) & site_id == 5, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 6 | (hour >=14 & hour<=20) & site_id == 6

tabstat value if (hour>=7 & hour <=10) & site_id == 6 | (hour >=14 & hour<=20) & site_id == 6, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 7 | (hour >=14 & hour<=20) & site_id == 7

tabstat value if (hour>=7 & hour <=10) & site_id == 7 | (hour >=14 & hour<=20) & site_id == 7, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 8 | (hour >=14 & hour<=20) & site_id == 8

tabstat value if (hour>=7 & hour <=10) & site_id == 8 | (hour >=14 & hour<=20) & site_id == 8, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 9 | (hour >=14 & hour<=20) & site_id == 9

tabstat value if (hour>=7 & hour <=10) & site_id == 9 | (hour >=14 & hour<=20) & site_id == 9, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 10 | (hour >=14 & hour<=20) & site_id == 10

tabstat value if (hour>=7 & hour <=10) & site_id == 10 | (hour >=14 & hour<=20) & site_id == 10, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 11 | (hour >=14 & hour<=20) & site_id == 11

tabstat value if (hour>=7 & hour <=10) & site_id == 11 | (hour >=14 & hour<=20) & site_id == 11, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 12 | (hour >=14 & hour<=20) & site_id == 12

tabstat value if (hour>=7 & hour <=10) & site_id == 12 | (hour >=14 & hour<=20) & site_id == 12, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 13 | (hour >=14 & hour<=20) & site_id == 13

tabstat value if (hour>=7 & hour <=10) & site_id == 13 | (hour >=14 & hour<=20) & site_id == 13, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 14 | (hour >=14 & hour<=20) & site_id == 14

tabstat value if (hour>=7 & hour <=10) & site_id == 14 | (hour >=14 & hour<=20) & site_id == 14, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 15 | (hour >=14 & hour<=20) & site_id == 15

tabstat value if (hour>=7 & hour <=10) & site_id == 15 | (hour >=14 & hour<=20) & site_id == 15, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 16 | (hour >=14 & hour<=20) & site_id == 16

tabstat value if (hour>=7 & hour <=10) & site_id == 16 | (hour >=14 & hour<=20) & site_id == 16, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 17 | (hour >=14 & hour<=20) & site_id == 17

tabstat value if (hour>=7 & hour <=10) & site_id == 17 | (hour >=14 & hour<=20) & site_id == 17, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 18 | (hour >=14 & hour<=20) & site_id == 18

tabstat value if (hour>=7 & hour <=10) & site_id == 18 | (hour >=14 & hour<=20) & site_id == 18, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 19 | (hour >=14 & hour<=20) & site_id == 19

tabstat value if (hour>=7 & hour <=10) & site_id == 19 | (hour >=14 & hour<=20) & site_id == 19, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 20 | (hour >=14 & hour<=20) & site_id == 20

tabstat value if (hour>=7 & hour <=10) & site_id == 20 | (hour >=14 & hour<=20) & site_id == 20, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 21 | (hour >=14 & hour<=20) & site_id == 21

tabstat value if (hour>=7 & hour <=10) & site_id == 21 | (hour >=14 & hour<=20) & site_id == 21, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 22 | (hour >=14 & hour<=20) & site_id == 22

tabstat value if (hour>=7 & hour <=10) & site_id == 22 | (hour >=14 & hour<=20) & site_id == 22, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 23 | (hour >=14 & hour<=20) & site_id == 23

tabstat value if (hour>=7 & hour <=10) & site_id == 23 | (hour >=14 & hour<=20) & site_id == 23, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 24 | (hour >=14 & hour<=20) & site_id == 24

tabstat value if (hour>=7 & hour <=10) & site_id == 24 | (hour >=14 & hour<=20) & site_id == 24, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 25 | (hour >=14 & hour<=20) & site_id == 25

tabstat value if (hour>=7 & hour <=10) & site_id == 25 | (hour >=14 & hour<=20) & site_id == 25, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 26 | (hour >=14 & hour<=20) & site_id == 26

tabstat value if (hour>=7 & hour <=10) & site_id == 26 | (hour >=14 & hour<=20) & site_id == 26, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 27 | (hour >=14 & hour<=20) & site_id == 27

tabstat value if (hour>=7 & hour <=10) & site_id == 27 | (hour >=14 & hour<=20) & site_id == 27, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 28 | (hour >=14 & hour<=20) & site_id == 28

tabstat value if (hour>=7 & hour <=10) & site_id == 28 | (hour >=14 & hour<=20) & site_id == 28, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 29 | (hour >=14 & hour<=20) & site_id == 29

tabstat value if (hour>=7 & hour <=10) & site_id == 29 | (hour >=14 & hour<=20) & site_id == 29, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 30 | (hour >=14 & hour<=20) & site_id == 30

tabstat value if (hour>=7 & hour <=10) & site_id == 30 | (hour >=14 & hour<=20) & site_id == 30, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 31 | (hour >=14 & hour<=20) & site_id == 31

tabstat value if (hour>=7 & hour <=10) & site_id == 31 | (hour >=14 & hour<=20) & site_id == 31, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 32 | (hour >=14 & hour<=20) & site_id == 32

tabstat value if (hour>=7 & hour <=10) & site_id == 32 | (hour >=14 & hour<=20) & site_id == 32, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 33 | (hour >=14 & hour<=20) & site_id == 33

tabstat value if (hour>=7 & hour <=10) & site_id == 33 | (hour >=14 & hour<=20) & site_id == 33, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 34 | (hour >=14 & hour<=20) & site_id == 34

tabstat value if (hour>=7 & hour <=10) & site_id == 34 | (hour >=14 & hour<=20) & site_id == 34, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 35 | (hour >=14 & hour<=20) & site_id == 35

tabstat value if (hour>=7 & hour <=10) & site_id == 35 | (hour >=14 & hour<=20) & site_id == 35, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 36 | (hour >=14 & hour<=20) & site_id == 36

tabstat value if (hour>=7 & hour <=10) & site_id == 36 | (hour >=14 & hour<=20) & site_id == 36, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 37 | (hour >=14 & hour<=20) & site_id == 37

tabstat value if (hour>=7 & hour <=10) & site_id == 37 | (hour >=14 & hour<=20) & site_id == 37, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 38 | (hour >=14 & hour<=20) & site_id == 38

tabstat value if (hour>=7 & hour <=10) & site_id == 38 | (hour >=14 & hour<=20) & site_id == 38, by(parameter) statistics(count)

tab hour if (hour>=7 & hour <=10) & site_id == 39 | (hour >=14 & hour<=20) & site_id == 39

tabstat value if (hour>=7 & hour <=10) & site_id == 39 | (hour >=14 & hour<=20) & site_id == 39, by(parameter) statistics(count)


** Checking when site_id 14 stopped in 2004
tab month if site_id == 14 & year ==2004

* NOTES: SITE 14 STOPS COLLECTING DATA AT THE END OF MARCH 2014
