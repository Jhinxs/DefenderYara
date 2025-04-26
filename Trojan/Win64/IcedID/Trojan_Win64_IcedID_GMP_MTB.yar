
rule Trojan_Win64_IcedID_GMP_MTB{
	meta:
		description = "Trojan:Win64/IcedID.GMP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {7a 66 6c 6d 73 67 6a 65 61 } //1 zflmsgjea
		$a_01_1 = {73 76 6f 62 62 69 69 66 6f 74 75 7a } //1 svobbiifotuz
		$a_01_2 = {63 65 62 6a 6f 69 62 79 75 73 63 75 6f } //1 cebjoibyuscuo
		$a_01_3 = {53 74 75 62 5f 4c 4c 56 4d 4f 5f 44 6c 6c 2e 64 6c 6c } //1 Stub_LLVMO_Dll.dll
		$a_01_4 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //1 GetTickCount
		$a_01_5 = {4c 6f 61 64 52 65 73 6f 75 72 63 65 } //1 LoadResource
		$a_01_6 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}