
rule Trojan_Win32_CoinMiner_PP_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.PP!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {61 64 76 73 74 61 74 37 37 37 2e 63 6f 6d 3a 33 33 33 33 } //1 advstat777.com:3333
		$a_01_1 = {5c 57 69 6e 64 6f 77 73 54 61 73 6b 26 70 6f 77 65 72 73 68 65 6c 6c 20 2d 4e 6f 50 72 6f 66 69 6c 65 20 2d 43 6f 6d 6d 61 6e 64 20 28 4e 65 77 2d 4f 62 6a 65 63 74 20 53 79 73 74 65 6d 2e 4e 65 74 2e 57 65 62 43 6c 69 65 6e 74 29 2e 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 } //1 \WindowsTask&powershell -NoProfile -Command (New-Object System.Net.WebClient).DownloadFile(
		$a_01_2 = {73 63 68 74 61 73 6b 73 20 2f 63 72 65 61 74 65 20 2f 74 6e 20 } //1 schtasks /create /tn 
		$a_03_3 = {5c 57 69 6e 64 6f 77 73 54 61 73 6b 5c 75 70 64 [0-08] 20 2d 72 65 63 75 72 73 65 } //1
		$a_01_4 = {69 70 6c 6f 67 67 65 72 2e 63 6f 6d 00 00 00 00 68 74 74 70 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}