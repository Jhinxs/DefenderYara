
rule Trojan_BAT_AgentTesla_NPO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NPO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 09 00 00 "
		
	strings :
		$a_01_0 = {45 66 66 66 66 66 73 64 66 73 64 66 73 64 64 66 66 73 64 66 66 66 66 66 66 66 66 73 64 66 73 64 66 66 66 66 66 66 66 66 66 66 66 } //10 Efffffsdfsdfsddffsdffffffffsdfsdfffffffffff
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 } //10 FromBase64
		$a_01_2 = {47 65 74 4d 65 74 68 6f 64 } //10 GetMethod
		$a_01_3 = {23 67 66 73 64 64 66 73 64 66 66 64 6c 6c 73 66 73 66 64 2e 64 6c 6c 23 } //1 #gfsddfsdffdllsfsfd.dll#
		$a_01_4 = {23 66 73 64 66 76 73 64 66 64 73 66 64 66 73 64 73 6c 6c 76 66 65 64 73 66 64 64 67 64 23 } //1 #fsdfvsdfdsfdfsdsllvfedsfddgd#
		$a_01_5 = {23 67 64 73 64 66 73 64 66 73 66 64 73 65 65 64 66 73 6c 64 66 64 73 73 67 64 68 66 64 67 67 67 67 67 67 64 6b 6b 73 67 2e 64 6c 6c 23 } //1 #gdsdfsdfsfdseedfsldfdssgdhfdggggggdkksg.dll#
		$a_01_6 = {23 66 73 64 73 66 76 73 64 66 64 73 66 64 66 73 64 73 6c 6c 76 66 65 64 73 66 64 64 67 64 23 } //1 #fsdsfvsdfdsfdfsdsllvfedsfddgd#
		$a_01_7 = {23 67 66 66 64 73 73 64 66 73 66 73 73 73 65 64 6b 6a 64 66 66 2e 64 6c 6c 23 } //1 #gffdssdfsfsssedkjdff.dll#
		$a_01_8 = {23 67 64 73 64 66 64 66 73 64 66 73 66 64 73 65 65 64 66 73 6c 64 66 64 73 73 67 64 68 66 64 67 67 67 67 67 67 64 6b 6b 73 67 2e 64 6c 6c 23 } //1 #gdsdfdfsdfsfdseedfsldfdssgdhfdggggggdkksg.dll#
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=33
 
}