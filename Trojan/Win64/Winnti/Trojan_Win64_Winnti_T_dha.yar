
rule Trojan_Win64_Winnti_T_dha{
	meta:
		description = "Trojan:Win64/Winnti.T!dha,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {b1 99 75 15 33 c0 85 f6 7e 0f 8a 14 18 32 d1 fe c1 88 14 18 40 3b c6 7c f1 } //1
		$a_01_1 = {61 65 6d 61 6e 65 6c 69 66 70 6d 65 74 74 65 67 } //2 aemanelifpmetteg
		$a_01_2 = {00 52 53 44 53 } //1
		$a_01_3 = {25 73 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 25 73 22 2c 20 73 71 6c 5f 69 6e 69 74 20 25 73 } //1 %s\rundll32.exe "%s", sql_init %s
		$a_01_4 = {25 73 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 25 73 22 2c 20 73 71 6c 69 74 65 33 5f 67 65 74 5f 76 65 72 73 69 6f 6e 20 25 73 } //1 %s\rundll32.exe "%s", sqlite3_get_version %s
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}