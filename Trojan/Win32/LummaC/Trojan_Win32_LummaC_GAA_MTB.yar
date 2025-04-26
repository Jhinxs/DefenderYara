
rule Trojan_Win32_LummaC_GAA_MTB{
	meta:
		description = "Trojan:Win32/LummaC.GAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 44 24 10 30 0c 06 83 ff ?? ?? ?? 6a 00 6a 00 6a 00 ff d3 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}