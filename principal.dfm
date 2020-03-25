object form_principal: Tform_principal
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Carrinho de compras'
  ClientHeight = 366
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object lblProdutos: TLabel
    Left = 10
    Top = 10
    Width = 50
    Height = 16
    Caption = 'Produtos'
  end
  object lblCarrinho: TLabel
    Left = 300
    Top = 10
    Width = 49
    Height = 16
    Caption = 'Carrinho'
  end
  object lbxProdutos: TListBox
    Left = 10
    Top = 30
    Width = 270
    Height = 300
    DragMode = dmAutomatic
    ItemHeight = 16
    TabOrder = 0
    OnDragOver = lbxProdutosDragOver
  end
  object lbxCarrinho: TListBox
    Left = 300
    Top = 30
    Width = 280
    Height = 300
    ItemHeight = 16
    TabOrder = 1
    OnDragDrop = lbxCarrinhoDragDrop
    OnDragOver = lbxCarrinhoDragOver
  end
  object sbrBarraStatus: TStatusBar
    Left = 0
    Top = 347
    Width = 592
    Height = 19
    Panels = <>
  end
end
