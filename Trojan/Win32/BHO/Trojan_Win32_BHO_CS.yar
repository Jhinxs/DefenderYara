
rule Trojan_Win32_BHO_CS{
	meta:
		description = "Trojan:Win32/BHO.CS,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 7a 68 2d 63 6e } //1 Accept-Language:zh-cn
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4e 65 77 47 61 6d 65 55 70 64 61 74 65 5c 47 61 6d 65 56 65 72 73 69 6f 6e 55 70 64 61 74 65 2e 64 6c 6c } //1 C:\Program Files\NewGameUpdate\GameVersionUpdate.dll
		$a_01_2 = {55 72 6c 3d 47 61 6d 65 56 65 72 73 69 6f 6e 55 70 64 61 74 65 5f 53 65 74 75 70 26 4d 61 63 3d 25 73 26 56 65 72 73 69 6f 6e 3d } //1 Url=GameVersionUpdate_Setup&Mac=%s&Version=
		$a_01_3 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 73 65 72 76 69 63 65 31 2e 69 6e 69 } //1 C:\WINDOWS\system32\drivers\etc\service1.ini
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}