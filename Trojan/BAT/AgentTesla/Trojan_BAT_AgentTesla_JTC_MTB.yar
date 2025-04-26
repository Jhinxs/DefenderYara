
rule Trojan_BAT_AgentTesla_JTC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JTC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_81_0 = {67 66 68 68 66 68 66 68 66 68 66 68 66 68 66 68 66 68 66 68 66 68 66 68 } //1 gfhhfhfhfhfhfhfhfhfhfhfh
		$a_81_1 = {23 66 73 64 66 73 64 66 2e 64 6c 6c 23 } //1 #fsdfsdf.dll#
		$a_81_2 = {23 66 73 64 66 73 64 2e 64 6c 6c 23 } //1 #fsdfsd.dll#
		$a_81_3 = {23 66 73 64 66 64 73 66 2e 64 6c 6c 23 } //1 #fsdfdsf.dll#
		$a_81_4 = {66 73 73 73 73 73 73 73 73 73 73 61 66 66 66 66 66 66 66 66 66 } //1 fssssssssssafffffffff
		$a_81_5 = {66 73 64 66 73 64 66 64 73 66 } //1 fsdfsdfdsf
		$a_81_6 = {53 69 7a 65 6f 66 52 65 73 6f 75 72 63 65 } //1 SizeofResource
		$a_81_7 = {66 61 66 66 66 66 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 66 66 66 66 66 } //1 faffffhhhhhhhhhhhhhhhhhhhhhhfffff
		$a_81_8 = {23 66 73 64 64 64 64 64 64 64 64 64 23 } //1 #fsddddddddd#
		$a_81_9 = {67 66 64 66 66 66 66 66 66 67 } //1 gfdffffffg
		$a_81_10 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=11
 
}