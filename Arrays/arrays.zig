const std = @import("std");

pub fn main() !void {
    // Initialize an array
    const oreNoArray = [_]u8 {1, 2, 3, 4, 5};

    // You can declare the type
    const oreNoArray_2: [5]u8 = .{1, 2, 3, 4, 5};

    std.debug.print("oreNoArray[0]: {}\n", .{oreNoArray[0]});
    std.debug.print("oreNoArray_2[0]: {}\n", .{oreNoArray_2[0]});

    // String array
    const stringArray = [_][]const u8 {"string1", "string2"};
    std.debug.print("stringArray[0]: {s}\n", .{stringArray[0]});
}