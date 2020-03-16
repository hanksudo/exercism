import re

class Luhn:
    def __init__(self, card_num):
        self.card_num = card_num.replace(" ", "")

    def valid(self):
        if len(self.card_num) <= 1:
            return False

        if not re.match(r"^\d+$", self.card_num):
            return False

        sum_of_nums = 0
        for idx, c in enumerate(self.card_num[::-1]):
            num = int(c)
            if idx % 2 == 1:
                num *= 2
                if num > 9:
                    num -= 9
            sum_of_nums += num
        return sum_of_nums % 10 == 0
