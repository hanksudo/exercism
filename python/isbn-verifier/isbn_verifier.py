def is_valid(isbn):
    isbn = isbn.replace("-", "")
    if len(isbn) != 10:
        return False

    sum_of_values = 0
    for idx, c in enumerate(isbn.replace("-", "")):
        try:
            sum_of_values += (10 - idx) * int(c)
        except ValueError:
            if idx == 9 and c == "X":
                sum_of_values += 10
            else:
                return False

    return sum_of_values % 11 == 0
