const std = @import("std");

pub fn main() !void {
    // Kinda long way to do it
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, world!\n", .{});

    // Brief way to do it
    std.debug.print("Hello, world! Again...\n", .{});

    // Print a variable (or constant, you think you got it...)
    const i = 10;
    std.debug.print("{}\n", .{i});

    // Print multiple variables
    const i_2 = 3;
    const i_3 = 4;
    std.debug.print("i2 = {}\ni3 = {}", .{i_2, i_3});

    // Don't forget the second argument of the print method,
    // it's mandatory! Even if you aren't printing a variable.
}

