
rule Trojan_Win64_SmokeLoader_RPQ_MTB{
	meta:
		description = "Trojan:Win64/SmokeLoader.RPQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {ff d0 48 89 c1 48 89 4c 24 50 48 8d 54 24 60 4d 33 c0 4d 33 c9 c7 44 24 20 02 00 00 80 48 c7 44 24 28 00 00 00 00 ff d6 48 89 44 24 48 48 33 c9 c7 c2 80 84 1e 00 41 c7 c0 00 10 00 00 41 c7 c1 04 00 00 00 ff d3 48 89 44 24 58 48 8b 4c 24 48 48 8b 54 24 58 41 c7 c0 80 84 1e 00 4c 8d 8c 24 0c 01 00 00 ff d7 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}