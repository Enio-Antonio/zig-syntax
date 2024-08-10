const std = @import("std");

pub fn main() !void {
    const i = 10;
    const i_ptr = &i;
    try std.testing.expect(i_ptr.* == i);
    std.debug.print("{}\n{}", .{@TypeOf(i_ptr), i_ptr.*});
}