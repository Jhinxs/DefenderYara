
rule Trojan_Win32_ClipBanker_DL_MTB{
	meta:
		description = "Trojan:Win32/ClipBanker.DL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {6b 65 79 2e 63 6f 63 6f 74 65 63 68 6e 6f 6c 6f 67 79 2e 74 65 63 68 2f 61 75 74 6f 6c 6f 67 69 6e } //1 key.cocotechnology.tech/autologin
		$a_01_1 = {52 65 61 64 79 20 46 6f 72 20 45 78 65 63 75 74 69 6f 6e 21 } //1 Ready For Execution!
		$a_01_2 = {43 6f 63 6f 42 79 74 65 63 6f 64 65 2e 64 6c 6c } //1 CocoBytecode.dll
		$a_01_3 = {54 45 4d 50 25 5c 49 6e 64 69 63 69 75 6d 2d 53 75 70 72 61 2e 6c 6f 67 } //1 TEMP%\Indicium-Supra.log
		$a_01_4 = {40 00 40 00 2e 00 65 00 78 00 65 00 } //1 @@.exe
		$a_01_5 = {43 6c 69 63 6b 20 74 6f 20 62 72 65 61 6b 20 69 6e 20 64 65 62 75 67 67 65 72 21 } //1 Click to break in debugger!
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}