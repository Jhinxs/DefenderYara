
rule Backdoor_Win32_Agent_FD{
	meta:
		description = "Backdoor:Win32/Agent.FD,SIGNATURE_TYPE_PEHSTR,34 00 34 00 08 00 00 "
		
	strings :
		$a_01_0 = {7b 44 31 37 41 34 30 44 37 2d 41 46 34 45 2d 30 33 34 41 2d 43 31 33 31 2d 34 43 31 32 43 38 36 31 33 33 45 32 7d } //10 {D17A40D7-AF4E-034A-C131-4C12C86133E2}
		$a_01_1 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 64 69 72 65 63 74 33 64 } //10 software\microsoft\direct3d
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //10 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {25 73 5c 64 72 69 76 65 72 73 } //10 %s\drivers
		$a_01_4 = {25 73 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //10 %s\svchost.exe
		$a_01_5 = {4f 75 74 70 6f 73 74 46 69 72 65 77 61 6c 6c } //1 OutpostFirewall
		$a_01_6 = {41 6e 74 69 2d 48 61 63 6b 65 72 } //1 Anti-Hacker
		$a_01_7 = {41 6e 74 69 76 69 72 75 73 20 53 65 72 76 69 63 65 } //1 Antivirus Service
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=52
 
}