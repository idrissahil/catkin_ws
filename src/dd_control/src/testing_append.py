import time


start_new=time.time()
newlist = []
append_new = newlist.append
for i in range(10000000):
    b=200*i
    append_new(b)

end_new=time.time()

print("new append", end_new - start_new)

start_old=time.time()
newlist = []
for i in range(10000000):
    b=200*i
    newlist.append(b)
end_old=time.time()

print("old append", end_old - start_old)

start_new2=time.time()
newlist = [0] * 10000000
for i in range(10000000):
    b=200*i
    newlist[i] = b

end_new2=time.time()

print("pre allocate", end_new2 - start_new2)

start_new3=time.time()
for i in range(10000000):
    b=200*i
    newlist[i] = b

end_new3=time.time()

print("no allocate", end_new3 - start_new3)

start_new4=time.time()
i=0
while i<10000000:
    b=200*i
    newlist[i] = b
    i=i+1
end_new4=time.time()

print("while loop", end_new3 - start_new3)