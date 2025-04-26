
rule Trojan_Win64_SunSpot_A_dha{
	meta:
		description = "Trojan:Win64/SunSpot.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {fc f3 2a 83 e5 f6 d0 24 ?? bf ce 88 30 c2 48 e7 } //1
		$a_03_1 = {81 8c 85 49 b9 00 06 78 0b e9 ?? 60 26 64 b2 da } //1
		$a_03_2 = {57 6f 72 6c 64 20 6f ?? 20 57 61 72 63 72 61 66 74 } //-10
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*-10) >=2
 
}