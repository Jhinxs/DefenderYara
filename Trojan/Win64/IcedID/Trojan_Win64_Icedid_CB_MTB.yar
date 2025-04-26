
rule Trojan_Win64_Icedid_CB_MTB{
	meta:
		description = "Trojan:Win64/Icedid.CB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 07 00 00 "
		
	strings :
		$a_01_0 = {44 78 57 72 4b 67 6e 45 78 71 2e 64 6c 6c } //10 DxWrKgnExq.dll
		$a_01_1 = {4d 71 5a 7a 64 4e 62 6d 51 4c 2e 64 6c 6c } //10 MqZzdNbmQL.dll
		$a_01_2 = {68 4d 4c 5f 44 65 66 61 75 6c 74 43 75 72 72 65 6e 74 } //1 hML_DefaultCurrent
		$a_01_3 = {68 4d 4c 5f 45 78 70 61 74 56 65 72 73 69 6f 6e } //1 hML_ExpatVersion
		$a_01_4 = {68 4d 4c 5f 45 78 70 61 74 56 65 72 73 69 6f 6e 49 6e 66 6f } //1 hML_ExpatVersionInfo
		$a_01_5 = {68 4d 4c 5f 53 74 6f 70 50 61 72 73 65 72 } //1 hML_StopParser
		$a_01_6 = {68 6d 6c 47 65 74 55 74 66 31 36 49 6e 74 65 72 6e 61 6c 45 6e 63 6f 64 69 6e 67 } //1 hmlGetUtf16InternalEncoding
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=15
 
}
rule Trojan_Win64_Icedid_CB_MTB_2{
	meta:
		description = "Trojan:Win64/Icedid.CB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 07 00 00 "
		
	strings :
		$a_01_0 = {6e 58 49 6a 43 49 6f 2e 64 6c 6c } //10 nXIjCIo.dll
		$a_01_1 = {77 58 58 66 63 68 4e 2e 64 6c 6c } //10 wXXfchN.dll
		$a_01_2 = {6e 61 74 75 72 61 6c 65 66 74 6f 75 74 65 72 69 67 68 74 66 75 6c 6c 69 6e 6e 65 72 63 72 6f 73 73 } //1 naturaleftouterightfullinnercross
		$a_01_3 = {65 33 5f 77 69 6e 33 32 5f 77 72 69 74 65 5f 64 65 62 75 67 } //1 e3_win32_write_debug
		$a_01_4 = {68 71 6c 69 74 65 33 5f 61 75 74 6f 5f 65 78 74 65 6e 73 69 6f 6e } //1 hqlite3_auto_extension
		$a_01_5 = {68 71 6c 69 74 65 33 5f 62 61 63 6b 75 70 5f 66 69 6e 69 73 68 } //1 hqlite3_backup_finish
		$a_01_6 = {68 71 6c 69 74 65 33 5f 62 61 63 6b 75 70 5f 69 6e 69 74 } //1 hqlite3_backup_init
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=15
 
}