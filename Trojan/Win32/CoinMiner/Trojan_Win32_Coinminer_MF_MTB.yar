
rule Trojan_Win32_Coinminer_MF_MTB{
	meta:
		description = "Trojan:Win32/Coinminer.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {50 72 6f 63 65 73 73 48 61 63 6b 65 72 2e 65 78 65 } //1 ProcessHacker.exe
		$a_81_1 = {70 61 79 64 61 79 2e 65 78 65 } //1 payday.exe
		$a_81_2 = {33 48 41 51 53 42 34 58 33 38 35 48 54 79 59 65 41 50 65 33 42 5a 4b 39 79 4a 73 64 64 6d 44 78 36 41 } //1 3HAQSB4X385HTyYeAPe3BZK9yJsddmDx6A
		$a_81_3 = {41 55 68 59 38 37 31 5a 4d 31 31 76 36 56 42 45 54 67 43 79 36 32 68 67 5a 4c 64 46 58 6e 55 56 33 75 } //1 AUhY871ZM11v6VBETgCy62hgZLdFXnUV3u
		$a_81_4 = {33 50 50 6b 59 67 55 70 34 53 68 34 4b 33 59 37 44 65 59 74 32 65 62 68 79 74 47 62 73 54 4d 4d 78 53 45 } //1 3PPkYgUp4Sh4K3Y7DeYt2ebhytGbsTMMxSE
		$a_81_5 = {72 55 61 59 78 57 36 46 7a 73 66 33 72 79 4a 73 57 66 5a 64 31 44 63 4e 42 78 52 76 44 68 38 66 41 64 } //1 rUaYxW6Fzsf3ryJsWfZd1DcNBxRvDh8fAd
		$a_81_6 = {62 69 74 63 6f 69 6e 63 61 73 68 3a 71 72 64 65 68 39 66 7a 64 74 34 75 75 35 35 72 70 34 66 73 32 79 38 39 70 33 37 66 67 30 6a 72 39 35 7a 30 33 65 34 6d 30 77 } //1 bitcoincash:qrdeh9fzdt4uu55rp4fs2y89p37fg0jr95z03e4m0w
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}