def convertToFahrenheit(f: float) -> float:
    res = (f * 9/5) + 32
    rounded_res = round(res, 2)
    return rounded_res


def main() -> None:
    # result formated to get 2 zeroes after decimal
    print("{:.2f}".format(convertToFahrenheit(0)))
    print("{:.2f}".format(convertToFahrenheit(100)))
    print("{:.2f}".format(convertToFahrenheit(-40)))


if __name__ == '__main__':
    main()
