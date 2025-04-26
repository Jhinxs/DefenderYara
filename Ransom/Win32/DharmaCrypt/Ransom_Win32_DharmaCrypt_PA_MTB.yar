
rule Ransom_Win32_DharmaCrypt_PA_MTB{
	meta:
		description = "Ransom:Win32/DharmaCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 69 00 6e 00 66 00 6f 00 2e 00 68 00 74 00 61 00 } //1 \info.hta
		$a_01_1 = {5c 00 46 00 49 00 4c 00 45 00 53 00 20 00 45 00 4e 00 43 00 52 00 59 00 50 00 54 00 45 00 44 00 2e 00 74 00 78 00 74 00 } //1 \FILES ENCRYPTED.txt
		$a_01_2 = {5c 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 2e 00 68 00 61 00 72 00 6d 00 61 00 } //1 \Private.harma
		$a_01_3 = {76 73 73 61 64 6d 69 6e 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 41 6c 6c 20 2f 51 75 69 65 74 } //1 vssadmin Delete Shadows /All /Quiet
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}