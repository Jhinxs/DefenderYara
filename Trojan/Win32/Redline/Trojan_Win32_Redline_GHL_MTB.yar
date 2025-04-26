
rule Trojan_Win32_Redline_GHL_MTB{
	meta:
		description = "Trojan:Win32/Redline.GHL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b cb 8b c1 83 e0 03 8a 80 ?? ?? ?? ?? 30 81 ?? ?? ?? ?? 41 81 f9 ?? ?? ?? ?? 72 } //10
		$a_03_1 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 [0-20] 5c 00 52 00 65 00 67 00 53 00 76 00 63 00 73 00 2e 00 65 00 78 00 65 00 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*1) >=11
 
}