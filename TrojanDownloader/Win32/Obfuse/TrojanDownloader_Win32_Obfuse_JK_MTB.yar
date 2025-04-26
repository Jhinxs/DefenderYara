
rule TrojanDownloader_Win32_Obfuse_JK_MTB{
	meta:
		description = "TrojanDownloader:Win32/Obfuse.JK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 4f 75 74 20 3d 20 73 4f 75 74 20 26 20 4c 65 66 74 28 70 4f 75 74 2c 20 6e 75 6d 44 61 74 61 42 79 74 65 73 29 } //1 sOut = sOut & Left(pOut, numDataBytes)
		$a_03_1 = {43 68 72 28 43 42 79 74 65 28 22 26 48 22 20 26 20 4d 69 64 28 6e 47 72 6f 75 70 2c 20 [0-02] 2c 20 [0-02] 29 29 29 } //1
		$a_01_2 = {6e 47 72 6f 75 70 20 3d 20 36 34 20 2a 20 6e 47 72 6f 75 70 20 2b 20 74 68 69 73 44 61 74 61 } //1 nGroup = 64 * nGroup + thisData
		$a_01_3 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e } //1 CreateObject("WScript.Shell").Run
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}