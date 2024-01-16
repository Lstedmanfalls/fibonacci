def get_fibonacci_series(num: int):
    if type(num) != int:
        raise TypeError("Input must be an integer")
    if num <= 0:
        raise ValueError("Number must be greater than zero")

    fib_series = [0, 1]
    while fib_series[-1] + fib_series[-2] <= num:
        fib_series.append(fib_series[-1] + fib_series[-2])
    return fib_series
