#!/usr/bin/env python3
import math

test_data = ((1, 0), (12, 3), (23, 2), (1024, 31), (325489, None))

"""
17  16  15  14  13
18   5   4   3  12
19   6   1   2  11
20   7   8   9  10
21  22  23  24  25
"""

def solve_part_1(n):
    side_length = math.ceil(math.sqrt(n)) - 1  # takes us to the northeast or southeast corner
    if side_length % 2 != 0:
        side_length += 1 # takes us to the southeast corner
    half_side = side_length // 2
    overshot = (side_length + 1 ) ** 2 - n
    if not overshot:
        return side_length
    south = east = half_side
    while overshot > side_length:
        #rotational symmetry, this will complete in at most 3 iterations.
        overshot -= side_length
    if overshot > half_side:
        overshot = side_length - overshot
    return south + east - overshot


print([(test_data[i], solve_part_1(test_data[i][0])) for i in range(5)])

#print(solve(1))