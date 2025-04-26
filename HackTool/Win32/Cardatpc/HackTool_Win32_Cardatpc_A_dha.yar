
rule HackTool_Win32_Cardatpc_A_dha{
	meta:
		description = "HackTool:Win32/Cardatpc.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 04 00 00 "
		
	strings :
		$a_01_0 = {2d 2d 65 73 74 61 62 6c 69 73 68 6e 75 6c 6c 73 65 73 73 69 6f 6e } //1 --establishnullsession
		$a_01_1 = {2d 2d 74 65 73 74 34 34 35 00 } //1 ⴭ整瑳㐴5
		$a_01_2 = {63 6c 65 61 6e 6c 61 73 74 2d 64 65 73 63 20 3c 77 6f 72 64 3e 3a } //1 cleanlast-desc <word>:
		$a_01_3 = {2d 2d 66 6f 72 63 65 6c 6f 61 64 00 } //1 ⴭ潦捲汥慯d
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=100
 
}