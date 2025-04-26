
rule Trojan_WinNT_Adwind_AB{
	meta:
		description = "Trojan:WinNT/Adwind.AB,SIGNATURE_TYPE_JAVAHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {73 71 75 69 72 72 65 6c 31 32 33 } //1 squirrel123
		$a_00_1 = {63 68 61 76 65 } //1 chave
		$a_00_2 = {6a 61 76 61 2f 6e 65 74 2f 55 52 4c } //1 java/net/URL
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}