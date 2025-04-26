
rule Worm_Win32_Vobfus_gen_M{
	meta:
		description = "Worm:Win32/Vobfus.gen!M,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 "
		
	strings :
		$a_03_0 = {69 c0 aa 00 00 00 0f 80 ?? ?? ?? ?? 89 45 ?? c7 45 ?? 05 00 00 00 dd 05 ?? ?? ?? ?? 51 51 } //5
		$a_01_1 = {ee 14 02 00 00 00 00 00 c0 00 00 00 00 00 00 46 } //5
		$a_01_2 = {50 66 b9 50 00 e8 } //1
		$a_01_3 = {50 66 b9 58 00 e8 } //1
		$a_01_4 = {50 66 b9 5b 00 e8 } //1
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=13
 
}