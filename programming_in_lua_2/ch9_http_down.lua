local socket = require("socket")
print(socket._VERSION)

--host = "www.w3.org"
--file = "/TR/REC-html32.html"
--file = "/TR/2018/SPSD-html32-20180315"

host = "172.16.6.142"
file = "/release/%E8%87%AA%E5%8A%A8%E5%8C%96%E5%8D%87%E7%BA%A7%E5%8C%85/readme.txt"

c = assert(socket.connect(host, 80))

--c:send("GET" .. file .. " HTTP/1.0\r\n\r\n")
c:send("GET" .. file .. " HTTP/3.0\r\n\r\n")

while true
do
    local s, status, partial = c:receive(2^10)
    io.write(s or partial)
    if status == "closed" then break end
end

c:close()
