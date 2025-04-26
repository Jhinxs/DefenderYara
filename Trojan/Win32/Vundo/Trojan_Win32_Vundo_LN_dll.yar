
rule Trojan_Win32_Vundo_LN_dll{
	meta:
		description = "Trojan:Win32/Vundo.LN!dll,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0e 00 06 00 00 "
		
	strings :
		$a_01_0 = {00 6d 6d 69 6f 43 6c 6f 73 65 00 00 00 43 6c 6f 73 65 44 72 69 76 65 72 00 00 00 00 00 } //10
		$a_02_1 = {66 81 fa 00 20 0f 94 c0 a3 ?? ?? ?? ?? c3 } //1
		$a_00_2 = {c7 45 f4 c3 cc cc cc } //1
		$a_00_3 = {8b 80 a0 00 00 00 } //1
		$a_00_4 = {81 e5 00 f0 00 00 } //1
		$a_00_5 = {81 fd 00 30 00 00 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=14
 
}