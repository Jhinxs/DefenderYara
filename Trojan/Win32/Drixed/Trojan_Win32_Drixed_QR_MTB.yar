
rule Trojan_Win32_Drixed_QR_MTB{
	meta:
		description = "Trojan:Win32/Drixed.QR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_80_0 = {72 70 69 64 65 62 62 66 6c 6c 2e 70 64 62 } //rpidebbfll.pdb  3
		$a_80_1 = {61 70 70 6c 69 63 61 74 69 6f 6e 2e 76 4e 76 73 74 65 76 65 72 65 74 75 72 6e 2e 74 68 65 45 } //application.vNvstevereturn.theE  3
		$a_80_2 = {6c 6c 6f 73 65 77 77 71 2e 6c 6c } //llosewwq.ll  3
		$a_80_3 = {74 6f 6b 65 6e 79 74 68 65 73 50 65 70 70 65 72 } //tokenythesPepper  3
		$a_80_4 = {42 6c 69 6e 6b 62 66 69 78 65 64 77 61 73 46 65 62 72 75 61 72 79 74 68 61 74 64 69 73 70 6c 61 79 65 64 57 65 62 52 54 43 2e 37 35 4a 59 } //BlinkbfixedwasFebruarythatdisplayedWebRTC.75JY  3
		$a_80_5 = {69 6e 67 45 78 74 65 6e 73 69 6f 6e 73 70 72 65 76 69 6f 75 73 6c 79 75 73 69 6e 67 59 } //ingExtensionspreviouslyusingY  3
		$a_80_6 = {58 61 64 64 74 72 61 6e 73 66 65 72 72 65 64 32 30 31 32 2c 73 65 63 75 72 69 74 79 76 } //Xaddtransferred2012,securityv  3
	condition:
		((#a_80_0  & 1)*3+(#a_80_1  & 1)*3+(#a_80_2  & 1)*3+(#a_80_3  & 1)*3+(#a_80_4  & 1)*3+(#a_80_5  & 1)*3+(#a_80_6  & 1)*3) >=21
 
}