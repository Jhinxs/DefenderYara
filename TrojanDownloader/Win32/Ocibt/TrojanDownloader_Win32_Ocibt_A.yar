
rule TrojanDownloader_Win32_Ocibt_A{
	meta:
		description = "TrojanDownloader:Win32/Ocibt.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 50 4f 50 55 50 } //1 /POPUP
		$a_00_1 = {5c 73 79 73 74 65 6d 33 32 5c 77 69 6e 37 7a 69 70 2e 64 6c 6c } //1 \system32\win7zip.dll
		$a_00_2 = {68 74 74 70 3a 2f 2f 67 6f 2e 6d 79 7a 79 2e 69 6e 66 6f 2f 64 6f 77 6e 2e 70 68 70 3f 69 3d 62 64 6c 6c 26 } //1 http://go.myzy.info/down.php?i=bdll&
		$a_00_3 = {68 74 74 70 3a 2f 2f 67 6f 2e 6d 79 7a 79 2e 69 6e 66 6f 2f 64 6f 77 6e 2e 70 68 70 3f 69 3d 62 65 78 65 26 } //1 http://go.myzy.info/down.php?i=bexe&
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
rule TrojanDownloader_Win32_Ocibt_A_2{
	meta:
		description = "TrojanDownloader:Win32/Ocibt.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 50 4f 50 55 50 } //1 /POPUP
		$a_00_1 = {68 74 74 70 3a 2f 2f 67 6f 2e 69 75 79 74 2e 69 6e 66 6f 2f 64 6f 77 6e 2e 70 68 70 3f 69 3d 74 62 69 63 6f 26 } //1 http://go.iuyt.info/down.php?i=tbico&
		$a_00_2 = {68 74 74 70 3a 2f 67 6f 2e 69 75 79 74 2e 69 6e 66 6f 2f 64 6f 77 6e 2e 70 68 70 3f 69 3d 61 76 62 73 26 } //1 http:/go.iuyt.info/down.php?i=avbs&
		$a_00_3 = {5c 77 69 6e 72 61 72 5c 69 63 6f 5c 74 61 6f 62 61 6f 2e 74 62 69 63 6f } //1 \winrar\ico\taobao.tbico
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
rule TrojanDownloader_Win32_Ocibt_A_3{
	meta:
		description = "TrojanDownloader:Win32/Ocibt.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 50 4f 50 55 50 } //1 /POPUP
		$a_02_1 = {68 74 74 70 3a 2f 2f 6d 6d 35 38 2e 66 72 65 65 6e 76 2e 69 6e 66 6f 3a 37 37 37 2f [0-20] 2e 70 68 70 3f 6d 61 63 3d } //1
		$a_00_2 = {68 74 74 70 3a 2f 2f 67 6f 2e 69 75 79 74 2e 69 6e 66 6f 2f 64 6f 77 6e 2e 70 68 70 3f 69 3d 61 26 } //1 http://go.iuyt.info/down.php?i=a&
		$a_00_3 = {68 74 74 70 3a 2f 2f 67 6f 2e 69 75 79 74 2e 69 6e 66 6f 2f 64 6f 77 6e 2e 70 68 70 3f 69 3d 74 61 6b 65 26 } //1 http://go.iuyt.info/down.php?i=take&
		$a_00_4 = {5c 61 61 31 5f fd 83 80 fd 84 80 fd 85 80 2e 65 78 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}