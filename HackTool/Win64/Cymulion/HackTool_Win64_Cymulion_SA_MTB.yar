
rule HackTool_Win64_Cymulion_SA_MTB{
	meta:
		description = "HackTool:Win64/Cymulion.SA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 8b c2 48 8d 0c 2a 83 e0 ?? 48 ff c2 0f b6 84 18 ?? ?? ?? ?? 32 04 0e 88 01 49 3b d6 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}