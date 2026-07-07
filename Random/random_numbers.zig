const std = @import("std");

pub fn main() !void {
    const seed: u64 = 123456789;

    // Non cryptographically secure
    var genstrat = std.Random.DefaultPrng.init(seed);
    const random_n = std.Random.intRangeAtMost(genstrat.random(), i32, 0, 100);
    std.debug.print("{}\n", .{random_n});
}
