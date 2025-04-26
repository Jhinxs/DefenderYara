
rule TrojanProxy_Win32_Bunitu_I{
	meta:
		description = "TrojanProxy:Win32/Bunitu.I,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 "
		
	strings :
		$a_01_0 = {00 6e 61 62 6c 65 64 3a 00 } //1
		$a_01_1 = {74 72 65 77 2f 31 2e 30 20 32 30 30 20 4f 4b 0d } //5 牴睥ㄯ〮㈠〰传ോ
		$a_03_2 = {44 75 72 73 65 6e 74 57 ?? 72 73 69 6f 6e 5c ?? 69 6e 6c 6f 68 6f 6e 5c 4f 6f 74 69 66 79 } //1
		$a_01_3 = {41 33 c1 89 85 60 fe ff ff b9 35 00 00 00 86 e9 66 89 8d 5e fe ff ff 66 c7 85 5c fe ff ff 02 00 6a 10 8d 8d 5c fe ff ff 51 ff b5 30 fe ff ff ff 15 } //5
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*5+(#a_03_2  & 1)*1+(#a_01_3  & 1)*5) >=11
 
}