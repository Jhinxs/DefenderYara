
rule Ransom_Win32_Cryptolocker_PAL_MTB{
	meta:
		description = "Ransom:Win32/Cryptolocker.PAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {66 61 73 74 49 6e 66 65 63 74 6f 72 } //1 fastInfector
		$a_81_1 = {5c 41 6e 74 69 76 69 72 75 73 2e 62 61 74 } //1 \Antivirus.bat
		$a_81_2 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 6d 73 70 75 62 2e 65 78 65 20 2f 46 } //1 taskkill /IM mspub.exe /F
		$a_81_3 = {6e 65 74 20 73 74 6f 70 20 42 4d 52 20 42 6f 6f 74 20 53 65 72 76 69 63 65 20 2f 79 } //1 net stop BMR Boot Service /y
		$a_81_4 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 4e 6f } //1 bcdedit /set {default} recoveryenabled No
		$a_81_5 = {76 73 73 61 64 6d 69 6e 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 vssadmin Delete Shadows /all /quiet
	condition:
		((#a_01_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=5
 
}