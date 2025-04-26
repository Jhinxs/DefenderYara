
rule TrojanDownloader_BAT_Tnega_XI_MTB{
	meta:
		description = "TrojanDownloader:BAT/Tnega.XI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_03_0 = {61 d2 9c 1f ?? 13 ?? 38 ?? ?? ?? ff 90 0a 1b 00 08 11 ?? 08 11 ?? 91 11 ?? 11 ?? 09 5d 91 } //1
		$a_01_1 = {65 64 6f 6d 20 53 4f 44 20 6e 69 20 6e 75 72 20 65 62 20 74 6f 6e 6e 61 63 20 6d 61 72 67 6f 72 70 20 73 69 68 54 } //1 edom SOD ni nur eb tonnac margorp sihT
		$a_01_2 = {57 65 62 52 65 73 70 6f 6e 73 65 } //1 WebResponse
		$a_01_3 = {73 65 74 5f 4b 65 79 53 69 7a 65 } //1 set_KeySize
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_5 = {54 6f 43 68 61 72 41 72 72 61 79 } //1 ToCharArray
		$a_01_6 = {57 65 62 52 65 71 75 65 73 74 } //1 WebRequest
		$a_01_7 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 53 74 72 65 61 6d } //1 GetManifestResourceStream
		$a_01_8 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}