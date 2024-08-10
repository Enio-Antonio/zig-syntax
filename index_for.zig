const std = @import("std");

pub fn main() !void {
    const items = [_]i32{ 4, 5, 3, 4, 0 };

    var sum2: i32 = 0;

    for (items, 0..) |_, i| {
        try std.testing.expect(@TypeOf(i) == usize);
        sum2 += @as(i32, @intCast(i));
    }
    try std.testing.expect(sum2 == 10);
}