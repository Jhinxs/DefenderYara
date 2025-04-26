
rule TrojanDownloader_O97M_Ursnif_VIS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.VIS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {48 4b 45 59 5f 43 55 52 22 20 26 20 53 74 72 52 65 76 65 72 73 65 28 22 72 61 77 74 66 6f 53 5c 52 45 53 55 5f 54 4e 45 52 22 29 20 26 20 22 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 4f 66 66 69 63 65 5c 22 } //1 HKEY_CUR" & StrReverse("rawtfoS\RESU_TNER") & "e\Microsoft\Office\"
		$a_01_1 = {57 6f 72 64 5c 53 65 63 75 72 22 20 26 20 53 74 72 52 65 76 65 72 73 65 28 22 56 73 73 65 63 63 41 5c 79 74 69 22 29 20 26 20 22 42 4f 4d } //1 Word\Secur" & StrReverse("VsseccA\yti") & "BOM
		$a_03_2 = {2e 52 65 67 57 72 69 74 65 20 [0-50] 2c 20 31 2c 20 22 52 45 47 5f 44 57 4f 52 44 22 } //1
		$a_01_3 = {53 75 62 20 73 77 61 70 43 6f 6e 73 74 54 72 75 73 74 28 29 } //1 Sub swapConstTrust()
		$a_01_4 = {46 75 6e 63 74 69 6f 6e 20 6f 70 74 69 6f 6e 44 61 74 61 62 61 73 65 28 29 20 41 73 20 53 74 72 69 6e 67 } //1 Function optionDatabase() As String
		$a_03_5 = {73 77 61 70 41 72 67 75 6d 65 6e 74 50 74 72 28 22 [0-50] 22 29 } //1
		$a_01_6 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 31 29 } //1 = StrReverse(UserForm1.TextBox1)
		$a_01_7 = {69 74 65 72 61 74 6f 72 4c 6f 61 64 } //1 iteratorLoad
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}