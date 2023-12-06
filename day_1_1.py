examp: str = """1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet"""
print(examp)


index: int = 0
calibration_values: list = []
num: dict = {0: []}

def find_all_numbers_in_string(input: str):
    output: list = []
    for char in input:
        if char.isdigit():
            output.append(int(char))
    return output

def combine_2_ints_to_one(input: list):
    return str(input[0]) + str(input[1])

def find_last_digest_and_combine(input: list):
    to_combine: list = []
    to_combine.append(input[0])
    to_combine.append(input[-1])
    return combine_2_ints_to_one(to_combine)

print(find_last_digest_and_combine(find_last_digest_and_combine("1abc2")))