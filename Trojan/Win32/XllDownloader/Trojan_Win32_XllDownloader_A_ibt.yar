
rule Trojan_Win32_XllDownloader_A_ibt{
	meta:
		description = "Trojan:Win32/XllDownloader.A!ibt,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 0b 00 00 "
		
	strings :
		$a_80_0 = {70 61 63 6b 65 64 3a 6a 61 63 6b } //packed:jack  1
		$a_80_1 = {70 61 63 6b 65 64 3a 64 65 74 61 69 6c } //packed:detail  1
		$a_80_2 = {70 61 63 6b 65 64 3a 75 64 65 78 63 65 6c } //packed:udexcel  1
		$a_80_3 = {70 61 63 6b 65 64 3a 77 36 63 6a 76 } //packed:w6cjv  1
		$a_80_4 = {70 61 63 6b 65 64 3a 6a 6f 73 68 } //packed:josh  1
		$a_80_5 = {70 61 63 6b 65 64 3a 6a 76 67 36 30 6c 37 69 75 65 } //packed:jvg60l7iue  1
		$a_80_6 = {70 61 63 6b 65 64 3a 6a 61 73 6b } //packed:jask  1
		$a_80_7 = {70 61 63 6b 65 64 3a 72 65 73 6f 6c 75 74 69 6f 6e } //packed:resolution  1
		$a_80_8 = {70 61 63 6b 65 64 3a 41 30 4d 54 36 39 44 31 45 } //packed:A0MT69D1E  1
		$a_80_9 = {65 78 63 65 6c 64 6e 61 2e 78 6c 6c } //exceldna.xll  10
		$a_80_10 = {78 6c 61 75 74 6f 6f 70 65 6e } //xlautoopen  10
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*10+(#a_80_10  & 1)*10) >=21
 
}