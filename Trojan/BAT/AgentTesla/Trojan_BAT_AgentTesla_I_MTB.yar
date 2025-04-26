
rule Trojan_BAT_AgentTesla_I_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.I!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {01 0a 06 16 72 ?? ?? ?? ?? a2 06 17 02 28 ?? ?? ?? 06 a2 06 18 7e ?? ?? ?? 04 a2 06 28 ?? ?? ?? 0a 00 06 73 ?? ?? ?? 06 0b 2a } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_I_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.I!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 4d 5f 4b 45 59 46 49 52 53 54 00 57 4d 5f 4b 45 59 44 4f 57 4e 00 57 4d 5f 4b 45 59 55 50 00 57 4d 5f 43 48 41 52 00 57 4d 5f 44 45 41 44 43 48 41 52 00 57 4d 5f 53 59 53 4b 45 59 44 4f 57 4e 00 57 4d 5f 53 59 53 4b 45 59 55 50 00 57 4d 5f 53 59 53 43 48 41 52 00 57 4d 5f 53 59 53 44 45 41 44 43 48 41 52 00 57 4d 5f 4b 45 59 4c 41 53 54 00 57 4d 5f 49 4d 45 5f 53 54 41 52 54 43 } //2 䵗䭟奅䥆卒T䵗䭟奅佄乗圀彍䕋啙P䵗䍟䅈R䵗䑟䅅䍄䅈R䵗卟卙䕋䑙坏N䵗卟卙䕋啙P䵗卟卙䡃剁圀彍奓䑓䅅䍄䅈R䵗䭟奅䅌呓圀彍䵉彅呓剁䍔
		$a_01_1 = {54 6f 43 68 61 72 41 72 72 61 79 00 52 65 76 65 72 73 65 00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 潔桃牡牁慲y敒敶獲e牆浯慂敳㐶瑓楲杮
		$a_00_2 = {4e 6f 76 65 6c 20 62 79 20 48 6f 6e 6f 72 } //1 Novel by Honor
		$a_00_3 = {47 6f 72 69 6f 74 2e 43 6f 6e 74 72 6f 6c 73 } //1 Goriot.Controls
		$a_00_4 = {45 6a 65 63 74 41 66 74 65 72 42 6f 6f 74 } //1 EjectAfterBoot
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}