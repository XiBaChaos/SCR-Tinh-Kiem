Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc doan moc thanh
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber(2,nTaskValue,4);
	if(nValue == 25) then
		Say(11039,1,
		END_TALK.."/nv_601");
	return end
	if(nValue == 26 and GetLevel() >= 60) then
		Talk(1,"nv_602","Hi�n gi� kh� n�ng c�a ta �� ��i ph� Li�u ��nh r�i ch�?");
	return end
	if(nValue == 28) then
		Say(11063,1,
		END_TALK.."/done60");
	return end
	Talk(1,"",11027);
end;

function nv_601()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),4,26));
	if(GetLevel() >= 60) then
		nv_602();
	else
		Talk(1,"",11033);
	end
end

function nv_602()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),4,27));
	Talk(1,"",11041);
	Msg2Player("��n L�o H� ��ng gi�t Li�u ��nh.");
	AddNote(3,1,"�i gi�t Li�u ��nh � L�o H� ��ng (196,202)");
end

function done60()
	SetTask(TASK_NVST, SetNumber(2,GetTask(TASK_NVST),4,29));
	AddItemID(AddItem(0,4,463,0,0,5,0,0));
	AddSkillState( 509, 1,0, 180);
	Msg2Player("B�n nh�n ���c B�n Long C�i!");
	Msg2Player("��n g�p Long Ng� th�nh gi�o.");
end

function no()
end;