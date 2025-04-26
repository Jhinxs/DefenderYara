
rule Trojan_Win32_Remcos_DL_MTB{
	meta:
		description = "Trojan:Win32/Remcos.DL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b ce 2b d6 bf ?? ?? ?? ?? 8d 9b 00 00 00 00 8a 04 0a 34 ?? 88 01 41 4f 75 ?? 8d 4c 24 10 51 ff d6 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}