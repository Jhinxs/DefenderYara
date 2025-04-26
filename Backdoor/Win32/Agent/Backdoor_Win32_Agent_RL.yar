
rule Backdoor_Win32_Agent_RL{
	meta:
		description = "Backdoor:Win32/Agent.RL,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run
		$a_00_1 = {73 79 73 74 65 6d 75 70 2e 65 78 65 } //1 systemup.exe
		$a_00_2 = {73 79 73 74 65 6d 31 36 2e 65 78 65 } //1 system16.exe
		$a_00_3 = {76 62 66 69 6c 65 2e 65 78 65 20 75 } //1 vbfile.exe u
		$a_00_4 = {69 6f 6a 69 6b 2e 72 75 2f 62 6f 74 7a 75 70 64 2e 68 74 6d 6c } //1 iojik.ru/botzupd.html
		$a_00_5 = {69 6f 6a 69 6b 2e 72 75 2f 69 6e 2e 70 68 70 3f 76 65 72 3d 33 2e 30 61 30 30 30 35 } //1 iojik.ru/in.php?ver=3.0a0005
		$a_00_6 = {69 6f 6a 69 6b 2e 72 75 2f 62 6f 74 7a 63 66 67 2e 70 68 70 3f 76 65 72 3d 33 2e 30 61 30 30 30 35 } //1 iojik.ru/botzcfg.php?ver=3.0a0005
		$a_00_7 = {53 65 74 48 6f 6f 6b 5f } //1 SetHook_
		$a_00_8 = {57 72 69 74 65 46 69 6c 65 } //1 WriteFile
		$a_00_9 = {52 65 67 53 65 74 56 61 6c 75 65 45 78 41 } //1 RegSetValueExA
		$a_80_10 = {4c 49 42 48 49 44 45 } //LIBHIDE  1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_80_10  & 1)*1) >=11
 
}