
rule Trojan_Win64_Barys_RE_MTB{
	meta:
		description = "Trojan:Win64/Barys.RE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {37 4a 65 4a 73 5a 4a 34 55 63 4e 35 4a 68 6e 62 65 6e 42 33 37 73 48 61 35 47 33 76 63 4d 4e 59 } //1 7JeJsZJ4UcN5JhnbenB37sHa5G3vcMNY
		$a_01_1 = {37 79 55 43 73 57 5a 61 32 68 54 44 66 50 37 37 45 } //1 7yUCsWZa2hTDfP77E
		$a_01_2 = {37 36 35 57 6a 43 32 35 4d 34 6b 62 63 32 34 64 78 64 43 59 4a 68 78 78 69 70 30 38 37 38 64 4b } //1 765WjC25M4kbc24dxdCYJhxxip0878dK
		$a_01_3 = {64 5c 44 65 73 6b 74 6f 70 5c 68 69 67 68 62 69 74 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 64 69 72 65 63 74 5f 62 69 74 2e 70 64 62 } //1 d\Desktop\highbit\x64\Release\direct_bit.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}