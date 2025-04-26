
rule VirTool_Win32_Obfuscator_WQ{
	meta:
		description = "VirTool:Win32/Obfuscator.WQ,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_11_0 = {18 81 c3 41 63 74 78 e8 a2 01 00 00 8b 55 cc 52 8b 45 98 8b 75 0c 2b 30 81 c6 41 63 74 78 e8 9b fc ff ff 01 } //5
		$a_89_1 = {cc 81 45 cc 50 1c 00 00 01 00 09 11 81 e9 6b 01 00 } //2560
		$a_ac_2 = {00 5d 04 00 00 69 9d 02 80 5c 22 00 00 6b 9d 02 80 00 00 01 00 1e 00 0c 00 d0 21 50 64 66 6a 73 63 2e 41 41 56 00 00 01 40 05 82 59 00 04 00 28 0e 00 00 00 22 2a c0 c3 03 e3 9e 28 4e 50 03 00 00 5d 04 00 00 6b 9d 02 80 5c 28 00 00 } //-30464
	condition:
		((#a_11_0  & 1)*5+(#a_89_1  & 1)*2560+(#a_ac_2  & 1)*-30464) >=7
 
}