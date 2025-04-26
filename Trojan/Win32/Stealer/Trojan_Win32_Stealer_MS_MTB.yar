
rule Trojan_Win32_Stealer_MS_MTB{
	meta:
		description = "Trojan:Win32/Stealer.MS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {be 64 00 00 00 8b c1 99 f7 fe 8a [0-03] 30 04 ?? 41 81 f9 ?? ?? ?? ?? 7c eb } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}