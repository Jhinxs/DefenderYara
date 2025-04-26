
rule TrojanDownloader_Win32_Zlob_ANK{
	meta:
		description = "TrojanDownloader:Win32/Zlob.ANK,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 09 00 00 "
		
	strings :
		$a_01_0 = {4e 75 6c 6c 73 6f 66 74 20 49 6e 73 74 61 6c 6c 20 53 79 73 74 65 6d } //5 Nullsoft Install System
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 4f 6e 6c 69 6e 65 20 53 65 72 76 69 63 65 20 54 6f 6f 6c } //2 Software\Microsoft\Windows\CurrentVersion\Uninstall\Online Service Tool
		$a_01_2 = {41 6c 6c 20 76 69 64 65 6f 20 66 69 6c 65 73 20 77 69 6c 6c 20 6e 6f 77 20 62 65 20 70 6c 61 79 65 64 20 61 75 74 6f 6d 61 74 69 63 61 6c 6c 79 2e 20 54 68 61 6e 6b 20 79 6f 75 20 66 6f 72 20 63 68 6f 6f 73 69 6e 67 20 4f 6e 6c 69 6e 65 20 53 65 72 76 69 63 65 20 54 6f 6f 6c 2e } //2 All video files will now be played automatically. Thank you for choosing Online Service Tool.
		$a_01_3 = {4c 69 63 65 6e 73 6f 72 20 6d 61 79 20 6f 66 66 65 72 20 61 64 64 69 74 69 6f 6e 61 6c 20 63 6f 6d 70 6f 6e 65 6e 74 73 20 74 68 72 6f 75 67 68 20 6f 75 72 20 76 65 72 73 69 6f 6e 20 63 68 65 63 6b 69 6e 67 2f 75 70 64 61 74 65 20 73 79 73 74 65 6d 2e } //2 Licensor may offer additional components through our version checking/update system.
		$a_02_4 = {4d 61 69 6e 53 65 63 74 69 6f 6e [0-10] 5c ?? ?? ?? ?? 2e 64 6c 6c } //2
		$a_00_5 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 57 65 62 20 54 65 63 68 6e 6f 6c 6f 67 69 65 73 } //1 C:\Program Files\Web Technologies
		$a_01_6 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 41 70 70 6c 69 63 61 74 69 6f 6e 73 } //1 C:\Program Files\Applications
		$a_01_7 = {53 6f 66 74 77 61 72 65 5c 57 65 62 20 54 65 63 68 6e 6f 6c 6f 67 69 65 73 00 } //1 潓瑦慷敲坜扥吠捥湨汯杯敩s
		$a_01_8 = {53 6f 66 74 77 61 72 65 5c 41 70 70 6c 69 63 61 74 69 6f 6e 73 00 } //1 潓瑦慷敲䅜灰楬慣楴湯s
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_02_4  & 1)*2+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=15
 
}