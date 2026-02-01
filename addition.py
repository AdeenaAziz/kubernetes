def add(a, b):
        if not isinstance(a, int) or not isinstance(b, int):
             return "Only integers allowed"
        return a + b

print(add(2, 3))

