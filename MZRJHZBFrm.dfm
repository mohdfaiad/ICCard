�
 TMZRJHZBFORM 0�� TPF0TMZRJHZBFormMZRJHZBFormLeft�Top� BorderStylebsDialogCaption
   �ʋ�d\OXT�e�~Gl;`h�ClientHeight�ClientWidthColor	clBtnFaceFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TRzPanelPanel1Left,Top(WidthUHeight1BorderOuterfsFlatRoundedCaption Font.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFontTabOrder  TLabelLabel1Left8TopWidthNHeightCaption   �~�{w��Y�eg  TLabelLabel2Left8TopEWidthNHeightCaption   �~�{�~bk�eg  TLabelLabel4Left8TopfWidth� HeightCaption   ��	��b(W,g�~�{g���v�d\OXTFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFont  TLabelLabel5Left8Top� Width0HeightCaption   �bh�	�y�Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFont  TLabelLabel6Left8Top� WidthTHeightCaption   ��	��b/e�N�e_Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFont  TLabelLabel7Left8Top� Width0HeightCaption   �bh�{|�WFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFont  TRzDateTimePickerBegDateEditLeft� TopWidth� HeightDate �+b��@Time �+b��@TabOrder FrameVisible	  TRzDateTimePickerEndDateEditLeft� Top@Width� HeightDate `�Si��@Time `�Si��@TabOrderFrameVisible	  TRzComboBoxOperNameComboBoxLeft8TopxWidth� HeightStylecsDropDownListCtl3DFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style FrameVisible	
ItemHeightParentCtl3D
ParentFontTabOrderOnChangeOperNameComboBoxChangeOnEnterOperNameComboBoxEnter  TRzComboBoxReportSelComboBoxLeft8Top� Width� HeightStylecsDropDownListCtl3DFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style FrameVisible	
ItemHeightParentCtl3D
ParentFontTabOrderOnChangeReportSelComboBoxChangeItems.Strings   1、操作员日结报表:   2、本期结算病人支付情况按医疗待遇统计表:   3、本期结算病人财务分类按医疗待遇统计表4   4、本期结算病人按医疗待遇分类明细表4   5、本期结算病人按支付方式分类明细表%   6、本期结算作废发票明细表:   7、本期结算病人支付情况按门诊类别统计表+   8、本期结算各次日结数据明细表   TRzComboBoxZFFSComboBoxLeft8Top� Width� HeightStylecsDropDownListCtl3DFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style FrameVisible	
ItemHeightParentCtl3D
ParentFontTabOrderItems.Strings   现金   医保支付   合作医疗   记帐   银行下卡   优惠   TRzComboBoxReportTypeComboBoxLeft8TopWidth� HeightStylecsDropDownListCtl3DFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style FrameVisible	
ItemHeightParentCtl3D
ParentFontTabOrderItems.Strings   正常报表   Excel报表    TAnimateAnimate1Left�TopPWidth0Height-	CommonAVIaviFindComputer	StopFrameVisible  	TRzBitBtnOKBtnLeft�Top� WidthUDefault	Caption	   &O 确认HotTrack	TabOrderOnClick
OKBtnClick
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphs  	TRzBitBtn	CancelBtnLeft�Top� WidthUCaption	   &C 取消HotTrack	TabOrderKindbkCancel  TQueryKMQuerySQL.Stringsselect kmcode,kmname,       sum(kmmoney) as kmmoney  from;      (select kmcode,kmname,sum(ypmoney*cfcount) as kmmoneyU        from mzcfypk (index(indexfpnum) nolock),mzinvoice (index(indexjsdate) nolock)h        where mzinvoice.fpnum=mzcfypk.fpnum and mzinvoice.deldate is null and mzinvoice.jfcardid is nullF          and mzinvoice.jsdate>=:begdate and mzinvoice.jsdate<:enddate%          and opername like :opername        group by kmcode,kmname      union all:      select kmcode,kmname,sum(ypmoney*cfcount) as kmmoney[        from mzcfypkhis (index(indexfpnum) nolock),mzinvoicehis (index(indexjsdate) nolock)t        where mzinvoicehis.fpnum=mzcfypkhis.fpnum and mzinvoicehis.deldate is null and mzinvoicehis.jfcardid is nullL          and mzinvoicehis.jsdate>=:begdate and mzinvoicehis.jsdate<:enddate%          and opername like :opername        group by kmcode,kmname      union all5      select kmcode,kmname,sum(checkmoney) as kmmoneyU        from mzcheck (index(indexfpnum) nolock),mzinvoice (index(indexjsdate) nolock)I        where mzinvoice.fpnum=mzcheck.fpnum and mzinvoice.deldate is nullF          and mzinvoice.jsdate>=:begdate and mzinvoice.jsdate<:enddate%          and opername like :opername        group by kmcode,kmname      union all5      select kmcode,kmname,sum(checkmoney) as kmmoney[        from mzcheckhis (index(indexfpnum) nolock),mzinvoicehis (index(indexjsdate) nolock)R        where mzinvoicehis.fpnum=mzcheckhis.fpnum and mzinvoicehis.deldate is nullL          and mzinvoicehis.jsdate>=:begdate and mzinvoicehis.jsdate<:enddate%          and opername like :opername$        group by kmcode,kmname) disp  group by kmcode,kmname  order by kmcode,kmname Left8Top	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown    TQueryKMCodeQuerySQL.Strings+select * from kmcode (nolock) order by code LeftXTop  TQuerySumMZInvoiceQueryDatabaseNameMZDATASQL.Stringsselect sum(fpcount) as fpcount,#       sum(nofpcount) as nofpcount,%       sum(delfpcount) as delfpcount,#       sum(cdfpcount) as cdfpcount,       sum(ysxj) as ysxj,%       sum(roundmoney) as roundmoney,       sum(ssxj) as ssxj,       sum(ybzf) as ybzf,       sum(hzylzf) as hzylzf,       sum(jzzf) as jzzf,       sum(yxzf) as yxzf,       sum(yhhz) as yhhz,       Sum(zpzf) as zpzf,       sum(yskhj) as yskhj,       sum(yberror) as yberror,       sum(czbz) as czbz  from ($         select count(*) as fpcount,U                   sum(case when InvoiceNum='未打印' then 1 else 0 end) as nofpcount,S                sum(case when deldate is not null then 1 else 0 end) as delfpcount,t                sum(case when deldate is null and cdnum is not null and fpnum>cdnum then 1 else 0 end) as cdfpcount,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+`                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-m                    case when roundmoney is not null and deldate is null then roundmoney else 0 end) as ysxj,s                sum(case when roundmoney is not null and deldate is null then roundmoney else 0 end) as roundmoney,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end) as ssxj,]                sum(case when ybflag=1 and deldate is null then zfmoney1 else 0 end) as ybzf,_                sum(case when ybflag=2 and deldate is null then zfmoney1 else 0 end) as hzylzf,]                sum(case when ybflag=3 and deldate is null then zfmoney1 else 0 end) as jzzf,]                sum(case when ybflag=4 and deldate is null then zfmoney1 else 0 end) as yxzf,T                sum(case when ybflag=5 and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney3 is not null and deldate is null then zfmoney3 else 0 end) as yhhz,]                sum(case when ybflag=7 and deldate is null then zfmoney1 else 0 end) as zpzf,^                sum(case when ybflag is not null and deldate is null then zfmoney1 else 0 end+Q                    case when deldate is null then isnull(zfmoney3,0) else 0 end+[                    case when deldate is null then isnull(zfmoney4,0) else 0 end) as yskhj,R                sum(case when deldate is null then yberror else 0 end) as yberror,h                sum(case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end) as czbz5           from mzinvoice (index(indexjsdate) nolock)L           where (jsdate>=:begdate and jsdate<:enddate) and jfcardid is null(             and opername like :opername         union all$         select count(*) as fpcount,U                   sum(case when InvoiceNum='未打印' then 1 else 0 end) as nofpcount,S                sum(case when deldate is not null then 1 else 0 end) as delfpcount,t                sum(case when deldate is null and cdnum is not null and fpnum>cdnum then 1 else 0 end) as cdfpcount,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+`                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-m                    case when roundmoney is not null and deldate is null then roundmoney else 0 end) as ysxj,s                sum(case when roundmoney is not null and deldate is null then roundmoney else 0 end) as roundmoney,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end) as ssxj,]                sum(case when ybflag=1 and deldate is null then zfmoney1 else 0 end) as ybzf,_                sum(case when ybflag=2 and deldate is null then zfmoney1 else 0 end) as hzylzf,]                sum(case when ybflag=3 and deldate is null then zfmoney1 else 0 end) as jzzf,]                sum(case when ybflag=4 and deldate is null then zfmoney1 else 0 end) as yxzf,T                sum(case when ybflag=5 and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney3 is not null and deldate is null then zfmoney3 else 0 end) as yhhz,]                sum(case when ybflag=7 and deldate is null then zfmoney1 else 0 end) as zpzf,^                sum(case when ybflag is not null and deldate is null then zfmoney1 else 0 end+Q                    case when deldate is null then isnull(zfmoney3,0) else 0 end+[                    case when deldate is null then isnull(zfmoney4,0) else 0 end) as yskhj,R                sum(case when deldate is null then yberror else 0 end) as yberror,h                sum(case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end) as czbz8           from mzinvoicehis (index(indexjsdate) nolock)L           where (jsdate>=:begdate and jsdate<:enddate) and jfcardid is null(             and opername like :opername       ) dispview    LeftoTop	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown    TDataSourceSumMZInvoiceDataSourceDataSetSumMZInvoiceQueryLeft�Top  TppDBPipelineppDBPipeline1
DataSourceSumMZInvoiceDataSourceUserNameDBPipeline1Left�Top TppFieldppDBPipeline1ppField1	AlignmenttaRightJustify
FieldAliasfpcount	FieldNamefpcountFieldLength DataType	dtIntegerDisplayWidth Position   TppFieldppDBPipeline1ppField2	AlignmenttaRightJustify
FieldAlias
delfpcount	FieldName
delfpcountFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldppDBPipeline1ppField3	AlignmenttaRightJustify
FieldAlias	cdfpcount	FieldName	cdfpcountFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldppDBPipeline1ppField4	AlignmenttaRightJustify
FieldAliasysxj	FieldNameysxjFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDBPipeline1ppField5	AlignmenttaRightJustify
FieldAlias
roundmoney	FieldName
roundmoneyFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDBPipeline1ppField6	AlignmenttaRightJustify
FieldAliasssxj	FieldNamessxjFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDBPipeline1ppField7	AlignmenttaRightJustify
FieldAliasybzf	FieldNameybzfFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDBPipeline1ppField8	AlignmenttaRightJustify
FieldAliashzylzf	FieldNamehzylzfFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDBPipeline1ppField9	AlignmenttaRightJustify
FieldAliaslxzf	FieldNamelxzfFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDBPipeline1ppField10	AlignmenttaRightJustify
FieldAliasjzzf	FieldNamejzzfFieldLength DataTypedtDoubleDisplayWidth
Position	  TppFieldppDBPipeline1ppField11	AlignmenttaRightJustify
FieldAliasyxzf	FieldNameyxzfFieldLength DataTypedtDoubleDisplayWidth
Position
  TppFieldppDBPipeline1ppField12	AlignmenttaRightJustify
FieldAliasyhhz	FieldNameyhhzFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDBPipeline1ppField13	AlignmenttaRightJustify
FieldAliasczyb	FieldNameczybFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDBPipeline1ppField14	AlignmenttaRightJustify
FieldAliasyskhj	FieldNameyskhjFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDBPipeline1ppField15	AlignmenttaRightJustify
FieldAliasyberror	FieldNameyberrorFieldLength DataTypedtDoubleDisplayWidth
Position   	TppReport	ppReport1AutoStopDataPipelineppDBPipeline1PrinterSetup.BinNameDefaultPrinterSetup.DocumentName	ppReport1PrinterSetup.PaperNameA4PrinterSetup.PrinterNameDefaultPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight�� PrinterSetup.mmPaperWidth�4 PrinterSetup.PaperSize	Template.FileName%C:\Users\LanyuzhiWin7\Desktop\xxx.rtm
DeviceTypeScreenOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.EnabledOutlineSettings.VisiblePreviewFormSettings.WindowStatewsMaximizedPreviewFormSettings.ZoomSettingzs100Percent TextSearchSettings.DefaultString
<FindText>TextSearchSettings.EnabledLeft�TopVersion9.03mmColumnWidth DataPipelineNameppDBPipeline1 TppHeaderBandppReport1HeaderBand1mmBottomOffset mmHeight˓  mmPrintPosition  TppLabel
TitleLabelUserName
TitleLabelAutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption	   �ʋ"��R�e�~Gl;`h�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   楷体_GB2312	Font.Size
Font.StylefsBoldfsUnderline TextAlignment
taCenteredTransparent	mmHeight[mmLeft�mmTop�4mmWidth�� BandType   TppLabelTab1_JSDateppLabelUserNameTab1_JSDateppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab1_JSDateppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�k mmTop)�  mmWidth1�  BandType   TppLabelTab1_UnitNameppLabelUserNameTab1_UnitNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab1_UnitNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft/bmmTop)�  mmWidth��  BandType   TppLabelTab1_OperNameppLabelUserNameTab1_OperNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab1_OperNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftJ mmTop)�  mmWidth��  BandType   TppLabelppLabel2UserNameLabel7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   USMOT�y�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTop)�  mmWidth?EBandType   TppLabelppLabel3UserNameLabel9Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �e�~�eg�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�) mmTop)�  mmWidth�DBandType   TppLabelppLabel4UserNameLabel11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �d\OXT�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft< mmTop)�  mmWidth�6BandType    TppDetailBandppReport1DetailBand1mmBottomOffset mmHeight�� mmPrintPosition  TppShapeppReport1Shape1UserNameppReport1Shape1mmHeight!mmLeft�mmTop`�  mmWidth	�  BandType  TppLabelppReport1Label2UserNameppReport1Label2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   "�  �R  �y  �vFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftPGmmTop��  mmWidth{LBandType  TppShapeppReport1Shape4UserNameppReport1Shape4mmHeight�H mmLeft�mmTopk mmWidth	�  BandType  TppLabelKMNameLabel1UserNameKMNameLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop�+ mmWidth�SBandType  TppLabelKMNameLabel2UserNameKMNameLabel2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTopvB mmWidth�SBandType  TppLabelKMNameLabel3UserNameKMNameLabel3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel3Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop3Y mmWidth�SBandType  TppLabelKMNameLabel4UserNameKMNameLabel4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop�� mmWidth�SBandType  TppLabelKMNameLabel5UserNameKMNameLabel5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTopj� mmWidth�SBandType  TppLabelKMNameLabel6UserNameKMNameLabel6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel6Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop/� mmWidth�SBandType  TppLabelKMNameLabel7UserNameKMNameLabel7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel7Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop�� mmWidth�SBandType  TppLabelKMNameLabel8UserNameKMNameLabel8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop�� mmWidth�SBandType  TppLabelKMNameLabel9UserNameKMNameLabel9Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel9Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTopn� mmWidth�SBandType  TppLabelKMNameLabel10UserNameKMNameLabel10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel10Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop" mmWidth�YBandType  TppLabelKMNameLabel11UserNameKMNameLabel11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel11Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop�& mmWidth�YBandType  TppLabelKMNameLabel12UserNameKMNameLabel12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel12Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop�= mmWidth�YBandType  TppLabelKMNameLabel13UserNameKMNameLabel13Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel13Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTopYT mmWidth�YBandType  TppLabelKMNameLabel14UserNameKMNameLabel14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel14Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTopl mmWidth�YBandType  TppLabelKMNameLabel15UserNameKMNameLabel15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel15Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop� mmWidth�YBandType  TppLabelKMNameLabel16UserNameKMNameLabel16Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel16Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop�� mmWidth�YBandType  TppLabelKMNameLabel17UserNameKMNameLabel17Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel17Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTopo� mmWidth�YBandType  TppLabelKMNameLabel18UserNameKMNameLabel18Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel18Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop4� mmWidth�YBandType  TppLabelKMNameLabel19UserNameKMNameLabel19Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel19Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop�� mmWidth�YBandType  TppLabelKMNameLabel20UserNameKMNameLabel20Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMNameLabel20Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�VmmTop�� mmWidth�YBandType  TppLabel
FootLabel1UserName
FootLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   O���Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size
Font.Style Transparent	mmHeight�mmLeftq,mmTop� mmWidthz-BandType  TppLabel
FootLabel2UserName
FootLabel2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   Y8h�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop� mmWidthz-BandType  TppLabel
FootLabel3UserName
FootLabel3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Q�~�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size
Font.Style Transparent	mmHeight�mmLefty� mmTop� mmWidthz-BandType  TppShape	ppShape47UserNameShape1mmHeight�mmLeft�mmTop mmWidth�O BandType  TppLabel	ppLabel45UserNameLabel1AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption    N0,gg�ʋ6eeQ	c"��R�y�vR{|�~��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop+mmWidth�L BandType  TppLabel
FootLabel4UserNameLabel8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �N>k�N�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop� mmWidth�<BandType  TppShape	ppShape48UserNameShape3mmHeight!mmLeft��  mmTop`�  mmWidth�  BandType  TppLabelppReport1Label3UserNameppReport1Label3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ё    ��Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop��  mmWidthW)BandType  TppShape	ppShape49UserNameShape2mmHeight��  mmLeft�mmTop�mmWidth�O BandType  TppLabel	ppLabel56UserNameLabel2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shy;`pe�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft-$mmTopE'mmWidth�DBandType  TppLabel	ppLabel57UserNameLabel3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   \O�^�Shy�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�TmmTop�;mmWidth?EBandType  TppLabel	ppLabel58UserNameLabel5AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shy�S�k�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft-$mmTopRfmmWidth�DBandType  TppLabelInvoiceNumppLabelUserNameLabel6AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight�mmmLeft"mmTop�ummWidth�F BandType  TppShape	ppShape50UserNameShape5mmHeight�mmLeft�mmTopb mmWidth�O BandType  TppLabelppReport1Label34UserNameppReport1Label34Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   'Y�Q: Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style Transparent	mmHeight�mmLeft!mmTopDg mmWidth$#BandType  TppLabelBigNumLabelUserNameBigNumLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionBigNumLabelFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style Transparent	mmHeight�mmLeft.CmmTopDg mmWidth�NBandType  TppShapeppReport1Shape13UserNameppReport1Shape13mmHeight�mmLeft�mmTop\K mmWidth	�  BandType  TppLabelppReport1Label38UserNameppReport1Label38Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T��ё��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size
Font.Style Transparent	mmHeight�mmLeft�OmmTopvN mmWidth�<BandType  TppShape	ppShape51UserNameShape4mmHeight�mmLeft��  mmTop\K mmWidth�  BandType  TppLabelTotKMMoneyLabelUserNameTotKMMoneyLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTotKMMoneyLabelFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size
Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLefti�  mmTopvN mmWidth�qBandType  TppShapeppReport1Shape5UserNameppReport1Shape5mmHeight�H mmLeft��  mmTopk mmWidth�  BandType  TppLabelKMMoneyLabel1UserNameKMMoneyLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft.�  mmTop�, mmWidth�YBandType  TppLabelKMMoneyLabel2UserNameKMMoneyLabel2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft.�  mmTopvB mmWidth�YBandType  TppLabelKMMoneyLabel3UserNameKMMoneyLabel3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel3Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft.�  mmTop3Y mmWidth�YBandType  TppLabelKMMoneyLabel4UserNameKMMoneyLabel4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft.�  mmTop�� mmWidth�YBandType  TppLabelKMMoneyLabel5UserNameKMMoneyLabel5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft.�  mmTopj� mmWidth�YBandType  TppLabelKMMoneyLabel6UserNameKMMoneyLabel6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel6Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft.�  mmTop/� mmWidth�YBandType  TppLabelKMMoneyLabel7UserNameKMMoneyLabel7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel7Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft.�  mmTop�� mmWidth�YBandType  TppLabelKMMoneyLabel8UserNameKMMoneyLabel8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft.�  mmTop�� mmWidth�YBandType  TppLabelKMMoneyLabel9UserNameKMMoneyLabel9Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel9Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft.�  mmTopn� mmWidth�YBandType  TppLabelKMMoneyLabel10UserNameKMMoneyLabel10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel10Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTop" mmWidth'aBandType  TppLabelKMMoneyLabel11UserNameKMMoneyLabel11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel11Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTop�& mmWidth'aBandType  TppLabelKMMoneyLabel12UserNameKMMoneyLabel12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel12Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTop�= mmWidth'aBandType  TppLabelKMMoneyLabel13UserNameKMMoneyLabel13Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel13Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTopYT mmWidth'aBandType  TppLabelKMMoneyLabel14UserNameKMMoneyLabel14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel14Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTopl mmWidth'aBandType  TppLabelKMMoneyLabel15UserNameKMMoneyLabel15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel15Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTop� mmWidth'aBandType  TppLabelKMMoneyLabel16UserNameKMMoneyLabel16Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel16Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTop�� mmWidth'aBandType  TppLabelKMMoneyLabel17UserNameKMMoneyLabel17Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel17Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTopo� mmWidth'aBandType  TppLabelKMMoneyLabel18UserNameKMMoneyLabel18Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel18Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTop4� mmWidth'aBandType  TppLabelKMMoneyLabel19UserNameKMMoneyLabel19Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel19Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTop�� mmWidth'aBandType  TppLabelKMMoneyLabel20UserNameKMMoneyLabel20Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionKMMoneyLabel20Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTop�� mmWidth'aBandType  TppLabel	ppLabel82UserNameLabel82Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   1 0o��T9�\��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style Transparent	mmHeight�mmLeft
 mmTop mmWidth�YBandType  TppLabel	ppLabel83UserNameLabel83Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   vQ-N: Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�3mmTop�+ mmWidth$#BandType  TppLabel	ppLabel84UserNameLabel84Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   2 0ʋ�u9�\��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style Transparent	mmHeight�mmLeft
 mmTop�p mmWidth�YBandType  TppLabelYPMoneyLabelUserNameYPMoneyLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionYPMoneyLabelFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeftQ  mmTop mmWidth�UBandType  TppLabelCheckMoneyLabelUserNameCheckMoneyLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionCheckMoneyLabelFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft��  mmTop�p mmWidth}kBandType  TppLabel	ppLabel85UserNameLabel85Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   vQ-N: Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�3mmTop�� mmWidth$#BandType  	TppDBText
ppDBText12UserNameDBText12AutoSize	Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
delfpcountDataPipelineppDBPipeline1DisplayFormat   #0张;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�  mmTop�;mmWidth�4BandType  TppLabelppLabel1UserNameLabel4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �QUS�Shy�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�  mmTop�;mmWidth?EBandType  	TppDBText	ppDBText1UserNameDBText1AutoSize	Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField	cdfpcountDataPipelineppDBPipeline1DisplayFormat   #0张;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	DataPipelineNameppDBPipeline1mmHeight�mmLeftR mmTop�;mmWidth@BandType  TppShapeppReport1Shape3UserNameppReport1Shape3mmHeight�mmLeft�h mmTop mmWidth�p BandType  TppLabelppReport1Label4UserNameppReport1Label4AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �N0,gg�ʋ6eeQ	c/e�N�e_�~��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�i mmTop+mmWidth�n BandType  TppShapeppReport1Shape8UserNameppReport1Shape8mmHeight��  mmLeft�h mmTop�mmWidth�p BandType  TppLabelppReport1Label12UserNameppReport1Label12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   1 0,gg�[6e�sёT��: Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopE'mmWidth[�  BandType  TppLabelppReport1Label13UserNameppReport1Label13Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �^6e�sё: Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopPGmmWidthJ>BandType  TppLabelppReport1Label15UserNameppReport1Label15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   R^�eQ: Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopIemmWidth>BandType  TppShapeppReport1Shape9UserNameppReport1Shape9mmHeight�. mmLeft�h mmTop`�  mmWidth�p BandType  TppLabelppReport1Label14UserNameppReport1Label14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   2 0,ggvQ�[�e_/e�NT��: Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�  mmWidthf�  BandType  TppLabelppReport1Label17UserNameppReport1Label17Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�O/e�N: Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop mmWidth>BandType  TppLabelppReport1Label23UserNameppReport1Label23Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T\O;S�u: Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop1: mmWidth>BandType  TppLabelDispYBZFReport1LabelUserNameDispYBZFReport1LabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   记    帐:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop3Y mmWidth?BandType  TppLabel	ppLabel36UserNameLabel10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��L�NaS: Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopFz mmWidth>BandType  TppLabel	ppLabel37UserNameLabel13Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   优    惠:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopa� mmWidth?BandType  TppLabel	ppLabel52UserNameLabel17Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   vQ-N�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopPGmmWidthW)BandType  TppLabel	ppLabel53UserNameLabel18Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   vQ-N�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop mmWidthW)BandType  TppShape	ppShape75UserNameShape75mmHeight�QmmLeft�h mmTop+ mmWidth�p BandType  TppLabel	ppLabel73UserNameLabel73Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   3 0,ggH I S N;S�O�c�S��]: Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop. mmWidth��  BandType  TppShape	ppShape52UserNameShape52mmHeight mmLeft�h mmTop�a mmWidth�p BandType  TppLabel	ppLabel34UserNameLabel34Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   Y    �l�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style Transparent	mmHeight�mmLeftq mmTopct mmWidth�7BandType  	TppDBText
ppDBText13UserNameDBText13Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeightommLeft�B mmTopE'mmWidth8cBandType  	TppDBText
ppDBText14UserNameDBText14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�B mmTopPGmmWidth8cBandType  	TppDBText
ppDBText15UserNameDBText15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�B mmTopIemmWidth8cBandType  	TppDBText
ppDBText16UserNameDBText16Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyskhjDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�B mmTop�  mmWidth8cBandType  	TppDBText
ppDBText17UserNameDBText17Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�B mmTop mmWidth8cBandType  	TppDBText
ppDBText18UserNameDBText18Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�B mmTop1: mmWidth8cBandType  	TppDBText
ppDBText20UserNameDBText20Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�C mmTop3Y mmWidth8cBandType  	TppDBText
ppDBText21UserNameDBText21Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�C mmTopFz mmWidth8cBandType  	TppDBText
ppDBText22UserNameDBText22Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�C mmTopa� mmWidth8cBandType  	TppDBText
ppDBText24UserNameDBText24Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   ўSO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�B mmTop$/ mmWidth8cBandType  TppLabel	ppLabel59UserNameLabel14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �b_c�Shy�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�TmmTop�PmmWidth7DBandType  TppLabel
ppLabel135UserNameLabel15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   vQ-N�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�0mmTop�;mmWidth-)BandType  TppLabelDamageCountppLabelUserNameDamageCountppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionDamageCountppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�  mmTop�PmmWidth�6BandType  TppLabelFPCountppLabelUserNameFPCountppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionFPCountppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftZgmmTopE'mmWidthRdBandType  TppLabelNoFPCountppLabelUserNameNoFPCountppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionNoFPCountppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�  mmTop�PmmWidth oBandType  TppLabelInvoice_DelppLabelUserNameLabel16AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight��  mmLeftr mmTop� mmWidthD[ BandType  TppLabel
ppLabel154UserNameLabel154Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   /ehy/e�N: Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop|� mmWidthJ>BandType  	TppDBTextppDBText121UserName	DBText121Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldzpzfDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�C mmTop|� mmWidth8cBandType  TppLabel
ppLabel158UserNameLabel158Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   "�?ee��R: Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop�� mmWidth�=BandType  	TppDBTextppDBText123UserName	DBText123Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzDataPipelineppDBPipeline1DisplayFormat   #0.00元;; Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�C mmTop�� mmWidth8cBandType   TppFooterBandppReport1FooterBand1mmBottomOffset mmHeight�.mmPrintPosition  TppLineppLine1UserNameLine1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Weight       ��?mmHeight"mmLeft"mmTop<mmWidth BandType  TppLabelFootppLabel1UserNameLabel12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionFootppLabel1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTop�mmWidth�SBandType   TppParameterListppParameterList2   TQuerySumMZInvoiceQuery2DatabaseNameMZDATASQL.Stringsselect yldy,       sum(fpcount) as fpcount,%       sum(delfpcount) as delfpcount,#       sum(cdfpcount) as cdfpcount,       sum(ysxj) as ysxj,%       sum(roundmoney) as roundmoney,       sum(ssxj) as ssxj,       sum(ybzf) as ybzf,       sum(hzylzf) as hzylzf,       sum(jzzf) as jzzf,       sum(yxzf) as yxzf,       sum(yhhz) as yhhz,       sum(yberror) as yberror,       sum(sshj) as sshj,       sum(czbzzf) as czbzzf  from ()         select yldy,count(*) as fpcount,S                sum(case when deldate is not null then 1 else 0 end) as delfpcount,t                sum(case when deldate is null and cdnum is not null and fpnum>cdnum then 1 else 0 end) as cdfpcount,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+`                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-m                    case when roundmoney is not null and deldate is null then roundmoney else 0 end) as ysxj,s                sum(case when roundmoney is not null and deldate is null then roundmoney else 0 end) as roundmoney,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end) as ssxj,]                sum(case when ybflag=1 and deldate is null then zfmoney1 else 0 end) as ybzf,_                sum(case when ybflag=2 and deldate is null then zfmoney1 else 0 end) as hzylzf,]                sum(case when ybflag=3 and deldate is null then zfmoney1 else 0 end) as jzzf,]                sum(case when ybflag=4 and deldate is null then zfmoney1 else 0 end) as yxzf,T                sum(case when ybflag=5 and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney3 is not null and deldate is null then zfmoney3 else 0 end) as yhhz,R                sum(case when deldate is null then yberror else 0 end) as yberror,O                sum(case when deldate is null then fpmoney else 0 end) as sshj,j                sum(case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end) as czbzzf"           from mzinvoice (nolock)J           where jsdate>=:begdate and jsdate<:enddate and jfcardid is null(             and opername like :opername           group by yldy         union all)         select yldy,count(*) as fpcount,S                sum(case when deldate is not null then 1 else 0 end) as delfpcount,t                sum(case when deldate is null and cdnum is not null and fpnum>cdnum then 1 else 0 end) as cdfpcount,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+`                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-m                    case when roundmoney is not null and deldate is null then roundmoney else 0 end) as ysxj,s                sum(case when roundmoney is not null and deldate is null then roundmoney else 0 end) as roundmoney,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end) as ssxj,]                sum(case when ybflag=1 and deldate is null then zfmoney1 else 0 end) as ybzf,_                sum(case when ybflag=2 and deldate is null then zfmoney1 else 0 end) as hzylzf,]                sum(case when ybflag=3 and deldate is null then zfmoney1 else 0 end) as jzzf,]                sum(case when ybflag=4 and deldate is null then zfmoney1 else 0 end) as yxzf,T                sum(case when ybflag=5 and deldate is null then zfmoney1 else 0 end+j                    case when zfmoney3 is not null  and deldate is null then zfmoney3 else 0 end) as yhhz,R                sum(case when deldate is null then yberror else 0 end) as yberror,O                sum(case when deldate is null then fpmoney else 0 end) as sshj,j                sum(case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end) as czbzzf%           from mzinvoicehis (nolock)J           where jsdate>=:begdate and jsdate<:enddate and jfcardid is null(             and opername like :opername           group by yldy       ) dispview  group by yldy LeftwTop9	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown    TDataSourceSumMZInvoiceDataSource2DataSetSumMZInvoiceQuery2Left�Top9  TppDBPipelineppDBPipeline2
DataSourceSumMZInvoiceDataSource2UserNameDBPipeline2Left�Top9 TppFieldppDBPipeline2ppField1
FieldAliasyldy	FieldNameyldyFieldLength DataType
dtNotKnownDisplayWidth Position 
SearchableSortable  TppFieldppDBPipeline2ppField2
FieldAliasfpcount	FieldNamefpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField3
FieldAlias
delfpcount	FieldName
delfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField4
FieldAlias	cdfpcount	FieldName	cdfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField5
FieldAliasysxj	FieldNameysxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField6
FieldAlias
roundmoney	FieldName
roundmoneyFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField7
FieldAliasssxj	FieldNamessxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField8
FieldAliasybzf	FieldNameybzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField9
FieldAliashzylzf	FieldNamehzylzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField10
FieldAliaslxzf	FieldNamelxzfFieldLength DataType
dtNotKnownDisplayWidth Position	
SearchableSortable  TppFieldppDBPipeline2ppField11
FieldAliasjzzf	FieldNamejzzfFieldLength DataType
dtNotKnownDisplayWidth Position

SearchableSortable  TppFieldppDBPipeline2ppField12
FieldAliasyxzf	FieldNameyxzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField13
FieldAliasyhhz	FieldNameyhhzFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField14
FieldAliasczyb	FieldNameczybFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField15
FieldAliasyberror	FieldNameyberrorFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppDBPipeline2ppField16
FieldAliassshj	FieldNamesshjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable   	TppReport	ppReport2AutoStopDataPipelineppDBPipeline2PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.OrientationpoLandscapePrinterSetup.PaperNameA4PrinterSetup.PrinterNameDefaultPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight�4 PrinterSetup.mmPaperWidth�� PrinterSetup.PaperSize	Template.FileName1   C:\Documents and Settings\Lanyuzhi\桌面\xxx.rtm
DeviceTypeScreenOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	PreviewFormSettings.WindowStatewsMaximized TextSearchSettings.DefaultString
<FindText>TextSearchSettings.Enabled	Left�Top9Version9.03mmColumnWidth DataPipelineNameppDBPipeline2 TppHeaderBandppHeaderBand4mmBottomOffset mmHeight��  mmPrintPosition  TppLabelppLabel5UserNameLabel56AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�ʋ�~�{�u�N/e�N�`�Q	c;S�u�_G��~��h�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   楷体_GB2312	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft$#mmTop$#mmWidthw BandType   TppLabelTab2_UnitNameppLabelUserNameTab2_UnitNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab2_UnitNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�.mmTopSfmmWidth��  BandType   TppLabelTab2_JSDateppLabelUserNameTab2_JSDateppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab2_JSDateppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopSfmmWidth��  BandType   TppLabelTab2_OperNameppLabelUserNameTab2_OperNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab2_OperNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopSfmmWidth��  BandType   TppShape	ppShape62UserNameShape62mmHeight�3mmLeft�mmTop�vmmWidth�ZBandType   TppLabel	ppLabel60UserNameLabel60Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�u�_G�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�2mmTop��  mmWidth�6BandType   TppShape	ppShape63UserNameShape63mmHeight�mmLeft�qmmTopÒ  mmWidth?EBandType   TppLabel	ppLabel61UserNameLabel601Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shy;`peFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft|mmTop��  mmWidth�6BandType   TppShape	ppShape64UserNameShape64mmHeight�mmLeft�  mmTopÒ  mmWidth7DBandType   TppLabel	ppLabel62UserNameLabel62Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   \O�^�ShyFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft#�  mmTop��  mmWidth�6BandType   TppShape	ppShape65UserNameShape65mmHeight�mmLeftC< mmTopÒ  mmWidth{LBandType   TppLabel	ppLabel63UserNameLabel63Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �^6e�sёFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�H mmTop��  mmWidth�6BandType   TppShape	ppShape66UserNameShape66mmHeight�mmLeft�� mmTopÒ  mmWidth�7BandType   TppLabel	ppLabel64UserNameLabel64Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   R^�eQFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftϊ mmTop��  mmWidth�2BandType   TppShape	ppShape67UserNameShape67mmHeight�mmLeft  mmTopÒ  mmWidth�NBandType   TppLabel	ppLabel65UserNameLabel65Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�O/e�NFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftp mmTop��  mmWidth�6BandType   TppShape	ppShape68UserNameShape68mmHeight�mmLeft�Y mmTopÒ  mmWidth�QBandType   TppLabel	ppLabel66UserNameLabel66Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T\O;S�uFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�g mmTop��  mmWidth�6BandType   TppShape	ppShape70UserNameShape70mmHeight�mmLeft!� mmTopÒ  mmWidthsKBandType   TppLabel	ppLabel68UserNameLabel68Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��    ^Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop��  mmWidth`*BandType   TppShape	ppShape71UserNameShape71mmHeight�mmLeft�� mmTopÒ  mmWidthPGBandType   TppLabel	ppLabel69UserNameLabel69Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��L�NaSFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop��  mmWidth�6BandType   TppShape	ppShape72UserNameShape72mmHeight�mmLeft�: mmTopÒ  mmWidth�:BandType   TppLabel	ppLabel70UserNameLabel70Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   O    �`Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft D mmTop��  mmWidth`*BandType   TppShape	ppShape74UserNameShape74mmHeight�3mmLeft�� mmTop�vmmWidthPGBandType   TppLabel	ppLabel72UserNameLabel72Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�O��]Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop��  mmWidth�6BandType   TppShape	ppShape76UserNameShape76mmHeight�3mmLeft�� mmTop�vmmWidth�QBandType   TppLabel	ppLabel74UserNameLabel74AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�~�{�ʋ9�(uFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight5%mmLeft;  mmTop1�  mmWidth�:BandType   TppShapeppShape1UserNameShape4mmHeight�mmLeft|� mmTopÒ  mmWidth�NBandType   TppLabelppLabel6UserNameLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �[6e�sёFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop��  mmWidth�6BandType   TppShape	ppShape10UserNameShape10mmHeight�mmLeftC< mmTop�vmmWidth��  BandType   TppShape	ppShape11UserNameShape101mmHeight�mmLeft  mmTop�vmmWidth�� BandType   TppLabelppLabel9UserNameLabel2AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�sё6eeQFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft\? mmTop(�  mmWidth��  BandType   TppLabel	ppLabel10UserNameLabel3AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,ggvQ�[�e_/e�NFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft mmTop(�  mmWidthr� BandType   TppShape	ppShape12UserNameShape102mmHeight�mmLeft�qmmTop�vmmWidth��  BandType   TppLabel	ppLabel11UserNameLabel4AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�Shy�`�QFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�ummTop(�  mmWidthN�  BandType   TppShape	ppShape13UserNameShape13mmHeight�mmLeft�  mmTopÒ  mmWidth7DBandType   TppLabel	ppLabel12UserNameLabel12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �QUS�ShyFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftH�  mmTop�  mmWidth�6BandType   TppShape
ppShape141UserNameShape141mmHeight�mmLeft�t mmTopÒ  mmWidth�:BandType   TppLabel
ppLabel159UserNameLabel701Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   "�?ee��RFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�v mmTop��  mmWidth�6BandType    TppDetailBandppDetailBand4mmBottomOffset mmHeight�mmPrintPosition  TppShape	ppShape77UserNameShape77mmHeight�mmLeft�mmTop mmWidth�ZBandType  TppShape	ppShape78UserNameShape78mmHeight�mmLeft�qmmTop mmWidth?EBandType  TppShape	ppShape80UserNameShape80mmHeight�mmLeft�  mmTop mmWidth7DBandType  TppShape	ppShape81UserNameShape81mmHeight�mmLeftC< mmTop mmWidth{LBandType  TppShape	ppShape82UserNameShape82mmHeight�mmLeft�� mmTop mmWidth�7BandType  TppShape	ppShape83UserNameShape83mmHeight�mmLeft  mmTop mmWidth�NBandType  TppShape	ppShape84UserNameShape84mmHeight�mmLeft�Y mmTop mmWidth�QBandType  TppShape	ppShape86UserNameShape701mmHeight�mmLeft!� mmTop mmWidthsKBandType  TppShape	ppShape87UserNameShape87mmHeight�mmLeft�� mmTop mmWidthPGBandType  TppShape	ppShape88UserNameShape88mmHeight�mmLeft�: mmTop mmWidth�:BandType  TppShape	ppShape90UserNameShape90mmHeight�mmLeft�� mmTop mmWidthPGBandType  TppShape	ppShape91UserNameShape91mmHeight�mmLeft�� mmTop mmWidth�QBandType  	TppDBText
ppDBText26UserNameDBText26Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyldyDataPipelineppDBPipeline2Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	DataPipelineNameppDBPipeline2mmHeight�mmLeft�mmTop"mmWidth�SBandType  	TppDBText
ppDBText27UserNameDBText27Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpcountDataPipelineppDBPipeline2DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�vmmTop4mmWidth�;BandType  	TppDBText
ppDBText29UserNameDBText29Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
delfpcountDataPipelineppDBPipeline2DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft��  mmTop4mmWidth>BandType  	TppDBText
ppDBText30UserNameDBText30Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeftT> mmTop4mmWidthYHBandType  	TppDBText
ppDBText31UserNameDBText31Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeftƉ mmTop4mmWidth�2BandType  	TppDBText
ppDBText32UserNameDBText32Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft mmTop<mmWidthjJBandType  	TppDBText
ppDBText33UserNameDBText33Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�\ mmTop<mmWidthsKBandType  	TppDBText
ppDBText35UserNameDBText35Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeftD� mmTop<mmWidth7DBandType  	TppDBText
ppDBText36UserNameDBText36Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�� mmTop<mmWidth%BBandType  	TppDBText
ppDBText37UserNameDBText37Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�< mmTop<mmWidth�5BandType  	TppDBText
ppDBText39UserNameDBText39Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�� mmTop<mmWidth%BBandType  	TppDBText
ppDBText40UserNameDBText40Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�� mmTop<mmWidth�MBandType  TppShapeppShape2UserNameShape5mmHeight�mmLeft|� mmTop mmWidth�NBandType  	TppDBText	ppDBText2UserNameDBText2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�� mmTop4mmWidthYHBandType  TppShape	ppShape14UserNameShape802mmHeight�mmLeft�  mmTop mmWidth7DBandType  	TppDBText	ppDBText5UserNameDBText5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField	cdfpcountDataPipelineppDBPipeline2DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft&�  mmTop4mmWidth>BandType  TppShape
ppShape156UserNameShape156mmHeight�mmLeft�t mmTop mmWidth�:BandType  	TppDBTextppDBText124UserName	DBText124Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�v mmTop<mmWidth�5BandType   TppFooterBandppFooterBand1mmBottomOffset mmHeight�3mmPrintPosition  TppLineppLine2UserNameLine2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Weight       ��?mmHeightV
mmLeft�mmTop<mmWidthF? BandType  TppLabelFootppLabel2UserNameLabel5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionLabel5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTopxmmWidth`*BandType   TppSummaryBandppSummaryBand2mmBottomOffset mmHeight�/mmPrintPosition  TppShape	ppShape92UserNameShape92mmHeight�mmLeft�mmTop mmWidth�ZBandType  TppShape	ppShape93UserNameShape93mmHeight�mmLeft�qmmTop mmWidth?EBandType  TppShape	ppShape95UserNameShape801mmHeight�mmLeft�  mmTop mmWidth7DBandType  TppShape	ppShape96UserNameShape96mmHeight�mmLeftC< mmTop mmWidth{LBandType  TppShape	ppShape97UserNameShape97mmHeight�mmLeft�� mmTop mmWidth�7BandType  TppShape	ppShape98UserNameShape98mmHeight�mmLeft  mmTop mmWidth�NBandType  TppShape	ppShape99UserNameShape99mmHeight�mmLeft�Y mmTop mmWidth�QBandType  TppShape
ppShape101UserNameShape1mmHeight�mmLeft!� mmTop mmWidthsKBandType  TppShape
ppShape102UserNameShape2mmHeight�mmLeft�� mmTop mmWidthPGBandType  TppShape
ppShape103UserNameShape3mmHeight�mmLeft�: mmTop mmWidth�:BandType  TppShape
ppShape105UserNameShape901mmHeight�mmLeft�� mmTop mmWidthPGBandType  TppShape
ppShape106UserNameShape106mmHeight�mmLeft�� mmTop mmWidth�QBandType  TppLabel	ppLabel75UserNameLabel75Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T    ��Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�0mmTop4mmWidth`*BandType  	TppDBCalc	ppDBCalc2UserNameDBCalc2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpcountDataPipelineppDBPipeline2DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�vmmTop4mmWidth�;BandType  	TppDBCalc	ppDBCalc4UserNameDBCalc4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
delfpcountDataPipelineppDBPipeline2DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft��  mmTop4mmWidth>BandType  	TppDBCalc	ppDBCalc5UserNameDBCalc5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeftT> mmTop4mmWidthYHBandType  	TppDBCalc	ppDBCalc6UserNameDBCalc6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeftƉ mmTop4mmWidth�2BandType  	TppDBCalc	ppDBCalc7UserNameDBCalc7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft mmTop4mmWidthjJBandType  	TppDBCalc	ppDBCalc8UserNameDBCalc8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�\ mmTop4mmWidthsKBandType  	TppDBCalc
ppDBCalc10UserNameDBCalc10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeftD� mmTop4mmWidth7DBandType  	TppDBCalc
ppDBCalc11UserNameDBCalc11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�� mmTop4mmWidth%BBandType  	TppDBCalc
ppDBCalc12UserNameDBCalc12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�= mmTop4mmWidth�5BandType  	TppDBCalc
ppDBCalc14UserNameDBCalc14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�� mmTop4mmWidth%BBandType  	TppDBCalc
ppDBCalc15UserNameDBCalc15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�� mmTop4mmWidth�MBandType  TppShapeppShape3UserNameShape6mmHeight�mmLeft|� mmTop mmWidth�NBandType  	TppDBCalc	ppDBCalc1UserNameDBCalc1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�� mmTop4mmWidthYHBandType  TppShape	ppShape15UserNameShape15mmHeight�mmLeft�  mmTop mmWidth7DBandType  	TppDBCalc	ppDBCalc9UserNameDBCalc3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField	cdfpcountDataPipelineppDBPipeline2DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft&�  mmTop4mmWidth>BandType  TppShape
ppShape203UserNameShape203mmHeight�mmLeft�t mmTop mmWidth�:BandType  	TppDBCalcppDBCalc131UserName	DBCalc131Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline2DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline2mmHeightxmmLeft�w mmTop4mmWidth�5BandType   TppParameterListppParameterList1   TQueryKMQuery3SQL.Stringsselect yldy,<  sum(case when kmcode='01' then kmmoney else 0 end) as xm1,<  sum(case when kmcode='02' then kmmoney else 0 end) as xm2,<  sum(case when kmcode='03' then kmmoney else 0 end) as xm3,`  sum(case when (kmcode='01') or (kmcode='02') or (kmcode='03') then kmmoney else 0 end) as xm4,;  sum(case when kmcode='A' then kmmoney else 0 end) as xm5,;  sum(case when kmcode='B' then kmmoney else 0 end) as xm6,;  sum(case when kmcode='C' then kmmoney else 0 end) as xm7,;  sum(case when kmcode='D' then kmmoney else 0 end) as xm8,<  sum(case when kmcode='DJ' then kmmoney else 0 end) as xm9,<  sum(case when kmcode='E' then kmmoney else 0 end) as xm10,=  sum(case when kmcode='EJ' then kmmoney else 0 end) as xm11,<  sum(case when kmcode='F' then kmmoney else 0 end) as xm12,<  sum(case when kmcode='G' then kmmoney else 0 end) as xm13,=  sum(case when kmcode='GJ' then kmmoney else 0 end) as xm14,<  sum(case when kmcode='H' then kmmoney else 0 end) as xm15,<  sum(case when kmcode='K' then kmmoney else 0 end) as xm16,<  sum(case when kmcode='X' then kmmoney else 0 end) as xm17,<  sum(case when kmcode='Y' then kmmoney else 0 end) as xm18,=  sum(case when kmcode='Z1' then kmmoney else 0 end) as xm19,=  sum(case when kmcode='Z2' then kmmoney else 0 end) as xm20,f  sum(case when (kmcode<>'01') and (kmcode<>'02') and (kmcode<>'03') then kmmoney else 0 end) as xm21,  sum(kmmoney) as xm22  from@      (select yldy,kmcode,kmname,sum(ypmoney*cfcount) as kmmoney0        from mzcfypk (nolock),mzinvoice (nolock)f        where mzcfypk.fpnum=mzinvoice.fpnum and mzcfypk.deldate is null and mzinvoice.jfcardid is nullF          and mzinvoice.jsdate>=:begdate and mzinvoice.jsdate<:enddate%          and opername like :opername#        group by yldy,kmcode,kmname      union all?      select yldy,kmcode,kmname,sum(ypmoney*cfcount) as kmmoney6        from mzcfypkhis (nolock),mzinvoicehis (nolock)r        where mzcfypkhis.fpnum=mzinvoicehis.fpnum and mzcfypkhis.deldate is null and mzinvoicehis.jfcardid is nullL          and mzinvoicehis.jsdate>=:begdate and mzinvoicehis.jsdate<:enddate%          and opername like :opername#        group by yldy,kmcode,kmname      union all:      select yldy,kmcode,kmname,sum(checkmoney) as kmmoney0        from mzcheck (nolock),mzinvoice (nolock)G        where mzcheck.fpnum=mzinvoice.fpnum and mzcheck.deldate is nulle          and mzinvoice.jsdate>=:begdate and mzinvoice.jsdate<:enddate and mzinvoice.jfcardid is null%          and opername like :opername#        group by yldy,kmcode,kmname      union all:      select yldy,kmcode,kmname,sum(checkmoney) as kmmoney6        from mzcheckhis (nolock),mzinvoicehis (nolock)P        where mzcheckhis.fpnum=mzinvoicehis.fpnum and mzcheckhis.deldate is nulln          and mzinvoicehis.jsdate>=:begdate and mzinvoicehis.jsdate<:enddate and mzinvoicehis.jfcardid is null%          and opername like :opername)        group by yldy,kmcode,kmname) disp  group by yldy  LeftxTopa	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown    TDataSourceKMDataSource3DataSetKMQuery3Left�Topa  TppDBPipelineppDBPipeline3
DataSourceKMDataSource3UserNameDBPipeline3Left�Topa TppFieldppField1
FieldAliasyldy	FieldNameyldyFieldLength DataType
dtNotKnownDisplayWidth Position 
SearchableSortable  TppFieldppField2
FieldAliasfpcount	FieldNamefpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppField3
FieldAlias
delfpcount	FieldName
delfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppField4
FieldAlias	cdfpcount	FieldName	cdfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppField5
FieldAliasysxj	FieldNameysxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppField6
FieldAlias
roundmoney	FieldName
roundmoneyFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppField7
FieldAliasssxj	FieldNamessxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppField8
FieldAliasybzf	FieldNameybzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppFieldppField9
FieldAliashzylzf	FieldNamehzylzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField10
FieldAliaslxzf	FieldNamelxzfFieldLength DataType
dtNotKnownDisplayWidth Position	
SearchableSortable  TppField	ppField11
FieldAliasjzzf	FieldNamejzzfFieldLength DataType
dtNotKnownDisplayWidth Position

SearchableSortable  TppField	ppField12
FieldAliasyxzf	FieldNameyxzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField13
FieldAliasyhhz	FieldNameyhhzFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField14
FieldAliasczyb	FieldNameczybFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField15
FieldAliasyberror	FieldNameyberrorFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField16
FieldAliassshj	FieldNamesshjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable   	TppReport	ppReport3AutoStopDataPipelineppDBPipeline3PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.OrientationpoLandscapePrinterSetup.PaperNameA3PrinterSetup.PrinterNameDefaultPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight�� PrinterSetup.mmPaperWidth8h PrinterSetup.PaperSize
DeviceTypeScreenOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	PreviewFormSettings.WindowStatewsMaximizedPreviewFormSettings.ZoomSettingzs100Percent TextSearchSettings.DefaultString
<FindText>TextSearchSettings.Enabled	Left�TopaVersion9.03mmColumnWidth DataPipelineNameppDBPipeline3 TppHeaderBandppHeaderBand5mmBottomOffset mmHeight��  mmPrintPosition  TppLabel	ppLabel89UserNameLabel56AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�ʋ�~�{�u�N"��RR{|	c;S�u�_G��~��h�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   楷体_GB2312	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop!mmWidth�" BandType   TppLabelTab3_UnitNameppLabelUserNameYLDY_UnitNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab3_UnitNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTop�WmmWidth��  BandType   TppLabelTab3_JSDateppLabelUserNameYLDY_RJppDateLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab3_RJDateppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop�WmmWidth1�  BandType   TppLabelTab3_OperNameppLabelUserNameYLDY_OperNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab3_OperNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft2F mmTop�YmmWidth��  BandType   TppShape
ppShape125UserNameShape62mmHeight5%mmLeftV
mmTop�lmmWidth{LBandType   TppLabel	ppLabel93UserNameLabel60Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�u�_G�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTop�wmmWidth�6BandType   TppShape
ppShape127UserNameShape64mmHeight5%mmLeft�UmmTop�lmmWidthsKBandType   TppLabel	ppLabel95UserNameLabel62Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �o�9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftZgmmTop�wmmWidthW)BandType   TppShape
ppShape128UserNameShape65mmHeight5%mmLeft2�  mmTop�lmmWidthsKBandType   TppLabel	ppLabel96UserNameLabel63Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   bo�9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft��  mmTop�wmmWidthW)BandType   TppShape
ppShape129UserNameShape66mmHeight5%mmLeft��  mmTop�lmmWidth?BandType   TppLabel	ppLabel97UserNameLabel64Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   I�o�9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�  mmTop�wmmWidthW)BandType   TppShape
ppShape130UserNameShape67mmHeight5%mmLeft
s mmTop�lmmWidth?EBandType   TppLabel	ppLabel98UserNameLabel65Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   c�S9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLefty� mmTop�wmmWidthW)BandType   TppShape
ppShape131UserNameShape68mmHeight5%mmLeft@� mmTop�lmmWidth?EBandType   TppLabel	ppLabel99UserNameLabel66Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �^MO9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�wmmWidthW)BandType   TppShape
ppShape132UserNameShape69mmHeight5%mmLeftw� mmTop�lmmWidth?EBandType   TppLabel
ppLabel100UserNameLabel67Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ʋ�g9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft  mmTop�wmmWidthW)BandType   TppShape
ppShape133UserNameShape70mmHeight5%mmLeft�? mmTop�lmmWidthsKBandType   TppLabel
ppLabel101UserNameLabel68Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �h�g9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftHR mmTop�wmmWidthW)BandType   TppShape
ppShape134UserNameShape71mmHeight5%mmLeft� mmTop�lmmWidth%BBandType   TppLabel
ppLabel102UserNameLabel69AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �h�g{|Pg�e9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeft�� mmTop�pmmWidthi+BandType   TppShape
ppShape135UserNameShape72mmHeight5%mmLeft4� mmTop�lmmWidth?EBandType   TppLabel
ppLabel103UserNameLabel70Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �l�u9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�wmmWidthW)BandType   TppShape
ppShape136UserNameShape73mmHeight5%mmLeftk mmTop�lmmWidth%BBandType   TppLabel
ppLabel104UserNameLabel71AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �l�u{|Pg�e9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeft� mmTop�pmmWidthi+BandType   TppShape
ppShape137UserNameShape74mmHeight5%mmLeft�P mmTop�lmmWidth?EBandType   TppLabel
ppLabel105UserNameLabel72Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �bt9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft _ mmTop�wmmWidthW)BandType   TppShape
ppShape138UserNameShape76mmHeight5%mmLeft� mmTop�lmmWidthrKBandType   TppLabel
ppLabel106UserNameLabel74Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T    ��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�wmmWidth`*BandType   TppShape
ppShape170UserNameShape170mmHeight5%mmLeft�� mmTop�lmmWidth%BBandType   TppLabel
ppLabel109UserNameLabel109AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   Kb/g{|Pg�e9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeftJ� mmTop�pmmWidthi+BandType   TppShape
ppShape171UserNameShape171mmHeight5%mmLeft� mmTop�lmmWidthsKBandType   TppLabel
ppLabel110UserNameLabel110Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   S��9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�( mmTop�wmmWidthW)BandType   TppShape
ppShape172UserNameShape172mmHeight5%mmLeftaa mmTop�lmmWidth�9BandType   TppLabel
ppLabel111UserNameLabel111Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   vQ�NFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�r mmTop�wmmWidth�BandType   TppShape
ppShape173UserNameShape173mmHeight5%mmLeft:� mmTop�lmmWidthYHBandType   TppLabel
ppLabel112UserNameLabel112AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �h�g{|>e\9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeft�� mmTop�pmmWidthi+BandType   TppShape
ppShape174UserNameShape174mmHeight5%mmLeft�� mmTop�lmmWidth?EBandType   TppLabel
ppLabel113UserNameLabel113AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �l�u{|>e\9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeft� mmTop�pmmWidth`*BandType   TppShape
ppShape139UserNameShape79mmHeight5%mmLeft�� mmTop�lmmWidth%BBandType   TppLabel
ppLabel107UserNameLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   Kb/g9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft-� mmTop�wmmWidthW)BandType   TppShapeppShape4UserNameShape4mmHeight5%mmLeft�( mmTop�lmmWidthsKBandType   TppLabelppLabel7UserNameLabel2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�u9�\��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�, mmTop�wmmWidth�DBandType   TppShapeppShape7UserNameShape7mmHeight5%mmLeft�� mmTop�lmmWidthsKBandType   TppLabelppLabel8UserNameLabel3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ʋ�u9�\��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftϢ mmTop�wmmWidth�DBandType   TppShape
ppShape266UserNameShape266mmHeight5%mmLeft�% mmTop�lmmWidth�<BandType   TppShape
ppShape267UserNameShape267mmHeight5%mmLeft�a mmTop�lmmWidth>BandType   TppLabel	ppLabel81UserNameLabel81Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��@�9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft0 mmTop�wmmWidthW)BandType   TppLabel	ppLabel86UserNameLabel86Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��'l9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftm mmTop�wmmWidthW)BandType    TppDetailBandppDetailBand5mmBottomOffset mmHeight�mmPrintPosition  TppShape
ppShape140UserNameShape77mmHeight�mmLeftV
mmTop mmWidth{LBandType  TppShape
ppShape142UserNameShape80mmHeight�mmLeft�UmmTop mmWidthsKBandType  TppShape
ppShape143UserNameShape81mmHeight�mmLeft2�  mmTop mmWidthsKBandType  TppShape
ppShape144UserNameShape82mmHeight�mmLeft��  mmTop mmWidth?BandType  TppShape
ppShape145UserNameShape83mmHeight�mmLeft
s mmTop mmWidth?EBandType  TppShape
ppShape146UserNameShape84mmHeight�mmLeft@� mmTop mmWidth?EBandType  TppShape
ppShape147UserNameShape85mmHeight�mmLeftw� mmTop mmWidth?EBandType  TppShape
ppShape148UserNameShape701mmHeight�mmLeft�? mmTop mmWidthsKBandType  TppShape
ppShape149UserNameShape87mmHeight�mmLeft� mmTop mmWidth%BBandType  TppShape
ppShape150UserNameShape88mmHeight�mmLeft4� mmTop mmWidth?EBandType  TppShape
ppShape151UserNameShape89mmHeight�mmLeftk mmTop mmWidth%BBandType  TppShape
ppShape152UserNameShape90mmHeight�mmLeft�P mmTop mmWidth?EBandType  TppShape
ppShape153UserNameShape91mmHeight�mmLeft�� mmTop mmWidth%BBandType  	TppDBText
ppDBText45UserNameDBText26Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyldyDataPipelineppDBPipeline3Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	DataPipelineNameppDBPipeline3mmHeight�mmLeftxmmTopmmWidthABandType  	TppDBText
ppDBText47UserNameDBText29Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm1DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�YmmTop+mmWidth7DBandType  	TppDBText
ppDBText48UserNameDBText30Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm2DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftD�  mmTop+mmWidth7DBandType  	TppDBText
ppDBText49UserNameDBText31Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm3DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft��  mmTop+mmWidth�:BandType  	TppDBText
ppDBText50UserNameDBText32Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm5DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft#v mmTop+mmWidth>BandType  	TppDBText
ppDBText51UserNameDBText33Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm6DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftZ� mmTop+mmWidth>BandType  	TppDBText
ppDBText52UserNameDBText34Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm7DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�� mmTop+mmWidth>BandType  	TppDBText
ppDBText53UserNameDBText35Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm8DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�B mmTop+mmWidth7DBandType  	TppDBText
ppDBText54UserNameDBText36Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm9DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft1� mmTop+mmWidth�;BandType  	TppDBText
ppDBText55UserNameDBText37Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm10DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftN� mmTop+mmWidth>BandType  	TppDBText
ppDBText56UserNameDBText38Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm11DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft� mmTop+mmWidth�:BandType  	TppDBText
ppDBText57UserNameDBText39Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm12DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�S mmTop+mmWidth@BandType  	TppDBText
ppDBText58UserNameDBText40Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm14DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�� mmTop+mmWidth�<BandType  TppShape
ppShape154UserNameShape902mmHeight�mmLeft�� mmTop mmWidth%BBandType  	TppDBText
ppDBText59UserNameDBText28Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm13DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftؗ mmTop+mmWidth�:BandType  TppShape
ppShape175UserNameShape175mmHeight�mmLeft� mmTop mmWidthsKBandType  TppShape
ppShape176UserNameShape903mmHeight�mmLeftaa mmTop mmWidth�9BandType  TppShape
ppShape177UserNameShape177mmHeight�mmLeft�� mmTop mmWidth?EBandType  	TppDBText
ppDBText60UserNameDBText60Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm15DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft mmTop+mmWidth7DBandType  	TppDBText
ppDBText61UserNameDBText61Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm16DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftsc mmTop+mmWidth�5BandType  	TppDBText
ppDBText62UserName	DBText401Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm18DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�� mmTop+mmWidth@BandType  TppShape
ppShape178UserNameShape178mmHeight�mmLeft:� mmTop mmWidthYHBandType  	TppDBText
ppDBText63UserNameDBText63Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm17DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftS� mmTop+mmWidthABandType  TppShape
ppShape179UserNameShape179mmHeight�mmLeft� mmTop mmWidthrKBandType  	TppDBText
ppDBText64UserNameDBText64Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm22DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft1� mmTop+mmWidthHFBandType  TppShapeppShape5UserNameShape5mmHeight�mmLeft�( mmTop mmWidthsKBandType  	TppDBText	ppDBText3UserNameDBText3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm4DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�* mmTop+mmWidthHFBandType  TppShapeppShape8UserNameShape8mmHeight�mmLeft�� mmTop mmWidthsKBandType  	TppDBText	ppDBText4UserNameDBText4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm21DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�� mmTop+mmWidthPGBandType  TppShape
ppShape268UserNameShape268mmHeight�mmLeft�a mmTop mmWidth>BandType  	TppDBText
ppDBText87UserNameDBText87Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm20DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�d mmTop+mmWidth�8BandType  TppShape
ppShape269UserNameShape269mmHeight�mmLeft�% mmTop mmWidth�<BandType  	TppDBText
ppDBText88UserNameDBText88Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm19DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�( mmTop+mmWidth�6BandType   TppFooterBandppFooterBand2mmBottomOffset mmHeight�3mmPrintPosition  TppLineppLine3UserNameLine3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Weight       ��?mmHeightV
mmLeftV
mmTop<mmWidth<+ BandType  TppLabelFootppLabel3UserNameLabel4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionLabel4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTopxmmWidth�)BandType   TppSummaryBandppSummaryBand4mmBottomOffset mmHeight�3mmPrintPosition  TppShape
ppShape155UserNameShape92mmHeight�mmLeftV
mmTop mmWidth{LBandType  TppShape
ppShape157UserNameShape801mmHeight�mmLeft�UmmTop mmWidthsKBandType  TppShape
ppShape158UserNameShape96mmHeight�mmLeft2�  mmTop mmWidthsKBandType  TppShape
ppShape159UserNameShape97mmHeight�mmLeft��  mmTop mmWidth?BandType  TppShape
ppShape160UserNameShape98mmHeight�mmLeft
s mmTop mmWidth?EBandType  TppShape
ppShape161UserNameShape99mmHeight�mmLeft@� mmTop mmWidth?EBandType  TppShape
ppShape162UserNameShape100mmHeight�mmLeftw� mmTop mmWidth?EBandType  TppShape
ppShape163UserNameShape1mmHeight�mmLeft�? mmTop mmWidthsKBandType  TppShape
ppShape164UserNameShape2mmHeight�mmLeft� mmTop mmWidth%BBandType  TppShape
ppShape165UserNameShape3mmHeight�mmLeft4� mmTop mmWidth?EBandType  TppShape
ppShape166UserNameShape104mmHeight�mmLeftk mmTop mmWidth%BBandType  TppShape
ppShape167UserNameShape901mmHeight�mmLeft�P mmTop mmWidth?EBandType  TppShape
ppShape168UserNameShape106mmHeight�mmLeft�� mmTop mmWidth%BBandType  TppLabel
ppLabel108UserNameLabel75Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T    ��Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTop+mmWidth`*BandType  	TppDBCalc
ppDBCalc22UserNameDBCalc4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm1DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�YmmTop+mmWidth7DBandType  	TppDBCalc
ppDBCalc23UserNameDBCalc5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm2DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftD�  mmTop+mmWidth7DBandType  	TppDBCalc
ppDBCalc24UserNameDBCalc6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm3DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft��  mmTop+mmWidth�:BandType  	TppDBCalc
ppDBCalc25UserNameDBCalc7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm5DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftu mmTop+mmWidth>BandType  	TppDBCalc
ppDBCalc26UserNameDBCalc8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm6DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftZ� mmTop+mmWidth>BandType  	TppDBCalc
ppDBCalc27UserNameDBCalc9Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm7DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�� mmTop+mmWidth>BandType  	TppDBCalc
ppDBCalc28UserNameDBCalc10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm8DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�B mmTop4mmWidth7DBandType  	TppDBCalc
ppDBCalc29UserNameDBCalc11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm9DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft(� mmTop4mmWidth�<BandType  	TppDBCalc
ppDBCalc30UserNameDBCalc12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm10DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftN� mmTop4mmWidth>BandType  	TppDBCalc
ppDBCalc31UserNameDBCalc13Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm11DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft� mmTop4mmWidth�;BandType  	TppDBCalc
ppDBCalc32UserNameDBCalc14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm12DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�S mmTop4mmWidth@BandType  	TppDBCalc
ppDBCalc33UserNameDBCalc15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm14DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�� mmTop4mmWidth�<BandType  TppShape
ppShape169UserNameShape124mmHeight�mmLeft�� mmTop mmWidth%BBandType  	TppDBCalc
ppDBCalc34UserNameDBCalc3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm13DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftؗ mmTop4mmWidth�;BandType  TppShape
ppShape180UserNameShape180mmHeight�mmLeft� mmTop mmWidthsKBandType  TppShape
ppShape181UserNameShape181mmHeight�mmLeftaa mmTop mmWidth�9BandType  TppShape
ppShape182UserNameShape182mmHeight�mmLeft�� mmTop mmWidth?EBandType  	TppDBCalc
ppDBCalc35UserNameDBCalc35Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm15DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft mmTop4mmWidth?EBandType  	TppDBCalc
ppDBCalc36UserNameDBCalc36Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm16DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftsc mmTop4mmWidth�5BandType  	TppDBCalc
ppDBCalc37UserNameDBCalc37Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm18DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�� mmTop4mmWidth@BandType  TppShape
ppShape183UserNameShape183mmHeight�mmLeft:� mmTop mmWidthYHBandType  	TppDBCalc
ppDBCalc38UserNameDBCalc38Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm17DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeftK� mmTop4mmWidth.CBandType  TppShape
ppShape184UserNameShape184mmHeight�mmLeft� mmTop mmWidthrKBandType  	TppDBCalc
ppDBCalc39UserNameDBCalc39Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm22DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft1� mmTop4mmWidthHFBandType  TppShapeppShape6UserNameShape6mmHeight�mmLeft�( mmTop mmWidthsKBandType  	TppDBCalc	ppDBCalc3UserNameDBCalc1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm4DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�* mmTop+mmWidthHFBandType  TppShapeppShape9UserNameShape9mmHeight�mmLeft�� mmTop mmWidthsKBandType  	TppDBCalc
ppDBCalc16UserNameDBCalc16Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm21DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�� mmTop4mmWidthPGBandType  TppShape
ppShape270UserNameShape270mmHeight�mmLeft�a mmTop mmWidth>BandType  	TppDBCalc
ppDBCalc91UserNameDBCalc91Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm20DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�d mmTop4mmWidth�8BandType  TppShape
ppShape271UserNameShape271mmHeight�mmLeft�% mmTop mmWidth�<BandType  	TppDBCalc
ppDBCalc92UserNameDBCalc92Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm19DataPipelineppDBPipeline3DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline3mmHeightxmmLeft�' mmTop4mmWidth�8BandType    TQueryJSOperQuerySQL.Stringsselect opername  from (         select opername5           from mzinvoice (index(indexjsdate) nolock)J           where jfcardid is null and jsdate>=:begdate and jsdate<:enddate         union all         select opername8           from mzinvoicehis (index(indexjsdate) nolock)J           where jfcardid is null and jsdate>=:begdate and jsdate<:enddate         union all         select opername'           from invoice_damage (nolock)`           where jsdate>=:begdate and jsdate<:enddate and invoiceoperid is not null and [type]=0       ) disp  group by opername Left<Top� 	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown    	TppReport	ppReport5AutoStopDataPipelineppDBPipeline5PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.OrientationpoLandscapePrinterSetup.PaperNameA3PrinterSetup.PrinterNameDefaultPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight�� PrinterSetup.mmPaperWidth8h PrinterSetup.PaperSize
DeviceTypeScreenOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	PreviewFormSettings.WindowStatewsMaximizedPreviewFormSettings.ZoomSettingzs100Percent TextSearchSettings.DefaultString
<FindText>TextSearchSettings.Enabled	Left�Top� Version9.03mmColumnWidth DataPipelineNameppDBPipeline5 TppHeaderBandppHeaderBand1mmBottomOffset mmHeight��  mmPrintPosition  TppLabel	ppLabel13UserNameLabel56AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�~�{�u�N	c/e�N�e_R{|f�~h�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   楷体_GB2312	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop!mmWidthf BandType   TppLabelTab5_UnitNameppLabelUserNameYLDY_UnitNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab5_UnitNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft"mmTop�WmmWidth��  BandType   TppLabelTab5_JSDateppLabelUserNameYLDY_RJppDateLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab5_JSDateppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�WmmWidth�zBandType   TppLabelTab5_OperNameppLabelUserNameYLDY_OperNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab5_OperNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLefteL mmTop�YmmWidth��  BandType   TppShape	ppShape16UserNameShape62mmHeight5%mmLeft}$ mmTop�lmmWidth>BandType   TppLabel	ppLabel17UserNameLabel60Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   /e�N�e_Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�& mmTop�wmmWidth�6BandType   TppShape	ppShape17UserNameShape64mmHeight5%mmLeft�� mmTop�lmmWidth?BandType   TppLabel	ppLabel18UserNameLabel62Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �o�9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop�wmmWidthW)BandType   TppShape	ppShape18UserNameShape65mmHeight5%mmLeft�� mmTop�lmmWidth?BandType   TppLabel	ppLabel19UserNameLabel63Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   bo�9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�wmmWidthW)BandType   TppShape	ppShape19UserNameShape66mmHeight5%mmLeft� mmTop�lmmWidth�;BandType   TppLabel	ppLabel20UserNameLabel64Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   I�o�9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�& mmTop�wmmWidthW)BandType   TppShape	ppShape20UserNameShape67mmHeight5%mmLeftsW mmTop�lmmWidth�7BandType   TppLabel	ppLabel21UserNameLabel65Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   c�S9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�^ mmTop�wmmWidthW)BandType   TppShape	ppShape21UserNameShape68mmHeight5%mmLeft:� mmTop�lmmWidth�6BandType   TppLabel	ppLabel22UserNameLabel66Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �^MO9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftv� mmTop�wmmWidthW)BandType   TppShape	ppShape22UserNameShape69mmHeight5%mmLeft�� mmTop�lmmWidth�;BandType   TppLabel	ppLabel23UserNameLabel67Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ʋ�g9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft_� mmTop�wmmWidth>&BandType   TppShape	ppShape23UserNameShape70mmHeight5%mmLeft�� mmTop�lmmWidth?BandType   TppLabel	ppLabel24UserNameLabel68Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �h�g9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft@
 mmTop�wmmWidthW)BandType   TppShape	ppShape24UserNameShape71mmHeight5%mmLeft�< mmTop�lmmWidth?BandType   TppLabel	ppLabel25UserNameLabel69AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �h�g{|Pg�e9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeftCH mmTop�pmmWidthi+BandType   TppShape	ppShape25UserNameShape72mmHeight5%mmLeft�z mmTop�lmmWidth�;BandType   TppLabel	ppLabel26UserNameLabel70Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �l�u9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft=� mmTop�wmmWidthW)BandType   TppShape	ppShape26UserNameShape73mmHeight5%mmLeftѵ mmTop�lmmWidth�;BandType   TppLabel	ppLabel27UserNameLabel71AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �l�u{|Pg�e9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeft&� mmTop�pmmWidthi+BandType   TppShape	ppShape27UserNameShape74mmHeight5%mmLeft�� mmTop�lmmWidth�0BandType   TppLabel	ppLabel28UserNameLabel72Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �bt9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�wmmWidthW)BandType   TppShape	ppShape28UserNameShape76mmHeight5%mmLeft�� mmTop�lmmWidthrKBandType   TppLabel	ppLabel29UserNameLabel74Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shyё��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop�wmmWidth7BandType   TppShape	ppShape29UserNameShape170mmHeight5%mmLeft.[ mmTop�lmmWidth�;BandType   TppLabel	ppLabel30UserNameLabel109AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   Kb/g{|Pg�e9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeft�e mmTop�pmmWidthi+BandType   TppShape	ppShape30UserNameShape171mmHeight5%mmLeft� mmTop�lmmWidth?BandType   TppLabel	ppLabel31UserNameLabel110Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   S��9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftv� mmTop�wmmWidthW)BandType   TppShape	ppShape31UserNameShape172mmHeight5%mmLeft� mmTop�lmmWidth�3BandType   TppLabel	ppLabel32UserNameLabel111Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   vQ�NFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLefty� mmTop�wmmWidthBandType   TppShape	ppShape32UserNameShape173mmHeight5%mmLeft� mmTop�lmmWidth�;BandType   TppLabel	ppLabel33UserNameLabel112AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �h�g{|>e\9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeft mmTop�pmmWidthi+BandType   TppShape	ppShape33UserNameShape174mmHeight5%mmLeft�A mmTop�lmmWidth�<BandType   TppLabel	ppLabel35UserNameLabel113AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �l�u{|>e\9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight
 mmLeft�J mmTop�pmmWidth`*BandType   TppShape	ppShape34UserNameShape79mmHeight5%mmLeftE  mmTop�lmmWidth�;BandType   TppLabel	ppLabel38UserNameLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   Kb/g9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�* mmTop�wmmWidthW)BandType   TppShape	ppShape35UserNameShape35mmHeight5%mmLeft�mmTop�lmmWidth�9BandType   TppLabel	ppLabel39UserNameLabel602Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   Am4l�SFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTop�wmmWidth-)BandType   TppShape	ppShape36UserNameShape36mmHeight5%mmLeft�PmmTop�lmmWidth�8BandType   TppLabel	ppLabel40UserNameLabel603Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �u�N�YTFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�RmmTop�wmmWidth�4BandType   TppShape	ppShape69UserNameShape4mmHeight5%mmLeftxa mmTop�lmmWidth@BandType   TppLabel	ppLabel43UserNameLabel604Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   /e�Nё��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�e mmTop�wmmWidth�6BandType   TppShape	ppShape73UserNameShape5mmHeight5%mmLeftm�  mmTop�lmmWidthIeBandType   TppLabel	ppLabel44UserNameLabel44Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shy�egFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft;�  mmTop�wmmWidth�6BandType   TppShape
ppShape262UserNameShape262mmHeight5%mmLeft��  mmTop�lmmWidth�8BandType   TppLabel	ppLabel80UserNameLabel80Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �d\OXTFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft��  mmTop�wmmWidthW)BandType   TppShape
ppShape272UserNameShape272mmHeight5%mmLeft�} mmTop�lmmWidth�1BandType   TppLabel	ppLabel88UserNameLabel88Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��@�9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftł mmTop�wmmWidthW)BandType   TppShape
ppShape276UserNameShape276mmHeight5%mmLeft,� mmTop�lmmWidth�/BandType   TppLabel	ppLabel91UserNameLabel91Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��'l9�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftP� mmTop�wmmWidthW)BandType    TppDetailBandppDetailBand1mmBottomOffset mmHeight�mmPrintPosition  TppShape	ppShape37UserNameShape77mmHeight�mmLeft}$ mmTop mmWidth>BandType  TppShape	ppShape38UserNameShape80mmHeight�mmLeft�� mmTop mmWidth?BandType  TppShape	ppShape39UserNameShape81mmHeight�mmLeft�� mmTop mmWidth?BandType  TppShape	ppShape40UserNameShape82mmHeight�mmLeft� mmTop mmWidth�;BandType  TppShape	ppShape41UserNameShape83mmHeight�mmLeftsW mmTop mmWidth�7BandType  TppShape	ppShape42UserNameShape84mmHeight�mmLeft:� mmTop mmWidth�6BandType  TppShape	ppShape43UserNameShape85mmHeight�mmLeft�� mmTop mmWidth�;BandType  TppShape	ppShape44UserNameShape701mmHeight�mmLeft�� mmTop mmWidth?BandType  TppShape	ppShape45UserNameShape87mmHeight�mmLeft�< mmTop mmWidth?BandType  TppShape	ppShape46UserNameShape88mmHeight�mmLeft�z mmTop mmWidth�;BandType  TppShape	ppShape53UserNameShape89mmHeight�mmLeftѵ mmTop mmWidth�;BandType  TppShape	ppShape54UserNameShape90mmHeight�mmLeft�� mmTop mmWidth�0BandType  TppShape	ppShape55UserNameShape91mmHeight�mmLeft.[ mmTop mmWidth�;BandType  	TppDBTextFKFSppDBTextUserNameDBText26Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfkfsDataPipelineppDBPipeline5Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�& mmTop+mmWidth�9BandType  	TppDBText	ppDBText7UserNameDBText29Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm1DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop+mmWidth�;BandType  	TppDBText	ppDBText8UserNameDBText30Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm2DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop+mmWidth�:BandType  	TppDBText	ppDBText9UserNameDBText31Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm3DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop+mmWidth�7BandType  	TppDBText
ppDBText10UserNameDBText32Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm5DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�Y mmTop+mmWidth�3BandType  	TppDBText
ppDBText19UserNameDBText33Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm6DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeftK� mmTop+mmWidth�2BandType  	TppDBText
ppDBText23UserNameDBText34Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm7DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft	� mmTop+mmWidth�7BandType  	TppDBText
ppDBText25UserNameDBText35Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm8DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�  mmTop+mmWidth�:BandType  	TppDBText
ppDBText28UserNameDBText36Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm9DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�> mmTop+mmWidth�:BandType  	TppDBText
ppDBText34UserNameDBText37Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm10DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�| mmTop+mmWidth�7BandType  	TppDBText
ppDBText38UserNameDBText38Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm11DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop+mmWidth�7BandType  	TppDBText
ppDBText41UserNameDBText39Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm12DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop+mmWidthq,BandType  	TppDBText
ppDBText42UserNameDBText40Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm14DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft7\ mmTop+mmWidth�8BandType  TppShape	ppShape57UserNameShape175mmHeight�mmLeft� mmTop mmWidth?BandType  TppShape	ppShape58UserNameShape903mmHeight�mmLeft� mmTop mmWidth�3BandType  TppShape	ppShape59UserNameShape177mmHeight�mmLeft�A mmTop mmWidth�<BandType  	TppDBText
ppDBText44UserNameDBText60Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm15DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft(� mmTop+mmWidth�:BandType  	TppDBText
ppDBText46UserNameDBText61Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm16DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft+� mmTop+mmWidth�/BandType  	TppDBText
ppDBText65UserName	DBText401Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm18DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�B mmTop+mmWidth�8BandType  TppShape	ppShape60UserNameShape178mmHeight�mmLeft� mmTop mmWidth�;BandType  	TppDBText
ppDBText66UserNameDBText63Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm17DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop+mmWidth�8BandType  TppShape	ppShape61UserNameShape179mmHeight�mmLeft�� mmTop mmWidthrKBandType  	TppDBText
ppDBText67UserNameDBText64Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm22DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop+mmWidthYHBandType  TppShape
ppShape120UserNameShape120mmHeight�mmLeft�mmTop mmWidth�9BandType  TppShape
ppShape121UserNameShape121mmHeight�mmLeft�PmmTop mmWidth�8BandType  TppShape
ppShape122UserNameShape122mmHeight�mmLeftxa mmTop mmWidth@BandType  	TppDBText
ppDBText68UserNameDBText68Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpNumDataPipelineppDBPipeline5Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline5mmHeight9mmLeft�mmTop"mmWidth�4BandType  	TppDBText
ppDBText69UserNameDBText69Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpNameDataPipelineppDBPipeline5Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline5mmHeight9mmLeft�RmmTop"mmWidth�4BandType  	TppDBText
ppDBText70UserNameDBText70Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldZFMoneyDataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeight9mmLeft�c mmTop+mmWidth�;BandType  TppShape	ppShape56UserNameShape902mmHeight�mmLeftE  mmTop mmWidth�;BandType  TppShape
ppShape273UserNameShape273mmHeight�mmLeft�} mmTop mmWidth�1BandType  	TppDBText
ppDBText89UserNameDBText89Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm19DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop+mmWidthy-BandType  TppShape
ppShape277UserNameShape277mmHeight�mmLeft,� mmTop mmWidth�/BandType  	TppDBText
ppDBText90UserNameDBText90Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm20DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeftO� mmTop+mmWidthE'BandType  	TppDBText
ppDBText43UserNameDBText1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm13DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeftV" mmTop+mmWidth�7BandType  TppShape
ppShape123UserNameShape123mmHeight�mmLeftm�  mmTop mmWidthIeBandType  	TppDBText
ppDBText71UserNameDBText71Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpdateDataPipelineppDBPipeline5DisplayFormatyy-mm-dd hh:nnFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft��  mmTop+mmWidth]BandType  TppShape
ppShape263UserNameShape803mmHeight�mmLeft��  mmTop mmWidth�8BandType  	TppDBText
ppDBText86UserNameDBText86Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldOperNameDataPipelineppDBPipeline5Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft��  mmTop+mmWidth�3BandType   TppFooterBandppFooterBand3mmBottomOffset mmHeight�3mmPrintPosition  TppLabelFootppLabel5UserNameLabel4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionFootppLabel5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeightmmLeft�mmTopxmmWidth�PBandType  TppLineppLine4UserNameLine3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Weight       ��?mmHeightV
mmLeftmmTop4mmWidth� BandType   TppSummaryBandppSummaryBand1mmBottomOffset mmHeight�3mmPrintPosition  TppShape	ppShape85UserNameShape801mmHeight�mmLeft�� mmTop mmWidth?BandType  TppShape	ppShape89UserNameShape96mmHeight�mmLeft�� mmTop mmWidth?BandType  TppShape	ppShape94UserNameShape97mmHeight�mmLeft� mmTop mmWidth�;BandType  TppShape
ppShape100UserNameShape98mmHeight�mmLeftsW mmTop mmWidth�7BandType  TppShape
ppShape104UserNameShape99mmHeight�mmLeft:� mmTop mmWidth�6BandType  TppShape
ppShape107UserNameShape100mmHeight�mmLeft�� mmTop mmWidth�;BandType  TppShape
ppShape108UserNameShape1mmHeight�mmLeft�� mmTop mmWidth?BandType  TppShape
ppShape109UserNameShape2mmHeight�mmLeft�< mmTop mmWidth?BandType  TppShape
ppShape110UserNameShape3mmHeight�mmLeft�z mmTop mmWidth�;BandType  TppShape
ppShape111UserNameShape104mmHeight�mmLeftѵ mmTop mmWidth�;BandType  TppShape
ppShape112UserNameShape901mmHeight�mmLeft�� mmTop mmWidth�0BandType  TppShape
ppShape113UserNameShape106mmHeight�mmLeft.[ mmTop mmWidth�;BandType  	TppDBCalc
ppDBCalc13UserNameDBCalc4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm1DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop+mmWidth�;BandType  	TppDBCalc
ppDBCalc17UserNameDBCalc5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm2DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop+mmWidth�;BandType  	TppDBCalc
ppDBCalc18UserNameDBCalc6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm3DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop+mmWidth�7BandType  	TppDBCalc
ppDBCalc19UserNameDBCalc7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm5DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�Y mmTop+mmWidth�3BandType  	TppDBCalc
ppDBCalc20UserNameDBCalc8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm6DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeftK� mmTop+mmWidth�2BandType  	TppDBCalc
ppDBCalc21UserNameDBCalc9Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm7DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft	� mmTop+mmWidth�7BandType  	TppDBCalc
ppDBCalc40UserNameDBCalc10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm8DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�  mmTop4mmWidth�:BandType  	TppDBCalc
ppDBCalc41UserNameDBCalc11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm9DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�> mmTop4mmWidth�:BandType  	TppDBCalc
ppDBCalc42UserNameDBCalc12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm10DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�| mmTop4mmWidth�7BandType  	TppDBCalc
ppDBCalc43UserNameDBCalc13Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm11DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop4mmWidth�7BandType  	TppDBCalc
ppDBCalc44UserNameDBCalc14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm12DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop4mmWidthq,BandType  	TppDBCalc
ppDBCalc45UserNameDBCalc15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm14DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft7\ mmTop4mmWidth�8BandType  TppShape
ppShape114UserNameShape124mmHeight�mmLeftE  mmTop mmWidth�;BandType  	TppDBCalc
ppDBCalc46UserNameDBCalc3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm13DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeftV" mmTop4mmWidth�7BandType  TppShape
ppShape115UserNameShape180mmHeight�mmLeft� mmTop mmWidth?BandType  TppShape
ppShape116UserNameShape181mmHeight�mmLeft� mmTop mmWidth�3BandType  TppShape
ppShape117UserNameShape182mmHeight�mmLeft�A mmTop mmWidth�<BandType  	TppDBCalc
ppDBCalc47UserNameDBCalc35Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm15DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft(� mmTop4mmWidth�:BandType  	TppDBCalc
ppDBCalc48UserNameDBCalc36Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm16DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft+� mmTop4mmWidth�/BandType  	TppDBCalc
ppDBCalc49UserNameDBCalc37Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm18DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�B mmTop4mmWidth�8BandType  TppShape
ppShape118UserNameShape183mmHeight�mmLeft� mmTop mmWidth�;BandType  	TppDBCalc
ppDBCalc50UserNameDBCalc38Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm17DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop4mmWidth�8BandType  TppShape
ppShape119UserNameShape184mmHeight�mmLeft�� mmTop mmWidthrKBandType  	TppDBCalc
ppDBCalc51UserNameDBCalc39Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm22DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop4mmWidthYHBandType  TppShape
ppShape124UserName	Shape1201mmHeight�mmLeft�mmTop mmWidth�J BandType  TppShape
ppShape275UserNameShape275mmHeight�mmLeft�} mmTop mmWidth�1BandType  	TppDBCalc
ppDBCalc95UserNameDBCalc95Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm19DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop4mmWidthy-BandType  TppShape
ppShape279UserNameShape279mmHeight�mmLeft,� mmTop mmWidth�/BandType  	TppDBCalc
ppDBCalc97UserNameDBCalc97Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm20DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeftO� mmTop4mmWidthE'BandType  TppLabel	ppLabel42UserNameLabel2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   总            计Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft!�  mmTop+mmWidth�nBandType  TppShape
ppShape126UserNameShape126mmHeight�mmLeftxa mmTop mmWidth@BandType  	TppDBCalc
ppDBCalc93UserNameDBCalc93Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldZFMoneyDataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�c mmTop+mmWidth�;BandType   TppPageStyleppPageStyle1EndPage 
SinglePage 	StartPage mmBottomOffset mmHeight�3mmPrintPosition   TppGroupppGroup1	BreakNameFKFSppDBText	BreakTypebtCustomFieldOutlineSettings.CreateNode	UserNameGroup1mmNewColumnThreshold mmNewPageThreshold DataPipelineName  TppGroupHeaderBandppGroupHeaderBand1mmBottomOffset mmHeight mmPrintPosition   TppGroupFooterBandppGroupFooterBand1mmBottomOffset mmHeight�mmPrintPosition  TppShape
ppShape185UserNameShape185Brush.ColorclActiveBordermmHeight�mmLeft�mmTop mmWidth�J BandTypeGroupNo   TppShape
ppShape186UserNameShape186Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidth?BandTypeGroupNo   TppShape
ppShape187UserNameShape187Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidth?BandTypeGroupNo   TppShape
ppShape188UserNameShape188Brush.ColorclActiveBordermmHeight�mmLeft� mmTop mmWidth�;BandTypeGroupNo   TppShape
ppShape189UserNameShape189Brush.ColorclActiveBordermmHeight�mmLeftsW mmTop mmWidth�7BandTypeGroupNo   TppShape
ppShape190UserNameShape190Brush.ColorclActiveBordermmHeight�mmLeft:� mmTop mmWidth�6BandTypeGroupNo   TppShape
ppShape191UserName	Shape1001Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidth�;BandTypeGroupNo   TppShape
ppShape192UserNameShape192Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidth?BandTypeGroupNo   TppShape
ppShape193UserNameShape193Brush.ColorclActiveBordermmHeight�mmLeft�< mmTop mmWidth?BandTypeGroupNo   TppShape
ppShape194UserNameShape194Brush.ColorclActiveBordermmHeight�mmLeft�z mmTop mmWidth�;BandTypeGroupNo   TppShape
ppShape195UserNameShape195Brush.ColorclActiveBordermmHeight�mmLeftѵ mmTop mmWidth�;BandTypeGroupNo   TppShape
ppShape196UserNameShape196Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidth�0BandTypeGroupNo   TppShape
ppShape197UserNameShape197Brush.ColorclActiveBordermmHeight�mmLeft.[ mmTop mmWidth�;BandTypeGroupNo   TppLabel	ppLabel14UserNameLabel14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption
   小    计Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft=�  mmTop+mmWidth;7BandTypeGroupNo   	TppDBCalc
ppDBCalc52UserNameDBCalc52Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm1DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop+mmWidth�;BandTypeGroupNo   	TppDBCalc
ppDBCalc53UserNameDBCalc53Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm2DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop+mmWidth�;BandTypeGroupNo   	TppDBCalc
ppDBCalc54UserNameDBCalc54Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm3DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop+mmWidth�7BandTypeGroupNo   	TppDBCalc
ppDBCalc55UserNameDBCalc55Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm5DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�Y mmTop+mmWidth�3BandTypeGroupNo   	TppDBCalc
ppDBCalc56UserNameDBCalc56Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm6DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeftK� mmTop+mmWidth�2BandTypeGroupNo   	TppDBCalc
ppDBCalc57UserNameDBCalc57Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm7DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft	� mmTop+mmWidth�7BandTypeGroupNo   	TppDBCalc
ppDBCalc58UserName	DBCalc101Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm8DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�  mmTop4mmWidth�:BandTypeGroupNo   	TppDBCalc
ppDBCalc59UserNameDBCalc59Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm9DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�> mmTop4mmWidth�:BandTypeGroupNo   	TppDBCalc
ppDBCalc60UserNameDBCalc60Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm10DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�| mmTop4mmWidth�7BandTypeGroupNo   	TppDBCalc
ppDBCalc61UserNameDBCalc61Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm11DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop4mmWidth�7BandTypeGroupNo   	TppDBCalc
ppDBCalc62UserNameDBCalc62Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm12DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop4mmWidthq,BandTypeGroupNo   	TppDBCalc
ppDBCalc63UserNameDBCalc63Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm14DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft7\ mmTop4mmWidth�8BandTypeGroupNo   TppShape
ppShape198UserNameShape198Brush.ColorclActiveBordermmHeight�mmLeftE  mmTop mmWidth�;BandTypeGroupNo   	TppDBCalc
ppDBCalc64UserNameDBCalc64Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm13DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeftV" mmTop4mmWidth�7BandTypeGroupNo   TppShape
ppShape199UserName	Shape1801Brush.ColorclActiveBordermmHeight�mmLeft� mmTop mmWidth?BandTypeGroupNo   TppShape
ppShape200UserNameShape200Brush.ColorclActiveBordermmHeight�mmLeft� mmTop mmWidth�3BandTypeGroupNo   TppShape
ppShape201UserNameShape201Brush.ColorclActiveBordermmHeight�mmLeft�A mmTop mmWidth�<BandTypeGroupNo   	TppDBCalc
ppDBCalc65UserNameDBCalc65Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm15DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft(� mmTop4mmWidth�:BandTypeGroupNo   	TppDBCalc
ppDBCalc66UserNameDBCalc66Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm16DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft+� mmTop4mmWidth�/BandTypeGroupNo   	TppDBCalc
ppDBCalc67UserNameDBCalc67Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm18DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�B mmTop4mmWidth�8BandTypeGroupNo   TppShape
ppShape202UserNameShape202Brush.ColorclActiveBordermmHeight�mmLeft� mmTop mmWidth�;BandTypeGroupNo   	TppDBCalc
ppDBCalc68UserNameDBCalc68Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm17DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop4mmWidth�8BandTypeGroupNo   TppShape
ppShape207UserNameShape207Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidthsKBandTypeGroupNo   	TppDBCalc
ppDBCalc69UserNameDBCalc69Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm22DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�� mmTop4mmWidthYHBandTypeGroupNo   TppShape
ppShape274UserName	Shape2001Brush.ColorclActiveBordermmHeight�mmLeft�} mmTop mmWidth�1BandTypeGroupNo   	TppDBCalc
ppDBCalc94UserNameDBCalc94Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm19DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft� mmTop4mmWidthy-BandTypeGroupNo   TppShape
ppShape278UserName	Shape2002Brush.ColorclActiveBordermmHeight�mmLeft,� mmTop mmWidth�/BandTypeGroupNo   	TppDBCalc
ppDBCalc96UserNameDBCalc96Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldxm20DataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeftO� mmTop4mmWidthE'BandTypeGroupNo   TppShape	ppShape79UserNameShape6Brush.ColorclActiveBordermmHeight�mmLeftxa mmTop mmWidth@BandTypeGroupNo   	TppDBCalc
ppDBCalc70UserNameDBCalc70Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldZFMOneyDataPipelineppDBPipeline5DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style 
ResetGroupppGroup1TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline5mmHeightxmmLeft�c mmTop+mmWidth�;BandTypeGroupNo      TQueryKMQuery5SQL.Strings-   select case when ybflag is null then '现金'-               when ybflag=1 then '医保支付'-               when ybflag=2 then '合作医疗'-               when ybflag=3 then '记账支付'-               when ybflag=4 then '银行下卡''               when ybflag=5 then '优惠'       end as fkfs,       opername,       zfmoney1 as zfmoney,       invoicenum,  fpnum,fpname,fpdate,=  sum(case when kmcode='01' then kmmoney else 0 end) as xm1 ,=  sum(case when kmcode='02' then kmmoney else 0 end) as xm2 ,=  sum(case when kmcode='03' then kmmoney else 0 end) as xm3 ,a  sum(case when (kmcode='01') or (kmcode='02') or (kmcode='03') then kmmoney else 0 end)  as xm4,;  sum(case when kmcode='A' then kmmoney else 0 end) as xm5,;  sum(case when kmcode='B' then kmmoney else 0 end) as xm6,;  sum(case when kmcode='C' then kmmoney else 0 end) as xm7,;  sum(case when kmcode='D' then kmmoney else 0 end) as xm8,<  sum(case when kmcode='DJ' then kmmoney else 0 end) as xm9,<  sum(case when kmcode='E' then kmmoney else 0 end) as xm10,=  sum(case when kmcode='EJ' then kmmoney else 0 end) as xm11,<  sum(case when kmcode='F' then kmmoney else 0 end) as xm12,<  sum(case when kmcode='G' then kmmoney else 0 end) as xm13,=  sum(case when kmcode='GJ' then kmmoney else 0 end) as xm14,<  sum(case when kmcode='H' then kmmoney else 0 end) as xm15,<  sum(case when kmcode='K' then kmmoney else 0 end) as xm16,<  sum(case when kmcode='X' then kmmoney else 0 end) as xm17,<  sum(case when kmcode='Y' then kmmoney else 0 end) as xm18,=  sum(case when kmcode='Z1' then kmmoney else 0 end) as xm19,=  sum(case when kmcode='Z2' then kmmoney else 0 end) as xm20,f  Sum(case when (kmcode<>'01') and (kmcode<>'02') and (kmcode<>'03') then kmmoney else 0 end) as xm21,  sum(kmmoney) as xm22  from�      (select ybflag,mzinvoice.fpdate,mzcfypk.fpnum,fpname,kmcode,kmname,zfmoney1,zfmoney2,sum(ypmoney*cfcount) as kmmoney,opername,invoicenum0        from mzcfypk (nolock),mzinvoice (nolock)f        where mzcfypk.fpnum=mzinvoice.fpnum and mzcfypk.deldate is null and mzinvoice.jfcardid is nullF          and mzinvoice.jsdate>=:begdate and mzinvoice.jsdate<:enddate%          and opername like :opernameq        group by ybflag,mzinvoice.fpdate,mzcfypk.fpnum,fpname,kmcode,kmname,zfmoney1,zfmoney2,opername,invoicenum      union all�      select ybflag,mzinvoicehis.fpdate,mzcfypkhis.fpnum,fpname,kmcode,kmname,zfmoney1,zfmoney2,sum(ypmoney*cfcount) as kmmoney,opername,invoicenum6        from mzcfypkhis (nolock),mzinvoicehis (nolock)r        where mzcfypkhis.fpnum=mzinvoicehis.fpnum and mzcfypkhis.deldate is null and mzinvoicehis.jfcardid is nullL          and mzinvoicehis.jsdate>=:begdate and mzinvoicehis.jsdate<:enddate%          and opername like :opernamew        group by ybflag,mzinvoicehis.fpdate,mzcfypkhis.fpnum,fpname,kmcode,kmname,zfmoney1,zfmoney2,opername,invoicenum      union all�      select ybflag,mzinvoice.fpdate,mzcheck.fpnum,fpname,kmcode,kmname,zfmoney1,zfmoney2,sum(checkmoney) as kmmoney,opername,invoicenum0        from mzcheck (nolock),mzinvoice (nolock)G        where mzcheck.fpnum=mzinvoice.fpnum and mzcheck.deldate is nulle          and mzinvoice.jsdate>=:begdate and mzinvoice.jsdate<:enddate and mzinvoice.jfcardid is null%          and opername like :opernameq        group by ybflag,mzinvoice.fpdate,mzcheck.fpnum,fpname,kmcode,kmname,zfmoney1,zfmoney2,opername,invoicenum      union all�      select ybflag,mzinvoicehis.fpdate,mzcheckhis.fpnum,fpname,kmcode,kmname,zfmoney1,zfmoney2,sum(checkmoney) as kmmoney,opername,invoicenum6        from mzcheckhis (nolock),mzinvoicehis (nolock)P        where mzcheckhis.fpnum=mzinvoicehis.fpnum and mzcheckhis.deldate is nulln          and mzinvoicehis.jsdate>=:begdate and mzinvoicehis.jsdate<:enddate and mzinvoicehis.jfcardid is null%          and opername like :opername}        group by ybflag,mzinvoicehis.fpdate,mzcheckhis.fpnum,fpname,kmcode,kmname,zfmoney1,zfmoney2,opername,invoicenum) disp?  where case when ybflag is null then 0 else ybflag end=:ybflagIgroup by ybflag,fpnum,fpname,fpdate,zfmoney1,zfmoney2,opername,invoicenumorder by ybflag,fpdate  LeftxTop� 	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNameybflag	ParamType	ptUnknown    TDataSourceKMDataSource5DataSetKMQuery5Left�Top�   TppDBPipelineppDBPipeline5
DataSourceKMDataSource5UserNameDBPipeline5Left�Top�   TQueryMZInvoiceQuery4DatabaseNameMZDATASQL.Strings4select yldy,fpnum,fpdate,fpname,opername,invoicenum,M       case when ybflag is null and deldate is null then zfmoney1 else 0 end+S       case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-_       case when roundmoney is not null and deldate is null then roundmoney else 0 end as ysxj,e       case when roundmoney is not null and deldate is null then roundmoney else 0 end as roundmoney,M       case when ybflag is null and deldate is null then zfmoney1 else 0 end+[       case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end as ssxj,O       case when ybflag=1 and deldate is null then zfmoney1 else 0 end as ybzf,Q       case when ybflag=2 and deldate is null then zfmoney1 else 0 end as hzylzf,O       case when ybflag=3 and deldate is null then zfmoney1 else 0 end as jzzf,O       case when ybflag=4 and deldate is null then zfmoney1 else 0 end as yxzf,G       case when ybflag=5 and deldate is null then zfmoney1 else 0 end+`            case when zfmoney3 is not null and deldate is null then zfmoney3 else 0 end as yhhz,D       case when deldate is null then yberror else 0 end as yberror,A       case when deldate is null then fpmoney else 0 end as sshj,\       case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end as czbzzf  from mzinvoice (nolock)U  where jsdate>=:begdate and jsdate<:enddate and jfcardid is null and deldate is null    and opername like :opername	union all4select yldy,fpnum,fpdate,fpname,opername,invoicenum,M       case when ybflag is null and deldate is null then zfmoney1 else 0 end+S       case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-_       case when roundmoney is not null and deldate is null then roundmoney else 0 end as ysxj,e       case when roundmoney is not null and deldate is null then roundmoney else 0 end as roundmoney,M       case when ybflag is null and deldate is null then zfmoney1 else 0 end+[       case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end as ssxj,O       case when ybflag=1 and deldate is null then zfmoney1 else 0 end as ybzf,Q       case when ybflag=2 and deldate is null then zfmoney1 else 0 end as hzylzf,O       case when ybflag=3 and deldate is null then zfmoney1 else 0 end as jzzf,O       case when ybflag=4 and deldate is null then zfmoney1 else 0 end as yxzf,G       case when ybflag=5 and deldate is null then zfmoney1 else 0 end+`            case when zfmoney3 is not null and deldate is null then zfmoney3 else 0 end as yhhz,D       case when deldate is null then yberror else 0 end as yberror,A       case when deldate is null then fpmoney else 0 end as sshj,\       case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end as czbzzf  from mzinvoicehis (nolock)U  where jsdate>=:begdate and jsdate<:enddate and jfcardid is null and deldate is null    and opername like :opername  order by yldy,fpnum  LeftwTop� 	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown    TDataSourceMZInvoiceDataSource4DataSetMZInvoiceQuery4Left�Top�   TppDBPipelineppDBPipeline4
DataSourceMZInvoiceDataSource4UserNameDBPipeline4Left�Top�  TppField	ppField17
FieldAliasyldy	FieldNameyldyFieldLength DataType
dtNotKnownDisplayWidth Position 
SearchableSortable  TppField	ppField18
FieldAliasfpcount	FieldNamefpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField19
FieldAlias
delfpcount	FieldName
delfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField20
FieldAlias	cdfpcount	FieldName	cdfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField21
FieldAliasysxj	FieldNameysxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField22
FieldAlias
roundmoney	FieldName
roundmoneyFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField23
FieldAliasssxj	FieldNamessxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField24
FieldAliasybzf	FieldNameybzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField25
FieldAliashzylzf	FieldNamehzylzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField26
FieldAliaslxzf	FieldNamelxzfFieldLength DataType
dtNotKnownDisplayWidth Position	
SearchableSortable  TppField	ppField27
FieldAliasjzzf	FieldNamejzzfFieldLength DataType
dtNotKnownDisplayWidth Position

SearchableSortable  TppField	ppField28
FieldAliasyxzf	FieldNameyxzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField29
FieldAliasyhhz	FieldNameyhhzFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField30
FieldAliasczyb	FieldNameczybFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField31
FieldAliasyberror	FieldNameyberrorFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField32
FieldAliassshj	FieldNamesshjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable   	TppReport	ppReport4AutoStopDataPipelineppDBPipeline4PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.OrientationpoLandscapePrinterSetup.PaperNameA4PrinterSetup.PrinterNameDefaultPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight�4 PrinterSetup.mmPaperWidth�� PrinterSetup.PaperSize	Template.FileName1   C:\Documents and Settings\Lanyuzhi\桌面\xxx.rtm
DeviceTypeScreenOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	PreviewFormSettings.WindowStatewsMaximized TextSearchSettings.DefaultString
<FindText>TextSearchSettings.Enabled	Left�Top� Version9.03mmColumnWidth DataPipelineNameppDBPipeline4 TppHeaderBandppHeaderBand2mmBottomOffset mmHeightԔ  mmPrintPosition  TppLabel	ppLabel15UserNameLabel56AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�~�{�u�N	c;S�u�_G�R{|f�~h�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   楷体_GB2312	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop$#mmWidth$; BandType   TppLabelTab4_UnitNameppLabelUserNameTab2_UnitNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab4_UnitNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�9mmTopchmmWidthv�  BandType   TppLabelTab4_JSDateppLabelUserNameTab2_JSDateppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab4_JSDateppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopchmmWidth|BandType   TppLabelTab4_OperNameppLabelUserNameTab2_OperNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab4_OperNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft@
 mmTopchmmWidthv�  BandType   TppShape
ppShape208UserNameShape62mmHeight�mmLeft�mmTop�ymmWidthPGBandType   TppLabel	ppLabel47UserNameLabel60Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�u�_G�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTopB�  mmWidth�6BandType   TppShape
ppShape209UserNameShape63mmHeight�mmLeft�[mmTop�ymmWidth�<BandType   TppLabel	ppLabel48UserNameLabel601Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   Am4l�SFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftRfmmTopB�  mmWidth-)BandType   TppLabel	ppLabel49UserNameLabel62Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �u�N�YTFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft*�  mmTopB�  mmWidth`*BandType   TppShape
ppShape211UserNameShape65mmHeight�mmLeft�� mmTop�ymmWidthYHBandType   TppLabel	ppLabel50UserNameLabel63Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �^6e�sёFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopB�  mmWidth�6BandType   TppShape
ppShape212UserNameShape66mmHeight�mmLeft� mmTop�ymmWidthq,BandType   TppLabel	ppLabel51UserNameLabel64Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �eQFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftS� mmTopB�  mmWidth�BandType   TppShape
ppShape213UserNameShape67mmHeight�mmLeft�A mmTop�ymmWidth%BBandType   TppLabel	ppLabel54UserNameLabel65Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�O/e�NFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�G mmTopB�  mmWidth�6BandType   TppShape
ppShape214UserNameShape68mmHeight�mmLeftۂ mmTop�ymmWidth&BBandType   TppLabel	ppLabel55UserNameLabel66Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T\O;S�uFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopB�  mmWidth�6BandType   TppShape
ppShape215UserNameShape70mmHeight�mmLeft�� mmTop�ymmWidth�2BandType   TppLabel	ppLabel67UserNameLabel68Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��    ^Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopB�  mmWidth`*BandType   TppShape
ppShape216UserNameShape71mmHeight�mmLeft�� mmTop�ymmWidthABandType   TppLabel	ppLabel71UserNameLabel69Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��L�NaSFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopB�  mmWidth�6BandType   TppShape
ppShape217UserNameShape72mmHeight�mmLeft�5 mmTop�ymmWidth�/BandType   TppLabel	ppLabel76UserNameLabel70Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   O    �`Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�7 mmTopB�  mmWidth`*BandType   TppShape
ppShape218UserNameShape74mmHeight�mmLeft� mmTop�ymmWidth�7BandType   TppLabel	ppLabel77UserNameLabel72AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�O��]Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight�mmLeft%� mmTopB�  mmWidth�5BandType   TppShape
ppShape219UserNameShape76mmHeight�mmLeft�� mmTop�ymmWidth.CBandType   TppLabel	ppLabel78UserNameLabel74AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shyё��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight�mmLeft� mmTopB�  mmWidth�:BandType   TppShape
ppShape220UserNameShape4mmHeight�mmLeftn� mmTop�ymmWidthYHBandType   TppLabel	ppLabel79UserNameLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �[6e�sёFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopB�  mmWidth�6BandType   TppShape
ppShape224UserNameShape13mmHeight�mmLeft� mmTop�ymmWidth�uBandType   TppLabel	ppLabel87UserNameLabel12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shy�egFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft7 mmTopB�  mmWidth�8BandType   TppShape
ppShape210UserNameShape64mmHeight�mmLeft�  mmTop�ymmWidth�7BandType   TppLabel	ppLabel16UserNameLabel16Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �u�N�YTFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	mmHeightxmmLeft�  mmTopB�  mmWidth�1BandType   TppShape
ppShape258UserNameShape258mmHeight�mmLeft  mmTop�ymmWidth�0BandType   TppLabel	ppLabel46UserNameLabel46Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �d\OXTFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft mmTopB�  mmWidthW)BandType   TppShape
ppShape383UserNameShape383mmHeight�mmLeft��  mmTop�ymmWidth?EBandType   TppLabel
ppLabel157UserNameLabel157Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shy�SFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft$�  mmTopB�  mmWidthW)BandType   TppShape
ppShape204UserNameShape204mmHeight�mmLeft*d mmTop�ymmWidth�;BandType   TppLabel
ppLabel160UserNameLabel702Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   "�?ee��RFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft<f mmTopB�  mmWidth�6BandType    TppDetailBandppDetailBand2mmBottomOffset mmHeight�mmPrintPosition  TppShape
ppShape228UserNameShape7mmHeight�mmLeft�� mmTop mmWidthYHBandType  TppShape
ppShape229UserNameShape8mmHeight�mmLeft� mmTop mmWidthq,BandType  TppShape
ppShape230UserNameShape9mmHeight�mmLeft�A mmTop mmWidth%BBandType  TppShape
ppShape231UserNameShape10mmHeight�mmLeftۂ mmTop mmWidth&BBandType  TppShape
ppShape232UserNameShape11mmHeight�mmLeft�� mmTop mmWidth�2BandType  TppShape
ppShape233UserNameShape12mmHeight�mmLeft�� mmTop mmWidthABandType  TppShape
ppShape234UserNameShape14mmHeight�mmLeft�5 mmTop mmWidth�/BandType  TppShape
ppShape235UserNameShape904mmHeight�mmLeft� mmTop mmWidth�7BandType  TppShape
ppShape236UserNameShape15mmHeight�mmLeft�� mmTop mmWidth.CBandType  	TppDBText
ppDBText74UserName	DBText301Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop+mmWidthPGBandType  	TppDBText
ppDBText75UserNameDBText1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft(� mmTop+mmWidth5%BandType  	TppDBText
ppDBText76UserNameDBText2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�C mmTop4mmWidth>BandType  	TppDBText
ppDBText77UserNameDBText3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth�:BandType  	TppDBText
ppDBText78UserNameDBText4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft	� mmTop4mmWidthz-BandType  	TppDBText
ppDBText79UserNameDBText5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth�;BandType  	TppDBText
ppDBText80UserNameDBText6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�7 mmTop4mmWidthi+BandType  	TppDBText
ppDBText81UserNameDBText7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft%� mmTop4mmWidth�2BandType  	TppDBText
ppDBText82UserName	DBText402Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth>BandType  TppShape
ppShape237UserNameShape16mmHeight�mmLeftn� mmTop mmWidthYHBandType  	TppDBText
ppDBText83UserNameDBText8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop+mmWidth%BBandType  TppShape
ppShape221UserNameShape221mmHeight�mmLeft�mmTop mmWidthPGBandType  TppShape
ppShape222UserNameShape222mmHeight�mmLeft�[mmTop mmWidth�<BandType  TppShape
ppShape223UserNameShape223mmHeight�mmLeft�  mmTop mmWidth�7BandType  TppShape
ppShape226UserNameShape226mmHeight�mmLeft� mmTop mmWidth�uBandType  	TppDBText	ppDBText6UserNameDBText9Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyldyDataPipelineppDBPipeline4Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�mmTop+mmWidth@BandType  	TppDBText
ppDBText72UserNameDBText10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpnumDataPipelineppDBPipeline4Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft`mmTop+mmWidth�5BandType  	TppDBText
ppDBText73UserNameDBText73Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpnameDataPipelineppDBPipeline4Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft��  mmTop+mmWidth�3BandType  	TppDBText
ppDBText84UserNameDBText84Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpdateDataPipelineppDBPipeline4Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft� mmTop+mmWidth�rBandType  TppShape
ppShape259UserNameShape259mmHeight�mmLeft  mmTop mmWidth�0BandType  	TppDBText
ppDBText85UserNameDBText85Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldopernameDataPipelineppDBPipeline4Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft mmTop4mmWidthi+BandType  TppShape
ppShape384UserNameShape384mmHeight�mmLeft��  mmTop mmWidth?EBandType  	TppDBTextppDBText122UserName	DBText122Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
invoicenumDataPipelineppDBPipeline4Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft��  mmTop+mmWidth>BandType  TppShape
ppShape205UserNameShape205mmHeight�mmLeft*d mmTop mmWidth�;BandType  	TppDBTextppDBText125UserName	DBText125Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft<f mmTop4mmWidth�7BandType   TppFooterBandppFooterBand4mmBottomOffset mmHeight�3mmPrintPosition  TppLineppLine5UserNameLine2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Weight       ��?mmHeightV
mmLeft�mmTop<mmWidth,< BandType  TppLabelFootppLabel4UserNameLabel5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionFooterppLabel4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTopxmmWidth'aBandType  TppSystemVariableppSystemVariable2UserNameSystemVariable2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?VarTypevtPageNoFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft� mmToppmmWidthBandType   TppSummaryBandppSummaryBand3mmBottomOffset mmHeight�/mmPrintPosition  TppShape
ppShape239UserNameShape92mmHeight�mmLeft�mmTop mmWidth
s BandType  TppShape
ppShape242UserNameShape96mmHeight�mmLeft�� mmTop mmWidthYHBandType  TppShape
ppShape243UserNameShape97mmHeight�mmLeft� mmTop mmWidthq,BandType  TppShape
ppShape244UserNameShape98mmHeight�mmLeft�A mmTop mmWidth%BBandType  TppShape
ppShape245UserNameShape99mmHeight�mmLeftۂ mmTop mmWidth&BBandType  TppShape
ppShape246UserNameShape1mmHeight�mmLeft�� mmTop mmWidth�2BandType  TppShape
ppShape247UserNameShape2mmHeight�mmLeft�� mmTop mmWidthABandType  TppShape
ppShape248UserNameShape3mmHeight�mmLeft�5 mmTop mmWidth�/BandType  TppShape
ppShape249UserNameShape901mmHeight�mmLeft� mmTop mmWidth�7BandType  TppShape
ppShape250UserNameShape106mmHeight�mmLeft�� mmTop mmWidth.CBandType  TppLabel	ppLabel90UserNameLabel75AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   合        计Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop4mmWidth�l BandType  	TppDBCalc
ppDBCalc73UserNameDBCalc5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidthPGBandType  	TppDBCalc
ppDBCalc74UserNameDBCalc6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft(� mmTop4mmWidth5%BandType  	TppDBCalc
ppDBCalc75UserNameDBCalc7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�C mmTop4mmWidth>BandType  	TppDBCalc
ppDBCalc76UserNameDBCalc8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth�:BandType  	TppDBCalc
ppDBCalc77UserNameDBCalc10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft	� mmTop4mmWidthz-BandType  	TppDBCalc
ppDBCalc78UserNameDBCalc11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth�;BandType  	TppDBCalc
ppDBCalc79UserNameDBCalc12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�8 mmTop4mmWidthi+BandType  	TppDBCalc
ppDBCalc80UserNameDBCalc14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft-� mmTop4mmWidth�2BandType  	TppDBCalc
ppDBCalc81UserNameDBCalc15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth>BandType  TppShape
ppShape251UserNameShape6mmHeight�mmLeftn� mmTop mmWidthYHBandType  	TppDBCalc
ppDBCalc82UserNameDBCalc1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth%BBandType  TppShape
ppShape261UserNameShape261mmHeight�mmLeft  mmTop mmWidth�0BandType  TppShape
ppShape264UserNameShape264mmHeight�mmLeft*d mmTop mmWidth�;BandType  	TppDBCalcppDBCalc133UserName	DBCalc133Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeftDg mmTop4mmWidth�7BandType   TppGroupppGroup2	BreakNameyldyDataPipelineppDBPipeline4OutlineSettings.CreateNode	UserNameGroup2mmNewColumnThreshold mmNewPageThreshold DataPipelineNameppDBPipeline4 TppGroupHeaderBandppGroupHeaderBand2mmBottomOffset mmHeight mmPrintPosition   TppGroupFooterBandppGroupFooterBand2mmBottomOffset mmHeight�mmPrintPosition  TppShape
ppShape225UserNameShape5Brush.ColorclActiveBordermmHeight�mmLeft�mmTop mmWidth
s BandTypeGroupNo   TppLabel	ppLabel41UserNameLabel41AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   \    ��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop+mmWidth�n BandTypeGroupNo   TppShape
ppShape227UserNameShape227Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidthYHBandTypeGroupNo   TppShape
ppShape238UserNameShape238Brush.ColorclActiveBordermmHeight�mmLeft� mmTop mmWidthq,BandTypeGroupNo   TppShape
ppShape240UserNameShape240Brush.ColorclActiveBordermmHeight�mmLeft�A mmTop mmWidth%BBandTypeGroupNo   TppShape
ppShape241UserNameShape241Brush.ColorclActiveBordermmHeight�mmLeftۂ mmTop mmWidth&BBandTypeGroupNo   TppShape
ppShape252UserNameShape252Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidth�2BandTypeGroupNo   TppShape
ppShape253UserNameShape253Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidthABandTypeGroupNo   TppShape
ppShape254UserNameShape254Brush.ColorclActiveBordermmHeight�mmLeft�5 mmTop mmWidth�/BandTypeGroupNo   TppShape
ppShape255UserNameShape255Brush.ColorclActiveBordermmHeight�mmLeft� mmTop mmWidth�7BandTypeGroupNo   TppShape
ppShape256UserNameShape256Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidth.CBandTypeGroupNo   	TppDBCalc
ppDBCalc71UserNameDBCalc71Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidthPGBandTypeGroupNo   	TppDBCalc
ppDBCalc72UserNameDBCalc72Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft(� mmTop4mmWidth5%BandTypeGroupNo   	TppDBCalc
ppDBCalc83UserNameDBCalc83Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�C mmTop4mmWidth>BandTypeGroupNo   	TppDBCalc
ppDBCalc84UserNameDBCalc84Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth�:BandTypeGroupNo   	TppDBCalc
ppDBCalc85UserName	DBCalc102Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft	� mmTop4mmWidth�.BandTypeGroupNo   	TppDBCalc
ppDBCalc86UserNameDBCalc86Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth�;BandTypeGroupNo   	TppDBCalc
ppDBCalc87UserNameDBCalc87Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�8 mmTop4mmWidthi+BandTypeGroupNo   	TppDBCalc
ppDBCalc88UserNameDBCalc88Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft-� mmTop4mmWidth�2BandTypeGroupNo   	TppDBCalc
ppDBCalc89UserNameDBCalc89Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth>BandTypeGroupNo   TppShape
ppShape257UserNameShape257Brush.ColorclActiveBordermmHeight�mmLeftn� mmTop mmWidthYHBandTypeGroupNo   	TppDBCalc
ppDBCalc90UserNameDBCalc90Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeft�� mmTop4mmWidth%BBandTypeGroupNo   TppShape
ppShape260UserNameShape260Brush.ColorclActiveBordermmHeight�mmLeft  mmTop mmWidth�0BandTypeGroupNo   TppShape
ppShape206UserNameShape206Brush.ColorclActiveBordermmHeight�mmLeft*d mmTop mmWidth�;BandTypeGroupNo   	TppDBCalcppDBCalc132UserName	DBCalc132Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline4DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup2TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline4mmHeightxmmLeftDg mmTop4mmWidth�7BandTypeGroupNo     TppParameterListppParameterList3   TQueryMZInvoiceQuery6DatabaseNameMZDATASQL.Stringsselect yldy,�          case when CDNUM is not null then convert(varchar(20),fpnum)+'(冲'+convert(varchar(20),CDNUM)+')' else convert(varchar(20),fpnum) end as fpnum,)       InvoiceNum,fpdate,fpname,opername,9       case when ybflag is null then zfmoney1 else 0 end+?       case when zfmoney2 is not null then zfmoney2 else 0 end-K       case when roundmoney is not null then roundmoney else 0 end as ysxj, Q       case when roundmoney is not null then roundmoney else 0 end as roundmoney, 9       case when ybflag is null then zfmoney1 else 0 end+G       case when zfmoney2 is not null then zfmoney2 else 0 end as ssxj, ;       case when ybflag=1 then zfmoney1 else 0 end as ybzf,=       case when ybflag=2 then zfmoney1 else 0 end as hzylzf,;       case when ybflag=3 then zfmoney1 else 0 end as jzzf,;       case when ybflag=4 then zfmoney1 else 0 end as yxzf, 3       case when ybflag=5 then zfmoney1 else 0 end+G       case when zfmoney3 is not null then zfmoney3 else 0 end as yhhz, $       yberror,abs(fpmoney) as sshj, H       case when zfmoney4 is not null then zfmoney4 else 0 end as czbzzf  from mzinvoice (nolock)E  where jsdate>=:begdate and jsdate<:enddate and jfcardid is null and^        (deldate is not null or (CDNUM is not null and FPMONEY<0)) and opername like :opername	union allselect yldy,�          case when CDNUM is not null then convert(varchar(20),fpnum)+'(冲'+convert(varchar(20),CDNUM)+')' else convert(varchar(20),fpnum) end as fpnum,)       InvoiceNum,fpdate,fpname,opername,9       case when ybflag is null then zfmoney1 else 0 end+?       case when zfmoney2 is not null then zfmoney2 else 0 end-K       case when roundmoney is not null then roundmoney else 0 end as ysxj, Q       case when roundmoney is not null then roundmoney else 0 end as roundmoney, 9       case when ybflag is null then zfmoney1 else 0 end+G       case when zfmoney2 is not null then zfmoney2 else 0 end as ssxj, ;       case when ybflag=1 then zfmoney1 else 0 end as ybzf,=       case when ybflag=2 then zfmoney1 else 0 end as hzylzf,;       case when ybflag=3 then zfmoney1 else 0 end as jzzf,;       case when ybflag=4 then zfmoney1 else 0 end as yxzf, 3       case when ybflag=5 then zfmoney1 else 0 end+G       case when zfmoney3 is not null then zfmoney3 else 0 end as yhhz,        yberror,fpmoney as sshj, H       case when zfmoney4 is not null then zfmoney4 else 0 end as czbzzf  from mzinvoicehis (nolock)E  where jsdate>=:begdate and jsdate<:enddate and jfcardid is null and^        (deldate is not null or (CDNUM is not null and FPMONEY<0)) and opername like :opernameorder by opername,fpnum LeftxTop	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown    TQuerySumMZInvoiceQuery7DatabaseNameMZDATASQL.Stringsselect yldy,YBAttrib,       sum(fpcount) as fpcount,%       sum(delfpcount) as delfpcount,#       sum(cdfpcount) as cdfpcount,       sum(ysxj) as ysxj,%       sum(roundmoney) as roundmoney,       sum(ssxj) as ssxj,       sum(ybzf) as ybzf,       sum(hzylzf) as hzylzf,       sum(jzzf) as jzzf,       sum(yxzf) as yxzf,       sum(yhhz) as yhhz,       sum(yberror) as yberror,       sum(sshj) as sshj,       sum(czbzzf) as czbzzf  from (2         select yldy,YBAttrib,count(*) as fpcount,S                sum(case when deldate is not null then 1 else 0 end) as delfpcount,~                sum(case when deldate is null and cdnum is not null and mzinvoice.fpnum>cdnum then 1 else 0 end) as cdfpcount,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+`                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-m                    case when roundmoney is not null and deldate is null then roundmoney else 0 end) as ysxj,s                sum(case when roundmoney is not null and deldate is null then roundmoney else 0 end) as roundmoney,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end) as ssxj,]                sum(case when ybflag=1 and deldate is null then zfmoney1 else 0 end) as ybzf,_                sum(case when ybflag=2 and deldate is null then zfmoney1 else 0 end) as hzylzf,]                sum(case when ybflag=3 and deldate is null then zfmoney1 else 0 end) as jzzf,]                sum(case when ybflag=4 and deldate is null then zfmoney1 else 0 end) as yxzf,T                sum(case when ybflag=5 and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney3 is not null and deldate is null then zfmoney3 else 0 end) as yhhz,R                sum(case when deldate is null then yberror else 0 end) as yberror,O                sum(case when deldate is null then fpmoney else 0 end) as sshj,j                sum(case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end) as czbzzf#           from mzinvoice (nolock),                (1                 select FPNum,YBAreaName,YBAttrib1                   from DRYB_Invoicebase (nolock)?                   where PatientState=1 and DelDate is null andW                         JSDate>=:begdate and JSDate<:enddate and FPOper like :opername                 union all1                 select FPNum,YBAreaName,YBAttrib1                   from YDYB_Invoicebase (nolock)?                   where PatientState=1 and DelDate is null and[                         JSDate>=:begdate and JSDate<:enddate and FPOperName like :opername                 union all2                 select FPNum,XNHAreaName,YLLBName0                   from XNH_Invoicebase (nolock)?                   where PatientState=1 and DelDate is null and[                         JSDate>=:begdate and JSDate<:enddate and FPOperName like :opername                 union all)                 select FPNum,YBAreaName,>                           case when FPFlag=1 then '普通门诊'A                                when FPFlag=2 then '慢性病门诊'A                                when FPFlag=3 then '特殊病门诊'>                                when FPFlag=4 then '门诊特检'D                                when FPFlag=5 then '特殊群体门诊'8                                when FPFlag=6 then '急诊'>                                when FPFlag=7 then '工伤门诊'A                                when FPFlag=8 then '精神病门诊'$                             else '''                        end as YBAttrib1                   from YHYB_Invoicebase (nolock)?                   where PatientState=1 and DelDate is null andW                         JSDate>=:begdate and JSDate<:enddate and FPOper like :opername                ) InterfaceTabr           where mzinvoice.fpnum*=InterfaceTab.fpnum and jsdate>=:begdate and jsdate<:enddate and jfcardid is null(             and opername like :opername!           group by yldy,YBAttrib         union all2         select yldy,YBAttrib,count(*) as fpcount,S                sum(case when deldate is not null then 1 else 0 end) as delfpcount,�                sum(case when deldate is null and cdnum is not null and mzinvoicehis.fpnum>cdnum then 1 else 0 end) as cdfpcount,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+`                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-m                    case when roundmoney is not null and deldate is null then roundmoney else 0 end) as ysxj,s                sum(case when roundmoney is not null and deldate is null then roundmoney else 0 end) as roundmoney,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end) as ssxj,]                sum(case when ybflag=1 and deldate is null then zfmoney1 else 0 end) as ybzf,_                sum(case when ybflag=2 and deldate is null then zfmoney1 else 0 end) as hzylzf,]                sum(case when ybflag=3 and deldate is null then zfmoney1 else 0 end) as jzzf,]                sum(case when ybflag=4 and deldate is null then zfmoney1 else 0 end) as yxzf,T                sum(case when ybflag=5 and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney3 is not null and deldate is null then zfmoney3 else 0 end) as yhhz,R                sum(case when deldate is null then yberror else 0 end) as yberror,O                sum(case when deldate is null then fpmoney else 0 end) as sshj,j                sum(case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end) as czbzzf&           from mzinvoicehis (nolock),                (1                 select FPNum,YBAreaName,YBAttrib1                   from DRYB_Invoicebase (nolock)?                   where PatientState=1 and DelDate is null andW                         JSDate>=:begdate and JSDate<:enddate and FPOper like :opername                 union all1                 select FPNum,YBAreaName,YBAttrib1                   from YDYB_Invoicebase (nolock)?                   where PatientState=1 and DelDate is null and[                         JSDate>=:begdate and JSDate<:enddate and FPOperName like :opername                 union all2                 select FPNum,XNHAreaName,YLLBName0                   from XNH_Invoicebase (nolock)?                   where PatientState=1 and DelDate is null and[                         JSDate>=:begdate and JSDate<:enddate and FPOperName like :opername                 union all)                 select FPNum,YBAreaName,>                           case when FPFlag=1 then '普通门诊'A                                when FPFlag=2 then '慢性病门诊'A                                when FPFlag=3 then '特殊病门诊'>                                when FPFlag=4 then '门诊特检'D                                when FPFlag=5 then '特殊群体门诊'8                                when FPFlag=6 then '急诊'>                                when FPFlag=7 then '工伤门诊'A                                when FPFlag=8 then '精神病门诊'$                             else '''                        end as YBAttrib1                   from YHYB_Invoicebase (nolock)?                   where PatientState=1 and DelDate is null andW                         JSDate>=:begdate and JSDate<:enddate and FPOper like :opername                ) InterfaceTabu           where mzinvoicehis.fpnum*=InterfaceTab.fpnum and jsdate>=:begdate and jsdate<:enddate and jfcardid is null(             and opername like :opername!           group by yldy,YBAttrib       ) dispviewgroup by yldy,YBAttriborder by yldy,YBAttrib   LeftwTop9	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown    	TppReport	ppReport7AutoStopDataPipelineppDBPipeline7PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.OrientationpoLandscapePrinterSetup.PaperNameA4PrinterSetup.PrinterNameDefaultPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight�4 PrinterSetup.mmPaperWidth�� PrinterSetup.PaperSize	Template.FileName1   C:\Documents and Settings\Lanyuzhi\桌面\xxx.rtm
DeviceTypeScreenOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	PreviewFormSettings.WindowStatewsMaximizedPreviewFormSettings.ZoomSettingzs100Percent TextSearchSettings.DefaultString
<FindText>TextSearchSettings.Enabled	Left�Top9Version9.03mmColumnWidth DataPipelineNameppDBPipeline7 TppHeaderBandppHeaderBand3mmBottomOffset mmHeight��  mmPrintPosition  TppLabel	ppLabel92UserNameLabel56AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�ʋ�~�{�u�N/e�N�`�Q	c�ʋ{|+R�~��h�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   楷体_GB2312	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop$#mmWidth�2 BandType   TppLabelTab7_UnitNameppLabelUserNameTab2_UnitNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab7_UnitNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft5%mmTopSfmmWidthQ�  BandType   TppLabelTab7_RJDateppLabelUserNameTab2_RJDateppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab7_RJDateppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�d mmTopSfmmWidth��  BandType   TppLabelTab7_OperNameppLabelUserNameTab2_OperNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab7_OperNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�P mmTopSfmmWidthQ�  BandType   TppShape
ppShape280UserNameShape62mmHeight�3mmLeft�mmTop�vmmWidth{LBandType   TppLabel
ppLabel115UserNameLabel60Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�u�_G�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft,$mmTop��  mmWidth�6BandType   TppShape
ppShape281UserNameShape63mmHeight�mmLeftֳ  mmTopÒ  mmWidth>BandType   TppLabel
ppLabel116UserNameLabel601Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shy;`peFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�  mmTop��  mmWidth�6BandType   TppShape
ppShape282UserNameShape64mmHeight�mmLeft��  mmTopÒ  mmWidth7DBandType   TppLabel
ppLabel117UserNameLabel62Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   \O�^�ShyFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�  mmTop��  mmWidth�6BandType   TppShape
ppShape283UserNameShape65mmHeight�mmLeft,w mmTopÒ  mmWidth7DBandType   TppLabel
ppLabel118UserNameLabel63Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �^6e�sёFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLefth~ mmTop��  mmWidth�6BandType   TppShape
ppShape284UserNameShape66mmHeight�mmLeftZ� mmTopÒ  mmWidthPGBandType   TppLabel
ppLabel119UserNameLabel64Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   R^�eQFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop��  mmWidth�6BandType   TppShape
ppShape285UserNameShape67mmHeight�mmLeft�F mmTopÒ  mmWidthPGBandType   TppLabel
ppLabel120UserNameLabel65Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�O/e�NFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft.O mmTop��  mmWidth�6BandType   TppShape
ppShape286UserNameShape68mmHeight�mmLeft1� mmTopÒ  mmWidthPGBandType   TppLabel
ppLabel121UserNameLabel66Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T\O;S�uFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftm� mmTop��  mmWidth�6BandType   TppShape
ppShape287UserNameShape70mmHeight�mmLefty� mmTopÒ  mmWidth>BandType   TppLabel
ppLabel122UserNameLabel68Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��    ^Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop��  mmWidth`*BandType   TppShape
ppShape288UserNameShape71mmHeight�mmLefts mmTopÒ  mmWidthABandType   TppLabel
ppLabel123UserNameLabel69Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��L�NaSFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop��  mmWidth�6BandType   TppShape
ppShape289UserNameShape72mmHeight�mmLeft�P mmTopÒ  mmWidth�7BandType   TppLabel
ppLabel124UserNameLabel70Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   O    �`Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�V mmTop��  mmWidth`*BandType   TppShape
ppShape290UserNameShape74mmHeight�3mmLeftQ� mmTop�vmmWidth>BandType   TppLabel
ppLabel125UserNameLabel72Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�O��]Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftt� mmTop��  mmWidth�6BandType   TppShape
ppShape291UserNameShape76mmHeight�3mmLeftL mmTop�vmmWidthPGBandType   TppLabel
ppLabel126UserNameLabel74AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�~�{�ʋ9�(uFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight5%mmLeft�
 mmTop1�  mmWidth�:BandType   TppShape
ppShape292UserNameShape4mmHeight�mmLeft�  mmTopÒ  mmWidthPGBandType   TppLabel
ppLabel127UserNameLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �[6e�sёFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTop��  mmWidth�6BandType   TppShape
ppShape293UserNameShape10mmHeight�mmLeft,w mmTop�vmmWidth��  BandType   TppShape
ppShape294UserNameShape101mmHeight�mmLeft�F mmTop�vmmWidthq BandType   TppLabel
ppLabel128UserNameLabel2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�sё6eeQFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft8� mmTop(�  mmWidth�RBandType   TppLabel
ppLabel129UserNameLabel3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,ggvQ�[�e_/e�NFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop(�  mmWidth�nBandType   TppShape
ppShape295UserNameShape102mmHeight�mmLeftֳ  mmTop�vmmWidth_�  BandType   TppLabel
ppLabel130UserNameLabel4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�Shy�`�QFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft��  mmTop(�  mmWidth�RBandType   TppShape
ppShape296UserNameShape13mmHeight�mmLeft�3 mmTopÒ  mmWidth7DBandType   TppLabel
ppLabel131UserNameLabel12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �QUS�ShyFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft1: mmTop�  mmWidth�6BandType   TppShape
ppShape297UserNameShape94mmHeight�3mmLeft8cmmTop�vmmWidth�QBandType   TppLabel
ppLabel132UserNameLabel602Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �ʋ{|+RFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�qmmTop��  mmWidth�6BandType   TppShape
ppShape388UserNameShape388mmHeight�mmLeftN� mmTopÒ  mmWidth?BandType   TppLabel
ppLabel162UserNameLabel704Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   "�?ee��RFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftq� mmTop��  mmWidth�6BandType    TppDetailBandppDetailBand3mmBottomOffset mmHeight�mmPrintPosition  TppShape
ppShape298UserNameShape77mmHeight�mmLeft�mmTop mmWidth{LBandType  TppShape
ppShape299UserNameShape78mmHeight�mmLeftֳ  mmTop mmWidth>BandType  TppShape
ppShape300UserNameShape80mmHeight�mmLeft��  mmTop mmWidth7DBandType  TppShape
ppShape301UserNameShape81mmHeight�mmLeft,w mmTop mmWidth7DBandType  TppShape
ppShape302UserNameShape82mmHeight�mmLeftZ� mmTop mmWidthPGBandType  TppShape
ppShape303UserNameShape83mmHeight�mmLeft�F mmTop mmWidthPGBandType  TppShape
ppShape304UserNameShape84mmHeight�mmLeft1� mmTop mmWidthPGBandType  TppShape
ppShape305UserNameShape701mmHeight�mmLefty� mmTop mmWidth>BandType  TppShape
ppShape306UserNameShape87mmHeight�mmLefts mmTop mmWidthABandType  TppShape
ppShape307UserNameShape88mmHeight�mmLeft�P mmTop mmWidth�7BandType  TppShape
ppShape308UserNameShape90mmHeight�mmLeftQ� mmTop mmWidth>BandType  TppShape
ppShape309UserNameShape91mmHeight�mmLeftL mmTop mmWidthPGBandType  	TppDBText
ppDBText91UserNameDBText26Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyldyDataPipelineppDBPipeline7Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	DataPipelineNameppDBPipeline7mmHeight�mmLeft�mmTop"mmWidthABandType  	TppDBText
ppDBText92UserNameDBText27Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpcountDataPipelineppDBPipeline7DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft	�  mmTop4mmWidth�0BandType  	TppDBText
ppDBText93UserNameDBText29Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
delfpcountDataPipelineppDBPipeline7DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft��  mmTop4mmWidth>BandType  	TppDBText
ppDBText94UserNameDBText30Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft=y mmTop4mmWidth@BandType  	TppDBText
ppDBText95UserNameDBText31Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeftk� mmTop4mmWidth%BBandType  	TppDBText
ppDBText96UserNameDBText32Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft�H mmTop<mmWidth%BBandType  	TppDBText
ppDBText97UserNameDBText33Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeftB� mmTop<mmWidth%BBandType  	TppDBText
ppDBText98UserNameDBText35Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft�� mmTop<mmWidth�8BandType  	TppDBText
ppDBText99UserNameDBText36Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft� mmTop<mmWidth�;BandType  	TppDBTextppDBText100UserNameDBText37Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft�R mmTop<mmWidth�2BandType  	TppDBTextppDBText101UserNameDBText39Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeftb� mmTop<mmWidth�8BandType  	TppDBTextppDBText102UserNameDBText40Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft] mmTop<mmWidth%BBandType  TppShape
ppShape310UserNameShape5mmHeight�mmLeft�  mmTop mmWidthPGBandType  	TppDBTextppDBText103UserNameDBText2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft� mmTop4mmWidth%BBandType  TppShape
ppShape311UserNameShape802mmHeight�mmLeft�3 mmTop mmWidth7DBandType  	TppDBTextppDBText104UserNameDBText5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField	cdfpcountDataPipelineppDBPipeline7DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft6 mmTop4mmWidth>BandType  TppShape
ppShape312UserNameShape7mmHeight�mmLeft8cmmTop mmWidth�QBandType  	TppDBTextppDBText105UserNameDBText44Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldYBAttribDataPipelineppDBPipeline7Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	DataPipelineNameppDBPipeline7mmHeight�mmLeftZgmmTop"mmWidthsKBandType  TppShape
ppShape389UserNameShape389mmHeight�mmLeftN� mmTop mmWidth?BandType  	TppDBTextppDBText127UserName	DBText127Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft_� mmTop<mmWidth�9BandType   TppFooterBandppFooterBand5mmBottomOffset mmHeight�mmPrintPosition  TppLabel	ppLabel94UserNameLabel94Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,{Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft+ mmTop#mmWidthpBandType  TppLabel
ppLabel114UserNameLabel114Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   u�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft: mmTop#mmWidthpBandType  TppSystemVariableppSystemVariable1UserNameSystemVariable1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?VarTypevtPageCountFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�+ mmTop#mmWidthpBandType  TppLabelFootppLabel7UserNameTab2_UnitNameppLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionFootppLabel7Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTop"mmWidth�UBandType   TppSummaryBandppSummaryBand5mmBottomOffset mmHeight�/mmPrintPosition  TppShape
ppShape313UserNameShape92mmHeight�mmLeft�mmTop mmWidth�  BandType  TppShape
ppShape314UserNameShape93mmHeight�mmLeftֳ  mmTop mmWidth>BandType  TppShape
ppShape315UserNameShape801mmHeight�mmLeft��  mmTop mmWidth7DBandType  TppShape
ppShape316UserNameShape96mmHeight�mmLeft,w mmTop mmWidth7DBandType  TppShape
ppShape317UserNameShape97mmHeight�mmLeftZ� mmTop mmWidthPGBandType  TppShape
ppShape318UserNameShape98mmHeight�mmLeft�F mmTop mmWidthPGBandType  TppShape
ppShape319UserNameShape99mmHeight�mmLeft1� mmTop mmWidthPGBandType  TppShape
ppShape320UserNameShape1mmHeight�mmLefty� mmTop mmWidth>BandType  TppShape
ppShape321UserNameShape2mmHeight�mmLefts mmTop mmWidthABandType  TppShape
ppShape322UserNameShape3mmHeight�mmLeft�P mmTop mmWidth�7BandType  TppShape
ppShape323UserNameShape901mmHeight�mmLeftQ� mmTop mmWidth>BandType  TppShape
ppShape324UserNameShape106mmHeight�mmLeftL mmTop mmWidthPGBandType  TppLabel
ppLabel133UserNameLabel75Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T    ��Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�QmmTop4mmWidth`*BandType  	TppDBCalc
ppDBCalc98UserNameDBCalc2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpcountDataPipelineppDBPipeline7DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft	�  mmTop4mmWidth�0BandType  	TppDBCalc
ppDBCalc99UserNameDBCalc4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
delfpcountDataPipelineppDBPipeline7DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft��  mmTop4mmWidth>BandType  	TppDBCalcppDBCalc100UserNameDBCalc5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft,w mmTop4mmWidth%BBandType  	TppDBCalcppDBCalc101UserNameDBCalc6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeftk� mmTop4mmWidth%BBandType  	TppDBCalcppDBCalc102UserNameDBCalc7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft�H mmTop4mmWidth%BBandType  	TppDBCalcppDBCalc103UserNameDBCalc8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeftB� mmTop4mmWidth%BBandType  	TppDBCalcppDBCalc104UserNameDBCalc10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft�� mmTop4mmWidth�8BandType  	TppDBCalcppDBCalc105UserNameDBCalc11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft� mmTop4mmWidth�;BandType  	TppDBCalcppDBCalc106UserNameDBCalc12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft�R mmTop4mmWidth�2BandType  	TppDBCalcppDBCalc107UserNameDBCalc14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeftb� mmTop4mmWidth�8BandType  	TppDBCalcppDBCalc108UserNameDBCalc15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft] mmTop4mmWidth%BBandType  TppShape
ppShape325UserNameShape6mmHeight�mmLeft�  mmTop mmWidthPGBandType  	TppDBCalcppDBCalc109UserNameDBCalc1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft� mmTop4mmWidth%BBandType  TppShape
ppShape326UserNameShape15mmHeight�mmLeft�3 mmTop mmWidth7DBandType  	TppDBCalcppDBCalc110UserNameDBCalc3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField	cdfpcountDataPipelineppDBPipeline7DisplayFormat   #0张;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft6 mmTop4mmWidth>BandType  TppShape
ppShape390UserNameShape390mmHeight�mmLeftN� mmTop mmWidth?BandType  	TppDBCalcppDBCalc136UserName	DBCalc136Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline7DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline7mmHeightxmmLeft_� mmTop4mmWidth�9BandType    TppDBPipelineppDBPipeline7
DataSourceSumMZInvoiceDataSource7UserNameDBPipeline7Left�Top9 TppField	ppField33
FieldAliasyldy	FieldNameyldyFieldLength DataType
dtNotKnownDisplayWidth Position 
SearchableSortable  TppField	ppField34
FieldAliasfpcount	FieldNamefpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField35
FieldAlias
delfpcount	FieldName
delfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField36
FieldAlias	cdfpcount	FieldName	cdfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField37
FieldAliasysxj	FieldNameysxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField38
FieldAlias
roundmoney	FieldName
roundmoneyFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField39
FieldAliasssxj	FieldNamessxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField40
FieldAliasybzf	FieldNameybzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField41
FieldAliashzylzf	FieldNamehzylzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField42
FieldAliaslxzf	FieldNamelxzfFieldLength DataType
dtNotKnownDisplayWidth Position	
SearchableSortable  TppField	ppField43
FieldAliasjzzf	FieldNamejzzfFieldLength DataType
dtNotKnownDisplayWidth Position

SearchableSortable  TppField	ppField44
FieldAliasyxzf	FieldNameyxzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField45
FieldAliasyhhz	FieldNameyhhzFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField46
FieldAliasczyb	FieldNameczybFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField47
FieldAliasyberror	FieldNameyberrorFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField48
FieldAliassshj	FieldNamesshjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable   TDataSourceSumMZInvoiceDataSource7DataSetSumMZInvoiceQuery7Left�Top9  TDataSourceMZInvoiceDataSource6DataSetMZInvoiceQuery6Left�Top  TppDBPipelineppDBPipeline6
DataSourceMZInvoiceDataSource6UserNameDBPipeline6Left�Top TppField	ppField49
FieldAliasyldy	FieldNameyldyFieldLength DataType
dtNotKnownDisplayWidth Position 
SearchableSortable  TppField	ppField50
FieldAliasfpcount	FieldNamefpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField51
FieldAlias
delfpcount	FieldName
delfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField52
FieldAlias	cdfpcount	FieldName	cdfpcountFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField53
FieldAliasysxj	FieldNameysxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField54
FieldAlias
roundmoney	FieldName
roundmoneyFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField55
FieldAliasssxj	FieldNamessxjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField56
FieldAliasybzf	FieldNameybzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField57
FieldAliashzylzf	FieldNamehzylzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField58
FieldAliaslxzf	FieldNamelxzfFieldLength DataType
dtNotKnownDisplayWidth Position	
SearchableSortable  TppField	ppField59
FieldAliasjzzf	FieldNamejzzfFieldLength DataType
dtNotKnownDisplayWidth Position

SearchableSortable  TppField	ppField60
FieldAliasyxzf	FieldNameyxzfFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField61
FieldAliasyhhz	FieldNameyhhzFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField62
FieldAliasczyb	FieldNameczybFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField63
FieldAliasyberror	FieldNameyberrorFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable  TppField	ppField64
FieldAliassshj	FieldNamesshjFieldLength DataType
dtNotKnownDisplayWidth Position
SearchableSortable   	TppReport	ppReport6AutoStopDataPipelineppDBPipeline6PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.OrientationpoLandscapePrinterSetup.PaperNameA4PrinterSetup.PrinterNameDefaultPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight�4 PrinterSetup.mmPaperWidth�� PrinterSetup.PaperSize	Template.FileName1   C:\Documents and Settings\Lanyuzhi\桌面\xxx.rtm
DeviceTypeScreenOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	PreviewFormSettings.WindowStatewsMaximized TextSearchSettings.DefaultString
<FindText>TextSearchSettings.Enabled	Left�TopVersion9.03mmColumnWidth DataPipelineNameppDBPipeline6 TppHeaderBandppHeaderBand6mmBottomOffset mmHeightԔ  mmPrintPosition  TppLabel
ppLabel134UserNameLabel56AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ,gg�~�{\O�^( �QUS) �Shyf�~h�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   楷体_GB2312	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftgmmTop$#mmWidth�K BandType   TppLabelTab6_UnitNameppLabelUserNameTab2_UnitNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab6_UnitNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�9mmTopchmmWidthQ�  BandType   TppLabelTab6_JSDateppLabelUserNameTab2_JSDateppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab6_JSDateppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopchmmWidth��  BandType   TppLabelTab6_OperNameppLabelUserNameTab2_OperNameppLabelBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionTab6_OperNameppLabelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopchmmWidthQ�  BandType   TppShape
ppShape327UserNameShape62mmHeight�mmLeft�mmTop�ymmWidthPGBandType   TppLabel
ppLabel138UserNameLabel60Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�u�_G�Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�mmTopB�  mmWidth�6BandType   TppShape
ppShape328UserNameShape63mmHeight�mmLeft�UmmTop�ymmWidthsKBandType   TppLabel
ppLabel139UserNameLabel601Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �ShyAm4l�SFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�XmmTopB�  mmWidth�DBandType   TppLabel
ppLabel140UserNameLabel62Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �u�N�YTFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft��  mmTopB�  mmWidthz-BandType   TppShape
ppShape329UserNameShape65mmHeight�mmLeftG� mmTop�ymmWidth%BBandType   TppLabel
ppLabel141UserNameLabel63Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �^6e�sёFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft{� mmTopB�  mmWidth�4BandType   TppShape
ppShape330UserNameShape66mmHeight�mmLeftd� mmTop�ymmWidth>&BandType   TppLabel
ppLabel142UserNameLabel64Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �eQFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopB�  mmWidth�BandType   TppShape
ppShape331UserNameShape67mmHeight�mmLeft�F mmTop�ymmWidthYHBandType   TppLabel
ppLabel143UserNameLabel65Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�O/e�NFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft?Q mmTopB�  mmWidth�6BandType   TppShape
ppShape332UserNameShape68mmHeight�mmLeft:� mmTop�ymmWidthjJBandType   TppLabel
ppLabel144UserNameLabel66Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   T\O;S�uFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopB�  mmWidth�6BandType   TppShape
ppShape333UserNameShape70mmHeight�mmLeft�� mmTop�ymmWidth�2BandType   TppLabel
ppLabel145UserNameLabel68Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��    ^Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTopB�  mmWidth`*BandType   TppShape
ppShape334UserNameShape71mmHeight�mmLeft7	 mmTop�ymmWidth�:BandType   TppLabel
ppLabel146UserNameLabel69Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ��L�NaSFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeftH mmTopB�  mmWidth�6BandType   TppShape
ppShape335UserNameShape72mmHeight�mmLeftC mmTop�ymmWidth�.BandType   TppLabel
ppLabel147UserNameLabel70Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   O    �`Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft)E mmTopB�  mmWidthi+BandType   TppShape
ppShape336UserNameShape74mmHeight�mmLeftr� mmTop�ymmWidth�8BandType   TppLabel
ppLabel148UserNameLabel72AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   ;S�O��]Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight�mmLeft{� mmTopB�  mmWidth�7BandType   TppShape
ppShape337UserNameShape76mmHeight�mmLeftB� mmTop�ymmWidth.CBandType   TppLabel
ppLabel149UserNameLabel74AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shyё��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	WordWrap	mmHeight�mmLeftm� mmTopB�  mmWidth�:BandType   TppShape
ppShape338UserNameShape4mmHeight�mmLeft�� mmTop�ymmWidthYHBandType   TppLabel
ppLabel150UserNameLabel1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �[6e�sёFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft� mmTopB�  mmWidth�6BandType   TppShape
ppShape339UserNameShape13mmHeight�mmLeftl" mmTop�ymmWidth�wBandType   TppLabel
ppLabel151UserNameLabel12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shy�egFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft:; mmTopB�  mmWidth�6BandType   TppShape
ppShape340UserNameShape64mmHeight�mmLeft��  mmTop�ymmWidth�7BandType   TppLabel
ppLabel152UserNameLabel16Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �u�N�YTFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	mmHeightxmmLeft��  mmTopB�  mmWidth�2BandType   TppShape
ppShape341UserNameShape258mmHeight�mmLeftg$ mmTop�ymmWidth�0BandType   TppLabel
ppLabel153UserNameLabel46Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �d\OXTFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�' mmTopB�  mmWidthW)BandType   TppLabel
ppLabel136UserNameLabel136Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �u�N�YTFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLefto�  mmTopS�  mmWidth%BBandType   TppShape
ppShape381UserNameShape381mmHeight�mmLeft2�  mmTop�ymmWidth{LBandType   TppLabel
ppLabel137UserNameLabel137Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   �Shy�SFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	mmHeightUmmLeft��  mmTopB�  mmWidth�2BandType   TppShape
ppShape265UserNameShape265mmHeight�mmLeft�p mmTop�ymmWidth�:BandType   TppLabel
ppLabel161UserNameLabel703Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   "�?ee��RFont.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style Transparent	mmHeight�mmLeft�r mmTopB�  mmWidth�6BandType    TppDetailBandppDetailBand6mmBottomOffset mmHeight�mmPrintPosition  TppShape
ppShape342UserNameShape7mmHeight�mmLeftG� mmTop mmWidth%BBandType  TppShape
ppShape343UserNameShape8mmHeight�mmLeftd� mmTop mmWidth>&BandType  TppShape
ppShape344UserNameShape9mmHeight�mmLeft�F mmTop mmWidthYHBandType  TppShape
ppShape345UserNameShape10mmHeight�mmLeft:� mmTop mmWidthjJBandType  TppShape
ppShape346UserNameShape11mmHeight�mmLeft�� mmTop mmWidth�2BandType  TppShape
ppShape347UserNameShape12mmHeight�mmLeft7	 mmTop mmWidth�:BandType  TppShape
ppShape348UserNameShape14mmHeight�mmLeftC mmTop mmWidth�.BandType  TppShape
ppShape349UserNameShape904mmHeight�mmLeftr� mmTop mmWidth�8BandType  TppShape
ppShape350UserNameShape15mmHeight�mmLeftB� mmTop mmWidth.CBandType  	TppDBTextppDBText106UserName	DBText301Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftX� mmTop+mmWidth>BandType  	TppDBTextppDBText107UserNameDBText1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�� mmTop+mmWidthBandType  	TppDBTextppDBText108UserNameDBText2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�H mmTop4mmWidth7DBandType  	TppDBTextppDBText109UserNameDBText3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftS� mmTop4mmWidth7DBandType  	TppDBTextppDBText110UserNameDBText4Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�� mmTop4mmWidthz-BandType  	TppDBTextppDBText111UserNameDBText5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft@
 mmTop4mmWidth�7BandType  	TppDBTextppDBText112UserNameDBText6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft D mmTop4mmWidthi+BandType  	TppDBTextppDBText113UserNameDBText7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�� mmTop4mmWidth�3BandType  	TppDBTextppDBText114UserName	DBText402Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftS� mmTop4mmWidth>BandType  TppShape
ppShape351UserNameShape16mmHeight�mmLeft�� mmTop mmWidthYHBandType  	TppDBTextppDBText115UserNameDBText8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft� mmTop+mmWidth7DBandType  TppShape
ppShape352UserNameShape221mmHeight�mmLeft�mmTop mmWidthPGBandType  TppShape
ppShape353UserNameShape222mmHeight�mmLeft�UmmTop mmWidthsKBandType  TppShape
ppShape354UserNameShape223mmHeight�mmLeft��  mmTop mmWidth�7BandType  TppShape
ppShape355UserNameShape226mmHeight�mmLeftl" mmTop mmWidth�wBandType  	TppDBTextppDBText116UserNameDBText9Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyldyDataPipelineppDBPipeline6Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�mmTop+mmWidth@BandType  	TppDBTextppDBText117UserNameDBText10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpnumDataPipelineppDBPipeline6Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline6mmHeight9mmLeft�WmmTop+mmWidthPGBandType  	TppDBTextppDBText118UserNameDBText73Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpnameDataPipelineppDBPipeline6Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft��  mmTop+mmWidth�2BandType  	TppDBTextppDBText119UserNameDBText84Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldfpdateDataPipelineppDBPipeline6Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft}$ mmTop+mmWidth�uBandType  TppShape
ppShape356UserNameShape259mmHeight�mmLeftg$ mmTop mmWidth�0BandType  	TppDBTextppDBText120UserNameDBText85Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldopernameDataPipelineppDBPipeline6Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�' mmTop4mmWidthi+BandType  TppShape
ppShape382UserNameShape382mmHeight�mmLeft2�  mmTop mmWidth{LBandType  	TppDBText
ppDBText11UserNameDBText11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
InvoiceNumDataPipelineppDBPipeline6Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftL�  mmTop+mmWidthPGBandType  TppShape
ppShape385UserNameShape385mmHeight�mmLeft�p mmTop mmWidth�:BandType  	TppDBTextppDBText126UserName	DBText126Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�q mmTop4mmWidth�7BandType   TppFooterBandppFooterBand6mmBottomOffset mmHeight�3mmPrintPosition  TppLineppLine6UserNameLine2Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Weight       ��?mmHeightV
mmLeftgmmTop<mmWidth�K BandType  TppLabelFootppLabel6UserNameLabel5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?CaptionFootppLabel6Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftxmmTopwmmWidth�TBandType  TppSystemVariableppSystemVariable3UserNameSystemVariable3Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?VarTypevtPageNoDisplayFormat   ,{# 0 u�Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftB� mmTopwmmWidthc#BandType   TppSummaryBandppSummaryBand6VisiblemmBottomOffset mmHeight�/mmPrintPosition  TppShape
ppShape357UserNameShape92mmHeight�mmLeft�mmTop mmWidthϊ BandType  TppShape
ppShape358UserNameShape96mmHeight�mmLeftG� mmTop mmWidth%BBandType  TppShape
ppShape359UserNameShape97mmHeight�mmLeftd� mmTop mmWidth>&BandType  TppShape
ppShape360UserNameShape98mmHeight�mmLeft�F mmTop mmWidthYHBandType  TppShape
ppShape361UserNameShape99mmHeight�mmLeft:� mmTop mmWidthjJBandType  TppShape
ppShape362UserNameShape1mmHeight�mmLeft�� mmTop mmWidth�2BandType  TppShape
ppShape363UserNameShape2mmHeight�mmLeft7	 mmTop mmWidth�:BandType  TppShape
ppShape364UserNameShape3mmHeight�mmLeftC mmTop mmWidth�.BandType  TppShape
ppShape365UserNameShape901mmHeight�mmLeftr� mmTop mmWidth�8BandType  TppShape
ppShape366UserNameShape106mmHeight�mmLeftB� mmTop mmWidth.CBandType  TppLabel
ppLabel155UserNameLabel75AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   合        计Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop4mmWidth�� BandType  	TppDBCalcppDBCalc111UserNameDBCalc5Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftX� mmTop4mmWidth>BandType  	TppDBCalcppDBCalc112UserNameDBCalc6Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�� mmTop4mmWidthBandType  	TppDBCalcppDBCalc113UserNameDBCalc7Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�H mmTop4mmWidth7DBandType  	TppDBCalcppDBCalc114UserNameDBCalc8Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftS� mmTop4mmWidth7DBandType  	TppDBCalcppDBCalc115UserNameDBCalc10Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�� mmTop4mmWidthz-BandType  	TppDBCalcppDBCalc116UserNameDBCalc11Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftH mmTop4mmWidth�6BandType  	TppDBCalcppDBCalc117UserNameDBCalc12Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft)E mmTop4mmWidthi+BandType  	TppDBCalcppDBCalc118UserNameDBCalc14Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�� mmTop4mmWidth�3BandType  	TppDBCalcppDBCalc119UserNameDBCalc15Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftS� mmTop4mmWidth>BandType  TppShape
ppShape367UserNameShape6mmHeight�mmLeft�� mmTop mmWidthYHBandType  	TppDBCalcppDBCalc120UserNameDBCalc1Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft� mmTop4mmWidth7DBandType  TppShape
ppShape368UserNameShape261mmHeight�mmLeftg$ mmTop mmWidth�0BandType  TppShape
ppShape387UserNameShape387mmHeight�mmLeft�p mmTop mmWidth�:BandType  	TppDBCalcppDBCalc135UserName	DBCalc135Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�r mmTop4mmWidth�7BandType   TppGroupppGroup3	BreakNameyldyDataPipelineppDBPipeline6OutlineSettings.CreateNode	UserNameGroup2mmNewColumnThreshold mmNewPageThreshold DataPipelineNameppDBPipeline6 TppGroupHeaderBandppGroupHeaderBand3mmBottomOffset mmHeight mmPrintPosition   TppGroupFooterBandppGroupFooterBand3VisiblemmBottomOffset mmHeight�mmPrintPosition  TppShape
ppShape369UserNameShape5Brush.ColorclActiveBordermmHeight�mmLeft�mmTop mmWidthϊ BandTypeGroupNo   TppLabel
ppLabel156UserNameLabel41AutoSizeBorder.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?Caption   \    ��Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size

Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop+mmWidth�� BandTypeGroupNo   TppShape
ppShape370UserNameShape227Brush.ColorclActiveBordermmHeight�mmLeftG� mmTop mmWidth%BBandTypeGroupNo   TppShape
ppShape371UserNameShape238Brush.ColorclActiveBordermmHeight�mmLeftd� mmTop mmWidth>&BandTypeGroupNo   TppShape
ppShape372UserNameShape240Brush.ColorclActiveBordermmHeight�mmLeft�F mmTop mmWidthYHBandTypeGroupNo   TppShape
ppShape373UserNameShape241Brush.ColorclActiveBordermmHeight�mmLeft:� mmTop mmWidthjJBandTypeGroupNo   TppShape
ppShape374UserNameShape252Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidth�2BandTypeGroupNo   TppShape
ppShape375UserNameShape253Brush.ColorclActiveBordermmHeight�mmLeft7	 mmTop mmWidth�:BandTypeGroupNo   TppShape
ppShape376UserNameShape254Brush.ColorclActiveBordermmHeight�mmLeftC mmTop mmWidth�.BandTypeGroupNo   TppShape
ppShape377UserNameShape255Brush.ColorclActiveBordermmHeight�mmLeftr� mmTop mmWidth�8BandTypeGroupNo   TppShape
ppShape378UserNameShape256Brush.ColorclActiveBordermmHeight�mmLeftB� mmTop mmWidth.CBandTypeGroupNo   	TppDBCalcppDBCalc121UserNameDBCalc71Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldysxjDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftX� mmTop4mmWidth>BandTypeGroupNo   	TppDBCalcppDBCalc122UserNameDBCalc72Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataField
roundmoneyDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�� mmTop4mmWidthBandTypeGroupNo   	TppDBCalcppDBCalc123UserNameDBCalc83Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldybzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�H mmTop4mmWidth7DBandTypeGroupNo   	TppDBCalcppDBCalc124UserNameDBCalc84Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldhzylzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftS� mmTop4mmWidth7DBandTypeGroupNo   	TppDBCalcppDBCalc125UserName	DBCalc102Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldjzzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�� mmTop4mmWidthz-BandTypeGroupNo   	TppDBCalcppDBCalc126UserNameDBCalc86Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyxzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftH mmTop4mmWidth�6BandTypeGroupNo   	TppDBCalcppDBCalc127UserNameDBCalc87Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyhhzDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft)E mmTop4mmWidthi+BandTypeGroupNo   	TppDBCalcppDBCalc128UserNameDBCalc88Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldyberrorDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�� mmTop4mmWidth�3BandTypeGroupNo   	TppDBCalcppDBCalc129UserNameDBCalc89Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldsshjDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeftS� mmTop4mmWidth>BandTypeGroupNo   TppShape
ppShape379UserNameShape257Brush.ColorclActiveBordermmHeight�mmLeft�� mmTop mmWidthYHBandTypeGroupNo   	TppDBCalcppDBCalc130UserNameDBCalc90Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldssxjDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft� mmTop4mmWidth7DBandTypeGroupNo   TppShape
ppShape380UserNameShape260Brush.ColorclActiveBordermmHeight�mmLeftg$ mmTop mmWidth�0BandTypeGroupNo   TppShape
ppShape386UserNameShape386Brush.ColorclActiveBordermmHeight�mmLeft�p mmTop mmWidth�:BandTypeGroupNo   	TppDBCalcppDBCalc134UserName	DBCalc134Border.BorderPositions Border.ColorclBlackBorder.StylepsSolidBorder.VisibleBorder.Weight       ��?	DataFieldczbzzfDataPipelineppDBPipeline6DisplayFormat#0.00;; Font.CharsetGB2312_CHARSET
Font.ColorclBlack	Font.Name   �[SO	Font.Size	
Font.Style ParentDataPipeline
ResetGroupppGroup3TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline6mmHeightxmmLeft�r mmTop4mmWidth�7BandTypeGroupNo     TppParameterListppParameterList4   TQueryInvoiceQuerySQL.StringsIselect invoiceoperid,min(invoicenum) as begnum, max(invoicenum) as endnumfrom(select invoiceoperid,       invoicenum  from mzinvoice (nolock)�     where invoicenum is not null and invoiceoperid is not null and (jsdate>=:begdate and jsdate<:enddate) and jfcardid is null and invoicenum<>'未打印'    and opername like :opername	union allselect invoiceoperid,       invoicenum  from mzinvoicehis (nolock)�     where invoicenum is not null and invoiceoperid is not null and (jsdate>=:begdate and jsdate<:enddate) and jfcardid is null and invoicenum<>'未打印'    and opername like :opername	union allselect a.invoiceoperid,t       substring('0000000000',1,FPLength - LEN(convert(varchar(10),BegNum))) + CONVERT(varchar(10),BegNum) as begnum�  from invoice_damage a(nolock) left join Invoice_MZInvoice_YY b(nolock) on (a.BillsNo=b.BillsNo and a.InvoiceOperID=b.InvoiceOperID and a.BegNum=b.InvoiceNum)W  where a.invoiceoperid is not null and type=0 and jsdate>=:begdate and jsdate<:enddate8    and opername like :opername and b.InvoiceNum is null	union allselect a.invoiceoperid,t       substring('0000000000',1,FPLength - LEN(convert(varchar(10),EndNum))) + CONVERT(varchar(10),EndNum) as endnum�  from invoice_damage a(nolock) left join Invoice_MZInvoice_YY b(nolock) on (a.BillsNo=b.BillsNo and a.InvoiceOperID=b.InvoiceOperID and a.EndNum=b.InvoiceNum)W  where a.invoiceoperid is not null and type=0 and jsdate>=:begdate and jsdate<:enddate>    and opername like :opername and b.InvoiceNum is null) dispgroup by invoiceoperid  LeftTop	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown    TQueryInvoice_DamageQuerySQL.Strings*select sum(endnum-begnum+1) as damagecount  from invoice_damage (nolock)W  where invoiceoperid is not null and type=0 and (jsdate>=:begdate and jsdate<:enddate)    and opername like :opername  Left� Top	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown    TQuerySumMZInvoiceQuery8DatabaseNameMZDATASQL.Stringsselect opername,       jsdate,       sum(fpcount) as fpcount,%       sum(delfpcount) as delfpcount,#       sum(cdfpcount) as cdfpcount,       sum(ysxj) as ysxj,%       sum(roundmoney) as roundmoney,       sum(ssxj) as ssxj,       sum(ybzf) as ybzf,       sum(hzylzf) as hzylzf,       sum(jzzf) as jzzf,       sum(yxzf) as yxzf,       sum(yhhz) as yhhz,       Sum(zpzf) as zpzf,       sum(yskhj) as yskhj,       sum(yberror) as yberror,       sum(sshj) as sshj,       sum(czbzzf) as czbzzf  from (         select opername,                jsdate,$                count(*) as fpcount,S                sum(case when deldate is not null then 1 else 0 end) as delfpcount,t                sum(case when deldate is null and cdnum is not null and fpnum>cdnum then 1 else 0 end) as cdfpcount,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+`                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-m                    case when roundmoney is not null and deldate is null then roundmoney else 0 end) as ysxj,s                sum(case when roundmoney is not null and deldate is null then roundmoney else 0 end) as roundmoney,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end) as ssxj,]                sum(case when ybflag=1 and deldate is null then zfmoney1 else 0 end) as ybzf,_                sum(case when ybflag=2 and deldate is null then zfmoney1 else 0 end) as hzylzf,]                sum(case when ybflag=3 and deldate is null then zfmoney1 else 0 end) as jzzf,]                sum(case when ybflag=4 and deldate is null then zfmoney1 else 0 end) as yxzf,T                sum(case when ybflag=5 and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney3 is not null and deldate is null then zfmoney3 else 0 end) as yhhz,]                sum(case when ybflag=7 and deldate is null then zfmoney1 else 0 end) as zpzf,h                sum(case when ybflag is not null and deldate is null then zfmoney1 else 0 end) as yskhj,R                sum(case when deldate is null then yberror else 0 end) as yberror,O                sum(case when deldate is null then fpmoney else 0 end) as sshj,j                sum(case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end) as czbzzf5           from mzinvoice (index(indexjsdate) nolock)L           where (jsdate>=:begdate and jsdate<:enddate) and jfcardid is null(             and opername like :opername#           group by opername,jsdate         union all         select opername,                jsdate,$                count(*) as fpcount,S                sum(case when deldate is not null then 1 else 0 end) as delfpcount,t                sum(case when deldate is null and cdnum is not null and fpnum>cdnum then 1 else 0 end) as cdfpcount,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+`                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end-m                    case when roundmoney is not null and deldate is null then roundmoney else 0 end) as ysxj,s                sum(case when roundmoney is not null and deldate is null then roundmoney else 0 end) as roundmoney,Z                sum(case when ybflag is null and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney2 is not null and deldate is null then zfmoney2 else 0 end) as ssxj,]                sum(case when ybflag=1 and deldate is null then zfmoney1 else 0 end) as ybzf,_                sum(case when ybflag=2 and deldate is null then zfmoney1 else 0 end) as hzylzf,]                sum(case when ybflag=3 and deldate is null then zfmoney1 else 0 end) as jzzf,]                sum(case when ybflag=4 and deldate is null then zfmoney1 else 0 end) as yxzf,T                sum(case when ybflag=5 and deldate is null then zfmoney1 else 0 end+i                    case when zfmoney3 is not null and deldate is null then zfmoney3 else 0 end) as yhhz,]                sum(case when ybflag=7 and deldate is null then zfmoney1 else 0 end) as zpzf,h                sum(case when ybflag is not null and deldate is null then zfmoney1 else 0 end) as yskhj,R                sum(case when deldate is null then yberror else 0 end) as yberror,O                sum(case when deldate is null then fpmoney else 0 end) as sshj,j                sum(case when zfmoney4 is not null and deldate is null then zfmoney4 else 0 end) as czbzzf8           from mzinvoicehis (index(indexjsdate) nolock)L           where (jsdate>=:begdate and jsdate<:enddate) and jfcardid is null(             and opername like :opername#           group by opername,jsdate       ) dispview  group by opername,jsdate  order by opername,jsdate LeftwTopY	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataTypeftStringNameopername	ParamType	ptUnknown    TQueryInvoice_DelQuerySQL.Strings�select opername,fpnum,invoicenum from mzinvoice where deldate is not null and jsdate>=:begdate and jsdate<:enddate and opername like :opername	union all�select opername,fpnum,invoicenum from mzinvoicehis where deldate is not null and jsdate>=:begdate and jsdate<:enddate and opername like :opernameorder by opername,invoicenum Left� Top	ParamDataDataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown DataType	ftUnknownNamebegdate	ParamType	ptUnknown DataType	ftUnknownNameenddate	ParamType	ptUnknown DataType	ftUnknownNameopername	ParamType	ptUnknown     