�
 TSAVEMZCFMODCODEFORM 0�  TPF0TSaveMZCFModCodeFormSaveMZCFModCodeFormLeft� Top� BorderStylebsDialogCaption   �OX[Y�e!jHrClientHeight� ClientWidth\Color	clBtnFaceFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelPanel1Left TopWidthHeighty
BevelInnerbvRaised
BevelOuter	bvLoweredCaption TabOrder  TLabelLabel1LeftTop WidthbHeightCaption   ����eQ!jHrT�yFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFont  TRzEditNameEditLeftTop8Width� HeightFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style FrameVisible	
ParentFontTabOrder    	TRzBitBtnOkBtnLeftXTop� Caption     nx��HotTrack	TabOrderOnClick
OkBtnClick
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphs  	TRzBitBtn	CancelBtnLeft� Top� Caption     �S�mHotTrack	TabOrderKindbkCancel  TQuerySaveToMZCFModQueryDatabaseNameMZDATASQL.Stringsdelete mzcfmodsheet    from mzcfmodcode,mzcfmodsheet S    where mzcfmodcode.modcode=mzcfmodsheet.modcode and mzcfmodcode.modname=:modname)delete mzcfmodcode where modname=:modname 5insert mzcfmodcode(modcode,modname,modattrib,pym,spm)+  select :modcode,:modname,cfflag,:pym,:spm@    from _mzcfinf (nolock) where userid=:userid and cfnum=:cfnum ?insert mzcfmodsheet(modcode,goodsno,goodsname,ypcount,unitname)4  select :modcode,goodsno,goodsname,ypcount,unitname@    from _mzcfypk (nolock) where userid=:userid and cfnum=:cfnum  Left/Top� 	ParamDataDataType	ftUnknownNamemodname	ParamType	ptUnknown DataType	ftUnknownNamemodname	ParamType	ptUnknown DataType	ftUnknownNamemodcode	ParamType	ptUnknown DataType	ftUnknownNamemodname	ParamType	ptUnknown DataType	ftUnknownNamepym	ParamType	ptUnknown DataType	ftUnknownNamespm	ParamType	ptUnknown DataType	ftUnknownNameuserid	ParamType	ptUnknown DataType	ftUnknownNamecfnum	ParamType	ptUnknown DataType	ftUnknownNamemodcode	ParamType	ptUnknown DataType	ftUnknownNameuserid	ParamType	ptUnknown DataType	ftUnknownNamecfnum	ParamType	ptUnknown    TQueryMZCFModCodeQuerySQL.Strings9select * from mzcfmodcode (nolock) where modname=:modname Left0Topx	ParamDataDataType	ftUnknownNamemodname	ParamType	ptUnknown     