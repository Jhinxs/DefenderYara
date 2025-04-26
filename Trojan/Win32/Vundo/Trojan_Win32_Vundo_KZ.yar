
rule Trojan_Win32_Vundo_KZ{
	meta:
		description = "Trojan:Win32/Vundo.KZ,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 09 00 00 "
		
	strings :
		$a_00_0 = {47 65 74 4c 61 73 74 41 63 74 69 76 65 50 6f 70 75 70 } //10 GetLastActivePopup
		$a_00_1 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //10 InternetReadFile
		$a_00_2 = {2f 67 6f 2f 3f 63 6d 70 3d } //1 /go/?cmp=
		$a_00_3 = {75 69 64 3d 25 73 26 67 75 69 64 3d 25 73 26 76 69 3d 25 64 26 63 69 3d } //1 uid=%s&guid=%s&vi=%d&ci=
		$a_00_4 = {64 73 6c 5f 70 72 6f 78 79 5f 6d 75 74 65 78 } //1 dsl_proxy_mutex
		$a_00_5 = {64 73 6c 5f 72 75 6e 64 6c 6c 5f 6d 75 74 65 78 } //1 dsl_rundll_mutex
		$a_01_6 = {4b d3 91 49 a1 80 91 42 83 b6 33 28 36 6b 90 97 } //1
		$a_01_7 = {27 d5 8b 14 ab a2 ce 11 b1 1f 00 aa 00 53 05 03 } //1
		$a_01_8 = {0f 84 b1 00 00 00 53 68 80 00 00 00 6a 02 53 6a 03 68 00 00 00 40 ff 75 0c ff 15 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=25
 
}