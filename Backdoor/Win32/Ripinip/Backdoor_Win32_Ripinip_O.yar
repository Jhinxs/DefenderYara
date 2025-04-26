
rule Backdoor_Win32_Ripinip_O{
	meta:
		description = "Backdoor:Win32/Ripinip.O,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {49 73 68 65 6c 6c 2e 64 6c 6c 00 49 6e 73 74 61 6c 6c 00 52 75 6e 49 6e 73 74 61 6c 6c } //1
		$a_03_1 = {8b f8 83 c4 14 85 ff 74 1b 6a 02 68 ?? ff ff ff 57 e8 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}