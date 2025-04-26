
rule Trojan_WinNT_Killav_DK{
	meta:
		description = "Trojan:WinNT/Killav.DK,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {8b 75 0c 8b 4e 60 8b 41 0c 57 33 db 33 ff 3d 08 20 22 00 74 ?? 3d 4b 21 22 00 } //1
		$a_01_1 = {fa 50 0f 20 c0 25 ff ff fe ff 0f 22 c0 } //1
		$a_01_2 = {ec 53 56 57 b9 00 00 00 a0 } //1
		$a_03_3 = {80 38 ff 75 11 80 78 01 75 75 0b 8a 50 02 3a 15 80 09 40 00 74 ?? 40 41 81 f9 96 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}