const std = @import("std");
const print = std.debug.print;

// For a struct to have functions, it has to be declared outside of the main function
const OreNoStruct = struct {
    pub fn printCoolThings(thing: *const [12:0]u8) void {
        print("{s}", .{thing});
    }
};

// Another thing to do is use it like an object
const AnotherStruct = struct {
    property: u8,

    // Sorry for the lack of creativity
    pub fn printNumbers(self: AnotherStruct, number: u32) void {
        print("I need to use the self argument for something: {}.\nActual function usage: {}.", .{ self.property, number });
    }
};

pub fn main() !void {
    // You can't attach it to variable to use the funcion
    OreNoStruct.printCoolThings("Cool things.\n");

    // Instantiate it like an object
    const struct_instance = AnotherStruct{ .property = 10 };
    struct_instance.printNumbers(12);
}
