
rule Trojan_Win32_Stealer_MT_MTB{
	meta:
		description = "Trojan:Win32/Stealer.MT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {30 01 81 ff [0-04] 75 09 6a 00 6a 00 e8 [0-04] 46 3b f7 90 18 8b [0-03] 8d [0-03] e8 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}