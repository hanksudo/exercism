import datetime

ONE_BILLION = 1000000000


def add(moment):
    return moment + datetime.timedelta(seconds=ONE_BILLION)
