
rule Trojan_Win32_Ursnif_ABM_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.ABM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 04 00 00 "
		
	strings :
		$a_02_0 = {55 8b ec 83 ec 08 66 c7 45 f8 07 00 66 c7 45 fc 09 00 0f b7 45 fc 6b c0 06 0f b7 ?? ?? ?? ?? ?? 2b c1 66 89 45 f8 c7 } //10
		$a_80_1 = {66 65 6c 6c 5c 54 65 73 74 2e 70 64 62 } //fell\Test.pdb  3
		$a_80_2 = {42 6c 75 65 6d 65 61 6e } //Bluemean  3
		$a_80_3 = {54 65 73 74 2e 64 6c 6c } //Test.dll  3
	condition:
		((#a_02_0  & 1)*10+(#a_80_1  & 1)*3+(#a_80_2  & 1)*3+(#a_80_3  & 1)*3) >=19
 
}