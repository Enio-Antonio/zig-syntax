const std = @import("std");

pub fn main(init: std.process.Init) !void {
    // Kinda long way to do it
    try std.Io.File.stdout().writeStreamingAll(init.io, "Hello, world\n");

    // Brief way to do it
    std.debug.print("Hello, world! Again...\n", .{});

    // Print a variable (or constant, I think you got it...)
    const i = 10;
    std.debug.print("{}\n", .{i});

    // If the variable is "string", you need the identifier {s}
    const string = "Just a string";
    std.debug.print("{s}\n", .{string});

    // Print multiple variables
    const i_2 = 3;
    const i_3 = 4;
    std.debug.print("i_2 = {}\ni_3 = {}", .{ i_2, i_3 });

    // Don't forget the second argument of the print method,
    // it's mandatory! Even if you aren't printing a variable.
}
