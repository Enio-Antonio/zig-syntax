const std = @import("std");

pub fn main() !void {
    const numberString = "42";
    const result = try std.fmt.parseInt(u64, numberString, 10);
    std.debug.print("Type of result: {}\n", .{@TypeOf(result)});

    // It's almost the same with parseFloat, but you can't specify the base
    // std.fmt.parseFloat(comptime T: type, s: []const u8)

    // Other option is charToDigit(), for "single quoted strings"
    // std.fmt.charToDigit(c: u8, base: u8)
}
