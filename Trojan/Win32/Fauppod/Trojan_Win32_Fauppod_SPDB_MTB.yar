
rule Trojan_Win32_Fauppod_SPDB_MTB{
	meta:
		description = "Trojan:Win32/Fauppod.SPDB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_81_0 = {4f 69 61 61 77 74 4f 74 6e 6b 65 6c 65 69 68 6c 6c 65 } //2 OiaawtOtnkeleihlle
		$a_01_1 = {4f 69 61 61 77 74 4f 74 6e 6b 65 6c 65 69 68 6c 6c 65 } //1 OiaawtOtnkeleihlle
		$a_01_2 = {65 6b 72 6e 6e 37 33 2e 64 6c 6c } //1 ekrnn73.dll
	condition:
		((#a_81_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}