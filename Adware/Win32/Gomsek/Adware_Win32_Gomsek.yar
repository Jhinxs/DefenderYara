
rule Adware_Win32_Gomsek{
	meta:
		description = "Adware:Win32/Gomsek,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 47 4f 4d 53 45 4b 2e 43 4f 4d 5c } //2 SOFTWARE\GOMSEK.COM\
		$a_01_1 = {43 44 69 72 65 63 74 4b 65 79 77 6f 72 64 41 70 70 3a 3a 55 70 64 61 74 65 54 68 72 65 61 64 28 29 20 65 72 72 6f 72 } //1 CDirectKeywordApp::UpdateThread() error
		$a_01_2 = {25 73 3f 63 6f 6d 70 61 6e 79 49 44 3d 25 73 26 6d 61 63 3d 25 73 26 76 65 72 3d 25 64 26 50 72 6f 67 49 44 3d 25 73 } //1 %s?companyID=%s&mac=%s&ver=%d&ProgID=%s
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}