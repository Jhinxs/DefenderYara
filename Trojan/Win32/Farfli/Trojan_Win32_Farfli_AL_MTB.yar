
rule Trojan_Win32_Farfli_AL_MTB{
	meta:
		description = "Trojan:Win32/Farfli.AL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {b1 1e 50 58 80 34 11 2d e2 fa } //2
		$a_01_1 = {53 65 72 76 69 63 65 4d 61 69 6e } //2 ServiceMain
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}