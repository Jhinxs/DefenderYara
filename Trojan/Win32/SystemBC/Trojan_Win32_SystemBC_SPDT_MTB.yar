
rule Trojan_Win32_SystemBC_SPDT_MTB{
	meta:
		description = "Trojan:Win32/SystemBC.SPDT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {5a 59 7a 6c 59 48 35 35 37 79 } //2 ZYzlYH557y
		$a_01_1 = {48 44 58 61 43 32 31 32 } //2 HDXaC212
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}