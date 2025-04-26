
rule Trojan_Win32_Qakbot_GZ_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.GZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {6f 75 74 2e 64 6c 6c } //1 out.dll
		$a_01_1 = {44 72 61 77 54 68 65 6d 65 49 63 6f 6e } //1 DrawThemeIcon
		$a_01_2 = {61 6c 64 68 61 66 61 72 61 } //1 aldhafara
		$a_01_3 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllUnregisterServer
		$a_01_4 = {62 72 65 61 73 74 68 65 69 67 68 74 } //1 breastheight
		$a_01_5 = {6d 61 72 6d 6f 72 65 61 6e } //1 marmorean
		$a_01_6 = {73 6f 6e 69 6f 75 } //1 soniou
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}