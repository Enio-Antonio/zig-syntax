const std = @import("std");
const smp = std.heap.smp_allocator;

// Just for demonstration
const Node = struct { next: ?*Node, value: i32 };

pub fn main() !void {
    // Use create() to alloc a simple object
    const p = smp.create(Node);
    defer smp.destroy(p); // It must be freed with destroy()

    // To arrays, the method is alloc()
    const v = smp.alloc(i32, 5);
    smp.free(v);
}
