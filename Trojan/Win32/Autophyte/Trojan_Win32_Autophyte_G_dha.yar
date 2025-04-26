
rule Trojan_Win32_Autophyte_G_dha{
	meta:
		description = "Trojan:Win32/Autophyte.G!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0d 00 00 "
		
	strings :
		$a_02_0 = {8a 01 3c 69 7c ?? 3c 70 7f ?? 04 09 eb ?? 3c 72 7c ?? 3c 79 7e ?? 3c 49 7c ?? 3c 50 [0-06] 3c 52 7c ?? 3c 59 7f ?? 2c 09 } //5
		$a_01_1 = {2d 2d 2d 2d 46 78 69 76 42 78 6c 77 64 61 69 70 } //1 ----FxivBxlwdaip
		$a_01_2 = {41 63 63 65 79 6b 3a } //1 Acceyk:
		$a_01_3 = {4e 4a 41 4a 6b 61 69 6b 6c 79 } //1 NJAJkaikly
		$a_01_4 = {6a 78 63 74 65 6b } //1 jxctek
		$a_01_5 = {47 65 6b 4b 65 76 79 59 61 6b 68 } //1 GekKevyYakh
		$a_01_6 = {49 65 61 64 46 72 75 65 } //1 IeadFrue
		$a_01_7 = {49 65 67 51 6c 65 69 70 4d 61 75 6c 65 } //1 IegQleipMaule
		$a_01_8 = {59 69 78 63 65 6a 6a 33 32 57 65 6f 6b } //1 Yixcejj32Weok
		$a_01_9 = {5f 5f 57 53 41 46 44 49 6a 53 65 6b } //1 __WSAFDIjSek
		$a_01_10 = {57 53 41 43 75 65 61 77 6c 79 } //1 WSACueawly
		$a_01_11 = {57 53 41 53 6b 61 69 6b 6c 79 } //1 WSASkaikly
		$a_01_12 = {52 65 61 64 46 72 75 65 } //1 ReadFrue
	condition:
		((#a_02_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=5
 
}