import random

f = open("InsertTestData.sql", "a")

i = 100
while ( i < 1000):
    f.write("\ninsert into [Token] values (" + " \'TESTsdfyU" + str(i) + "\', GETDATE()," + str(random.randrange(1,4)) + ")")
    i = i + 1
f.close()

