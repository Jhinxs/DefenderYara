
rule Trojan_WinNT_Sploilder_A{
	meta:
		description = "Trojan:WinNT/Sploilder.A,SIGNATURE_TYPE_JAVAHSTR_EXT,23 00 23 00 0b 00 00 "
		
	strings :
		$a_01_0 = {67 65 74 52 65 73 6f 75 72 63 65 41 73 53 74 72 65 61 6d } //2 getResourceAsStream
		$a_01_1 = {63 72 65 61 74 65 54 65 6d 70 46 69 6c 65 } //2 createTempFile
		$a_01_2 = {67 65 74 52 75 6e 74 69 6d 65 } //2 getRuntime
		$a_01_3 = {67 65 74 41 62 73 6f 6c 75 74 65 50 61 74 68 } //2 getAbsolutePath
		$a_01_4 = {73 65 74 45 78 65 63 75 74 61 62 6c 65 } //2 setExecutable
		$a_01_5 = {67 65 74 43 61 6e 6f 6e 69 63 61 6c 50 61 74 68 } //2 getCanonicalPath
		$a_01_6 = {6f 73 2e 6e 61 6d 65 } //1 os.name
		$a_01_7 = {69 73 57 69 6e 64 6f 77 73 } //1 isWindows
		$a_01_8 = {69 73 4d 61 63 } //1 isMac
		$a_01_9 = {7e 73 70 61 77 6e } //10 ~spawn
		$a_01_10 = {19 b6 4d 12 12 b8 3a 19 b6 57 bb } //10
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*10+(#a_01_10  & 1)*10) >=35
 
}