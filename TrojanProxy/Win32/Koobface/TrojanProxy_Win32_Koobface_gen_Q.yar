
rule TrojanProxy_Win32_Koobface_gen_Q{
	meta:
		description = "TrojanProxy:Win32/Koobface.gen!Q,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {75 29 c6 45 fc 55 c6 45 fd 0d } //1
		$a_03_1 = {75 11 ff 15 ?? ?? ?? ?? 3d e5 03 00 00 0f 85 ?? ?? ?? ?? 68 ff 00 00 00 68 30 75 00 00 8d 45 ?? 53 50 6a 02 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}