
rule Backdoor_Win64_Vankul_ZA{
	meta:
		description = "Backdoor:Win64/Vankul.ZA,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {76 75 6c 6b 61 6e 2d 31 2e 64 6c 6c 2e 70 64 62 } //1 vulkan-1.dll.pdb
		$a_01_1 = {56 4b 5f 4c 4f 41 44 45 52 5f 44 45 42 55 47 } //1 VK_LOADER_DEBUG
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}