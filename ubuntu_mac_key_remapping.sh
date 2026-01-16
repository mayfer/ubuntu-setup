sudo tee /etc/keyd/default.conf << 'EOF'
[ids]
*

[main]
leftmeta = layer(mac_cmd)
rightmeta = layer(mac_cmd)
leftalt = layer(mac_nav)

[mac_nav]
left = C-left
right = C-right
backspace = C-backspace
delete = C-delete

[mac_cmd]
c = C-c
v = C-v
x = C-x
a = C-a
s = C-s
z = C-z
q = C-q
t = C-t
w = C-w
n = C-n
o = C-o
f = C-f
r = C-r
p = C-p
l = C-l
k = C-k
b = C-b
i = C-i
u = C-u
tab = A-tab
` = A-`
left = home
right = end
up = C-home
down = C-end
EOF
sudo systemctl restart keyd
