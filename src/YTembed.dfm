object FormBrowser: TFormBrowser
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  Visible = True
  OnDestroy = FormDestroy
  TextHeight = 15
  object EdgeBrowser: TEdgeBrowser
    Left = 0
    Top = 0
    Width = 994
    Height = 527
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 0
    AllowSingleSignOnUsingOSPrimaryAccount = False
    TargetCompatibleBrowserVersion = '117.0.2045.28'
    UserDataFolder = '%LOCALAPPDATA%\bds.exe.WebView2'
  end
end
