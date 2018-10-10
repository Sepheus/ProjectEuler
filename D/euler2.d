//https://projecteuler.net/problem=2

import std.stdio;

void main() {
    import std.algorithm;
    import std.range : recurrence;
    
    auto fibonacci = recurrence!((a, i) => a[i-1] + a[i-2])(1,1);
    fibonacci
        .until!(n => n >= 4_000_000)
        .filter!(n => !(n & 1))
        .reduce!((n, sum) => sum + n)
        .writeln;
}