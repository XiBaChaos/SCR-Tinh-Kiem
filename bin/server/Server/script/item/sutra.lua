NUM20E = 2000000000;

function main(nItemIdx)
	local ng,np = FindItemEx(nItemIdx);
	
	local exp=GetExp();
	
	if (exp < 0) then
		exp = exp*-1;
		if (ng == 6 and np == 12) then
			if (exp >= NUM20E) then
				exp = NUM20E;
			end
		elseif (ng == 6 and np == 2392) then
			exp = floor (exp / 2);
--		elseif (ng == 6 and np == 2393) then
		end
		
		sutra_addexp(exp)
		Msg2Player("Sau khi nghi�n c�u k� B�t Nh��c T�m Kinh, b�n c�m th�y to�n th�n khoan kho�i, kinh nghi�m th�c chi�n h�i ph�c kh�ng �t. ")
		RemoveItem(nItemIdx,1);
		return 0
	end 
	
	Msg2Player("B�n nghi�n c�u B�t Nh��c T�m Kinh ���c n�a ng�y, nh�ng v�n ch�a l�nh ng� ���c g�. ")
	return 1;
end


function sutra_addexp(n_exp)
	local n_count = 100;
	while (n_exp > 0) do
		if (n_exp >= 20e8) then
			AddOwnExp(20e8);
			n_exp = n_exp - 20e8;
		else
			AddOwnExp(n_exp);
			n_exp = 0;
			break
		end
	end
end
