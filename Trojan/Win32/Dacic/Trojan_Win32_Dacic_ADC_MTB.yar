
rule Trojan_Win32_Dacic_ADC_MTB{
	meta:
		description = "Trojan:Win32/Dacic.ADC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 ec 04 c7 04 24 d8 85 40 00 58 e8 ?? ?? ?? ?? 4f 31 01 81 c6 ?? ?? ?? ?? 41 29 ff 39 d9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}