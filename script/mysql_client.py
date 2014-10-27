#conding=utf-8
#filename = test system mysql-database
import MySQLdb


class Model:
    host = ""
    user = ""
    passwd = ""
    db = ""
    cursor = ""

    def __init__(self, host="localhost", user="root", passwd="", db=""):

        self.host = host
        self.user = user
        self.passwd = passwd
        self.db = db
        conn = MySQLdb.connect(host=self.host, 
                                user=self.user, 
                                passwd=self.passwd
                                )
        self.cursor = conn.cursor()

    def create(self, name):
        self.cursor.execute("create database if not exists %s;" % name)

    def drop(self, name):
        self.cursor.execute("drop database if exists %s;" % name)

    def __del__(self):
        self.cursor.close()


if __name__ == "__main__":
    instance = Model()
    # instance.create("test_01")
    instance.drop("test_01")
