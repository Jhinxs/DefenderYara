
rule Trojan_MacOS_Gmera_B_MTB{
	meta:
		description = "Trojan:MacOS/Gmera.B!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {73 74 65 70 62 79 73 74 65 70 62 79 2e 63 6f 6d 2f 6c 69 6e 6b 2e 70 68 70 } //1 stepbystepby.com/link.php
		$a_00_1 = {63 6f 6d 2e 74 72 61 64 69 6e 67 2e 4c 69 63 61 74 72 61 64 65 2e 61 70 70 } //1 com.trading.Licatrade.app
		$a_00_2 = {39 4c 69 63 61 74 72 61 64 65 31 31 41 70 70 44 65 6c 65 67 61 74 65 } //1 9Licatrade11AppDelegate
		$a_00_3 = {44 65 76 65 6c 6f 70 65 72 20 49 44 20 41 70 70 6c 69 63 61 74 69 6f 6e 3a 20 41 6e 64 72 65 79 20 4e 6f 76 6f 73 65 6c 6f 76 20 28 4d 38 57 56 44 54 36 35 39 54 29 } //1 Developer ID Application: Andrey Novoselov (M8WVDT659T)
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}