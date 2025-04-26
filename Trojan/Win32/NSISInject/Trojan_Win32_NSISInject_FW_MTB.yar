
rule Trojan_Win32_NSISInject_FW_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {70 00 72 00 6f 00 69 00 6e 00 76 00 65 00 73 00 74 00 6d 00 65 00 6e 00 74 00 20 00 41 00 72 00 62 00 65 00 6a 00 64 00 73 00 73 00 67 00 6e 00 69 00 6e 00 67 00 65 00 72 00 73 00 20 00 73 00 76 00 69 00 6e 00 65 00 73 00 6b 00 69 00 6e 00 64 00 73 00 } //1 proinvestment Arbejdssgningers svineskinds
		$a_01_1 = {6e 00 65 00 74 00 74 00 6f 00 73 00 61 00 6c 00 67 00 73 00 70 00 72 00 69 00 73 00 65 00 6e 00 73 00 20 00 53 00 74 00 69 00 6c 00 68 00 65 00 64 00 65 00 72 00 6e 00 65 00 20 00 44 00 65 00 6c 00 70 00 72 00 6f 00 62 00 6c 00 65 00 6d 00 65 00 72 00 6e 00 65 00 } //1 nettosalgsprisens Stilhederne Delproblemerne
		$a_01_2 = {53 00 74 00 6f 00 66 00 73 00 6b 00 69 00 66 00 74 00 65 00 73 00 79 00 67 00 64 00 6f 00 6d 00 73 00 } //1 Stofskiftesygdoms
		$a_01_3 = {4c 00 69 00 6c 00 6c 00 65 00 73 00 6b 00 6f 00 6c 00 65 00 6e 00 } //1 Lilleskolen
		$a_01_4 = {53 00 65 00 64 00 69 00 6c 00 65 00 } //1 Sedile
		$a_01_5 = {75 6e 6b 6e 6f 77 6e 64 6c 6c 2e 70 64 62 } //1 unknowndll.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}