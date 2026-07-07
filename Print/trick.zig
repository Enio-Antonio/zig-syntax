const std = @import("std");

// Instead of using std.debug.print or even std.Io.File.stdout().writeStreamingAll()
const print = std.debug.print;

pub fn main() !void {
    print("Smoking hot lang\n", .{});
}
