
rule Trojan_BAT_AgentTesla_NGK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NGK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 "
		
	strings :
		$a_01_0 = {42 00 61 00 63 00 6b 00 67 00 72 00 6f 00 75 00 6e 00 64 00 57 00 69 00 6e 00 64 00 6f 00 77 00 2e 00 78 00 61 00 6d 00 6c } //10
		$a_01_1 = {67 6c 67 6c 6e 37 39 6a 70 35 67 7a 67 79 65 36 38 67 70 35 74 6b 66 71 71 77 74 7a 76 37 71 64 } //10 glgln79jp5gzgye68gp5tkfqqwtzv7qd
		$a_81_2 = {4d 6f 74 69 76 61 74 65 44 65 73 6b 74 6f 70 2e 61 73 70 78 2e 41 53 50 58 2e 72 65 73 6f 75 72 63 65 73 } //1 MotivateDesktop.aspx.ASPX.resources
		$a_81_3 = {4d 6f 74 69 76 61 74 65 44 65 73 6b 74 6f 70 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 MotivateDesktop.Properties.Resources
		$a_01_4 = {59 75 41 6f 20 32 30 31 32 } //1 YuAo 2012
		$a_81_5 = {53 75 62 73 74 72 69 6e 67 } //1 Substring
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_01_4  & 1)*1+(#a_81_5  & 1)*1) >=14
 
}