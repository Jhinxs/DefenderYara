
rule Trojan_BAT_Azurlt_MTB{
	meta:
		description = "Trojan:BAT/Azurlt!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {76 72 6f 6f 6d 62 72 6f 6f 6f 6d 6b 72 6f 6f 6f 6d } //1 vroombrooomkrooom
		$a_01_1 = {6b 65 6b 65 64 6f 79 6f 75 6c 6f 76 65 6d 65 } //1 kekedoyouloveme
		$a_01_2 = {44 65 62 75 67 67 65 72 } //1 Debugger
		$a_01_3 = {49 73 4c 6f 67 67 69 6e 67 } //1 IsLogging
		$a_01_4 = {53 79 6e 63 68 72 6f 6e 69 7a 65 64 } //1 Synchronized
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}