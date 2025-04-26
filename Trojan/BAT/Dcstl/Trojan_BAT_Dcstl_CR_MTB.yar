
rule Trojan_BAT_Dcstl_CR_MTB{
	meta:
		description = "Trojan:BAT/Dcstl.CR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_03_0 = {72 19 00 00 70 6f ?? ?? ?? 06 00 06 72 ?? ?? ?? 70 02 7b ?? ?? ?? 04 6f ?? ?? ?? 0a 72 ?? ?? ?? 70 02 7b ?? ?? ?? 04 6f ?? ?? ?? 0a } //5
		$a_01_1 = {52 6f 7a 62 65 68 54 68 65 52 6f 62 62 65 72 } //1 RozbehTheRobber
		$a_01_2 = {41 00 64 00 77 00 61 00 72 00 65 00 20 00 48 00 4f 00 41 00 58 00 } //1 Adware HOAX
		$a_01_3 = {43 6f 6e 63 61 74 } //1 Concat
		$a_01_4 = {44 63 57 65 62 48 6f 6f 6b } //1 DcWebHook
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=9
 
}