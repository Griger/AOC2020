from itertools import combinations

with open("input.txt", "r") as file:
    numbers = [int(l) for l in file.readlines()]

    #Part One
    validPair = next(p for p in combinations(numbers, 2) if p[0] + p[1] == 2020)
    print(validPair[0] * validPair[1])

    #Part Two
    validTrio = next(t for t in combinations(numbers, 3) if t[0] + t[1] + t[2] == 2020)
    print(validTrio[0] * validTrio[1] * validTrio[2])
