# COVID-19-DASHBOARD
A web application to track the COVID-19 pandemic in the United States Of America.

The center piece of the website is a dashboard that shows a state-by-state breakdowns of confirmed cases of the coronavirus. The information related to each state include:

#State Name, Confirmed Cases, New Cases, Confirmed Deaths, New Deaths

The fields #New Cases and #New Deathsare the deltas since the last update of the previous day. In addition to state-by-state information.

The contents of the website are refreshed every 30 minutes by extracting information from goverment websites.

A bash script that takes 2 command line arguments to 2 websites is used. 
Wget is used to download the relevent files.
Tagsoup is used to generated a xhtml file from the html files.
A python script that uses the xml.dom.minidom module extracts the relevant statistics and inserts the data into a MySQL database.

PHP/HTML/Javascript are used to show the websites and to do the sorting dynamically.
