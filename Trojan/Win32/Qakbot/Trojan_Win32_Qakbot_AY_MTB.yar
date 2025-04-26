
rule Trojan_Win32_Qakbot_AY_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.AY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 d2 8b c7 f7 75 ?? 8a 04 0a 8b 55 ?? 32 04 17 88 04 3b 47 83 ee 01 75 } //1
		$a_01_1 = {51 6b 6b 62 61 6c } //1 Qkkbal
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Qakbot_AY_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.AY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {c1 ea 08 88 14 01 ff 46 70 8b 46 20 2d [0-04] 0f af 86 80 00 00 00 89 86 80 00 00 00 8b 46 0c 8d 88 6a 6c 11 00 0b c8 89 4e 0c 8b 4e 70 8b 86 94 00 00 00 88 1c 01 b8 [0-04] ff 46 70 2b 86 c4 00 00 00 01 46 2c 8b 46 68 35 d5 fc 13 00 29 46 48 8b 86 80 00 00 00 09 86 c4 00 00 00 8b 86 a0 00 00 00 01 86 88 00 00 00 81 ff [0-04] 0f } //3
		$a_01_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //2 DllRegisterServer
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2) >=5
 
}