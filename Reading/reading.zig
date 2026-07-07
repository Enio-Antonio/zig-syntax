const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var buffer: [5]u8 = undefined;
    const bytesRead = try std.Io.File.stdin().readPositionalAll(init.io, &buffer, 0);
    std.debug.print("{s}\n", .{buffer[0 .. bytesRead - 1]}); // -1 to ignore the newline
}
