
rule Trojan_Win32_Gosup_B{
	meta:
		description = "Trojan:Win32/Gosup.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {6e 6e 65 77 2e 64 6c 6c ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 39 38 37 36 35 } //1
		$a_03_1 = {8b 75 f4 8b 07 8a 44 18 ff 8b d0 8b 4d f8 8a 4c 31 ff 32 d1 81 e2 ff 00 00 00 8b f2 85 f6 75 ?? 8b f0 81 e6 ff 00 00 00 8b c7 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}