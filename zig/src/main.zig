const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    const N = 10_000_000;
    var allocator = std.heap.page_allocator;

    var a = try allocator.alloc(i32, N);
    defer allocator.free(a);
    var b = try allocator.alloc(i32, N);
    defer allocator.free(b);

    for (0..N) |i| {
        a[i] = @intCast(i + 1);
        b[i] = @intCast(i + 1);
    }

    for (0..N) |i| {
        a[i] += b[i];
    }

    print("last element = {}\n", .{a[a.len - 1]});
}
