
rule Trojan_BAT_SnakeLogger_SPQ_MTB{
	meta:
		description = "Trojan:BAT/SnakeLogger.SPQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {08 11 08 07 11 08 9a 1f 10 28 ?? ?? ?? 0a d2 9c 11 08 17 58 13 08 11 08 07 8e 69 fe 04 13 09 11 09 2d dd } //4
		$a_01_1 = {44 41 53 48 42 44 47 49 47 48 42 49 4a 41 44 47 } //1 DASHBDGIGHBIJADG
		$a_01_2 = {51 75 69 7a 44 65 73 6b 74 6f 70 41 70 70 } //1 QuizDesktopApp
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=6
 
}