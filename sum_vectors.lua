a = {}
b = {}

for i = 1, 10000000 do
    a[i] = i
    b[i] = i
end

for i = 1, #a do
    a[i] = a[i] + b[i]
end

print("last element = " .. a[#a])