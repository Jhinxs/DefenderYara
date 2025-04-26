
rule HackTool_Win32_CMConfigUpdate{
	meta:
		description = "HackTool:Win32/CMConfigUpdate,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {69 00 6d 00 70 00 6f 00 72 00 74 00 2d 00 63 00 6d 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 20 00 [0-30] 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 6e 00 61 00 6d 00 65 00 [0-20] 69 00 70 00 [0-30] 6d 00 61 00 63 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}