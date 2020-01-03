polyline = {
    npoints = 4,
    thickness = 2,
    {x = 1, y = 0},
    color = "blue",
    {x = 2, y = 0},
    {x = 3, y = 0},
    {x = 4, y = 0},
}

print(polyline.color)
print(polyline[1].x)
print(polyline[2].x)
print(polyline[4].x)

print("\nipairs polyline")
for k, v in ipairs(polyline)
do
    print(k, v)
end

print("\npairs polyline")
for k in pairs(polyline)
do
    print(k, polyline[k])
end
