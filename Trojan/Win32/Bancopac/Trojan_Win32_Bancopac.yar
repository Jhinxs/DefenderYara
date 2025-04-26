
rule Trojan_Win32_Bancopac{
	meta:
		description = "Trojan:Win32/Bancopac,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {2b 00 00 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6e 00 73 00 31 00 2e 00 6e 00 61 00 74 00 61 00 6c 00 6e 00 6f 00 73 00 73 00 6f 00 2e 00 69 00 6e 00 66 00 6f 00 3a 00 38 00 30 00 38 00 32 00 2f 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2e 00 70 00 61 00 63 00 00 00 } //1
		$a_01_1 = {75 73 65 72 5f 70 72 65 66 28 22 6e 65 74 77 6f 72 6b 2e 70 72 6f 78 79 2e 61 75 74 6f 63 6f 6e 66 69 67 5f 75 72 6c } //1 user_pref("network.proxy.autoconfig_url
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}