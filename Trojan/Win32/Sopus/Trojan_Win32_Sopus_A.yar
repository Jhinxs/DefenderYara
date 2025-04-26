
rule Trojan_Win32_Sopus_A{
	meta:
		description = "Trojan:Win32/Sopus.A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 0a 00 00 "
		
	strings :
		$a_01_0 = {6a 77 58 66 89 85 40 ff ff ff 6a 71 58 66 89 85 42 ff ff ff 6a 67 58 66 89 85 44 ff ff ff 6a 70 58 } //5
		$a_01_1 = {68 22 f0 1f cb 6a 0a e8 } //5
		$a_01_2 = {68 02 cf 7b a4 6a 02 e8 } //5
		$a_01_3 = {6e 73 31 2e 73 6f 75 72 70 75 73 73 2e 6e 65 74 } //1 ns1.sourpuss.net
		$a_01_4 = {63 69 76 65 74 2e 7a 69 70 68 61 7a 65 2e 63 6f 6d } //1 civet.ziphaze.com
		$a_01_5 = {6e 73 32 2e 73 6f 75 72 70 75 73 73 2e 6e 65 74 } //1 ns2.sourpuss.net
		$a_01_6 = {6e 73 2e 63 6c 75 73 74 65 72 77 65 62 2e 63 6f 6d } //1 ns.clusterweb.com
		$a_01_7 = {6e 73 2e 64 6f 74 62 69 74 2e 6d 65 } //1 ns.dotbit.me
		$a_01_8 = {73 65 63 6f 6e 64 61 72 79 2e 73 65 72 76 65 72 2e 65 64 76 2d 66 72 6f 65 68 6c 69 63 68 2e 64 65 } //1 secondary.server.edv-froehlich.de
		$a_01_9 = {70 68 69 6c 69 70 6f 73 74 65 6e 64 6f 72 66 2e 64 65 } //1 philipostendorf.de
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=20
 
}