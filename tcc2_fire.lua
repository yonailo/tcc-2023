
cls()

t = 0

tri(115, 71, 125, 71, 120, 80, 12)
rect(119,79,2,10,12)

circ(20,20,10,11)
circ(20,20,9,0)

circ(50,20,10,12)
circ(50,20,9,0)

circ(80,20,10,2)
circ(80,20,9,0)

circ(35,30,10,4)
circ(35,30,9,0)

circ(65,30,10,6)
circ(65,30,9,0)

print("Paris 2024",25,50,9)

function TIC()
  t = t + 1
  d1 = math.sin(t)*4
		d2 = math.cos(t)*4
		x1 = 120 + d1
		x2 = 120 - d2
		
		for x=x1,x2 do
			pix(x, 70, math.random(16));
		end
		
		for y=0,69 do
	
			for	x=x1,x2 do
			  c = pix(x-1,y-1) +
									pix(x-1, y) +
									pix(x-1,y+1) +
									pix(x,y-1)+
									pix(x, y) +
									pix(x,y+1)+
									pix(x+1, y-1) +
									pix(x+1, y) +
									pix(x+1, y+1)
				
					d = t % 20
					
					if d == 0 then
					  a = 10
							c = c - 2
					else 
					  a = 8
							y = y - 1
							c = c + 1
					end
					
					c = c / a 
					
					pix(x,y-1,c)
			end
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

