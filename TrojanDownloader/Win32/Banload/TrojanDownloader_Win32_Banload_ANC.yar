
rule TrojanDownloader_Win32_Banload_ANC{
	meta:
		description = "TrojanDownloader:Win32/Banload.ANC,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {75 08 8b 45 fc e8 ?? ?? ?? ?? a1 ?? ?? 45 00 ba ?? ?? 45 00 e8 ?? ?? ?? ?? a1 ?? ?? 45 00 b9 ?? ?? 45 00 8b 55 fc } //1
		$a_02_1 = {50 72 6f 67 72 61 6d 44 61 74 61 5c [0-0a] 68 74 74 70 3a 2f 2f [0-50] 2e 7a 69 70 [0-10] 77 [0-02] 68 6f 73 74 2e 65 78 65 } //1
		$a_02_2 = {50 72 6f 67 72 61 6d 44 61 74 61 5c [0-0a] 68 74 74 70 3a 2f 2f [0-50] 2e 62 6d 70 [0-10] 77 [0-02] 68 6f 73 74 2e 65 78 65 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=2
 
}