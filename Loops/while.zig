const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var i: u8 = 0;

    // Simple while loop
    while (i < 5) {
        print("{}\n", .{i});
        i += 1;
    }

    print("\n", .{});
    i = 0;

    // While with a condition, kinda a like a for from C
    while (i < 5) : (i += 1) {
        print("{}\n", .{i});
    }
}