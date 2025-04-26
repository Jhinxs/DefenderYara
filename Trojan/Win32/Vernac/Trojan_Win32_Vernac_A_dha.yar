
rule Trojan_Win32_Vernac_A_dha{
	meta:
		description = "Trojan:Win32/Vernac.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0a 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 25 73 2f 75 70 6c 6f 61 64 2e 70 68 70 3f 69 64 3d 25 64 26 54 4d 3d 25 64 } //3 http://%s/upload.php?id=%d&TM=%d
		$a_01_1 = {68 74 74 70 3a 2f 2f 25 73 2f 44 65 66 61 75 6c 74 2e 70 68 70 3f 69 64 3d 25 64 26 54 4d 3d 25 64 } //3 http://%s/Default.php?id=%d&TM=%d
		$a_01_2 = {44 65 73 6e 61 74 69 6f 6e 20 25 73 20 69 73 20 73 6d 61 6c 6c 20 74 68 61 6e 20 66 69 6e 69 73 68 65 64 21 } //3 Desnation %s is small than finished!
		$a_01_3 = {49 66 2d 4e 6f 6e 65 2d 4d 61 74 63 68 3a 20 50 48 50 49 44 3d 25 73 } //2 If-None-Match: PHPID=%s
		$a_01_4 = {66 69 6c 65 6e 61 6d 65 20 25 73 20 65 72 72 6f 72 21 } //2 filename %s error!
		$a_01_5 = {43 68 65 63 6b 5f 41 73 73 6f 63 69 61 74 69 6f 6e 73 } //2 Check_Associations
		$a_01_6 = {52 75 6e 4f 6e 63 65 48 61 73 53 68 6f 77 6e } //1 RunOnceHasShown
		$a_01_7 = {43 6c 65 61 72 42 72 6f 77 73 69 6e 67 48 69 73 74 6f 72 79 4f 6e 45 78 69 74 } //1 ClearBrowsingHistoryOnExit
		$a_01_8 = {44 69 73 61 62 6c 65 46 69 72 73 74 52 75 6e 43 75 73 74 6f 6d 69 7a 65 } //1 DisableFirstRunCustomize
		$a_03_9 = {55 8b 6c 24 18 e8 ?? ?? ?? ?? 8a 4c 33 04 c1 f8 03 32 c8 88 0c 2e 46 3b f7 72 ea 5d } //4
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_03_9  & 1)*4) >=6
 
}