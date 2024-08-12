// This example was taken from the official documentation

const std = @import("std");

fn add(a: i8, b: i8) i8 {
    if (a == 0) {
        return b;
    }

    return a + b;
}
fn sub2(a: i8, b: i8) i8 {
    return a - b;
}

// Function pointers are prefixed with `*const `.
const Call2Op = *const fn (a: i8, b: i8) i8;
fn doOp(fnCall: Call2Op, op1: i8, op2: i8) i8 {
    return fnCall(op1, op2);
}

pub fn main() !void {
    try std.testing.expect(doOp(add, 5, 6) == 11);
    try std.testing.expect(doOp(sub2, 5, 6) == -1);

    std.debug.print("doOp(add, 5, 6) = {}\n", .{doOp(add, 5, 6)});
    std.debug.print("doOp(sub2, 5, 6) = {}\n", .{doOp(sub2, 5, 6)});
}