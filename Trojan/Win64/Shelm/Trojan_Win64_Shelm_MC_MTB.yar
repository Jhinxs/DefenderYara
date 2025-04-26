
rule Trojan_Win64_Shelm_MC_MTB{
	meta:
		description = "Trojan:Win64/Shelm.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_01_0 = {79 78 73 6f 68 65 7a 61 7a 76 65 71 7a 77 78 2e 64 6c 6c } //5 yxsohezazveqzwx.dll
		$a_01_1 = {44 6c 6c 49 6e 73 74 61 6c 6c } //1 DllInstall
		$a_01_2 = {44 6c 6c 4d 61 69 6e } //1 DllMain
		$a_01_3 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_01_4 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllUnregisterServer
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=9
 
}