
rule Trojan_Win32_Xiaoba_gen_A{
	meta:
		description = "Trojan:Win32/Xiaoba.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {76 61 72 20 6d 69 6e 65 72 20 3d 20 6e 65 77 20 43 6f 69 6e 48 69 76 65 2e 41 6e 6f 6e 79 6d 6f 75 73 28 27 79 75 4e 57 65 47 6e 39 47 57 4c 37 32 64 4f 4e 42 58 39 57 4e 45 6a 31 61 56 48 78 67 34 39 45 27 29 3b } //2 var miner = new CoinHive.Anonymous('yuNWeGn9GWL72dONBX9WNEj1aVHxg49E');
		$a_01_1 = {3a 5c 00 2a 2e 65 78 65 00 2a 2e 63 6f 6d 00 2a 2e } //1
		$a_01_2 = {5c 5a 68 75 44 6f 6e 67 46 61 6e 67 59 75 2e 65 78 65 } //1 \ZhuDongFangYu.exe
		$a_01_3 = {25 73 5c 25 73 2e 6c 6e 6b 00 } //1
		$a_03_4 = {6a 07 50 6a 00 ff 15 ?? ?? ?? ?? 8b 8c 24 ?? ?? ?? ?? 8d 54 24 ?? 51 52 8d 44 24 ?? 68 ?? ?? ?? ?? 50 ff 15 } //1
	condition:
		((#a_00_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}