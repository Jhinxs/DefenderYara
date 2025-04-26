
rule Trojan_Win64_RefLoaderArtifact_A_{
	meta:
		description = "Trojan:Win64/RefLoaderArtifact.A!!RefLoaderArtifact.A64,SIGNATURE_TYPE_ARHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {8e 4e 0e ec 74 ?? ?? ?? ?? ?? aa fc 0d 7c 74 } //1
		$a_03_1 = {8e 4e 0e ec 74 ?? ?? ?? aa fc 0d 7c 74 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}