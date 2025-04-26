
rule Trojan_Win32_Startpage_YD{
	meta:
		description = "Trojan:Win32/Startpage.YD,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5b 49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 5d } //1 [InternetShortcut]
		$a_01_1 = {42 41 53 45 55 52 4c 3d 68 74 74 70 3a 2f 2f 73 6f 2e 35 6c 30 2e 6e 65 74 } //1 BASEURL=http://so.5l0.net
		$a_01_2 = {49 63 6f 6e 46 69 6c 65 3d 65 78 70 6c 6f 72 65 72 2e 65 78 65 2c 33 } //1 IconFile=explorer.exe,3
		$a_01_3 = {69 65 78 70 6c 6f 72 65 2e 65 78 65 7c 33 36 30 53 45 2e 65 78 65 7c 4d 61 78 74 68 6f 6e 2e 65 78 65 } //1 iexplore.exe|360SE.exe|Maxthon.exe
		$a_01_4 = {5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e 5c 53 74 61 72 74 20 50 61 67 65 } //1 \Internet Explorer\Main\Start Page
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}