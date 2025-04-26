
rule Trojan_Win32_Yidcong{
	meta:
		description = "Trojan:Win32/Yidcong,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {6d 61 63 3d 25 73 26 6f 73 3d 25 73 26 76 65 72 3d 25 73 26 74 65 6d 70 3d 25 64 26 6b 65 79 3d 25 64 } //1 mac=%s&os=%s&ver=%s&temp=%d&key=%d
		$a_01_1 = {77 65 62 39 31 31 38 39 39 2e 77 35 36 2e 68 6f 73 74 2d 64 69 79 2e 6e 65 74 } //1 web911899.w56.host-diy.net
		$a_01_2 = {74 68 65 77 6f 72 6c 64 2e 65 78 65 } //1 theworld.exe
		$a_01_3 = {6f 72 65 65 72 65 72 72 65 72 65 2e 6c 6e 6b } //1 oreererrere.lnk
		$a_01_4 = {33 33 3d 33 3d 6a 76 76 72 3c 31 31 79 79 79 30 35 38 35 39 30 65 71 6f 31 } //1 33=3=jvvr<11yyy058590eqo1
		$a_01_5 = {33 36 33 37 2e 63 6f 6d } //1 3637.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}