
rule Trojan_Win32_AveMariaRAT_D_MTB{
	meta:
		description = "Trojan:Win32/AveMariaRAT.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 04 0e c0 c8 ?? 32 82 ?? ?? ?? ?? 88 04 0e 8d 42 ?? 99 c7 45 fc ?? ?? ?? ?? f7 7d ?? 41 81 f9 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}