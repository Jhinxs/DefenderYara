
rule Trojan_Win64_Khalesi_DA_MTB{
	meta:
		description = "Trojan:Win64/Khalesi.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 07 00 00 "
		
	strings :
		$a_00_0 = {4b 72 72 51 46 57 47 59 57 4e } //10 KrrQFWGYWN
		$a_00_1 = {78 73 68 69 4d 45 43 77 75 47 } //10 xshiMECwuG
		$a_01_2 = {47 65 74 43 6f 6d 70 75 74 65 72 4e 61 6d 65 41 } //1 GetComputerNameA
		$a_01_3 = {53 77 69 74 63 68 54 6f 46 69 62 65 72 } //1 SwitchToFiber
		$a_01_4 = {44 65 6c 65 74 65 46 69 62 65 72 } //1 DeleteFiber
		$a_01_5 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //1 ResumeThread
		$a_01_6 = {47 65 74 4d 6f 64 75 6c 65 46 69 6c 65 4e 61 6d 65 41 } //1 GetModuleFileNameA
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=15
 
}