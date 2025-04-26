
rule Trojan_Win64_IcedID_MAM_MTB{
	meta:
		description = "Trojan:Win64/IcedID.MAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {50 6c 75 67 69 6e 49 6e 69 74 } //1 PluginInit
		$a_01_1 = {46 47 64 6b 7a 4d 5a 61 72 } //1 FGdkzMZar
		$a_01_2 = {49 79 47 46 76 34 78 57 } //1 IyGFv4xW
		$a_01_3 = {4d 4e 30 37 37 6f } //1 MN077o
		$a_01_4 = {52 39 6e 32 66 71 75 35 79 } //1 R9n2fqu5y
		$a_01_5 = {57 65 46 74 71 65 4c 70 30 4c 42 } //1 WeFtqeLp0LB
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}