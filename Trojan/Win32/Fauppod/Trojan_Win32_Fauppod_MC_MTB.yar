
rule Trojan_Win32_Fauppod_MC_MTB{
	meta:
		description = "Trojan:Win32/Fauppod.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {4a 62 79 76 74 46 72 63 74 76 } //2 JbyvtFrctv
		$a_01_1 = {4c 75 6e 62 79 53 72 64 66 74 } //2 LunbySrdft
		$a_01_2 = {45 74 76 4f 6e 68 62 } //2 EtvOnhb
		$a_01_3 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //1 WaitForSingleObject
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1) >=7
 
}