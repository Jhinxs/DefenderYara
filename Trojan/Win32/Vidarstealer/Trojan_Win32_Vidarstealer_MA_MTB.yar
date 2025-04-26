
rule Trojan_Win32_Vidarstealer_MA_MTB{
	meta:
		description = "Trojan:Win32/Vidarstealer.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {50 88 f8 30 d8 88 c7 88 3f 58 8b 5c 24 ?? 43 89 5c 24 90 1b 00 8b 5c 24 90 1b 00 3b 5c 24 ?? 7e 08 c7 44 24 90 1b 00 ?? ?? ?? ?? ff 44 24 ?? 71 95 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}