const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const opencl = b.addStaticLibrary(.{
        .name = "OpenCL",
        .root_source_file = .{ .path = "dummy.zig" },
        .target = target,
        .optimize = optimize,
    });
    opencl.installHeadersDirectoryOptions(.{
        .source_dir = "CL",
        .install_dir = .header,
        .install_subdir = "CL",
    });
    b.installArtifact(opencl);
}
