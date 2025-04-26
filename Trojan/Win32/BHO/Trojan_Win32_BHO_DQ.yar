
rule Trojan_Win32_BHO_DQ{
	meta:
		description = "Trojan:Win32/BHO.DQ,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 05 00 00 "
		
	strings :
		$a_01_0 = {63 6f 6e 66 69 67 5f 70 6f 70 75 70 5f 30 5f 61 66 74 65 72 5f 73 74 61 72 74 75 70 5f 64 65 6c 61 79 } //3 config_popup_0_after_startup_delay
		$a_00_1 = {70 00 6f 00 70 00 75 00 70 00 42 00 48 00 4f 00 45 00 76 00 65 00 6e 00 74 00 } //2 popupBHOEvent
		$a_01_2 = {63 6f 6e 66 69 67 5f 63 6f 6f 6b 69 65 73 5f 30 5f 6b 69 6c 6c 63 6f 75 6e 74 } //2 config_cookies_0_killcount
		$a_01_3 = {64 69 73 61 62 6c 65 72 65 64 69 72 65 63 74 66 72 6f 6d } //1 disableredirectfrom
		$a_01_4 = {63 6f 6e 66 69 67 5f 70 6f 70 75 70 5f 30 5f 73 68 6f 77 5f 74 69 6d 65 6f 75 74 } //3 config_popup_0_show_timeout
	condition:
		((#a_01_0  & 1)*3+(#a_00_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*3) >=11
 
}