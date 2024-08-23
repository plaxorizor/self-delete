Private Sub Suicide()
	Dim a As String
	Dim b As String
	b = Left(Environ("COMSPEC"), InStrRev(Environ("COMSPEC"), "\")) & "ping.exe & 127.0.0.1"
	a = Environ("COMSPEC") & " /c del " & Chr(34) & App.Path & "\" & App.EXEName & ".exe" & Chr(34)
	Call Shell(b, vbHide)
	Call Shell(b, vbHide)
	Call Shell(b, vbHide)
	Call Shell(a, vbHide)
	End
End Sub

Sub Main()
	Call Suicide
End Sub