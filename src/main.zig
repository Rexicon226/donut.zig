                        pub fn main() !void {
                const stdout_file = std.io.getStdOut()
            .writer();  var bw = std.io.bufferedWriter(
           stdout_file); const stdout = bw.writer(); var 
          A: f32 = 0; var B: f32 = 0; var i: f32 = 0; var 
        j: f32 = 0; var k: usize = 0; var z: [1760]f32 = 
      undefined; var b: [1760]u8 = undefined; try stdout.print(
     "\x1b[2J", .{}); while (true) { @memset(z[0..], 0) ;@memset(
    b[0..], 32);  j = 0; while (j < 6.28) : (j += 0.07) {  i  = 0;
    while (i < 6.28) : (i += 0.02) { const   c = @sin(i); const d =
    @cos(j); const e=@sin(A);              const f = @sin(j); 
    const h = d + 2;const l                 = @cos(i); const m=@cos(
    B); const g=@cos(A);                    const D = 1 / (c * h * e
     + f * g + 5);const                     n = @sin(B);const t=c*h*g - 
   f * e;const x = @as(                      usize, @intFromFloat(40.0 +
   30.0 * D * (l * h  *                      m - t * n))); const y = @as(
   usize, @intFromFloat                      (12.0 + 15.0 * D * (l*h *  n
    + t * m))); const o:                     usize = x + 80 * y; const N 
    =  @as(usize,                           @intFromFloat( @max(0, 8.0 *
     ((f * e - c * d * g)                  * m - c * d * e - f * g-l  *
     d * n)))); if (22 > y and y > 0 and x > 0 and 80 > x and 
       D > z[o]) { z[o] = D; b[o] = ".,-~:;=!*#$@"[if  (N > 0) N
         else 0]; }}} try    stdout.print("\x1b[H", .{}); k
           = 0; while (k < 1761) : (k += 1) { try  stdout.print
            ("{c}", .{if (k % 80 != 0) b[k] else 10}); A += 
              0.00004; B += 0.00002; } std.time.sleep(1e+7);}}
                      const std = @import("std");

