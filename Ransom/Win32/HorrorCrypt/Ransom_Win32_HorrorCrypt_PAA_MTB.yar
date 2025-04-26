
rule Ransom_Win32_HorrorCrypt_PAA_MTB{
	meta:
		description = "Ransom:Win32/HorrorCrypt.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4d 42 52 4b 69 6c 6c } //1 MBRKill
		$a_03_1 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 [0-0b] 2e 65 78 65 } //1
		$a_03_2 = {48 6f 72 72 6f 72 54 72 6f 6a 61 6e 20 [0-04] 20 68 61 73 20 69 6e 66 65 63 74 65 64 20 79 6f 75 72 20 70 63 } //1
		$a_03_3 = {77 6d 69 63 20 70 72 6f 63 65 73 73 20 77 68 65 72 65 20 6e 61 6d 65 3d 27 [0-0b] 2e 65 78 65 27 20 64 65 6c 65 74 65 20 2f 6e 6f 69 6e 74 65 72 61 63 74 69 76 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}