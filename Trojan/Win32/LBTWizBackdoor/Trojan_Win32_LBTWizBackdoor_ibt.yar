
rule Trojan_Win32_LBTWizBackdoor_ibt{
	meta:
		description = "Trojan:Win32/LBTWizBackdoor!ibt,SIGNATURE_TYPE_PEHSTR,04 00 04 00 07 00 00 "
		
	strings :
		$a_01_0 = {47 6c 6f 62 61 6c 5c 4c 42 54 57 49 5a 5f 47 4c 4f 42 41 4c 5f 53 54 4f 50 } //1 Global\LBTWIZ_GLOBAL_STOP
		$a_01_1 = {53 6f 75 72 63 65 73 5c 4c 42 54 53 65 72 76 5c 4c 42 54 57 69 7a 5c 52 65 6c 65 61 73 65 5c 57 69 6e 33 32 5c 4c 42 54 57 69 7a 2e 70 64 62 } //1 Sources\LBTServ\LBTWiz\Release\Win32\LBTWiz.pdb
		$a_01_2 = {22 63 6d 64 2e 65 78 65 22 20 2f 63 20 73 63 68 74 61 73 6b 73 20 2f 64 65 6c 65 74 65 20 2f 74 6e 20 22 43 6f 66 61 78 22 20 2f 66 } //1 "cmd.exe" /c schtasks /delete /tn "Cofax" /f
		$a_01_3 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 63 68 74 61 73 6b 73 20 2f 63 72 65 61 74 65 20 2f 73 63 20 6d 69 6e 75 74 65 20 2f 6d 6f 20 31 30 20 2f 74 6e 20 22 25 73 22 20 2f 74 72 20 22 25 73 22 } //1 cmd.exe /c schtasks /create /sc minute /mo 10 /tn "%s" /tr "%s"
		$a_01_4 = {2f 72 75 20 22 73 79 73 74 65 6d 22 } //1 /ru "system"
		$a_01_5 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 63 68 74 61 73 6b 73 20 2f 64 65 6c 65 74 65 20 2f 74 6e 20 22 25 73 22 20 2f 66 } //1 cmd.exe /c schtasks /delete /tn "%s" /f
		$a_01_6 = {43 6f 66 61 78 } //1 Cofax
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=4
 
}