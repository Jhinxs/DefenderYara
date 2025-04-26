
rule Ransom_Win32_LockBit_PA_MTB{
	meta:
		description = "Ransom:Win32/LockBit.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_81_0 = {4c 6f 63 6b 42 69 74 20 52 61 6e 73 6f 6d } //1 LockBit Ransom
		$a_01_1 = {5c 00 4c 00 6f 00 63 00 6b 00 42 00 69 00 74 00 2d 00 6e 00 6f 00 74 00 65 00 2e 00 68 00 74 00 61 00 } //1 \LockBit-note.hta
		$a_81_2 = {53 4f 46 54 57 41 52 45 5c 4c 6f 63 6b 42 69 74 } //1 SOFTWARE\LockBit
		$a_81_3 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 20 62 79 20 4c 6f 63 6b 42 69 74 } //1 All your files are encrypted by LockBit
		$a_81_4 = {52 65 73 74 6f 72 65 2d 4d 79 2d 46 69 6c 65 73 2e 74 78 74 } //1 Restore-My-Files.txt
		$a_81_5 = {2f 63 20 76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 /c vssadmin delete shadows /all /quiet
	condition:
		((#a_81_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=3
 
}
rule Ransom_Win32_LockBit_PA_MTB_2{
	meta:
		description = "Ransom:Win32/LockBit.PA!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 41 00 6c 00 6c 00 20 00 2f 00 51 00 75 00 69 00 65 00 74 00 } //1 vssadmin.exe Delete Shadows /All /Quiet
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4c 00 6f 00 63 00 6b 00 42 00 69 00 74 00 } //1 SOFTWARE\LockBit
		$a_01_2 = {41 6c 6c 20 79 6f 75 72 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 21 } //1 All your important files are encrypted!
		$a_01_3 = {52 65 73 74 6f 72 65 2d 4d 79 2d 46 69 6c 65 73 } //1 Restore-My-Files
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Ransom_Win32_LockBit_PA_MTB_3{
	meta:
		description = "Ransom:Win32/LockBit.PA!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 0d 00 00 "
		
	strings :
		$a_01_0 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //1 vssadmin delete shadows /all /quiet
		$a_01_1 = {62 00 63 00 64 00 65 00 64 00 69 00 74 00 20 00 2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 20 00 6e 00 6f 00 } //1 bcdedit /set {default} recoveryenabled no
		$a_01_2 = {62 00 63 00 64 00 65 00 64 00 69 00 74 00 20 00 2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 62 00 6f 00 6f 00 74 00 73 00 74 00 61 00 74 00 75 00 73 00 70 00 6f 00 6c 00 69 00 63 00 79 00 20 00 69 00 67 00 6e 00 6f 00 72 00 65 00 61 00 6c 00 6c 00 66 00 61 00 69 00 6c 00 75 00 72 00 65 00 73 00 } //1 bcdedit /set {default} bootstatuspolicy ignoreallfailures
		$a_01_3 = {52 65 73 74 6f 72 65 2d 4d 79 2d 46 69 6c 65 73 } //1 Restore-My-Files
		$a_01_4 = {41 6c 6c 20 79 6f 75 72 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //1 All your important files are encrypted
		$a_01_5 = {57 65 20 61 63 63 65 70 74 20 42 69 74 63 6f 69 6e } //1 We accept Bitcoin
		$a_01_6 = {44 6f 20 6e 6f 74 20 74 72 79 20 74 6f 20 64 65 63 72 79 70 74 20 75 73 69 6e 67 20 74 68 69 72 64 20 70 61 72 74 79 20 73 6f 66 74 77 61 72 65 2c 20 69 74 20 6d 61 79 20 63 61 75 73 65 20 70 65 72 6d 61 6e 65 6e 74 20 64 61 74 61 20 6c 6f 73 73 } //1 Do not try to decrypt using third party software, it may cause permanent data loss
		$a_01_7 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //1 All your files are encrypted
		$a_01_8 = {4f 76 65 72 20 74 69 6d 65 2c 20 74 68 65 20 63 6f 73 74 20 69 6e 63 72 65 61 73 65 73 2c 20 64 6f 20 6e 6f 74 20 77 61 73 74 65 20 79 6f 75 72 20 74 69 6d 65 } //1 Over time, the cost increases, do not waste your time
		$a_01_9 = {61 6e 74 69 64 6f 74 65 20 69 73 20 6f 6e 6c 79 20 61 6d 6f 6e 67 20 74 68 65 20 63 72 65 61 74 6f 72 73 20 6f 66 20 74 68 65 20 76 69 72 75 73 } //1 antidote is only among the creators of the virus
		$a_01_10 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 vssadmin delete shadows /all /quiet
		$a_01_11 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 6e 6f } //1 bcdedit /set {default} recoveryenabled no
		$a_01_12 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 62 6f 6f 74 73 74 61 74 75 73 70 6f 6c 69 63 79 20 69 67 6e 6f 72 65 61 6c 6c 66 61 69 6c 75 72 65 73 } //1 bcdedit /set {default} bootstatuspolicy ignoreallfailures
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=4
 
}