
rule TrojanProxy_Win32_Banker_AM{
	meta:
		description = "TrojanProxy:Win32/Banker.AM,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 19 00 06 00 00 "
		
	strings :
		$a_01_0 = {62 00 61 00 72 00 62 00 61 00 72 00 61 00 7a 00 7a 00 69 00 66 00 6f 00 74 00 6f 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 6e 00 65 00 77 00 2f 00 72 00 65 00 64 00 2e 00 68 00 74 00 6d 00 6c 00 } //20 barbarazzifotos.com/new/red.html
		$a_01_1 = {43 6f 6e 6e 65 63 74 69 6f 6e 73 54 61 62 00 00 ff } //5
		$a_01_2 = {70 6c 61 6e 65 74 61 77 65 62 6e 6f 74 69 63 69 61 73 2e 63 6f 6d 2f 6d 61 70 73 2f 73 65 67 2e 70 61 63 } //1 planetawebnoticias.com/maps/seg.pac
		$a_01_3 = {73 6f 6c 75 63 6f 65 73 66 61 74 2e 63 6f 6d 2f 67 65 74 2f 70 6f 73 2e 70 61 63 } //1 solucoesfat.com/get/pos.pac
		$a_01_4 = {74 72 61 6e 73 70 61 72 61 32 30 31 32 2e 63 6f 6d 2f 67 6f 6c 66 2f 66 65 6c 69 7a 2e 70 61 63 } //1 transpara2012.com/golf/feliz.pac
		$a_01_5 = {6c 75 7a 61 6e 6a 6f 2e 63 6f 6d 2f 6d 65 73 2f 70 69 74 2e 70 61 63 } //1 luzanjo.com/mes/pit.pac
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=25
 
}