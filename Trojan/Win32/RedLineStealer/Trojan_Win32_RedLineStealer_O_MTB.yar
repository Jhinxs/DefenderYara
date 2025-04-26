
rule Trojan_Win32_RedLineStealer_O_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.O!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {80 2f 88 33 ?? ?? ?? ?? ?? 80 07 49 ?? ?? ?? ?? ?? ?? f6 2f 47 e2 } //2
		$a_03_1 = {80 2f 88 8b ?? 33 ?? ?? ?? 80 07 49 ?? ?? 8b ?? ?? ?? f6 2f 47 e2 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=2
 
}