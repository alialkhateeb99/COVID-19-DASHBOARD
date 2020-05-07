import sys
import xml.dom.minidom
import mysql.connector

ListOfData = []
document = xml.dom.minidom.parse(sys.argv[1])
tableElements = document.getElementsByTagName('table')
for tr in tableElements[0].getElementsByTagName('tr'):
	data = []
	for td in tr.getElementsByTagName('td'):
		for node in td.childNodes:
				if node.nodeType == node.TEXT_NODE:
					data.append(node.nodeValue)
	ListOfData.append(data)
ListOfData.pop(0)

ListOfCountyData = []
document2 = xml.dom.minidom.parse(sys.argv[2])
tableElements2 = document2.getElementsByTagName('table')
for tr in tableElements2[3].getElementsByTagName('tr'):
    data = []
    for td in tr.getElementsByTagName('td'):
        for node in td.childNodes:
            if node.nodeType == node.TEXT_NODE:
                data.append(node.nodeValue)
    ListOfCountyData.append(data)

ListOfCountyData.remove([])

for x in range(2): # Deleting the extra "states"
    ListOfData.pop()

def REFORMAT(list1):
    for l1 in list1:
        l1[0] = l1[0].replace('\n','')

        l1[1] = l1[1].replace(',','')
        l1[2] = l1[2].replace(',','')

        l1[1] = l1[1].replace('\n','')
        l1[2] = l1[2].replace('\n','')

        l1[0] = l1[0].rstrip()
        l1[1] = l1[1].rstrip()
        l1[2] = l1[2].rstrip()
    
REFORMAT(ListOfData)

def insert(cursor,p1,p2,p3):
    query = 'INSERT INTO states(state,cases,deaths) VALUES (%s,%s,%s)'
    cursor.execute(query, (p1,p2,p3))

def updateNew(cursor,val):
    query = 'UPDATE states SET todayCases=%s,todayDeaths=%s WHERE state=%s'
    cursor.execute(query,val)

def insertNew(cursor,p1,p2,p3):
    query = 'INSERT INTO states(state,todayCases,todayDeaths) VALUES (%s,%s,%s)'
    cursor.execute(query,(p1,p2,p3))

def update(cursor,val):
    query = 'UPDATE states SET cases=%s, deaths=%s WHERE state=%s'
    cursor.execute(query, val)

def insertCounty(cursor,val):
    query = 'INSERT INTO counties(county,cases,deaths) VALUES (%s,%s,%s)'
    cursor.execute(query,val)

def updateCounty(cursor,val):
    query = 'UPDATE counties SET cases=%s,deaths=%s WHERE county=%s'
    cursor.execute(query,val)

try:
    cnx = mysql.connector.connect(host='localhost', user='root', password='3301', database='hw5')
    cursor = cnx.cursor()

    for lists in ListOfData:
        val = (lists[1],lists[2],lists[0])
        update(cursor,val)
        cnx.commit()
    
    for lists in ListOfCountyData:
        val = (lists[1],lists[3],lists[0])
        updateCounty(cursor,val)
        cnx.commit()


    if len(sys.argv) == 4:
        for lists in ListOfData:
            val = (lists[1],lists[2],lists[0])
            updateNew(cursor,val)
            cnx.commit()

    cursor.close()
except mysql.connector.Error as err:
    print(err)
finally:
    try:
        cnx
    except NameError:
        pass
    else:
        cnx.close()
