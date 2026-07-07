const std = @import("std");
const smp = std.heap.smp_allocator;

// If you want to read the args, the main function args are mandatory
pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(smp);
    defer smp.free(args);

    for (args) |i| {
        std.debug.print("{s}\n", .{i});
    }
}
