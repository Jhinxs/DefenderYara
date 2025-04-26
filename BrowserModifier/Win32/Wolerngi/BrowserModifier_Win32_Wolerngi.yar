
rule BrowserModifier_Win32_Wolerngi{
	meta:
		description = "BrowserModifier:Win32/Wolerngi,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {47 53 5f 43 68 65 63 6b 55 70 64 61 74 65 } //1 GS_CheckUpdate
		$a_01_1 = {47 53 5f 52 75 6c 65 4c 69 73 74 } //1 GS_RuleList
		$a_01_2 = {5b 4e 5d 20 50 72 6f 64 75 63 74 4b 65 79 20 3a } //1 [N] ProductKey :
		$a_01_3 = {67 65 6e 63 6f 6c 61 62 73 6c 6c 63 2e 63 6f 6d 2f 73 65 72 76 69 63 65 73 2f 75 70 64 61 74 65 2e 70 68 70 3f 61 66 66 69 64 3d } //1 gencolabsllc.com/services/update.php?affid=
		$a_01_4 = {63 6d 64 2e 65 78 65 20 2f 63 20 6e 65 74 20 73 74 61 72 74 20 47 53 61 66 65 } //1 cmd.exe /c net start GSafe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule BrowserModifier_Win32_Wolerngi_2{
	meta:
		description = "BrowserModifier:Win32/Wolerngi,SIGNATURE_TYPE_PEHSTR_EXT,3e 00 3e 00 09 00 00 "
		
	strings :
		$a_01_0 = {50 5f 52 75 6c 65 4c 69 73 74 } //20 P_RuleList
		$a_01_1 = {50 5f 43 68 65 63 6b 55 70 64 61 74 65 } //20 P_CheckUpdate
		$a_01_2 = {5b 4e 5d 20 50 72 6f 64 75 63 74 4b 65 79 20 3a } //20 [N] ProductKey :
		$a_01_3 = {72 65 6c 61 74 65 64 2e 64 65 61 6c 73 2f 73 65 72 76 69 63 65 73 2f 72 75 6c 65 73 } //1 related.deals/services/rules
		$a_01_4 = {72 65 6c 61 74 65 64 2e 64 65 61 6c 73 2f 73 65 72 76 69 63 65 73 2f 75 70 64 61 74 65 } //1 related.deals/services/update
		$a_01_5 = {73 6f 66 74 77 61 72 65 6c 6c 63 2e 63 6f 6d 2f 73 65 72 76 69 63 65 73 2f 72 75 6c 65 73 2e 74 78 74 3f } //1 softwarellc.com/services/rules.txt?
		$a_01_6 = {73 6f 66 74 77 61 72 65 6c 6c 63 2e 63 6f 6d 2f 73 65 72 76 69 63 65 73 2f 75 70 64 61 74 65 2e 70 68 70 3f } //1 softwarellc.com/services/update.php?
		$a_01_7 = {64 65 73 70 72 6f 74 65 74 6f 72 64 65 6c 69 6e 6b 73 2e 6d 65 2f 73 65 72 76 69 63 65 73 2f 72 75 6c 65 73 2e 74 78 74 3f } //1 desprotetordelinks.me/services/rules.txt?
		$a_01_8 = {64 65 73 70 72 6f 74 65 74 6f 72 64 65 6c 69 6e 6b 73 2e 6d 65 2f 73 65 72 76 69 63 65 73 2f 75 70 64 61 74 65 2e 70 68 70 3f } //1 desprotetordelinks.me/services/update.php?
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*20+(#a_01_2  & 1)*20+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=62
 
}