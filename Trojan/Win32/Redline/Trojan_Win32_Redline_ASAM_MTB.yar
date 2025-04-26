
rule Trojan_Win32_Redline_ASAM_MTB{
	meta:
		description = "Trojan:Win32/Redline.ASAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {75 70 79 6e 66 77 66 73 62 66 62 6c 6e 79 72 78 7a 62 6b 75 62 65 74 6d 78 76 66 6f 6a 74 67 78 63 75 62 74 71 65 61 68 61 75 6a 74 } //1 upynfwfsbfblnyrxzbkubetmxvfojtgxcubtqeahaujt
		$a_01_1 = {64 70 65 74 6b 69 72 71 6a 79 77 62 6b 7a 75 65 6c 6a 71 68 6c 6f 67 72 61 71 68 64 63 63 75 76 72 75 6e 78 6f 6c 77 6b 75 71 6b 64 71 73 67 76 7a 65 63 68 65 73 67 62 70 67 6c 6b 78 6a 71 74 68 67 } //1 dpetkirqjywbkzueljqhlograqhdccuvrunxolwkuqkdqsgvzechesgbpglkxjqthg
		$a_01_2 = {79 70 6d 73 66 79 64 69 76 66 72 69 77 7a 78 77 76 72 61 69 73 6f 75 6c 78 78 6e 63 77 64 6f 78 62 64 73 76 73 6c 68 66 76 6c 66 68 } //1 ypmsfydivfriwzxwvraisoulxxncwdoxbdsvslhfvlfh
		$a_01_3 = {63 75 76 6d 7a 7a 6e 74 78 74 6a 66 71 61 6d 64 6e 69 66 65 6f 64 70 6b 74 70 74 6d 6b 63 68 63 71 76 69 71 71 63 74 71 61 65 66 6b 79 66 71 69 67 68 79 6a 76 6e 68 71 68 61 77 79 67 79 6e 74 69 79 74 61 } //1 cuvmzzntxtjfqamdnifeodpktptmkchcqviqqctqaefkyfqighyjvnhqhawygyntiyta
		$a_01_4 = {64 6f 63 75 73 62 70 64 7a 71 78 71 76 61 61 65 65 66 66 69 76 67 73 65 61 63 61 79 65 6a 6e 71 66 64 6c 75 71 75 68 62 } //1 docusbpdzqxqvaaeeffivgseacayejnqfdluquhb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}