const std = @import("std");

pub fn main() !void {
    // You can go through an array
    const array = [5]i8{1, 2, 3, 4, 5};
    for (array) |i| {
        std.debug.print("{}\n", .{i});
    }

    std.debug.print("\n", .{});

    // If you wanna go through some range, just use this operator
    for (0..5) |i| {
        std.debug.print("{}\n", .{i});
    }

    // If you want to visualize the element index
    for (array, 0..array.len) |element, i| {
        std.debug.print("{}[{}]\n", .{element, i});
    }
}