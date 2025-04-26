
rule Trojan_Win32_Ekstak_ASGB_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.ASGB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b ec 83 ec 0c 53 56 57 e8 ?? ?? f6 ff 89 45 fc e9 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}