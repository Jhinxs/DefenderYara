
rule Trojan_BAT_LokiBot_RPW_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.RPW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {61 00 48 00 52 00 30 00 63 00 44 00 6f 00 76 00 4c 00 7a 00 67 00 78 00 4c 00 6a 00 45 00 32 00 4d 00 53 00 34 00 79 00 4d 00 6a 00 6b 00 75 00 4d 00 54 00 45 00 77 00 4c 00 33 00 } //1 aHR0cDovLzgxLjE2MS4yMjkuMTEwL3
		$a_01_1 = {61 00 4a 00 44 00 5a 00 59 00 71 00 63 00 59 00 46 00 47 00 78 00 4d 00 52 00 4c 00 70 00 } //1 aJDZYqcYFGxMRLp
		$a_01_2 = {45 6e 63 6f 64 69 6e 67 } //1 Encoding
		$a_01_3 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_5 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //1 DownloadString
		$a_01_6 = {52 65 76 65 72 73 65 } //1 Reverse
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}