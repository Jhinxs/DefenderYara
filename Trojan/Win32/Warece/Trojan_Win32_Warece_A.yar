
rule Trojan_Win32_Warece_A{
	meta:
		description = "Trojan:Win32/Warece.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {74 32 33 c0 80 b0 ?? ?? 00 10 ?? 40 3d ?? ?? 00 00 72 f1 6a 01 68 ?? ?? 00 10 e8 ?? ?? ff ff 68 ?? ?? 00 10 50 } //1
		$a_02_1 = {75 d0 8b 46 05 83 c6 05 3b 05 ?? ?? ?? 10 74 6b 3b 05 ?? ?? ?? 10 74 63 6a 01 51 51 8b cc 89 65 ec 56 e8 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}