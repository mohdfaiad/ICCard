�
 TADDMZCFINFFORM 0=  TPF0TAddMZCFInfFormAddMZCFInfFormLeft�Top�BorderStylebsDialogCaption   �e�XY�eClientHeight� ClientWidth�Color	clBtnFaceFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight TPanelPanel1Left Top WidthHeight� 
BevelInnerbvRaised
BevelOuter	bvLoweredCaption Font.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFontTabOrder  TLabelLabel1LeftTopWidth8HeightCaption   Y�e;S^  TLabelLabel2LeftTopEWidth8HeightCaption   Y�e{|�W  TLabelLabel3LeftToplWidth8HeightCaption
   付    数  TLabelYSNameLabelLeft� TopWidthXHeightCaptionYSNameLabelFont.CharsetGB2312_CHARSET
Font.ColorclNavyFont.Height�	Font.Name   �[SO
Font.StylefsBold 
ParentFont  TLabelLabel5LeftTop� Width8HeightCaption   R�No�?b  TRzEdit
YSCodeEditLeftXTopWidthIHeightFrameVisible	TabOrder OnExitYSCodeEditExit	OnKeyDownYSCodeEditKeyDown  TRzComboBox
YFComboBoxLeftXTop� Width� HeightStylecsDropDownListCtl3DFrameVisible	
ItemHeightParentCtl3DTabOrder	OnKeyDownYFComboBoxKeyDown  TRzComboBoxCFFlagComboBoxLeftXTop@WidthIHeightStylecsDropDownListCtl3DFrameVisible	
ItemHeightParentCtl3DTabOrderOnChangeCFFlagComboBoxChange	OnKeyDownCFFlagComboBoxKeyDownItems.Strings   1.西药   2.中药   TRzNumericEditCFCountEditLeftXTophWidthIHeightFrameVisible	TabOrder	OnKeyDownCFCountEditKeyDownDisplayFormat,0;(,0)   	TRzBitBtnOkBtnLeftLTop� Caption	   &O 确认HotTrack	TabOrderOnClick
OkBtnClick
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphs  	TRzBitBtn	CancelBtnLeftLTop� Caption	   &C 取消HotTrack	TabOrderKindbkCancel  TQueryAddMZCFInfQueryDatabaseNameMZDATASQL.StringsQinsert _mzcfinf(CFNUM,YSCODE,YSNAME,CFFLAG,CFPRICE,CFCOUNT,CFMONEY,YFCODE,YFNAME,U                YSKSCODE,YSKSNAME,USERID,PROCDATE,YFCANCDDATE,YFCANCDOPERNAME,YZFlag)B  select :cfnum,:yscode,name,:cfflag,0,:cfcount,0,:yfcode,:yfname,7         kscode,ksname,:userid,getdate(),null,null,null)  from yscode (nolock) where code=:yscode  Left 	ParamDataDataType	ftIntegerNamecfnum	ParamType	ptUnknown DataTypeftStringNameyscode	ParamType	ptUnknown DataType	ftIntegerNamecfflag	ParamType	ptUnknown DataType	ftIntegerNamecfcount	ParamType	ptUnknown DataTypeftStringNameyfcode	ParamType	ptUnknown DataTypeftStringNameyfname	ParamType	ptUnknown DataTypeftFloatNameuserid	ParamType	ptUnknown DataTypeftStringNameyscode	ParamType	ptUnknown    TQueryModiMZCFInfQueryDatabaseNameMZDATASQL.Stringsupdate _mzcfinf  set yscode=:yscode,      ysname=name,      cfflag=:cfflag,      cfcount=:cfcount,      yskscode=kscode,      ysksname=ksname  from yscode#where cfnum=:cfnum and code=:yscode update _mzcfypk  set cfcount=:cfcount  where cfnum=:cfnum Left@	ParamDataDataTypeftStringNameyscode	ParamType	ptUnknown DataType	ftIntegerNamecfflag	ParamType	ptUnknown DataType	ftIntegerNamecfcount	ParamType	ptUnknown DataType	ftIntegerNamecfnum	ParamType	ptUnknown DataTypeftStringNameyscode	ParamType	ptUnknown DataType	ftIntegerNamecfcount	ParamType	ptUnknown DataType	ftIntegerNamecfnum	ParamType	ptUnknown    TQueryYFCodeQueryDatabaseNameMZDATASQL.Stringsselect * from yfcode (nolock)*  where yfflag is null and deldate is null Left Top    