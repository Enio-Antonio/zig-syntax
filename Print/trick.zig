const std = @import("std");

// Instead of using std.debug.print or even std.io.getStdOut().writer()
const print = std.debug.print;

pub fn main() !void {
    print("Smoking hot lang\n", .{});
}