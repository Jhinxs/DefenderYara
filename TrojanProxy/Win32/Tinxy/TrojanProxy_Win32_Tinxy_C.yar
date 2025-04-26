
rule TrojanProxy_Win32_Tinxy_C{
	meta:
		description = "TrojanProxy:Win32/Tinxy.C,SIGNATURE_TYPE_PEHSTR_EXT,34 00 34 00 09 00 00 "
		
	strings :
		$a_02_0 = {8d 45 ec 89 ?? ?? 50 c7 45 ?? ?? ?? ?? ?? 89 ?? ?? 89 ?? ?? ff 15 ?? ?? ?? ?? 5f 5e 33 c0 5b c9 c2 10 00 } //10
		$a_00_1 = {47 45 54 20 2f 73 65 61 72 63 68 2e 70 68 70 3f 70 3d 25 30 34 64 26 73 3d 25 73 26 71 3d 25 73 20 48 54 54 50 2f 31 2e 31 } //10 GET /search.php?p=%04d&s=%s&q=%s HTTP/1.1
		$a_00_2 = {25 73 5c 54 69 6e 79 50 72 6f 78 79 5c 25 75 } //10 %s\TinyProxy\%u
		$a_00_3 = {70 72 6f 63 65 73 73 2d 64 6f 6d 61 69 6e } //10 process-domain
		$a_00_4 = {70 72 6f 63 65 73 73 2d 63 6c 69 63 6b 73 } //10 process-clicks
		$a_00_5 = {77 77 77 2e 73 65 61 72 63 68 2e 79 61 68 6f 6f } //1 www.search.yahoo
		$a_00_6 = {77 77 77 2e 73 65 61 72 63 68 2e 6c 69 76 65 2e } //1 www.search.live.
		$a_00_7 = {77 77 77 2e 73 65 61 72 63 68 2e 6d 73 6e 2e } //1 www.search.msn.
		$a_00_8 = {77 77 77 2e 67 6f 6f 67 6c 65 2e } //1 www.google.
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=52
 
}