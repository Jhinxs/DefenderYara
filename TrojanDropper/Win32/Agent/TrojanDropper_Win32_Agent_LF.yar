
rule TrojanDropper_Win32_Agent_LF{
	meta:
		description = "TrojanDropper:Win32/Agent.LF,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 68 64 66 73 68 64 66 67 68 66 67 66 67 67 73 64 67 64 67 64 73 66 64 73 66 73 64 66 73 64 66 64 73 61 66 73 64 66 67 73 64 67 64 66 67 64 66 67 } //2 hhdfshdfghfgfggsdgdgdsfdsfsdfsdfdsafsdfgsdgdfgdfg
		$a_01_1 = {5c 53 74 75 62 20 56 49 53 55 41 4c 5c 52 65 6c 65 61 73 65 5c 53 74 75 62 20 56 49 53 55 41 4c 2e 70 64 62 } //5 \Stub VISUAL\Release\Stub VISUAL.pdb
		$a_01_2 = {64 73 66 67 64 67 64 67 64 66 67 64 73 67 66 64 66 61 73 64 66 64 61 73 66 64 73 61 66 73 61 64 66 61 73 64 66 64 66 67 64 73 67 64 66 67 64 66 67 } //1 dsfgdgdgdfgdsgfdfasdfdasfdsafsadfasdfdfgdsgdfgdfg
		$a_01_3 = {2d 2d 40 25 64 2d 2d } //1 --@%d--
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=9
 
}