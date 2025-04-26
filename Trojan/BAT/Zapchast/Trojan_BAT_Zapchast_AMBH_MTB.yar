
rule Trojan_BAT_Zapchast_AMBH_MTB{
	meta:
		description = "Trojan:BAT/Zapchast.AMBH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {0a 11 17 28 ?? 00 00 0a 6f ?? 00 00 0a 72 ?? 06 00 70 6f ?? 00 00 0a 72 ?? 06 00 70 6f ?? 00 00 0a 14 18 8d ?? 00 00 01 25 16 11 1b 72 ?? 06 00 70 28 ?? 00 00 0a a2 25 17 11 1a 28 ?? 00 00 0a a2 } //2
		$a_00_1 = {6b 00 72 00 6f 00 77 00 65 00 6d 00 61 00 72 00 46 00 5c 00 54 00 45 00 4e 00 2e 00 74 00 66 00 6f 00 73 00 6f 00 72 00 63 00 69 00 4d 00 5c 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 5c 00 3a 00 43 00 } //1 krowemarF\TEN.tfosorciM\swodniW\:C
		$a_01_2 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //1 DownloadString
		$a_01_4 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}