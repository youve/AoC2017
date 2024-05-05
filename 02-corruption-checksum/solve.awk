#!/usr/bin/awk -f

@include "../lib/aoc_lib.awk"

function solve_part_1() {
    maximum = $1
    minimum = $1
    for (i = 2; i <= NF; i++) {
        minimum = min($i, minimum)
        maximum = max($i, maximum)
    }
    total_part_1 += (maximum - minimum)
}

function solve_part_2() {
    for (i = 1; i<= NF; i++) {
        for (j = i + 1; j<= NF; j++) {
            if ($i % $j == 0) {
                total_part_2 += ($i / $j )
            } else if ($j % $i == 0 ) {
                total_part_2 += ($j / $i )
            }
        } 
    }
}

{
    solve_part_1()   
    solve_part_2()
}
END {
    print "Part 1: " total_part_1
    print "Part 2: " total_part_2
}