
rule Trojan_Win32_Racealer_Q_MTB{
	meta:
		description = "Trojan:Win32/Racealer.Q!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {c1 e0 04 89 01 c3 55 8b ec 51 [0-25] 83 65 fc 00 8b 45 08 01 45 fc 8b 45 fc 31 ?? c9 c2 04 00 33 44 24 04 c2 04 00 81 00 ?? 36 ef c6 c3 01 08 c3 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}