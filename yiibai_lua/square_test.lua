function square(max, current)
    if (current < max)
    then
        current = current + 1
        return current, current ^ 2
    end
end

for i, n in square, 4, 1
do
    print(i, n)
end
