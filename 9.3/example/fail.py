def increment(index):
    index = 0
    index += 1
    while (index < 10):
         index = increment(index)
    print(get_square(index))
    return index
def get_square(numb):
    return numb*numb
def print_numb(numb):
    print("Number is {}".format(numb))
    pass

