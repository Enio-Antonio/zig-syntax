const std = @import("std");

pub fn main() !void {
    const seed: u64 = 123456789;

    // Non cryptographically secure
    var generator = std.rand.DefaultPrng.init(seed);

    // Use the types you want
    const random_int = generator.random().int(u8);
    const random_float = generator.random().float(f32);

    try std.io.getStdOut().writer().print("Random int = {}\nRandom float = {}", .{random_int, random_float});
}