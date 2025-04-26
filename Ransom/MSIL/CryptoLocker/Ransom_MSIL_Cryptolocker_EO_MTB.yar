
rule Ransom_MSIL_Cryptolocker_EO_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.EO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4a 00 4a 00 0c 00 00 "
		
	strings :
		$a_81_0 = {72 6b 2d 32 2e 65 78 65 } //50 rk-2.exe
		$a_81_1 = {57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 36 } //50 WindowsFormsApp6
		$a_81_2 = {59 6f 75 20 70 65 72 73 6f 6e 61 6c 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //50 You personal files are encrypted
		$a_81_3 = {2f 43 20 69 63 61 63 6c 73 20 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 44 6f 63 75 6d 65 6e 74 73 5c 2a 20 2f 67 72 61 6e 74 20 45 76 65 72 79 6f 6e 65 3a 46 20 2f 54 20 2f 43 20 2f 51 } //20 /C icacls %USERPROFILE%\Documents\* /grant Everyone:F /T /C /Q
		$a_81_4 = {54 65 73 74 5c 52 45 41 44 5f 49 54 2e 74 78 74 } //20 Test\READ_IT.txt
		$a_81_5 = {40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 6f 6d } //20 @protonmail.com
		$a_81_6 = {77 65 61 72 65 6e 6f 74 63 6f 62 61 6c 74 74 68 61 6e 6b 73 } //3 wearenotcobaltthanks
		$a_81_7 = {2e 65 6e 63 72 79 70 74 65 64 } //3 .encrypted
		$a_81_8 = {57 6e 43 72 79 4d 6f 64 65 } //3 WnCryMode
		$a_81_9 = {62 79 74 65 73 54 6f 42 65 45 6e 63 72 79 70 74 65 64 } //1 bytesToBeEncrypted
		$a_81_10 = {65 6e 63 72 79 70 74 44 69 72 65 63 74 6f 72 79 } //1 encryptDirectory
		$a_81_11 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
	condition:
		((#a_81_0  & 1)*50+(#a_81_1  & 1)*50+(#a_81_2  & 1)*50+(#a_81_3  & 1)*20+(#a_81_4  & 1)*20+(#a_81_5  & 1)*20+(#a_81_6  & 1)*3+(#a_81_7  & 1)*3+(#a_81_8  & 1)*3+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1) >=74
 
}