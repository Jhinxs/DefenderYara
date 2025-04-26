
rule Trojan_Win32_Baldr_AD_MTB{
	meta:
		description = "Trojan:Win32/Baldr.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b cf 33 d2 6a ?? 8b c1 5e f7 f6 8a 44 15 ?? 30 81 ?? ?? ?? ?? 41 81 f9 ?? ?? ?? ?? 72 } //1
		$a_00_1 = {61 00 76 00 34 00 2e 00 30 00 2e 00 33 00 30 00 33 00 31 00 39 00 } //1 av4.0.30319
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}