object DelYBFP_SupForm: TDelYBFP_SupForm
  Left = 311
  Top = 242
  BorderStyle = bsDialog
  Caption = #20316#24223#25509#21475#21457#31080
  ClientHeight = 377
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 42
    Top = 36
    Width = 329
    Height = 304
    BorderOuter = fsFlatRounded
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 66
      Top = 25
      Width = 60
      Height = 15
      Caption = #20010#20154#32534#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzLabel3: TRzLabel
      Left = 78
      Top = 59
      Width = 46
      Height = 15
      Caption = #32467#31639'ID'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzLabel4: TRzLabel
      Left = 78
      Top = 94
      Width = 45
      Height = 15
      Caption = #21457#31080#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzLabel5: TRzLabel
      Left = 53
      Top = 128
      Width = 75
      Height = 15
      Caption = #21457#31080#25805#20316#21592
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzLabel6: TRzLabel
      Left = 66
      Top = 163
      Width = 60
      Height = 15
      Caption = #21457#31080#31867#22411
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzLabel2: TRzLabel
      Left = 78
      Top = 200
      Width = 45
      Height = 15
      Caption = #20303#38498#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzLabel7: TRzLabel
      Left = 66
      Top = 235
      Width = 60
      Height = 15
      Caption = #21457#31080#23646#24615
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object YBNoEdit: TRzEdit
      Left = 134
      Top = 20
      Width = 141
      Height = 23
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      FrameVisible = True
      ParentFont = False
      TabOrder = 0
    end
    object JSIDEdit: TRzEdit
      Left = 134
      Top = 55
      Width = 141
      Height = 23
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      FrameVisible = True
      ParentFont = False
      TabOrder = 1
    end
    object FPNumEdit: TRzEdit
      Left = 134
      Top = 89
      Width = 141
      Height = 23
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      FrameVisible = True
      ParentFont = False
      TabOrder = 2
    end
    object OperNameEdit: TRzEdit
      Left = 134
      Top = 124
      Width = 141
      Height = 23
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      FrameVisible = True
      ParentFont = False
      TabOrder = 3
    end
    object FPTypeComboBox: TRzComboBox
      Left = 134
      Top = 159
      Width = 141
      Height = 23
      Style = csDropDownList
      Ctl3D = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      FrameVisible = True
      ItemHeight = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnChange = FPTypeComboBoxChange
      Items.Strings = (
        #38376#35786#21457#31080
        #20303#38498#21457#31080)
    end
    object RzRadioButton1: TRzRadioButton
      Left = 64
      Top = 276
      Width = 115
      Height = 17
      Caption = #20316#24223#20013#24515#31471#21457#31080
      Checked = True
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 5
      TabStop = True
      OnClick = RzRadioButton1Click
    end
    object RzRadioButton2: TRzRadioButton
      Left = 184
      Top = 276
      Width = 115
      Height = 17
      Caption = #20316#24223#21307#38498#31471#21457#31080
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 6
      OnClick = RzRadioButton2Click
    end
    object ZYNumEdit: TRzEdit
      Left = 134
      Top = 195
      Width = 141
      Height = 23
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      FrameVisible = True
      ParentFont = False
      TabOrder = 7
    end
    object FPAttribComboBox: TRzComboBox
      Left = 134
      Top = 231
      Width = 141
      Height = 23
      Style = csDropDownList
      Ctl3D = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      FrameVisible = True
      ItemHeight = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      OnChange = FPTypeComboBoxChange
      Items.Strings = (
        '1'#12289#20986#38498#32467#31639#21457#31080
        '2'#12289#20013#36884#32467#31639#21457#31080)
    end
  end
  object OkBtn: TRzBitBtn
    Left = 396
    Top = 205
    Caption = '&O '#30830#23450
    HotTrack = True
    TabOrder = 1
    OnClick = OkBtnClick
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      08000000000000020000630B0000630B00000001000000000000000000003300
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
      4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
      6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
      0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
      120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
      12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
      1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
      181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
      E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
      E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
      E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
      E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
      E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
      E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
    NumGlyphs = 2
  end
  object CancelBtn: TRzBitBtn
    Left = 396
    Top = 247
    Cancel = True
    ModalResult = 2
    Caption = '&C '#21462#28040
    HotTrack = True
    TabOrder = 2
    OnClick = CancelBtnClick
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
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEB46C6C6CEE
      EEEEEEEEB46C6C6CEEEEEEE2DFDFDFEEEEEEEEEEE2DFDFDFEEEEEEB49090906C
      EEEEEEB49090906CEEEEEEE2818181DFEEEEEEE2818181DFEEEEEEEEB4909090
      6CEEB49090906CEEEEEEEEEEE2818181DFEEE2818181DFEEEEEEEEEEEEB49090
      906C9090906CEEEEEEEEEEEEEEE2818181DF818181DFEEEEEEEEEEEEEEEEB490
      909090906CEEEEEEEEEEEEEEEEEEE28181818181DFEEEEEEEEEEEEEEEEEEEEB4
      9090906CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEEEEB490
      909090906CEEEEEEEEEEEEEEEEEEE28181818181DFEEEEEEEEEEEEEEEEB49090
      906C9090906CEEEEEEEEEEEEEEE2818181DF818181DFEEEEEEEEEEEEB4909090
      6CEEB49090906CEEEEEEEEEEE2818181DFEEE2818181DFEEEEEEEEB49090906C
      EEEEEEB49090906CEEEEEEE2818181DFEEEEEEE2818181DFEEEEEEB4B4B4B4EE
      EEEEEEEEB4B4B4B4EEEEEEE2E2E2E2EEEEEEEEEEE2E2E2E2EEEEEEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
    NumGlyphs = 2
  end
  object DelMZInvoiceStoredProc: TStoredProc
    DatabaseName = 'DispData'
    StoredProcName = 'dbo.DelMZInvoice'
    Left = 89
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@fpnum'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@opername'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@note'
        ParamType = ptInput
      end>
  end
  object DelZYFPStoredProc: TStoredProc
    DatabaseName = 'DispData'
    StoredProcName = 'dbo.DelZYFP'
    Left = 124
    Top = 1
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@zynum'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@fpnum'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@operator'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@outflag'
        ParamType = ptInput
      end>
  end
  object DRYB_InvoicebaseQuery: TQuery
    DatabaseName = 'DispData'
    SQL.Strings = (
      'select fpnum,patientstate,fpname,zynum,mznum,fpoper'
      '  from dryb_invoicebase (nolock) '
      '  where fpnum=:fpnum and patientstate=:patientstate')
    Left = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fpnum'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'patientstate'
        ParamType = ptUnknown
      end>
  end
end