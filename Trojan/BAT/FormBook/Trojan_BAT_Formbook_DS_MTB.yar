
rule Trojan_BAT_Formbook_DS_MTB{
	meta:
		description = "Trojan:BAT/Formbook.DS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {41 53 4d 5f 50 53 2e 66 72 6d 4b 68 61 63 68 48 61 6e 67 2e 72 65 73 6f 75 72 63 65 73 } //1 ASM_PS.frmKhachHang.resources
		$a_81_1 = {41 53 4d 5f 50 53 2e 52 65 73 6f 75 72 63 65 73 } //1 ASM_PS.Resources
		$a_81_2 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_3 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_4 = {44 69 73 61 62 6c 65 43 68 65 63 6b } //1 DisableCheck
		$a_81_5 = {72 65 6d 6f 76 65 5f 4d 6f 75 73 65 4d 6f 76 65 } //1 remove_MouseMove
		$a_81_6 = {53 65 74 44 65 73 6b 74 6f 70 4c 6f 63 61 74 69 6f 6e } //1 SetDesktopLocation
		$a_81_7 = {69 6e 63 68 61 74 2e 6b 72 6f 2e 6b 72 } //1 inchat.kro.kr
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}