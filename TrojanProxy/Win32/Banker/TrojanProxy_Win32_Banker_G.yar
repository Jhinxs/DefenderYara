
rule TrojanProxy_Win32_Banker_G{
	meta:
		description = "TrojanProxy:Win32/Banker.G,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_01_0 = {73 76 63 68 6f 73 74 73 } //5 svchosts
		$a_02_1 = {45 6e 61 62 6c 65 48 74 74 70 31 5f 31 00 [0-10] 50 72 6f 78 79 45 6e 61 62 6c 65 00 [0-10] 4d 69 67 72 61 74 65 50 72 6f 78 79 00 } //1
		$a_01_2 = {43 6f 6e 73 65 6e 74 50 72 6f 6d 70 74 42 65 68 61 76 69 6f 72 41 64 6d 69 6e } //1 ConsentPromptBehaviorAdmin
		$a_00_3 = {2e 69 6e 73 69 64 65 77 61 62 2e 63 6f 6d } //1 .insidewab.com
		$a_00_4 = {5c 4d 6f 7a 69 6c 6c 61 5c 46 69 72 65 66 6f 78 5c 50 72 6f 66 69 6c 65 73 5c } //1 \Mozilla\Firefox\Profiles\
		$a_00_5 = {75 73 65 72 5f 70 72 65 66 28 22 6e 65 74 77 6f 72 6b 2e 70 72 6f 78 79 2e 61 75 74 6f 63 6f 6e 66 69 67 5f 75 72 6c 22 } //1 user_pref("network.proxy.autoconfig_url"
	condition:
		((#a_01_0  & 1)*5+(#a_02_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=10
 
}