
rule Trojan_Win64_Latrodectus_PC_MTB{
	meta:
		description = "Trojan:Win64/Latrodectus.PC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 04 02 8d 44 08 ?? 0f b7 4c 24 ?? 48 8b 54 24 ?? 88 04 0a 0f b6 44 24 ?? 0f b6 4c 24 ?? 33 c1 0f b7 4c 24 ?? 48 8b 54 24 ?? 88 04 0a e9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}