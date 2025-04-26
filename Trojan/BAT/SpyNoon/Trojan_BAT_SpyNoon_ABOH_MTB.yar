
rule Trojan_BAT_SpyNoon_ABOH_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.ABOH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_01_0 = {72 61 64 61 72 73 79 73 74 65 6d 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //3 radarsystem.Properties.Resources.resources
		$a_01_1 = {72 61 64 61 72 73 79 73 74 65 6d 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //1 radarsystem.Form1.resources
		$a_01_2 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}