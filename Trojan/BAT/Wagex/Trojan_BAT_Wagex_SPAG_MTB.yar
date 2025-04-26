
rule Trojan_BAT_Wagex_SPAG_MTB{
	meta:
		description = "Trojan:BAT/Wagex.SPAG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {08 25 17 59 0c 16 fe 02 2d ed 07 6f ?? ?? ?? 0a 0a 06 0d 09 } //1
		$a_01_1 = {41 00 65 00 6e 00 76 00 67 00 63 00 79 00 63 00 74 00 70 00 68 00 62 00 73 00 75 00 69 00 71 00 71 00 67 00 7a 00 2e 00 44 00 70 00 73 00 6e 00 61 00 70 00 74 00 72 00 62 00 72 00 6a 00 72 00 77 00 6a 00 73 00 64 00 69 00 6f 00 6c 00 } //1 Aenvgcyctphbsuiqqgz.Dpsnaptrbrjrwjsdiol
		$a_01_2 = {57 00 61 00 7a 00 79 00 78 00 6b 00 70 00 69 00 61 00 65 00 74 00 7a 00 76 00 61 00 63 00 64 00 63 00 } //1 Wazyxkpiaetzvacdc
		$a_81_3 = {50 7a 74 71 6b 2e 50 72 6f 70 65 72 74 69 65 73 } //1 Pztqk.Properties
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}