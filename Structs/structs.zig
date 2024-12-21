const std = @import("std");
const print = std.debug.print;
pub fn main() !void {
    // A simple struct
    const OreNoStruct = struct { property_1: u8, property_2: u16 };

    // Create a variable of that type
    const object1 = OreNoStruct{ .property_1 = 10, .property_2 = 15 };

    // Call the property of the struct
    print("{}\n", .{object1.property_1});

    // Apply it to a variable
    const number = object1.property_2;

    print("{}\n", .{number});
}
