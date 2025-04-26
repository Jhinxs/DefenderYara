
rule TrojanDropper_Win32_Safadrew_A{
	meta:
		description = "TrojanDropper:Win32/Safadrew.A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0c 00 06 00 00 "
		
	strings :
		$a_01_0 = {8b c3 50 53 58 5b 83 c0 40 b8 00 00 00 00 b8 02 00 00 00 b9 05 00 00 00 83 c0 03 } //13
		$a_01_1 = {b8 00 20 40 00 ff 73 d0 } //4
		$a_03_2 = {66 81 3a 4d 5a 74 ?? ff 73 d0 } //3
		$a_03_3 = {c1 c2 04 ff 73 (d0|fc) } //2
		$a_03_4 = {8f 43 d0 80 74 01 ?? ?? ff 73 d0 } //3
		$a_03_5 = {8f 43 fc 80 74 01 ?? ?? ff 73 fc } //3
	condition:
		((#a_01_0  & 1)*13+(#a_01_1  & 1)*4+(#a_03_2  & 1)*3+(#a_03_3  & 1)*2+(#a_03_4  & 1)*3+(#a_03_5  & 1)*3) >=12
 
}