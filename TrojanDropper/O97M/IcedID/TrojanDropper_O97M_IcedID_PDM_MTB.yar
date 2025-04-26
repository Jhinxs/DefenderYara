
rule TrojanDropper_O97M_IcedID_PDM_MTB{
	meta:
		description = "TrojanDropper:O97M/IcedID.PDM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 69 72 28 22 2e 67 61 74 74 61 6b 61 22 29 3c 3e 22 22 74 68 65 6e 6d 73 67 62 6f 78 22 6e 6f 74 61 70 70 6c 69 63 61 62 6c 65 65 6e 76 69 72 6f 6e 6d 65 6e 74 22 2c 76 62 63 72 69 74 69 63 61 6c 2c 22 65 72 72 6f 72 22 65 6c 73 65 65 6e 64 69 66 65 6e 64 73 75 62 70 72 69 76 61 74 65 66 75 6e 63 74 69 6f 6e } //1 dir(".gattaka")<>""thenmsgbox"notapplicableenvironment",vbcritical,"error"elseendifendsubprivatefunction
		$a_03_1 = {3d 22 61 62 6e 6f 72 6d 61 6c 74 65 72 6d 69 6e 61 74 69 6f 6e 22 6d 73 67 62 6f 78 76 6e 66 66 76 6b 6c 61 70 75 64 6a 75 7a 2c 76 62 63 72 69 74 69 63 61 6c 65 6e 64 69 66 65 6e 64 73 75 62 70 75 62 6c 69 63 66 75 6e 63 74 69 6f 6e 72 72 68 7a 73 70 78 6b 70 68 76 76 79 28 [0-1f] 2c 6f 70 74 69 6f 6e 61 6c 67 68 73 69 76 6b 73 66 65 75 6d 6e 7a 67 61 73 6c 6f 6e 67 3d 33 29 61 73 73 74 72 69 6e 67 64 69 6d } //1
		$a_01_2 = {28 36 30 2c 35 31 30 2c 39 39 2c 32 29 66 6f 72 70 75 64 6c 6c 71 7a 61 67 6d 61 76 6d 79 3d 31 74 6f 6c 65 6e 28 66 64 6f 65 65 67 73 6b 75 63 6f 70 78 29 73 74 65 70 67 68 73 69 76 6b 73 66 65 75 6d 6e 7a 67 66 6d 78 73 74 6e 6c 75 79 77 68 66 79 68 66 65 61 67 69 3d 66 6d 78 73 74 6e 6c 75 79 77 68 66 79 68 66 65 61 67 69 2b 6a 7a 6c 6e 6c 6f 7a 76 6f 6b 75 64 28 63 69 6e 74 28 6d 69 64 28 66 64 6f 65 65 67 73 6b 75 63 6f 70 78 2c 70 75 64 6c 6c 71 7a 61 67 6d 61 76 6d 79 2c 67 68 73 69 76 6b 73 66 65 75 6d 6e 7a 67 29 29 29 6e 65 78 74 } //1 (60,510,99,2)forpudllqzagmavmy=1tolen(fdoeegskucopx)stepghsivksfeumnzgfmxstnluywhfyhfeagi=fmxstnluywhfyhfeagi+jzlnlozvokud(cint(mid(fdoeegskucopx,pudllqzagmavmy,ghsivksfeumnzg)))next
		$a_01_3 = {2e 67 61 74 74 61 6b 61 22 29 3c 3e 22 22 74 68 65 6e 6d 73 67 62 6f 78 22 6f 62 73 6f 6c 65 74 65 65 6e 76 69 72 6f 6e 6d 65 6e 74 2c 70 6c 65 61 73 65 2c 75 70 64 61 74 65 22 2c 76 62 69 6e 66 6f 72 6d 61 74 69 6f 6e 65 6c 73 65 69 66 7a 64 68 79 61 70 71 73 61 67 7a 74 68 65 6e 70 6e 6a 62 73 72 6e 67 73 67 63 6b 6a 61 79 6f 61 73 64 3d 74 79 6c 6b 66 74 63 69 63 72 6a 78 66 76 6b 68 28 61 63 74 69 76 65 64 6f 63 75 6d 65 6e 74 2e } //1 .gattaka")<>""thenmsgbox"obsoleteenvironment,please,update",vbinformationelseifzdhyapqsagzthenpnjbsrngsgckjayoasd=tylkftcicrjxfvkh(activedocument.
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}