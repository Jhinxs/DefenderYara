
rule PWS_Win32_Fareit_I_MTB{
	meta:
		description = "PWS:Win32/Fareit.I!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {ff 34 1f 52 81 f2 ?? ?? ?? ?? 5a 68 ?? ?? ?? ?? 68 } //1
		$a_02_1 = {89 14 18 52 81 f2 ?? ?? ?? ?? 5a [0-ff] 83 c4 08 83 fb 00 0f 85 ?? ?? ff ff eb } //1
		$a_00_2 = {8b 54 24 04 } //1
		$a_00_3 = {58 31 f2 68 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}