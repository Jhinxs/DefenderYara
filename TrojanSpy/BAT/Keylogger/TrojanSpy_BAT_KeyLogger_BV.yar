
rule TrojanSpy_BAT_KeyLogger_BV{
	meta:
		description = "TrojanSpy:BAT/KeyLogger.BV,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {00 6e 6d 61 69 6c 00 } //1
		$a_01_1 = {70 61 73 73 6f 72 75 73 65 72 6b 65 74 74 6f } //1 passoruserketto
		$a_01_2 = {66 65 6c 65 73 6c 65 67 } //1 felesleg
		$a_01_3 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //1 GetAsyncKeyState
		$a_00_4 = {40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 @gmail.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}