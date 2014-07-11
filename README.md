## Introduction
This assignment uses data from the UC Irvine Machine Learning Repository
* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.

* <b>Dataset source</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

The dataset has 9 variables 
<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Criteria
Plots are based on data from the dates 2007-02-01 and 2007-02-02

## Working
<ol>
<li> Each script can reproduce plots from scratch </b>
<li> Data is downloaded and unzipped in directory "Electric_power_consumption" </li>
<li> Plots are created in directory "Plots" </li>
<li> Date variable in dataset converted into Date class </li>
<li> New variable Datetime added in dataset using strptime() functions </li>
<li> A subset of data is created based on Date from dates 2007-02-01 and 2007-02-02 </li>
<li> Plots are created based on subset of data </b>
<li> Plots are directly send to PNG calling png() </li>
</ol>

# Making Plots


* Plot dimentions are 480x480 pixels.

* 4 seperate R script files are created 

plot1.R creates plot1.png

plot2.R creates plot2.png

plot3.R creates plot3.png

plot4.R creates plot4.png

The four plots that created are below: 


### Plot 1


![plot 1](plots/plot1.png) 


### Plot 2

![plot 2](plots/plot2.png) 


### Plot 3

![plot 3](plots/plot3.png) 


### Plot 4

![plot 4](plots/plot4.png) 



