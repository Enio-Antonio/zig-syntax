const std = @import("std");

pub fn main() !void {
    const seed: u64 = 123456789;

    // Non cryptographically secure
    const genstrat = std.Random.DefaultPrng;
    var generator = genstrat.init(seed);
    const random_n = generator.random().intRangeAtMost(i32, 0, 10);
    std.debug.print("{}\n", .{random_n});
}
