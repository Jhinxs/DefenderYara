
rule HackTool_Win32_ChromePass{
	meta:
		description = "HackTool:Win32/ChromePass,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 00 68 00 72 00 6f 00 6d 00 65 00 50 00 61 00 73 00 73 00 } //1 ChromePass
		$a_01_1 = {2f 00 73 00 74 00 65 00 78 00 74 00 } //1 /stext
		$a_01_2 = {2f 00 73 00 6b 00 65 00 65 00 70 00 61 00 73 00 73 00 } //1 /skeepass
		$a_01_3 = {6f 72 69 67 69 6e 5f 75 72 6c 2c 20 61 63 74 69 6f 6e 5f 75 72 6c 2c 20 75 73 65 72 6e 61 6d 65 5f 65 6c 65 6d 65 6e 74 2c 20 75 73 65 72 6e 61 6d 65 5f 76 61 6c 75 65 2c 20 70 61 73 73 77 6f 72 64 5f 65 6c 65 6d 65 6e 74 2c 20 70 61 73 73 77 6f 72 64 5f 76 61 6c 75 65 } //1 origin_url, action_url, username_element, username_value, password_element, password_value
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}