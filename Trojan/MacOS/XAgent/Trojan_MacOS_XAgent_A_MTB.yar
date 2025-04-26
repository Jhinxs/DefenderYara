
rule Trojan_MacOS_XAgent_A_MTB{
	meta:
		description = "Trojan:MacOS/XAgent.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_00_0 = {53 63 72 65 65 6e 53 68 6f 74 20 74 61 6b 65 53 63 72 65 65 6e 53 68 6f 74 } //1 ScreenShot takeScreenShot
		$a_00_1 = {49 6e 6a 65 63 74 41 70 70 20 69 6e 6a 65 63 74 52 75 6e 6e 69 6e 67 41 70 70 } //1 InjectApp injectRunningApp
		$a_00_2 = {42 6f 6f 74 58 4c 6f 61 64 65 72 20 69 6e 6a 65 63 74 41 70 70 6c 69 63 61 74 69 6f 6e } //1 BootXLoader injectApplication
		$a_00_3 = {50 61 73 73 77 6f 72 64 20 67 65 74 46 69 72 65 66 6f 78 50 61 73 73 77 6f 72 64 } //1 Password getFirefoxPassword
		$a_00_4 = {61 70 70 6c 65 2d 73 65 61 72 63 68 2e 69 6e 66 6f } //1 apple-search.info
		$a_00_5 = {56 0e 9f f0 eb 98 43 } //1
		$a_00_6 = {58 41 67 65 6e 74 4f 53 58 2f 58 41 67 65 6e 74 4f 53 58 2f 53 6f 75 72 63 65 2f 42 6f 6f 74 } //1 XAgentOSX/XAgentOSX/Source/Boot
		$a_00_7 = {4b 65 79 6c 6f 67 67 65 72 20 70 72 65 73 73 65 64 4b 65 79 57 69 74 68 4b 65 79 43 6f 64 65 3a 61 6e 64 4d 6f 64 69 66 69 65 72 73 3a } //1 Keylogger pressedKeyWithKeyCode:andModifiers:
		$a_00_8 = {52 65 6d 6f 74 65 53 68 65 6c 6c 20 65 78 65 63 75 74 65 53 68 65 6c 6c 43 6f 6d 6d 61 6e 64 3a } //1 RemoteShell executeShellCommand:
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=9
 
}