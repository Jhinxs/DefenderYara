
rule Trojan_BAT_Nanocore_B{
	meta:
		description = "Trojan:BAT/Nanocore.B,SIGNATURE_TYPE_PEHSTR,05 00 05 00 03 00 00 "
		
	strings :
		$a_01_0 = {54 00 56 00 71 00 51 00 41 00 41 00 4d 00 41 00 41 00 41 00 41 00 45 00 41 00 41 00 41 00 41 00 5f 00 5f 00 38 00 41 00 41 00 4c 00 67 00 41 00 } //4 TVqQAAMAAAAEAAAA__8AALgA
		$a_01_1 = {48 00 5a 00 6c 00 63 00 6e 00 4e 00 70 00 62 00 32 00 34 00 39 00 49 00 6a 00 45 00 75 00 4d 00 43 00 49 00 67 00 5a 00 57 00 35 00 6a 00 62 00 } //1 HZlcnNpb249IjEuMCIgZW5jb
		$a_01_2 = {53 00 49 00 78 00 4c 00 6a 00 41 00 69 00 49 00 47 00 56 00 75 00 59 00 32 00 39 00 6b 00 61 00 57 00 35 00 6e 00 50 00 } //1 SIxLjAiIGVuY29kaW5nP
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}