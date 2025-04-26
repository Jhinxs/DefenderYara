
rule TrojanDownloader_Win32_Meteorite_A_bit{
	meta:
		description = "TrojanDownloader:Win32/Meteorite.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {4d 65 74 65 6f 72 69 74 65 44 6f 77 6e 6c 6f 61 64 65 72 } //2 MeteoriteDownloader
		$a_01_1 = {2f 00 2f 00 4d 00 65 00 74 00 65 00 6f 00 72 00 69 00 74 00 65 00 5c 00 5c 00 } //2 //Meteorite\\
		$a_01_2 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //1 HKLM\Software\Microsoft\Windows\CurrentVersion\Run\
		$a_01_3 = {53 00 62 00 69 00 65 00 44 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 } //1 SbieDll.dll
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}