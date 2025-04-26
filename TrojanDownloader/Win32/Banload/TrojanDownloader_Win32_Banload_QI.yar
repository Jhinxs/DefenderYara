
rule TrojanDownloader_Win32_Banload_QI{
	meta:
		description = "TrojanDownloader:Win32/Banload.QI,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b d8 66 83 eb 02 66 83 fb 03 76 40 8d 45 f0 50 0f b7 d3 b9 03 00 00 00 8b 45 fc e8 } //4
		$a_00_1 = {6d 6f 64 75 6c 6f 2e 74 78 74 } //1 modulo.txt
		$a_00_2 = {6d 73 68 6f 74 2e 74 78 74 } //1 mshot.txt
		$a_00_3 = {68 74 70 2e 74 78 74 } //1 htp.txt
	condition:
		((#a_01_0  & 1)*4+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=5
 
}
rule TrojanDownloader_Win32_Banload_QI_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.QI,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {8b d8 66 83 eb 02 66 83 fb 03 76 40 8d 45 f0 50 0f b7 d3 b9 03 00 00 00 8b 45 fc e8 ?? ?? ?? ?? 8b 45 f0 e8 ?? ?? ?? ?? 8b f8 66 2b 7d fa 8d 45 ec 8b d7 e8 ?? ?? ?? ?? 8b 55 ec 8b c6 e8 ?? ?? ?? ?? 66 83 eb 03 66 83 fb 03 77 c0 } //1
		$a_02_1 = {68 01 01 00 00 e8 ?? ?? ?? ?? 6a 00 6a 01 6a 02 e8 ?? ?? ?? ?? 89 45 f0 66 c7 85 48 fe ff ff 02 00 6a 50 e8 } //1
		$a_02_2 = {8b 45 b8 50 68 40 0d 03 00 8d 55 b0 b8 ?? ?? ?? ?? e8 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}