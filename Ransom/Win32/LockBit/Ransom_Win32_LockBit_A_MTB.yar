
rule Ransom_Win32_LockBit_A_MTB{
	meta:
		description = "Ransom:Win32/LockBit.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4c 00 6f 00 63 00 6b 00 42 00 69 00 74 00 } //1 SOFTWARE\LockBit
		$a_01_1 = {41 6c 6c 20 79 6f 75 72 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 21 } //1 All your important files are encrypted!
		$a_00_2 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 41 00 6c 00 6c 00 20 00 2f 00 51 00 75 00 69 00 65 00 74 00 } //1 vssadmin.exe Delete Shadows /All /Quiet
		$a_01_3 = {57 65 20 77 69 6c 6c 20 64 65 63 72 79 70 74 20 31 20 66 69 6c 65 20 66 6f 72 20 74 65 73 74 } //1 We will decrypt 1 file for test
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}