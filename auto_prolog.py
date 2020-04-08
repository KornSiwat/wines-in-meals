
data = [i.strip('\n').split('\t') for i in open('IsWineType.txt')]
for element in data:
    print(f"IsWineType({element[0]},{element[1]}).")
