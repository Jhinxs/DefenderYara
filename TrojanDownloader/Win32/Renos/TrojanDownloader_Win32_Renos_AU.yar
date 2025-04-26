
rule TrojanDownloader_Win32_Renos_AU{
	meta:
		description = "TrojanDownloader:Win32/Renos.AU,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {4d 69 63 72 25 73 6e 74 56 65 72 25 73 } //2 Micr%sntVer%s
		$a_01_1 = {69 53 53 44 5f 43 4d 00 } //2 卩䑓䍟M
		$a_01_2 = {26 76 65 72 3d 00 } //1 瘦牥=
		$a_01_3 = {61 64 76 69 00 } //1
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_03_5 = {81 fe 78 21 00 00 7e 0a c6 84 34 ?? ?? ff ff 68 eb 05 c6 44 34 08 63 ff d7 81 fe 97 23 00 00 7d 03 46 eb dc } //3
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*3) >=5
 
}