
rule Trojan_Win64_ShellcodeRunner_GPC_MTB{
	meta:
		description = "Trojan:Win64/ShellcodeRunner.GPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_01_0 = {34 39 38 39 66 39 34 31 62 61 31 32 39 36 38 39 65 32 66 66 64 35 34 38 38 33 63 34 32 30 38 35 63 30 37 34 62 36 36 36 38 62 30 37 34 38 30 31 63 33 38 35 } //5 4989f941ba129689e2ffd54883c42085c074b6668b074801c385
		$a_01_1 = {34 63 34 32 34 32 35 32 34 66 35 37 35 33 34 35 35 32 } //5 4c4242524f57534552
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5) >=10
 
}