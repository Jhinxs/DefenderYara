
rule Trojan_Win32_Bingoml_HPPO_MTB{
	meta:
		description = "Trojan:Win32/Bingoml.HPPO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {54 61 66 74 79 61 46 53 54 66 54 59 58 66 79 75 77 65 } //1 TaftyaFSTfTYXfyuwe
		$a_01_1 = {68 61 47 41 53 74 75 78 74 2e 74 78 74 } //1 haGAStuxt.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}