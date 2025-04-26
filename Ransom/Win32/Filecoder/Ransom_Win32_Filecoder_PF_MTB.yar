
rule Ransom_Win32_Filecoder_PF_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.PF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_00_0 = {8b 55 fc c6 04 02 00 c6 00 00 8a 14 06 2a d1 fe ca 88 14 07 41 40 3b 4d f8 76 } //4
		$a_02_1 = {8b 08 8b f1 c1 ee ?? 33 f1 69 f6 ?? ?? ?? ?? 03 f2 89 70 04 83 c0 04 42 3d ?? ?? ?? ?? 7c } //1
	condition:
		((#a_00_0  & 1)*4+(#a_02_1  & 1)*1) >=5
 
}
rule Ransom_Win32_Filecoder_PF_MTB_2{
	meta:
		description = "Ransom:Win32/Filecoder.PF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {52 45 41 44 4d 45 5f 65 6e 63 72 79 70 74 65 64 2e 74 78 74 } //1 README_encrypted.txt
		$a_01_1 = {5f 65 6e 63 72 79 70 74 65 64 } //1 _encrypted
		$a_01_2 = {41 54 54 45 4e 54 49 4f 4e 21 21 21 20 41 4c 4c 20 59 4f 55 52 20 46 49 4c 45 53 20 48 41 56 45 20 42 45 45 4e 20 45 4e 43 52 59 50 54 45 44 } //1 ATTENTION!!! ALL YOUR FILES HAVE BEEN ENCRYPTED
		$a_01_3 = {59 4f 55 20 48 41 56 45 20 54 4f 20 50 41 59 20 24 31 30 30 30 20 44 4f 4c 4c 41 52 53 20 54 4f 20 55 4e 4c 4f 43 4b 20 59 4f 55 52 20 46 49 4c 45 53 } //1 YOU HAVE TO PAY $1000 DOLLARS TO UNLOCK YOUR FILES
		$a_01_4 = {52 41 4e 53 4f 4d 57 41 52 45 5f 4b 44 46 5f 49 4e 46 4f } //1 RANSOMWARE_KDF_INFO
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}