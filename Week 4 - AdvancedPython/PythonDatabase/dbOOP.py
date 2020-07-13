import secretFile
import pyodbc
import sys

class Database:
    server = 'databases2.spartaglobal.academy'
    database = 'Northwind'
    username = 'SA'
    password = 'Passw0rd2018'

    def __init__(self):

        try:
            self.connections = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' + self.server +
                                              ';DATABASE=' + self.database + ';UID=' + self.username +
                                              ';PWD=' + self.password)
            print("Connection Established")
            self.cursor = self.connections.cursor()
        except pyodbc.InterfaceError:
            print("Did not connect")
            self.__exit__(sys.exc_info())

    def enterSQL(self, command):
        return self.cursor.execute(command)

    def avgprice(self):
        # calc avg unit price of all the products
        return self.enterSQL("SELECT AVG(UnitPrice) FROM Products").fetchone()

    def __exit__(self, exc_msg):
        print("__exit__")
        print(exc_msg)
        self.cursor.close()
        self.connections.close()

def test():
    command = input("please input sql command")
    db = Database()
    rows = db.enterSQL(command).fetchmany(30)
    for r in rows:
        print(r)

def avgprice():
    db = Database()
    print(db.avgprice())

#test()
#avgprice()




# db = Database()
# print(db.enterSQL("SELECT * FROM Customers").fetchmany(30))
# cursor = connections.cursor()
# query1 = cursor.execute("SELECT * FROM Customers")
# rows = query1.fetchone()
# # print(type(rows))
# # print(rows[1])
# # print(rows.ContactName)
# row1 = query1.fetchmany(30)
# print(row1)
# print(query1)
# rows = cursor.fetchall()
# for row in row1:
#     print(row)
#
# assignment calculate the average of all the pro
# presentation how you have designed it after exam start working on the design
