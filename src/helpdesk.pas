unit helpdesk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxContainer, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  cxClasses, dxUIAdorners, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer, Vcl.Buttons,
  Vcl.StdCtrls, dxLayoutControl, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Datasnap.DBClient;

type
  TForm1 = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxUIAdornerManager1: TdxUIAdornerManager;
    dxUIAdornerManager1Badge1: TdxBadge;
    cxComboBox1: TcxComboBox;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    Edit2: TEdit;
    dxLayoutItem1: TdxLayoutItem;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Address: TDBLabeledEdit;
    DBEdit1: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBLabeledEdit1: TDBLabeledEdit;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
