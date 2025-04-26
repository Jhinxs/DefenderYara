
rule Trojan_Win32_SysInject_A_MSR{
	meta:
		description = "Trojan:Win32/SysInject.A!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {26 00 53 00 74 00 61 00 72 00 74 00 20 00 4c 00 6f 00 67 00 69 00 6e 00 67 00 } //1 &Start Loging
		$a_02_1 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 [0-14] 2e 00 65 00 78 00 65 00 } //1
		$a_00_2 = {64 65 66 61 75 6c 74 2e 6c 6f 67 } //1 default.log
		$a_00_3 = {6a 00 6a 00 6a 00 6a 00 ff 15 3c 62 48 00 6a 00 6a 00 6a 00 6a 00 ff 15 3c 62 48 00 6a 00 6a 00 6a 00 6a 00 ff 15 3c 62 48 00 6a 00 6a 00 6a 00 6a 00 ff 15 3c 62 48 00 6a 00 6a 00 6a 00 6a 00 ff 15 3c 62 48 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}