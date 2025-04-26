
rule TrojanSpy_Win32_Bancos_AFE{
	meta:
		description = "TrojanSpy:Win32/Bancos.AFE,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {70 72 61 71 75 65 6d 3d [0-0f] 40 68 6f 74 6d 61 69 6c 2e 63 6f 6d } //1
		$a_01_1 = {69 6e 66 65 63 74 2e 70 68 70 00 } //1
		$a_01_2 = {53 65 6e 68 61 20 49 6e 74 65 72 6e 65 74 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 3a } //1 Senha Internet..........:
		$a_01_3 = {4d 41 43 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 3a } //1 MAC...............:
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}