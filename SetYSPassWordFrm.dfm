object SetYSPasswordForm: TSetYSPasswordForm
  Left = 363
  Top = 477
  BorderStyle = bsDialog
  Caption = #21475#20196#35774#32622
  ClientHeight = 237
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel5: TRzLabel
    Left = 312
    Top = 48
    Width = 81
    Height = 49
    AutoSize = False
    Caption = '  '#27880#24847#65306#23494#30721#38271#24230#19981#33021#36229#36807'10'#20301#12290
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    WordWrap = True
    ShadowDepth = 1
  end
  object RzPanel1: TRzPanel
    Left = 40
    Top = 32
    Width = 257
    Height = 169
    BorderOuter = fsFlatRounded
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RzLabel2: TRzLabel
      Left = 16
      Top = 31
      Width = 70
      Height = 14
      Caption = #26087'('#21407')'#23494#30721
    end
    object RzLabel3: TRzLabel
      Left = 16
      Top = 86
      Width = 42
      Height = 14
      Caption = #26032#23494#30721
    end
    object RzLabel4: TRzLabel
      Left = 16
      Top = 125
      Width = 70
      Height = 14
      Caption = #26032#23494#30721#30830#35748
    end
    object OldPasswordEdit: TRzEdit
      Left = 96
      Top = 24
      Width = 137
      Height = 22
      FrameVisible = True
      MaxLength = 10
      PasswordChar = '*'
      TabOrder = 0
    end
    object NewPasswordEdit1: TRzEdit
      Left = 96
      Top = 80
      Width = 137
      Height = 22
      FrameVisible = True
      MaxLength = 10
      PasswordChar = '*'
      TabOrder = 1
    end
    object NewPasswordEdit2: TRzEdit
      Left = 96
      Top = 120
      Width = 137
      Height = 22
      FrameVisible = True
      MaxLength = 10
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object OkBtn: TRzBitBtn
    Left = 312
    Top = 120
    Caption = #30830' '#35748
    HotTrack = True
    TabOrder = 1
    OnClick = OkBtnClick
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      0800000000000002000000000000000000000001000000000000000000003300
      00006600000099000000CC000000FF0000000033000033330000663300009933
      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
      000000990000339900006699000099990000CC990000FF99000000CC000033CC
      000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
      0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
      330000333300333333006633330099333300CC333300FF333300006633003366
      33006666330099663300CC663300FF6633000099330033993300669933009999
      3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
      330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
      66006600660099006600CC006600FF0066000033660033336600663366009933
      6600CC336600FF33660000666600336666006666660099666600CC666600FF66
      660000996600339966006699660099996600CC996600FF99660000CC660033CC
      660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
      6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
      990000339900333399006633990099339900CC339900FF339900006699003366
      99006666990099669900CC669900FF6699000099990033999900669999009999
      9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
      990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
      CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
      CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
      CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
      CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
      CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
      FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
      FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
      FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
      FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
      000000808000800000008000800080800000C0C0C00080808000191919004C4C
      4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
      82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
      F100C56A31000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE180C
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEEEEEEEEEEEEEE181212
      0CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEEEEEEEEEE18121212
      120CEEEEEEEEEEEEEEEEEEEEE281818181DFEEEEEEEEEEEEEEEEEE1812121212
      12120CEEEEEEEEEEEEEEEEE2818181818181DFEEEEEEEEEEEEEEEE1812120C18
      1212120CEEEEEEEEEEEEEEE28181DFE2818181DFEEEEEEEEEEEEEE18120CEEEE
      181212120CEEEEEEEEEEEEE281DFEEEEE2818181DFEEEEEEEEEEEE180CEEEEEE
      EE181212120CEEEEEEEEEEE2DFEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEEEE
      EEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEE
      EEEEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEE
      EEEEEEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEE
      EEEEEEEEEE1812120CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEE
      EEEEEEEEEEEE18120CEEEEEEEEEEEEEEEEEEEEEEEEEEE281DFEEEEEEEEEEEEEE
      EEEEEEEEEEEEEE180CEEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
    NumGlyphs = 2
  end
  object ExitBtn: TRzBitBtn
    Left = 312
    Top = 153
    Caption = #36864' '#20986
    HotTrack = True
    TabOrder = 2
    OnClick = ExitBtnClick
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      0800000000000002000000000000000000000001000000000000000000003300
      00006600000099000000CC000000FF0000000033000033330000663300009933
      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
      000000990000339900006699000099990000CC990000FF99000000CC000033CC
      000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
      0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
      330000333300333333006633330099333300CC333300FF333300006633003366
      33006666330099663300CC663300FF6633000099330033993300669933009999
      3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
      330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
      66006600660099006600CC006600FF0066000033660033336600663366009933
      6600CC336600FF33660000666600336666006666660099666600CC666600FF66
      660000996600339966006699660099996600CC996600FF99660000CC660033CC
      660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
      6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
      990000339900333399006633990099339900CC339900FF339900006699003366
      99006666990099669900CC669900FF6699000099990033999900669999009999
      9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
      990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
      CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
      CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
      CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
      CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
      CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
      FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
      FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
      FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
      FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
      000000808000800000008000800080800000C0C0C00080808000191919004C4C
      4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
      82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
      F100C56A31000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
      F1EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEF1EEEEEEEEEEEEEEEEEEEEEEEEF1E3AC
      E3F1EEEEEEEEEEEEEEEEEEEEEEF1EEACE3F1EEEEEEEEEEEEEEEEEEF1E3E28257
      57E2ACE3F1EEEEEEEEEEEEF1EEE2818181E2ACEEF1EEEEEEEEEEE382578282D7
      578181E2E3EEEEEEEEEEEE81818181D7818181E2EEEEEEEEEEEE57828989ADD7
      57797979F1EEEEEEEEEE8181DEDEACD781818181F1EEEEEEEEEE57898989ADD7
      57AAAAA2D7ADEEEEEEEE81DEDEDEACD781DEDE81D7ACEEEEEEEE57898989ADD7
      57AACEA3AD10EEEEEEEE81DEDEDEACD781DEAC81AC81EEEEEEEE5789825EADD7
      57ABCFE21110EEEEEEEE81DE8181ACD781ACACE28181EEEEEEEE578957D7ADD7
      57ABDE101010101010EE81DE56D7ACD781ACDE818181818181EE57898257ADD7
      57EE10101010101010EE81DE8156ACD781E381818181818181EE57898989ADD7
      57EE82101010101010EE81DEDEDEACD781E381818181818181EE57898989ADD7
      57ACF1821110EEEEEEEE81DEDEDEACD781ACF1818181EEEEEEEE57898989ADD7
      57ABEEAB8910EEEEEEEE81DEDEDEACD781ACE3ACDE81EEEEEEEE57828989ADD7
      57ACEEA3EE89EEEEEEEE8181DEDEACD781ACE381EEDEEEEEEEEEEEDE5E8288D7
      57A2A2A2EEEEEEEEEEEEEEDE8181DED781818181EEEEEEEEEEEEEEEEEEAC8257
      57EEEEEEEEEEEEEEEEEEEEEEEEAC818181EEEEEEEEEEEEEEEEEE}
    NumGlyphs = 2
  end
  object UpdatePasswordQuery: TQuery
    DatabaseName = 'SetPasswordDATA'
    SQL.Strings = (
      'insert hislog(opercode,opername,operdate,operflag,operlog,note)'
      
        '  select code,name,getdate(),-1,'#39#21407#23494#30721':"'#39'+rtrim(password)+'#39'".'#39' +(:' +
        'IPAdd),'#39#20462#25913#23494#30721#39
      '    from yscode (nolock)'
      '    where code=:yscode'
      ''
      'update yscode'
      '  set password=:password'
      '  where code=:yscode')
    Left = 296
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IPAdd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'yscode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'password'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'yscode'
        ParamType = ptUnknown
      end>
  end
  object YSCodeQuery: TQuery
    DatabaseName = 'SetPasswordDATA'
    SQL.Strings = (
      'select * from yscode (nolock)'
      '  where code=:yscode')
    Left = 296
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'yscode'
        ParamType = ptUnknown
      end>
  end
end
