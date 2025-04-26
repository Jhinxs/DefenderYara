
rule PWS_Win32_OnLineGames_CN{
	meta:
		description = "PWS:Win32/OnLineGames.CN,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {26 5a 6f 6e 65 3d 25 73 26 73 65 72 76 65 72 3d 25 73 26 4e 61 6d 65 3d 25 73 26 50 61 73 73 3d 25 73 26 } //1 &Zone=%s&server=%s&Name=%s&Pass=%s&
		$a_01_1 = {3f 61 63 74 69 6f 6e 3d 67 65 74 6d 62 6f 6b 26 } //1 ?action=getmbok&
		$a_01_2 = {71 71 6c 6f 67 69 6e 2e 65 78 65 } //1 qqlogin.exe
		$a_01_3 = {6d 69 62 61 6f 2e 61 73 70 } //1 mibao.asp
		$a_01_4 = {33 36 30 53 61 66 65 2e 65 78 65 } //1 360Safe.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}