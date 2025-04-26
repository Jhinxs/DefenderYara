
rule Trojan_WinNT_Koutodoor_C{
	meta:
		description = "Trojan:WinNT/Koutodoor.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_09_0 = {79 00 66 00 73 00 61 00 } //1 yfsa
		$a_09_1 = {58 00 76 00 70 00 48 00 64 00 } //1 XvpHd
		$a_09_2 = {77 00 4c 00 42 00 76 00 } //1 wLBv
		$a_03_3 = {ff 75 0c ff 75 08 6a 20 68 40 56 01 00 e8 90 16 55 8b ec 56 57 33 ff 39 7d 14 0f 8e } //1
	condition:
		((#a_09_0  & 1)*1+(#a_09_1  & 1)*1+(#a_09_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}