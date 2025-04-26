
rule Trojan_Win32_Qbot_DEG_MTB{
	meta:
		description = "Trojan:Win32/Qbot.DEG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_81_0 = {7a 4d 43 4a 71 41 6c 59 41 52 } //1 zMCJqAlYAR
		$a_81_1 = {75 48 4f 4d 71 54 51 78 4d 4a } //1 uHOMqTQxMJ
		$a_81_2 = {46 7a 4a 53 4b 52 51 50 62 6c } //1 FzJSKRQPbl
		$a_81_3 = {53 4a 6e 78 59 69 56 6c 6d 76 } //1 SJnxYiVlmv
		$a_81_4 = {54 4f 67 55 48 68 69 77 45 59 } //1 TOgUHhiwEY
		$a_81_5 = {75 56 47 55 62 57 62 7a 69 71 } //1 uVGUbWbziq
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=5
 
}