
rule Trojan_Win32_Singu_A{
	meta:
		description = "Trojan:Win32/Singu.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_03_0 = {b9 4f 00 00 00 8d 7c 24 ?? 50 68 90 [0-00] 00 f3 ab 53 ff d5 53 68 3c 01 00 00 8d 54 24 ?? 6a 01 52 ff 15 ?? ?? 40 00 b9 4f 00 00 00 } //1
		$a_03_1 = {68 bc 03 00 00 f3 a4 b9 4f 00 00 00 8d 7c 24 ?? f3 ab 53 ff d5 53 6a 10 8d 44 24 ?? 6a 01 50 ff 15 ?? ?? 40 00 8d 4c 24 ?? 68 3c 01 00 00 } //1
		$a_03_2 = {68 b4 03 00 00 ff 75 ?? ff d7 ff 75 ?? 6a 02 6a 01 68 ?? ?? 00 10 ff d3 83 c4 28 83 3d f4 ?? ?? 10 00 0f ?? ?? 00 00 00 6a 00 68 b6 03 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=1
 
}