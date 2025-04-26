
rule HackTool_Win32_DumpLsass_M{
	meta:
		description = "HackTool:Win32/DumpLsass.M,SIGNATURE_TYPE_CMDHSTR_EXT,14 00 14 00 04 00 00 "
		
	strings :
		$a_00_0 = {41 00 76 00 44 00 75 00 6d 00 70 00 2e 00 65 00 78 00 65 00 } //10 AvDump.exe
		$a_00_1 = {2d 00 70 00 69 00 64 00 } //10 -pid
		$a_00_2 = {2d 00 2d 00 74 00 68 00 72 00 65 00 61 00 64 00 5f 00 69 00 64 00 } //5 --thread_id
		$a_00_3 = {2d 00 2d 00 64 00 75 00 6d 00 70 00 5f 00 6c 00 65 00 76 00 65 00 6c 00 } //5 --dump_level
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*5+(#a_00_3  & 1)*5) >=20
 
}