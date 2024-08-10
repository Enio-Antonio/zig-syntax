const std = @import("std");

pub fn main() !void {
    const i: u8 = 10;

    // Use the * symbol followed by the variable type
    const i_ptr: *const u8 = &i; // or just const i_ptr = &i

    // Test the allocation
    try std.testing.expect(i_ptr.* == i);

    std.debug.print("Type of i_ptr: {}\nDereferenced i_ptr: {}\n\n", .{@TypeOf(i_ptr), i_ptr.*});

    // Array pointer
    const oreNoArray = [_]u8 {1, 2, 3, 4, 5};
    const array_ptr = &oreNoArray;

    try std.testing.expect(array_ptr.*[0] == oreNoArray[0]);
    std.debug.print("oreNoArray[0] = array_ptr.*[0] = {} = {}", .{oreNoArray[0], array_ptr.*[0]});
}