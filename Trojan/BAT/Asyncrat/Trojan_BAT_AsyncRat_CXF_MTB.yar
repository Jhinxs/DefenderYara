
rule Trojan_BAT_AsyncRat_CXF_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.CXF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 6f 51 41 68 62 69 79 67 51 6c 65 52 6f 4a 52 4c 74 47 42 43 5a 51 59 54 4c 43 6b } //1 WoQAhbiygQleRoJRLtGBCZQYTLCk
		$a_01_1 = {77 64 47 73 56 6a 54 56 77 } //1 wdGsVjTVw
		$a_01_2 = {6e 57 63 50 76 75 4b 55 64 4e } //1 nWcPvuKUdN
		$a_01_3 = {46 52 6e 6e 73 62 45 56 54 } //1 FRnnsbEVT
		$a_01_4 = {70 4f 69 59 65 73 73 } //1 pOiYess
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}