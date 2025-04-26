
rule TrojanDownloader_Win32_Small_HH{
	meta:
		description = "TrojanDownloader:Win32/Small.HH,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {45 58 45 00 72 65 67 73 76 72 33 32 20 2f 73 20 22 25 73 22 } //1
		$a_00_1 = {67 65 74 75 72 6c 2e 70 68 70 3f 76 65 72 73 69 6f 6e 3d 25 73 26 66 69 64 3d 25 73 26 6d 61 63 3d 25 73 26 6c 76 65 72 73 69 6f 6e 3d 25 73 26 77 76 65 72 73 69 6f 6e 3d 25 73 26 64 61 79 3d 25 64 26 6e 61 6d 65 3d 25 73 26 72 65 63 65 6e 74 3d 25 64 } //1 geturl.php?version=%s&fid=%s&mac=%s&lversion=%s&wversion=%s&day=%d&name=%s&recent=%d
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 43 4c 53 49 44 5c 7b 43 38 36 34 38 38 41 46 2d 31 33 44 35 2d 34 46 45 46 2d 39 44 44 46 2d 39 46 42 38 38 36 39 38 43 46 43 31 7d } //1 Software\Classes\CLSID\{C86488AF-13D5-4FEF-9DDF-9FB88698CFC1}
		$a_00_3 = {4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 29 } //1 Mozilla/4.0 (compatible; )
		$a_00_4 = {64 6c 6c 6f 61 64 74 69 6d 65 } //1 dlloadtime
		$a_00_5 = {6d 61 63 00 25 73 5c 5f 69 6e 69 6d 61 63 } //1 慭c猥彜湩浩捡
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}