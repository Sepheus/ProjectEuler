import std.stdio;

void main() {
        import std.range;
        import std.algorithm;

        iota(3,1001)
            .filter!(n => n % 3 == 0 || n % 5 == 0)
            .reduce!((n, sum) => sum + n)
            .writeln;
}