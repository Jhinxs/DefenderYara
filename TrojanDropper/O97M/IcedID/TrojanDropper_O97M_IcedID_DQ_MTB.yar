
rule TrojanDropper_O97M_IcedID_DQ_MTB{
	meta:
		description = "TrojanDropper:O97M/IcedID.DQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {62 71 20 22 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 69 43 6f 72 65 42 72 2e 68 74 61 22 } //1 bq "c:\programdata\iCoreBr.hta"
		$a_01_1 = {52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 54 65 78 74 2c 20 62 72 50 72 6f 63 56 61 72 2c 20 22 22 29 } //1 Replace(ActiveDocument.Range.Text, brProcVar, "")
		$a_01_2 = {63 6f 6d 70 61 72 65 56 61 72 49 2e 66 6f 72 50 72 6f 63 20 76 61 72 69 61 62 6c 65 46 75 6e 63 50 72 6f 63 } //1 compareVarI.forProc variableFuncProc
		$a_01_3 = {53 68 65 6c 6c 20 22 63 6d 22 20 26 20 68 74 6d 6c 42 72 43 6f 6d 70 61 72 65 20 26 20 76 61 72 69 61 62 6c 65 46 75 6e 63 50 72 6f 63 } //1 Shell "cm" & htmlBrCompare & variableFuncProc
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}