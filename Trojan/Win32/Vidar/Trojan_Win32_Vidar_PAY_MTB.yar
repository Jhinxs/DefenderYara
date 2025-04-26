
rule Trojan_Win32_Vidar_PAY_MTB{
	meta:
		description = "Trojan:Win32/Vidar.PAY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {50 ff d6 8b c8 33 d2 8b c7 f7 f1 8b 85 ?? ?? ?? ?? 8a 0c 02 8b 95 ?? ?? ?? ?? 8d 04 17 8b 95 ?? ?? ?? ?? 32 0c 02 88 08 8d 85 ?? ?? ?? ?? 50 ff d6 8d 8d ?? ?? ?? ?? 51 ff d6 47 3b fb 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}