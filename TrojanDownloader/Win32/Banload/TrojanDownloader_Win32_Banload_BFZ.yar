
rule TrojanDownloader_Win32_Banload_BFZ{
	meta:
		description = "TrojanDownloader:Win32/Banload.BFZ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {6a 00 b9 bf 28 00 00 ba ?? ?? ?? ?? 8b 83 ?? ?? 00 00 e8 ?? ?? ?? ?? 8b 83 ?? ?? 00 00 e8 ?? ?? ?? ?? a1 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b d0 } //1
		$a_01_1 = {41 64 6d 69 6e 69 73 74 72 61 74 6f 72 00 } //1 摁業楮瑳慲潴r
		$a_01_2 = {72 75 6e 61 73 00 } //1 畲慮s
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}