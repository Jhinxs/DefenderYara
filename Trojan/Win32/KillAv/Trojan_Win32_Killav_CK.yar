
rule Trojan_Win32_Killav_CK{
	meta:
		description = "Trojan:Win32/Killav.CK,SIGNATURE_TYPE_PEHSTR,ffffffab 00 ffffffa0 00 0b 00 00 "
		
	strings :
		$a_01_0 = {b6 af b7 c0 d3 f9 00 00 d0 c7 d6 f7 00 00 00 00 c8 f0 } //100
		$a_01_1 = {b6 af b7 c0 d3 f9 00 00 c8 f0 d0 c7 d6 f7 } //100
		$a_01_2 = {53 65 74 43 75 72 73 6f 72 50 6f 73 } //10 SetCursorPos
		$a_01_3 = {45 6e 75 6d 43 68 69 6c 64 57 69 6e 64 6f 77 73 } //10 EnumChildWindows
		$a_01_4 = {46 69 6e 64 57 69 6e 64 6f 77 45 78 41 } //10 FindWindowExA
		$a_01_5 = {4e 6f 74 69 66 79 57 6e 64 } //10 NotifyWnd
		$a_01_6 = {53 65 74 54 69 6d 65 72 } //10 SetTimer
		$a_01_7 = {d7 dc ca c7 d4 ca d0 ed } //10
		$a_01_8 = {b7 c5 b9 fd } //10
		$a_01_9 = {bc d3 c8 eb d0 c5 c8 ce b2 e5 bc fe c1 d0 b1 ed } //10
		$a_01_10 = {62 69 61 6f 6a 69 } //1 biaoji
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*10+(#a_01_9  & 1)*10+(#a_01_10  & 1)*1) >=160
 
}