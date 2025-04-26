
rule VirTool_WinNT_Zuten_A{
	meta:
		description = "VirTool:WinNT/Zuten.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {8b 75 10 6a 05 56 e8 ?? ?? ff ff 2b de 83 c3 0b c6 06 e9 89 5e 01 8b 4d 2c ff 15 } //2
		$a_00_1 = {5c 44 6f 73 44 65 76 69 63 65 73 5c 63 3a 5c 6e 61 6d 65 2e 6c 6f 67 00 } //3
		$a_00_2 = {84 21 10 80 75 } //3
		$a_00_3 = {47 61 6d 65 48 61 63 6b 5c } //2 GameHack\
		$a_00_4 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 00 } //1
	condition:
		((#a_02_0  & 1)*2+(#a_00_1  & 1)*3+(#a_00_2  & 1)*3+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1) >=5
 
}