
rule Trojan_Win32_Ekstak_RN_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.RN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {a7 64 00 6a 05 e8 ?? fa 1f 00 8b 4c 24 00 33 c0 85 c9 0f 95 c0 59 } //1
		$a_01_1 = {56 e8 2a 72 fb ff 8b f0 e9 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}