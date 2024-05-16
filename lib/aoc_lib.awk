#!/usr/bin/env awk -f

# This library contains functions I will probably reuse.

function min(a, b) {
    if (a < b) {
        return a
    }
    return b
}

function max(a, b) {
    if (a > b) {
        return a
    }
    return b
}


function ceil(n) {
    ival = int(n)
    if (ival == n) {
        return n
    }
    if (n > 0) {
        return ival + 1
    }
    return ival
}