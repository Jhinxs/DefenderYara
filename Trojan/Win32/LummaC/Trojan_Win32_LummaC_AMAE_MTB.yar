
rule Trojan_Win32_LummaC_AMAE_MTB{
	meta:
		description = "Trojan:Win32/LummaC.AMAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {30 14 30 83 ff 0f 75 ?? 8b 8d ?? ?? ?? ?? 6a 00 6a 00 [0-0f] 50 51 68 } //1
		$a_03_1 = {30 0c 33 83 ff 0f 75 ?? 8b 95 [0-0f] 6a 00 6a 00 [0-0f] 50 51 68 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}