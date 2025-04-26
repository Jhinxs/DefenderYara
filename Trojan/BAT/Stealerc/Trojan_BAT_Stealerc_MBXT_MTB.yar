
rule Trojan_BAT_Stealerc_MBXT_MTB{
	meta:
		description = "Trojan:BAT/Stealerc.MBXT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 41 4d 4a 49 49 4a 5a 4e 5a 4a 50 52 55 4c 55 53 4c 4b 42 4a 5a 45 50 59 54 59 55 43 4a 4a 4a 48 49 4c 46 55 52 45 59 4c 46 } //4 AAMJIIJZNZJPRULUSLKBJZEPYTYUCJJJHILFUREYLF
		$a_01_1 = {62 61 63 6b 37 74 6f 70 5f 6d 61 6e 61 67 6d 65 6e 74 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //3 back7top_managment.Resources.resources
		$a_01_2 = {46 43 50 4c 57 56 57 4a 41 43 44 51 57 4c 43 50 5a 45 57 57 4f 54 5a 46 57 44 49 44 4c 50 51 43 42 41 53 4c 50 46 59 41 4c 4c 59 53 47 4a 41 51 4a 41 45 4d 44 4d 44 4c 43 4b 4f 54 4d 54 58 } //2 FCPLWVWJACDQWLCPZEWWOTZFWDIDLPQCBASLPFYALLYSGJAQJAEMDMDLCKOTMTX
		$a_01_3 = {63 48 38 49 58 63 77 51 59 34 50 65 68 32 71 70 41 6e } //1 cH8IXcwQY4Peh2qpAn
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1) >=10
 
}