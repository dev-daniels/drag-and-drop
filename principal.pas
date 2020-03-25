unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tform_principal = class(TForm)
    lblProdutos: TLabel;
    lblCarrinho: TLabel;
    lbxProdutos: TListBox;
    lbxCarrinho: TListBox;
    sbrBarraStatus: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure lbxCarrinhoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lbxProdutosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lbxCarrinhoDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    procedure AdicionarProdutos;
  public

  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

procedure Tform_principal.AdicionarProdutos;
begin
  lbxProdutos.Items.Add('Working effectively with legacy code');
  lbxProdutos.Items.Add('Design Patterns');
  lbxProdutos.Items.Add('Clean Code');
  lbxProdutos.Items.Add('Java Concurrency in Practice');
  lbxProdutos.Items.Add('Domain Driven Design');
  lbxProdutos.Items.Add('JavaScript');
  lbxProdutos.Items.Add('Patterns of Enterprise Application Architecture');
  lbxProdutos.Items.Add('Code complete');
  lbxProdutos.Items.Add('Refactoring');
  lbxProdutos.Items.Add('Head First Design Patterns');
end;

procedure Tform_principal.FormCreate(Sender: TObject);
begin
  AdicionarProdutos();
end;

procedure Tform_principal.lbxCarrinhoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Sender <> Source) and ((Source as TListBox).Items.Count > 0);
end;

procedure Tform_principal.lbxProdutosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Sender <> Source) and ((Source as TListBox).Items.Count > 0);
end;

procedure Tform_principal.lbxCarrinhoDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Indice : Integer;
begin
  Indice := (Source as TListBox).ItemIndex;
  (Sender as TListBox).Items.Add((Source as TListBox).Items[Indice]);
  (Source as TListBox).Items.Delete(Indice);
end;

end.
