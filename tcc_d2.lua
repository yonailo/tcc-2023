
x = {}
y = {}
c = {}
oc = {}
v = {}
ov = {}
lc = {}
n = 100

function distance(x1,y1,x2,y2)
 return math.sqrt(
   (x2-x1)*(x2-x1) + 
   (y2-y1)*(y2-y1)
 )
end

for i=1,n do
 x[i] = math.random(240)
 y[i] = math.random(136)
 c[i] = math.random(16)
 oc[i] = c[i]
 v[i] = 10
 ov[i] = v[i]
end

t = 0
index = 0
lc[0] = 10
lc[1] = 5


function TIC()
  cls()
  t = t + 1
  for i=1,n do
  	for j=i,n do
   	if i~=j then
    d = distance(x[i], y[i], x[j], y[j])
    if d < 16 then
     if (t / 60) % 1 == 0 then
      index = (index + 1) % 2
     end
    
     c[i] = lc[index]     
     c[j] = c[i]
     v[i] = -100
     v[j] = 100 
    	line(x[i], y[i], x[j], y[j], c[i]) 
    end
    end
   end
   
   circ(x[i], y[i], 2, c[i])
   
   x[i] = (x[i] + ((i+v[i])/200))%240
   y[i] = (y[i] + ((i+v[i])/200))%136
   
   c[i] = oc[i]
   v[i] = ov[i]
  end
end

-- <TILES>
-- 001:eccccccccc888888caaaaaaaca888888cacccccccacc0ccccacc0ccccacc0ccc
-- 002:ccccceee8888cceeaaaa0cee888a0ceeccca0ccc0cca0c0c0cca0c0c0cca0c0c
-- 003:eccccccccc888888caaaaaaaca888888cacccccccacccccccacc0ccccacc0ccc
-- 004:ccccceee8888cceeaaaa0cee888a0ceeccca0cccccca0c0c0cca0c0c0cca0c0c
-- 017:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 018:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- 019:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 020:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- </TILES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

