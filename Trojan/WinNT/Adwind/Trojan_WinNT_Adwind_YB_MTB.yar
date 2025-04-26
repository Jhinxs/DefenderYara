
rule Trojan_WinNT_Adwind_YB_MTB{
	meta:
		description = "Trojan:WinNT/Adwind.YB!MTB,SIGNATURE_TYPE_JAVAHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {49 78 69 79 70 75 7e 60 30 49 72 61 78 76 76 3c } //1 Ixiypu~`0Iraxvv<
		$a_00_1 = {6b 69 67 6f } //1 kigo
		$a_00_2 = {75 66 73 72 71 66 77 67 7d 71 7e 67 3c } //1 ufsrqfwg}q~g<
		$a_00_3 = {44 52 52 44 57 50 43 53 59 50 4f 53 48 52 } //1 DRRDWPCSYPOSHR
		$a_00_4 = {69 7a 6f 6d 68 7e 6a 6e 77 6c 65 7f 61 6f 70 6d 3e } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}