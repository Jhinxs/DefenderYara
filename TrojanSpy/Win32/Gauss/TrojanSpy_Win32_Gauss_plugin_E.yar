
rule TrojanSpy_Win32_Gauss_plugin_E{
	meta:
		description = "TrojanSpy:Win32/Gauss.plugin!E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {c6 45 fc 01 8d 45 d0 50 8d 4d 98 e8 ?? ?? ?? ?? 59 c6 45 fc 03 6a 01 33 db 8d 75 98 e8 ?? ?? ?? ?? 6a 08 33 c0 83 7d e8 08 } //1
		$a_00_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 65 00 6c 00 69 00 61 00 62 00 69 00 6c 00 69 00 74 00 79 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability
		$a_00_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 46 00 6f 00 6e 00 74 00 73 00 } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}