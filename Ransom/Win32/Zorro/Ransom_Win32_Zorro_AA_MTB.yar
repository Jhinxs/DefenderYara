
rule Ransom_Win32_Zorro_AA_MTB{
	meta:
		description = "Ransom:Win32/Zorro.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 41 00 6c 00 6c 00 20 00 2f 00 51 00 75 00 69 00 65 00 74 00 } //1 vssadmin.exe Delete Shadows /All /Quiet
		$a_00_1 = {2e 00 7a 00 6f 00 72 00 72 00 6f 00 } //1 .zorro
		$a_00_2 = {5a 00 6f 00 72 00 72 00 6f 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 Zorro.Resources
		$a_01_3 = {5c 52 61 6e 73 6f 6d 77 61 72 65 5c 7a 6f 72 72 6f 5c 5a 6f 72 72 6f 5c 5a 6f 72 72 6f 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 5a 6f 72 72 6f 2e 70 64 62 } //1 \Ransomware\zorro\Zorro\Zorro\obj\Release\Zorro.pdb
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}