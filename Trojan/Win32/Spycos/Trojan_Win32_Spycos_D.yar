
rule Trojan_Win32_Spycos_D{
	meta:
		description = "Trojan:Win32/Spycos.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8d 55 cc b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b 45 cc 8b 55 f8 e8 ?? ?? ?? ?? 85 c0 90 13 8b 45 fc e8 ?? ?? ?? ?? 8b d8 } //1
		$a_03_1 = {76 4a 8d 45 9c 50 6a 90 04 01 02 3c 64 6a 0d 53 e8 } //1
		$a_00_2 = {6d 6f 64 67 75 61 72 64 } //1 modguard
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}