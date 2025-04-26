
rule Trojan_Win32_Shellot_YAA_MTB{
	meta:
		description = "Trojan:Win32/Shellot.YAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {8a 55 0c 28 14 39 41 3b c8 72 } //1
		$a_03_1 = {8b c1 6a 02 99 5b f7 fb 85 d2 75 ?? 8b 45 ?? 8a 00 ff 45 fc eb ?? 8a 06 46 88 04 39 41 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}