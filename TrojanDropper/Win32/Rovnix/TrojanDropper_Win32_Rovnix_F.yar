
rule TrojanDropper_Win32_Rovnix_F{
	meta:
		description = "TrojanDropper:Win32/Rovnix.F,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {42 6b 49 6e 73 74 61 6c 6c 5f } //1 BkInstall_
		$a_00_1 = {53 74 61 72 74 5f 49 6e 73 74 61 6c 6c 5f 42 6f 6f 74 6b 69 74 } //1 Start_Install_Bootkit
		$a_01_2 = {68 35 bf a0 be 6a 01 6a 00 e8 } //1
		$a_01_3 = {68 6f fe e2 62 6a 05 6a 00 e8 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}