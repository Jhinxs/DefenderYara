
rule Ransom_Win32_BastaCrypt_PB_MTB{
	meta:
		description = "Ransom:Win32/BastaCrypt.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 72 00 65 00 61 00 64 00 6d 00 65 00 2e 00 74 00 78 00 74 00 } //1 \readme.txt
		$a_01_1 = {64 00 6c 00 61 00 6b 00 73 00 6a 00 64 00 6f 00 69 00 77 00 71 00 2e 00 6a 00 70 00 67 00 } //1 dlaksjdoiwq.jpg
		$a_01_2 = {44 6f 6e 65 20 74 69 6d 65 3a 20 25 2e 34 66 20 73 65 63 6f 6e 64 73 2c 20 65 6e 63 72 79 70 74 65 64 3a 20 25 2e 34 66 20 67 62 } //1 Done time: %.4f seconds, encrypted: %.4f gb
		$a_01_3 = {41 6c 6c 20 6f 66 20 79 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 63 75 72 72 65 6e 74 6c 79 20 65 6e 63 72 79 70 74 65 64 } //1 All of your files are currently encrypted
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}