--hoangnhk
Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber(2,nTaskValue,3);
	if(nValue == 1 and GetItemCount(0,4,456)>0) then
		Say(10455,1,
		END_TALK.."/no");
		DelItem(1,0,4,456);
		SetTask(TASK_NVST, SetNumber(2,nTaskValue,3,2));
		Msg2Player("Ph� Nam B�ng b�o b�n ��n tr��c La Ti�u S�n ��nh b�i Ninh T��ng Qu�n (219,214)")
		AddNote(2,1,"Ph� Nam B�ng b�o b�n ��n tr��c La Ti�u S�n ��nh b�i Ninh T��ng Qu�n (219,214)");
	return end
	if(nValue == 3) then
		Say(10457,1,
		END_TALK.."/done20");
	return end
	if(nValue == 4 and GetLevel() >= 30) then
		Say(10458,1,
		END_TALK.."/nv_30");
	return end
	if(nValue == 6) then
		Say(10459,1,
		END_TALK.."/done30");
	return end
	if(nValue == 7 and GetLevel() >= 40) then
		Say(10461,1,
		END_TALK.."/nv_40");
	return end
	if(nValue == 11) then
		Say("Ph� Nam B�ng: Th�nh c�ng r�i? Ta c�ng bi�t ng��i s� th�nh c�ng.",1,
		END_TALK.."/done40");
	return end
	if(nValue == 12 and GetLevel() >= 50) then
		Say(14715,1,
		END_TALK.."/nv_50");
	return end
	if(nValue == 15 and GetItemCount(0,4,459)>0) then
		Say("Ph� Nam B�ng: Th�nh c�ng r�i? Ta c�ng bi�t ng��i s� th�nh c�ng.",1,
		END_TALK.."/done50");
	return end
	if(nValue == 16 and GetLevel() >= 60) then
		Say(14743,1,
		END_TALK.."/nv_60");
	return end
	if(nValue == 19) then
		Say(14745,1,
		END_TALK.."/done60");
	return end
	Talk(1,"","Giang h� hi�m �c, m��i ba huynh �� gi� ch� c�n m�nh ta.");
end

function nv_30()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),3,5));
	AddOwnExp(10000);
	Msg2Player("Ph� Nam B�ng b�o b�n �i Th�c C��ng S�n ��nh b�i L� Thi�n T��ng");
	AddNote(2,1,"Ph� Nam B�ng b�o b�n �i Th�c C��ng S�n ��nh b�i L� Thi�n T��ng (231,199)");
end;

function nv_40()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),3,8));
	AddOwnExp(15000);
	Msg2Player("Ph� Nam B�ng b�o b�n �i t�m L� Thu Th�y (229/210) � ��i L�")
	AddNote(2,1,"Ph� Nam B�ng b�o b�n �i t�m L� Thu Th�y � ��i L� (229/210)");
end;

function nv_50()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),3,13));
	AddOwnExp(30000);
	Msg2Player("Ph� Nam B�ng b�o b�n �i Thi�n V��ng Bang t�m H�n Giang ��c �i�u T�u.")
	Msg2Player("Th�c ch�t b�n ch� c�n ��n b�n t�u Ba L�ng Huy�n l� g�p �ng ta.")
	AddNote(2,1,"��n b�n t�u Ba L�ng Huy�n (n�i �i Thi�n V��ng ��o) t�m H�n Ng� �ng");
end

function nv_60()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),3,17));
	AddOwnExp(50000);
	Msg2Player("Ph� Nam B�ng b�o b�n �i t�m Kh�ng T�ch ��i S�")
	AddNote(2,1,"Ph� Nam B�ng b�o b�n �i t�m Kh�ng T�ch ��i S� � Bi�n Kinh (208,183)");
end

function done20()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),3,4));
	AddOwnExp(5000);
	AddSkillState( 509, 1, 0,180);
	AddItemID(AddItem(2,0,181,0,0,0,5));
	Msg2Player("B�n nh�n ���c 1 h� uy�n.")
	Msg2Player("Ph� Nam B�ng n�i sau n�y s� t�m b�n.");
	Talk(1,"","C� g�ng l�n");
end;

function done30()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),3,7));
	AddOwnExp(10000);
	AddSkillState( 509, 1, 0, 180);
	AddItemID(AddItem(2,0,177,0,0,0,5));
	Msg2Player("B�n nh�n ���c 1 chi�n gi�p.")
	Msg2Player("Ph� Nam B�ng n�i L�m Uy�n Nhai c� m�t k� ho�ch l�n, sau n�y s� t�m b�n!")
	Talk(1,"","C� g�ng l�n");
end;

function done40()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),3,12));
	AddOwnExp(20000);
	AddSkillState(509,1,0,180);
	AddItemID(AddItem(2,0,179,0,0,0,5));
	Msg2Player("B�n nh�n ���c 1 chi�c nh�n.")
	Msg2Player("Ph� Nam B�ng n�i sau n�y s� t�m b�n.");
end;

function done50()
	if (DelItem(1,0,4,459)==1)then
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),3,16));
	AddOwnExp(40000);
	AddSkillState(509,1,0,180);
	AddItemID(AddItem(0,0,10,2,7,0,0,0));
	Msg2Player("B�n nh�n ���c m�t con tu�n m�.");
	Msg2Player("Ph� Nam B�ng n�i sau n�y s� t�m b�n.");
	end
end;

function done60()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),3,20));
	AddOwnExp(40000);
	AddSkillState(509,1,0,180);
	Msg2Player("Ph� Nam B�ng n�i s� �i Hoa S�n l�m ch�t chuy�n, sau n�y c� d�p g�p l�i. B�n quay v� t�m Long Ng�.")	
end;

function no()
end;