
rule TrojanDownloader_BAT_RemcosRAT_G_MTB{
	meta:
		description = "TrojanDownloader:BAT/RemcosRAT.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 08 00 00 "
		
	strings :
		$a_03_0 = {09 8e 69 5d 91 ?? [0-02] 91 61 d2 9c [0-02] 17 58 [0-05] 8e 69 32 } //2
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_2 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_01_3 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_4 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_5 = {47 65 74 44 6f 6d 61 69 6e } //1 GetDomain
		$a_01_6 = {43 72 65 61 74 65 44 65 6c 65 67 61 74 65 } //1 CreateDelegate
		$a_01_7 = {44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 } //1 DynamicInvoke
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=9
 
}