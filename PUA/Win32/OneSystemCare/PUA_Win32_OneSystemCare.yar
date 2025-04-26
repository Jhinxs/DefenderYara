
rule PUA_Win32_OneSystemCare{
	meta:
		description = "PUA:Win32/OneSystemCare,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {49 00 44 00 42 00 5f 00 50 00 4f 00 50 00 55 00 50 00 5f 00 49 00 43 00 4f 00 4e 00 5f 00 52 00 45 00 47 00 49 00 53 00 54 00 52 00 59 00 5f 00 43 00 55 00 53 00 54 00 4f 00 4d 00 49 00 5a 00 45 00 } //1 IDB_POPUP_ICON_REGISTRY_CUSTOMIZE
		$a_01_1 = {49 00 44 00 42 00 5f 00 42 00 54 00 4e 00 5f 00 43 00 4c 00 45 00 41 00 4e 00 5f 00 4e 00 4f 00 57 00 31 00 } //1 IDB_BTN_CLEAN_NOW1
		$a_01_2 = {54 58 54 5f 44 49 41 4c 4f 47 5f 4d 41 49 4e 5f 32 22 3e 50 65 72 66 6f 72 6d 61 6e 63 65 3c 2f 65 6c 65 6d 65 6e 74 3e } //1 TXT_DIALOG_MAIN_2">Performance</element>
		$a_01_3 = {22 3e 53 68 6f 77 20 6d 65 20 61 20 66 75 6c 6c 20 73 79 73 74 65 6d 20 72 65 70 6f 72 74 2c 20 } //1 ">Show me a full system report, 
		$a_01_4 = {4c 42 4c 5f 4d 45 53 53 59 5f 4d 41 4e 59 } //1 LBL_MESSY_MANY
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}