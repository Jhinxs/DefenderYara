
rule Trojan_Win32_Clipbanker_MA_MTB{
	meta:
		description = "Trojan:Win32/Clipbanker.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_03_0 = {8b 4c 24 38 8b 44 24 3c 0f ac c1 14 81 f9 00 08 00 00 0f 82 ?? ?? ?? ?? 0f 28 05 ?? ?? ?? ?? 33 c0 0f 11 04 24 c7 44 24 10 ?? ?? ?? ?? 8a 0c 24 30 4c 04 01 40 83 f8 12 72 } //5
		$a_01_1 = {6a 00 8d 4c 24 18 51 6a 18 8d 4c 24 24 51 6a 00 6a 00 68 00 00 07 00 50 ff 15 } //2
		$a_01_2 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 36 34 } //1 GetTickCount64
		$a_01_3 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
		$a_01_4 = {43 4c 49 70 55 } //1 CLIpU
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=10
 
}
rule Trojan_Win32_Clipbanker_MA_MTB_2{
	meta:
		description = "Trojan:Win32/Clipbanker.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {62 69 74 63 6f 69 6e 63 61 73 68 7c 62 63 68 72 65 67 7c 62 63 68 74 65 73 74 29 3a 29 3f 28 71 7c 70 29 5b 61 2d 7a 30 2d 39 5d 7b 34 31 7d } //1 bitcoincash|bchreg|bchtest):)?(q|p)[a-z0-9]{41}
		$a_81_1 = {6c 74 63 31 7c 5b 4c 4d 5d 29 5b 61 2d 7a 41 2d 48 4a 2d 4e 50 2d 5a 30 2d 39 5d 7b 32 36 2c 34 30 7d } //1 ltc1|[LM])[a-zA-HJ-NP-Z0-9]{26,40}
		$a_81_2 = {34 4a 55 64 47 7a 76 72 4d 46 44 57 72 55 55 77 59 33 74 6f 4a 41 54 53 65 4e 77 6a 6e 35 34 4c 6b 43 6e 4b 42 50 52 7a 44 75 68 7a 69 35 76 53 65 70 48 66 55 63 6b 4a 4e 78 52 4c 32 67 6a 6b 4e 72 53 71 74 43 6f 52 55 72 45 44 41 67 52 77 73 51 76 56 43 6a 5a 62 52 79 46 54 4c 52 4e 79 44 6d 54 31 61 31 62 6f 5a 56 } //1 4JUdGzvrMFDWrUUwY3toJATSeNwjn54LkCnKBPRzDuhzi5vSepHfUckJNxRL2gjkNrSqtCoRUrEDAgRwsQvVCjZbRyFTLRNyDmT1a1boZV
		$a_81_3 = {56 42 53 63 72 69 70 74 2e 52 65 67 45 78 70 } //1 VBScript.RegExp
		$a_81_4 = {52 75 6e 74 69 6d 65 20 45 78 70 6c 6f 72 65 72 } //1 Runtime Explorer
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}