
rule Trojan_Win32_Kexqoud_gen_A{
	meta:
		description = "Trojan:Win32/Kexqoud.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 08 00 00 "
		
	strings :
		$a_01_0 = {73 69 6f 6e 5c 52 75 6e 00 41 50 50 44 41 54 41 00 25 73 5c 25 73 2e 65 78 65 00 23 38 30 30 31 } //20
		$a_01_1 = {50 00 8b 45 f8 8b 55 fc 2d 00 80 3e d5 81 da de b1 9d 01 52 50 6a 00 68 80 96 98 00 e8 } //20
		$a_01_2 = {62 6f 74 73 63 6f 6f 6c 6e 65 73 73 73 5f 63 70 75 3a 31 32 33 40 75 73 32 2e 65 63 6c 69 70 73 65 6d 63 2e 63 6f 6d 3a 38 33 33 37 } //1 botscoolnesss_cpu:123@us2.eclipsemc.com:8337
		$a_01_3 = {31 45 53 31 31 4b 65 35 6d 78 67 7a 39 4d 59 69 4a 32 50 62 31 4d 67 59 32 46 46 59 6e 66 73 35 66 41 3a 78 40 6d 69 6e 69 6e 67 2e 65 6c 69 67 69 75 73 2e 73 74 3a 38 33 33 37 } //1 1ES11Ke5mxgz9MYiJ2Pb1MgY2FFYnfs5fA:x@mining.eligius.st:8337
		$a_01_4 = {68 69 74 6d 61 6e 75 6b 5f 63 68 65 61 70 3a 31 32 33 40 70 6f 72 74 38 30 2e 62 74 63 67 75 69 6c 64 2e 63 6f 6d 3a 38 30 } //1 hitmanuk_cheap:123@port80.btcguild.com:80
		$a_01_5 = {62 6c 61 63 6b 77 65 61 64 65 72 40 68 6f 74 6d 61 69 6c 2e 63 6f 6d 5f 72 6f 62 79 3a 62 75 72 74 73 68 61 67 61 2d 71 31 77 32 65 33 72 34 40 70 6f 6f 6c 2e 35 30 62 74 63 2e 63 6f 6d 3a 38 33 33 32 } //1 blackweader@hotmail.com_roby:burtshaga-q1w2e3r4@pool.50btc.com:8332
		$a_01_6 = {2d 67 20 79 65 73 20 2d 6f 20 68 74 74 70 3a 2f 2f 68 69 74 6d 61 6e 75 6b 2e 62 69 74 3a 62 69 74 40 61 70 69 2e 62 69 74 63 6f 69 6e 2e 63 7a 3a 38 33 33 32 } //1 -g yes -o http://hitmanuk.bit:bit@api.bitcoin.cz:8332
		$a_01_7 = {73 79 73 74 65 6d 2e 65 78 65 20 2d 6f 20 68 74 74 70 3a 2f 2f 68 69 74 6d 61 6e 75 6b 5f 6d 75 6c 74 69 3a 31 32 33 40 62 74 63 67 75 69 6c 64 2e 63 6f 6d 3a 38 33 33 32 } //1 system.exe -o http://hitmanuk_multi:123@btcguild.com:8332
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*20+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=41
 
}