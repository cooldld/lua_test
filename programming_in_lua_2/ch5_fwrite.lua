function fwrite(fmt, ...)
    return io.write(string.format(fmt, ...))
end

--bad argument #1 to 'format' (string expected, got nil)
--fwrite()

fwrite("a\n")
fwrite("%04d%02d%02d\n", 2019, 12, 31)
