
rule VirTool_Win32_RemcInj_MTB{
	meta:
		description = "VirTool:Win32/RemcInj!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {83 fb 00 7f 90 0a 70 00 83 eb 02 90 0a 10 00 83 eb 02 [0-10] ff 34 1f [0-15] 8f 04 18 [0-40] 31 34 18 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}