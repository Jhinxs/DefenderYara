
rule VirTool_Win32_Magniber_C{
	meta:
		description = "VirTool:Win32/Magniber.C,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 } //1 wscript
		$a_00_1 = {2f 00 45 00 3a 00 56 00 42 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 65 00 } //1 /E:VBScript.Encode
		$a_00_2 = {2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 55 00 73 00 65 00 72 00 73 00 2f 00 } //1 ../../Users/
		$a_00_3 = {2f 00 42 00 20 00 } //1 /B 
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}