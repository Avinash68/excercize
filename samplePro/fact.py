def fact():
    num = int(input("Please Enter any Number: "))
    fact=1
    while num > 1:
        fact=fact*num
        num -=1
    print fact
    return fact

if __name__=="__main__":
    demo =fact()
