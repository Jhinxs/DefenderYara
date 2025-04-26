
rule Ransom_Win32_RnToad_HL_MTB{
	meta:
		description = "Ransom:Win32/RnToad.HL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {59 6f 75 72 20 66 69 6c 65 73 20 63 61 6e 20 6f 6e 6c 79 20 62 65 20 72 65 74 72 69 76 65 64 20 62 79 20 65 6e 74 65 72 69 6e 67 20 74 68 65 20 63 6f 72 72 65 63 74 20 70 61 73 73 77 6f 72 64 2e } //1 Your files can only be retrived by entering the correct password.
		$a_81_1 = {57 72 6f 6e 67 20 50 61 73 73 77 6f 72 64 2e 2e 62 75 79 20 69 74 2e 2e } //1 Wrong Password..buy it..
		$a_81_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c 52 61 6e 73 6f 6d 74 6f 61 64 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Ransomtoad
		$a_81_3 = {66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //1 files have been encrypted
		$a_81_4 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 62 65 6c 6f 6e 67 20 74 6f 20 75 73 21 } //1 All your files belong to us!
		$a_81_5 = {52 61 6e 73 6f 6d 65 54 6f 61 64 2e 74 78 74 } //1 RansomeToad.txt
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}