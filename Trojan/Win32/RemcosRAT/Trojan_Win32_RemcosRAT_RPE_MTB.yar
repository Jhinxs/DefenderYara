
rule Trojan_Win32_RemcosRAT_RPE_MTB{
	meta:
		description = "Trojan:Win32/RemcosRAT.RPE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 30 00 37 00 2e 00 31 00 38 00 39 00 2e 00 34 00 2e 00 37 00 30 00 2f 00 [0-10] 2e 00 62 00 69 00 6e 00 } //1
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_2 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_01_3 = {53 68 65 6c 6c 49 63 6f 6e } //1 ShellIcon
		$a_01_4 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //1 GetExportedTypes
		$a_01_5 = {54 72 65 65 49 74 65 6d } //1 TreeItem
		$a_01_6 = {48 74 74 70 57 65 62 52 65 73 70 6f 6e 73 65 } //1 HttpWebResponse
		$a_01_7 = {47 65 74 52 65 73 70 6f 6e 73 65 } //1 GetResponse
		$a_01_8 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_9 = {48 74 74 70 57 65 62 52 65 71 75 65 73 74 } //1 HttpWebRequest
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}