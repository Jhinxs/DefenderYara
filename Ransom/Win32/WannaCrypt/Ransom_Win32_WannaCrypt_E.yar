
rule Ransom_Win32_WannaCrypt_E{
	meta:
		description = "Ransom:Win32/WannaCrypt.E,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {74 19 8d 4c 24 10 51 ff d5 83 f8 04 74 0d 56 e8 ?? ?? ?? ?? 83 c4 04 6a 0a ff d7 4e 83 fe 02 7d bc } //1
		$a_00_1 = {2e 00 57 00 4e 00 43 00 52 00 59 00 54 00 } //1 .WNCRYT
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}