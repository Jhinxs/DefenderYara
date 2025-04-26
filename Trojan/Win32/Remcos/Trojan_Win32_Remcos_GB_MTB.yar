
rule Trojan_Win32_Remcos_GB_MTB{
	meta:
		description = "Trojan:Win32/Remcos.GB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_81_0 = {41 64 6f 62 65 20 50 68 6f 74 6f 73 68 6f 70 } //1 Adobe Photoshop
		$a_81_1 = {43 68 6f 6f 73 65 20 73 69 67 6e 61 74 75 72 65 20 74 6f 20 69 6e 6a 65 63 74 } //1 Choose signature to inject
		$a_81_2 = {41 64 64 20 6e 65 77 20 73 65 63 74 69 6f 6e 20 69 6e 20 66 69 6c 65 } //1 Add new section in file
		$a_81_3 = {57 72 69 74 65 20 63 6f 64 65 20 69 6e 20 6e 65 77 20 73 65 63 74 69 6f 6e } //1 Write code in new section
		$a_81_4 = {57 69 6e 48 74 74 70 43 72 61 63 6b 55 72 6c } //1 WinHttpCrackUrl
		$a_81_5 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
		$a_81_6 = {41 72 6d 61 64 69 6c 6c 6f } //1 Armadillo
		$a_81_7 = {44 41 45 4d 4f 4e 20 50 72 6f 74 65 63 74 } //1 DAEMON Protect
		$a_81_8 = {50 45 2d 53 48 69 45 4c 44 } //1 PE-SHiELD
		$a_81_9 = {4a 44 50 61 63 6b } //1 JDPack
		$a_81_10 = {6e 53 70 61 63 6b } //1 nSpack
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=11
 
}