const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const install_headers = b.addInstallDirectory(.{
        .source_dir = "CL",
        .install_dir = .header,
        .install_subdir = "CL",
    });
    b.getInstallStep().dependOn(&install_headers.step);
}
