
rule Trojan_Linux_Flooder_D_xp{
	meta:
		description = "Trojan:Linux/Flooder.D!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 51 52 47 51 52 45 51 52 54 51 52 46 51 52 4c 51 52 4f 51 52 4f 51 52 44 } //1 WQRGQREQRTQRFQRLQROQROQRD
		$a_01_1 = {62 51 52 75 51 52 73 51 52 79 51 52 62 51 52 6f 51 52 74 51 52 6e 51 52 65 51 52 74 } //1 bQRuQRsQRyQRbQRoQRtQRnQReQRt
		$a_01_2 = {4b 51 52 49 51 52 4c 51 52 4c 51 52 41 51 52 4c 51 52 4c } //1 KQRIQRLQRLQRAQRLQRL
		$a_01_3 = {62 51 52 75 51 52 73 51 52 79 51 52 62 51 52 6f 51 52 78 51 52 74 51 52 65 51 52 72 51 52 72 51 52 6f 51 52 72 51 52 69 51 52 73 51 52 74 } //1 bQRuQRsQRyQRbQRoQRxQRtQReQRrQRrQRoQRrQRiQRsQRt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}