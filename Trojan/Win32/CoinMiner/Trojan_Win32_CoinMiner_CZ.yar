
rule Trojan_Win32_CoinMiner_CZ{
	meta:
		description = "Trojan:Win32/CoinMiner.CZ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {35 2e 8a 19 13 c7 44 24 48 98 fa 2e 08 } //1
		$a_01_1 = {3a 2f 2f 00 73 74 72 61 74 75 6d 2b 74 63 70 3a 2f 2f 00 00 2e 6e 69 63 65 68 61 73 68 2e 63 6f 6d 00 00 00 2e 6d 69 6e 65 72 67 61 74 65 2e 63 6f 6d } //1
		$a_01_2 = {58 4d 52 69 67 00 00 00 25 73 2f 25 73 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 25 6c 75 2e 25 6c 75 00 00 00 29 } //1
		$a_01_3 = {6d 65 74 68 6f 64 22 3a 22 73 75 62 6d 69 74 22 2c 22 70 61 72 61 6d 73 22 3a 7b 22 69 64 22 3a 22 25 73 22 2c 22 6a 6f 62 5f 69 64 } //1 method":"submit","params":{"id":"%s","job_id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}