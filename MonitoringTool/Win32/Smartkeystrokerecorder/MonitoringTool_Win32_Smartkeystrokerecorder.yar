
rule MonitoringTool_Win32_Smartkeystrokerecorder{
	meta:
		description = "MonitoringTool:Win32/Smartkeystrokerecorder,SIGNATURE_TYPE_PEHSTR,09 00 09 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 6d 61 72 74 20 4b 65 79 73 74 72 6f 6b 65 20 52 65 63 6f 72 64 65 72 00 } //2
		$a_01_1 = {00 00 63 3a 5c 50 72 6f 6a 65 63 74 73 5c 53 6d 61 72 74 4b 65 79 73 74 72 6f 6b 65 52 65 63 6f 72 64 65 72 } //2
		$a_01_2 = {53 6d 61 72 74 4d 6f 6e 69 74 6f 72 41 67 65 6e 74 5f 57 69 6e 64 6f 77 43 6c 61 73 73 5f } //2 SmartMonitorAgent_WindowClass_
		$a_01_3 = {00 53 6d 61 72 74 4d 6f 6e 69 74 6f 72 41 67 65 6e 74 5f 76 31 5f 30 00 } //2 匀慭瑲潍楮潴䅲敧瑮癟弱0
		$a_01_4 = {00 53 6d 61 72 74 4b 65 79 73 74 72 6f 6b 65 52 65 63 6f 72 64 65 72 2e 63 68 6d 3a 3a 2f 68 74 6d 6c 2f 00 } //1
		$a_01_5 = {6f 70 65 6e 00 00 00 00 73 6b 72 2e 65 78 65 } //1
		$a_01_6 = {41 72 65 20 79 6f 75 20 73 75 72 65 20 79 6f 75 20 77 61 6e 74 20 74 6f 20 64 65 6c 65 74 65 20 73 63 72 65 65 6e 73 68 6f 74 73 3f } //1 Are you sure you want to delete screenshots?
		$a_01_7 = {73 6d 61 72 74 6b 65 79 73 74 72 6f 6b 65 72 65 63 6f 72 64 65 72 2e 63 6f 6d 2f 6f 72 64 65 72 2e 68 74 6d } //1 smartkeystrokerecorder.com/order.htm
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=9
 
}