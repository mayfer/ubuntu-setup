sudo tee /etc/keyd/default.conf << 'EOF'
[ids]
*

[main]
# Command key becomes the "Ctrl" for shortcuts
leftmeta = layer(mac_cmd)
rightmeta = layer(mac_cmd)

# Physical Ctrl stays as Ctrl (default, no remap needed)
# Physical Alt/Option for word navigation
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
w = C-w
t = C-t
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
backspace = S-home delete
EOF

sudo systemctl restart keyd
