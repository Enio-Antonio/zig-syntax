const std = @import("std");

// Basic function syntax
fn oreNoFunction() void {
    // This one does nothing
}

fn sum(num1: i8, num2: i8) i8 {
    return num1 + num2;
}

// You can use anytype for dealing with more one type of return
fn sum_2(num1: anytype, num2: anytype) @TypeOf(num1) {
    return num1 + num2;
}

// pub makes the function able to be used in another file after @import
pub fn main() !void {
    const sumResult = sum(1, 2);
    try std.testing.expect(sumResult == 3);

    const sumResult_2 = sum_2(2, 3);
    try std.testing.expect(sumResult_2 == 5);

    std.debug.print("Result = {}", .{sumResult});
}

// Note that there's no pass by reference for integers and floats