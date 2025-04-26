
rule Trojan_BAT_LaplasClipper_B_MTB{
	meta:
		description = "Trojan:BAT/LaplasClipper.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {93 fe 09 02 00 61 d1 9d } //2
		$a_01_1 = {43 6c 69 70 62 6f 61 72 64 4d 61 6e 61 67 65 72 } //2 ClipboardManager
		$a_01_2 = {47 65 74 4e 65 77 41 64 64 72 65 73 73 } //2 GetNewAddress
		$a_01_3 = {53 65 74 4f 6e 6c 69 6e 65 } //2 SetOnline
		$a_01_4 = {52 65 66 72 65 73 68 52 65 67 65 78 } //2 RefreshRegex
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=10
 
}