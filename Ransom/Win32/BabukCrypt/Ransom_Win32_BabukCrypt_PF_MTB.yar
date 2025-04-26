
rule Ransom_Win32_BabukCrypt_PF_MTB{
	meta:
		description = "Ransom:Win32/BabukCrypt.PF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 20 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //1 /c vssadmin.exe delete shadows /all /quiet
		$a_01_1 = {50 6c 65 61 73 65 20 70 61 79 } //1 Please pay
		$a_01_2 = {58 4d 52 20 4d 6f 6e 65 72 6f } //1 XMR Monero
		$a_01_3 = {4d 26 54 54 45 52 20 52 41 4e 53 4f 4d 57 41 52 45 } //1 M&TTER RANSOMWARE
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 57 4c 6b 74 } //1 Software\WLkt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}