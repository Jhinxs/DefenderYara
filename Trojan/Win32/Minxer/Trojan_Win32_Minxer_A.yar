
rule Trojan_Win32_Minxer_A{
	meta:
		description = "Trojan:Win32/Minxer.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 05 00 08 00 00 "
		
	strings :
		$a_03_0 = {2e 65 78 65 20 2d 61 20 [0-40] 3a } //1
		$a_03_1 = {2e 65 78 65 20 2d 70 6f 6f 6c 69 70 3d [0-10] 20 2d 70 6f 6f 6c 70 6f 72 74 3d } //1
		$a_01_2 = {00 6d 73 75 70 64 61 74 65 37 31 5c } //1 洀畳摰瑡㝥就
		$a_03_3 = {00 69 73 77 69 7a 61 72 64 [0-04] 5c } //1
		$a_00_4 = {00 69 6e 64 65 78 65 72 2e 65 78 65 } //2 椀摮硥牥攮數
		$a_01_5 = {63 69 64 61 65 6d 6f 6e 2e 65 78 65 20 2d 63 20 70 72 6f 78 79 2e 63 6f 6e 66 } //3 cidaemon.exe -c proxy.conf
		$a_01_6 = {2e 64 6c 6c 00 73 74 61 72 74 6d 65 00 73 74 6f 70 00 } //1 搮汬猀慴瑲敭猀潴p
		$a_01_7 = {2e 64 6c 6c 00 72 75 6e 6d 65 00 73 74 6f 70 00 } //1 搮汬爀湵敭猀潴p
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_00_4  & 1)*2+(#a_01_5  & 1)*3+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=5
 
}
rule Trojan_Win32_Minxer_A_2{
	meta:
		description = "Trojan:Win32/Minxer.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {2e 65 78 65 20 2d 61 20 6d 37 20 2d 6f 20 73 74 72 61 74 75 6d 2b 74 63 70 3a 2f 2f 78 63 6e 70 6f 6f 6c 32 2e 31 67 68 2e 63 6f 6d 3a 37 33 33 33 20 2d 75 20 43 64 56 72 78 68 41 54 38 4b 4c 43 74 57 41 73 6d 47 34 4d 71 55 32 73 50 36 4a 4d 4e 7a 39 6b 77 5a 20 2d 70 20 78 20 2d 2d 72 65 74 72 69 65 73 } //1 .exe -a m7 -o stratum+tcp://xcnpool2.1gh.com:7333 -u CdVrxhAT8KLCtWAsmG4MqU2sP6JMNz9kwZ -p x --retries
		$a_01_1 = {63 68 61 6e 67 65 20 74 68 65 20 6e 75 6d 62 65 72 20 6f 66 20 74 68 72 65 61 64 73 20 28 2d 74 20 78 29 20 74 68 61 74 20 74 68 65 20 6d 69 6e 65 72 20 73 68 6f 75 6c 64 20 75 73 65 } //1 change the number of threads (-t x) that the miner should use
		$a_01_2 = {58 43 4e 2e 31 47 48 2e 43 4f 4d 20 2d 20 43 72 79 70 74 6f 6e 69 74 65 20 4d 69 6e 69 6e 67 20 50 6f 6f 6c } //1 XCN.1GH.COM - Cryptonite Mining Pool
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}