
rule HackTool_Win64_CallBckHel_MTB{
	meta:
		description = "HackTool:Win64/CallBckHel!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {41 b8 04 00 00 00 48 8d 15 [0-04] e8 [0-04] 85 c0 [0-06] 8b c7 48 3b 43 08 [0-06] 48 83 c3 18 48 3b de [0-06] 48 8b 5c 24 [0-02] 48 8b 74 24 [0-02] [0-10] 48 8b 03 48 8b 5c 24 [0-02] 48 83 e0 f0 } //1
		$a_00_1 = {52 65 73 65 74 44 43 41 } //1 ResetDCA
		$a_00_2 = {52 65 73 65 74 44 43 57 } //1 ResetDCW
		$a_00_3 = {6b 33 32 65 6e 75 6d 64 65 76 69 63 65 64 72 69 76 65 72 73 } //1 k32enumdevicedrivers
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}