const std = @import("std");

// There no way to do simple file list the syntax for allocators
// There are simply to many allocators

// This example was taken from the official documentation

pub fn main() !void {
    // Initialize the allocator
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);

    // Free the memory at the end of the program
    defer arena.deinit();

    // Actual allocation
    const ptr = try arena.allocator().create(i32);
    std.debug.print("ptr = {}\n", .{ptr});
}