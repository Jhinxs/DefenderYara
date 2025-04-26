
rule Ransom_Win32_Filecoder_DEC_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.DEC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_81_0 = {63 72 79 70 74 6d 61 6e 61 67 65 72 40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 6f 6d } //1 cryptmanager@protonmail.com
		$a_81_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_81_2 = {79 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //1 your files have been encrypted
		$a_81_3 = {42 69 74 63 6f 69 6e 73 } //1 Bitcoins
		$a_81_4 = {63 6d 64 2e 65 78 65 20 2f 63 20 76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 cmd.exe /c vssadmin delete shadows /all /quiet
		$a_81_5 = {52 65 61 64 4d 65 5f 44 65 63 72 79 70 74 6f 72 2e 74 78 74 } //1 ReadMe_Decryptor.txt
		$a_81_6 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 73 71 6c 73 65 72 76 65 72 2e 65 78 65 } //1 taskkill /f /im sqlserver.exe
		$a_81_7 = {63 6d 64 2e 65 78 65 20 2f 63 20 77 6d 69 63 20 73 68 61 64 6f 77 63 6f 70 79 20 64 65 6c 65 74 65 } //1 cmd.exe /c wmic shadowcopy delete
		$a_81_8 = {43 72 79 70 74 47 65 6e 52 61 6e 64 6f 6d } //1 CryptGenRandom
		$a_81_9 = {73 63 20 73 74 6f 70 20 57 69 6e 44 65 66 65 6e 64 } //1 sc stop WinDefend
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=10
 
}