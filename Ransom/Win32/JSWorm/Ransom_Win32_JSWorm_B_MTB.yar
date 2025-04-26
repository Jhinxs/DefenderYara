
rule Ransom_Win32_JSWorm_B_MTB{
	meta:
		description = "Ransom:Win32/JSWorm.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4a 53 57 4f 52 4d 2d 44 45 43 52 59 50 54 2e 74 78 74 } //1 JSWORM-DECRYPT.txt
		$a_01_1 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 77 65 72 65 20 65 6e 63 72 79 70 74 65 64 21 } //1 All your files were encrypted!
		$a_01_2 = {44 45 43 52 59 50 54 2e 74 78 74 } //1 DECRYPT.txt
		$a_01_3 = {49 44 2d 52 41 4e 53 4f 4d 57 41 52 45 2c 20 49 54 27 53 20 4a 55 53 54 20 54 48 45 20 42 45 47 49 4e 49 4e 47 20 4f 46 20 53 4f 4d 45 54 48 49 4e 47 20 4e 45 57 2e 2e 2e } //1 ID-RANSOMWARE, IT'S JUST THE BEGINING OF SOMETHING NEW...
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}