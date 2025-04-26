
rule Backdoor_Win32_Poison_CB_dha{
	meta:
		description = "Backdoor:Win32/Poison.CB!dha,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_00_0 = {25 50 72 6f 67 72 61 6d 57 36 34 33 32 25 } //1 %ProgramW6432%
		$a_03_1 = {6b 61 73 70 65 72 73 6b 79 [0-04] 61 6c 77 69 6c } //1
		$a_00_2 = {5c 5c 2e 5c 56 42 6f 78 4d 69 6e 69 52 64 72 44 4e } //1 \\.\VBoxMiniRdrDN
		$a_03_3 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e [0-04] 25 73 5c 25 73 2e 6c 6e 6b } //1
		$a_00_4 = {48 6f 73 74 6e 61 6d 65 20 77 61 73 20 66 6f 75 6e 64 20 69 6e 20 44 4e 53 20 63 61 63 68 65 } //1 Hostname was found in DNS cache
		$a_00_5 = {44 6f 77 6e 45 78 65 63 75 74 65 2e 70 64 62 } //1 DownExecute.pdb
		$a_00_6 = {50 40 24 73 77 30 72 44 24 6e 64 } //1 P@$sw0rD$nd
		$a_00_7 = {64 00 6f 00 77 00 6e 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 } //1 downexecute
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=7
 
}