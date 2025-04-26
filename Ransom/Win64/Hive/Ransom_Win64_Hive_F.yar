
rule Ransom_Win64_Hive_F{
	meta:
		description = "Ransom:Win64/Hive.F,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {77 69 6e 64 6f 77 73 5f 65 6e 63 72 79 70 74 2e 64 6c 6c } //1 windows_encrypt.dll
		$a_00_1 = {00 63 6c 6f 73 65 00 } //1
		$a_00_2 = {00 6f 70 65 6e 00 } //1 漀数n
		$a_00_3 = {64 6c 6c 69 6e 73 74 61 6c 6c } //1 dllinstall
		$a_01_4 = {65 78 70 61 6e 64 20 33 32 2d 62 79 74 65 20 6b 65 78 70 61 6e 64 20 33 32 2d 62 79 74 65 20 6b } //1 expand 32-byte kexpand 32-byte k
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}