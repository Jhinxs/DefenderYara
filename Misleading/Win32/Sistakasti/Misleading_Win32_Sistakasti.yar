
rule Misleading_Win32_Sistakasti{
	meta:
		description = "Misleading:Win32/Sistakasti,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 50 6f 69 6e 74 73 74 6f 6e 65 5c 53 79 73 74 65 6d 20 43 6c 65 61 6e 65 72 } //1 \Pointstone\System Cleaner
		$a_01_1 = {5c 49 6e 74 65 67 72 61 74 6f 72 2e 65 78 65 22 20 2d 2d 73 63 61 6e 2d 61 75 74 6f 6d 61 74 69 63 61 6c 6c 79 } //1 \Integrator.exe" --scan-automatically
		$a_03_2 = {43 72 65 61 74 65 73 20 61 20 73 68 6f 72 74 63 75 74 20 74 6f 20 53 79 73 74 65 6d 20 43 6c 65 61 6e 65 72 20 [0-03] 20 6f 6e 20 79 6f 75 72 20 51 75 69 63 6b 20 4c 61 75 6e 63 68 20 66 6f 6c 64 65 72 } //1
		$a_03_3 = {5c 53 79 73 74 65 6d 20 43 6c 65 61 6e 65 72 20 [0-03] 5c 55 74 69 6c 69 74 69 65 73 5c 50 6f 69 6e 74 73 74 6f 6e 65 20 44 69 73 6b 20 44 65 66 72 61 67 2e 6c 6e 6b } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule Misleading_Win32_Sistakasti_2{
	meta:
		description = "Misleading:Win32/Sistakasti,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 6f 69 6e 74 73 74 6f 6e 65 2e 53 79 73 74 65 6d 43 6c 65 61 6e 65 72 2e 50 72 6f 74 65 63 74 6f 72 2e 44 65 74 65 63 74 6f 72 } //2 Pointstone.SystemCleaner.Protector.Detector
		$a_00_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 20 00 43 00 6c 00 65 00 61 00 6e 00 65 00 72 00 20 00 69 00 73 00 20 00 61 00 20 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 65 00 64 00 20 00 74 00 72 00 61 00 64 00 65 00 6d 00 61 00 72 00 6b 00 20 00 6f 00 66 00 20 00 50 00 6f 00 69 00 6e 00 74 00 73 00 74 00 6f 00 6e 00 65 00 20 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 2c 00 20 00 4c 00 4c 00 43 00 2e 00 } //2 System Cleaner is a registered trademark of Pointstone Software, LLC.
		$a_01_2 = {53 79 73 43 6c 65 61 6e 2e 57 65 6c 63 6f 6d 65 53 69 6d 70 6c 65 2e 53 74 72 69 6e 67 73 } //1 SysClean.WelcomeSimple.Strings
		$a_01_3 = {52 65 63 6f 6d 6d 65 6e 64 61 74 69 6f 6e 73 2e 46 72 61 6d 65 2e 46 69 78 50 72 6f 67 72 65 73 73 } //1 Recommendations.Frame.FixProgress
	condition:
		((#a_01_0  & 1)*2+(#a_00_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=2
 
}