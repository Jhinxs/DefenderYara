
rule Trojan_Win64_IcedID_DD_MTB{
	meta:
		description = "Trojan:Win64/IcedID.DD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {50 6c 75 67 69 6e 49 6e 69 74 } //10 PluginInit
		$a_01_1 = {64 56 6d 47 49 2e 64 6c 6c } //1 dVmGI.dll
		$a_01_2 = {42 30 34 73 57 58 6c 44 48 4f 36 } //1 B04sWXlDHO6
		$a_01_3 = {47 4b 56 64 6d 6b 6d 71 36 65 } //1 GKVdmkmq6e
		$a_01_4 = {73 74 52 6f 55 6a 71 51 70 50 } //1 stRoUjqQpP
		$a_01_5 = {76 62 32 47 76 61 62 6c 66 4e 5a } //1 vb2GvablfNZ
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=15
 
}