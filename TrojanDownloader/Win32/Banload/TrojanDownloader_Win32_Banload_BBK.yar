
rule TrojanDownloader_Win32_Banload_BBK{
	meta:
		description = "TrojanDownloader:Win32/Banload.BBK,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {41 54 54 52 49 42 20 2d 48 20 22 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 75 70 73 } //1 ATTRIB -H "%USERPROFILE%\ups
		$a_01_1 = {61 64 76 61 6e 63 65 64 2f 64 6c 6c 2f 67 65 74 2e } //2 advanced/dll/get.
		$a_01_2 = {6f 20 66 6f 69 20 70 6f 73 73 69 76 65 6c 20 61 62 72 69 72 20 6f 20 61 72 71 75 69 76 6f 2e } //1 o foi possivel abrir o arquivo.
		$a_01_3 = {73 65 74 20 75 3d 22 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 6b 69 78 2e 62 61 74 } //1 set u="%USERPROFILE%\kix.bat
		$a_01_4 = {6d 6f 76 65 20 22 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 73 74 72 69 6e 67 73 2e 76 62 73 22 20 73 74 72 69 6e 67 73 2e 76 62 73 } //1 move "%USERPROFILE%\strings.vbs" strings.vbs
		$a_01_5 = {6d 6f 76 65 20 22 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 75 70 73 2e 62 61 74 22 20 22 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 75 70 73 5c 55 50 44 41 54 45 2e 62 61 74 } //1 move "%USERPROFILE%\ups.bat" "%USERPROFILE%\ups\UPDATE.bat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}