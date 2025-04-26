
rule Ransom_Win32_Nubelonguerypt_A{
	meta:
		description = "Ransom:Win32/Nubelonguerypt.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 79 6c 2e 69 6e 69 } //1 C:\yl.ini
		$a_00_1 = {2e 79 6c 00 2a 2e 2a } //1
		$a_02_2 = {69 63 6f 2e 69 63 6f [0-04] 31 2e 6a 70 67 } //1
		$a_00_3 = {2a 2e 65 7c 2a 2e 64 6f 63 7c 2a 2e 6a 70 67 7c 2a 2e 70 6e 67 7c 2a 2e 74 78 74 7c 2a 2e 70 64 66 7c 2a 2e 77 70 73 } //1 *.e|*.doc|*.jpg|*.png|*.txt|*.pdf|*.wps
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}