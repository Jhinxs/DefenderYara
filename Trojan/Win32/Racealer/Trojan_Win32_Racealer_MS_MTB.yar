
rule Trojan_Win32_Racealer_MS_MTB{
	meta:
		description = "Trojan:Win32/Racealer.MS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {30 04 33 81 [0-05] 90 18 46 3b f7 90 18 83 [0-02] 90 18 e8 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}