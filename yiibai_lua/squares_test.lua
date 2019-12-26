function square(max, current)
    if (current < max)
    then
        current = current + 1
        return current, current ^ 2
    end
end

function squares(max)
    return square, max, 1
end

for i, n in squares(4)
do
    print(i, n)
end
