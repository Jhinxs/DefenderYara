
rule TrojanDropper_O97M_GraceWire_CK_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.CK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {49 66 20 74 6f 6f 6f 6c 73 65 74 43 68 75 6e 6b 49 20 41 6e 64 20 6a 20 3d 20 43 6f 75 6e 74 20 41 6e 64 20 63 20 3c 3e 20 22 22 22 22 20 54 68 65 6e 20 47 65 74 50 2e 61 72 61 6d 20 3d 20 47 65 74 50 2e 61 72 61 6d 20 26 20 63 } //1 If tooolsetChunkI And j = Count And c <> """" Then GetP.aram = GetP.aram & c
		$a_03_1 = {74 6f 6f 6f 6c 73 65 74 43 68 75 6e 6b 51 20 3d 20 46 61 6c 73 65 [0-08] 47 65 74 50 2e 61 72 61 6d 20 3d 20 22 22 } //1
		$a_01_2 = {45 6c 73 65 49 66 20 74 6f 6f 6f 6c 73 65 74 43 68 75 6e 6b 49 20 41 6e 64 20 4e 6f 74 20 74 6f 6f 6f 6c 73 65 74 43 68 75 6e 6b 51 20 54 68 65 6e } //1 ElseIf tooolsetChunkI And Not tooolsetChunkQ Then
		$a_03_3 = {46 72 65 65 46 69 6c 65 [0-04] 4f 70 65 6e 20 43 6f 6d 70 6f 73 69 74 69 6f 6e 32 20 46 6f 72 20 42 69 6e 61 72 79 20 41 63 63 65 73 73 20 52 65 61 64 20 41 73 20 50 72 6f 73 74 6f 50 6c 61 6e } //1
		$a_03_4 = {4e 65 78 74 20 48 53 50 90 0c 02 00 45 6e 64 20 53 75 62 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}