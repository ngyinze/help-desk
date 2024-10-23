unit MediaConst;

interface

type
  TVideoEntry = record
    ID: string;
    Timestamp: string;
  end;

const
  c_Description1: TArray<string> = [
    'Step 1: Select Customer',
    'Step 2: Enter relevant details',
    'Step 3: Write description for this invoice',
    'Step 4: Click to add a new item record'
  ];

  c_Description2: TArray<string> = [
    'Step 1: Select Customer',
    'Step 2: Enter relevant details',
    'Step 3: Write description for this invoice'
  ];

  c_Description3: TArray<string> = [
    'Tools > Options > Miscelleanous',
    'Right click on column name > Grid Layout > Load Layout > Reset Layout',
    'Left side of screen > More > Project',
    'Click 3 dot on the left side > Tick required column',
    'Click the document icon on the toolbar > Select Report'
  ];

  c_ImageURL1: TArray<string> = [
   'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/select%20customer.gif',
   'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/enter%20details.gif',
   'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/descriptions.gif',
   'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/add%20record.gif'
   ];

   c_ImageURL2: TArray<string> = [
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/click%20button.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/select%20cancellation.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/wait%20for%20confirmation.gif'
   ];

  c_ImageURL3: TArray<string> = [
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/change%20decimals.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/reset%20column%20layout.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/project.png',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/new%20detail%20column.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/preview%20report.gif'
   ];

   c_Link1: TArray<string> = [
   'https://youtube.com',
   'https://sql.com.my',
   'https://sql.com.my/e-invoice/',
   'https://github.com'
   ];

   c_Link2: TArray<string> = [
   'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/click%20button.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/select%20cancellation.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/wait%20for%20confirmation.gif'
   ];

var
    c_Vid1, c_Vid2: TArray<TVideoEntry>;

implementation

function CreateVideoEntry(const AID, ATimestamp: string): TVideoEntry;
begin
  Result.ID := AID;
  Result.Timestamp := ATimestamp;
end;

begin
  SetLength(c_Vid1, 4);
  c_Vid1[0] := CreateVideoEntry('yfov50mD4-s', '0.00');
  c_Vid1[1] := CreateVideoEntry('yfov50mD4-s', '0.04');
  c_Vid1[2] := CreateVideoEntry('yfov50mD4-s', '0.11');
  c_Vid1[3] := CreateVideoEntry('yfov50mD4-s', '0.20');

  SetLength(c_Vid2, 3);
  c_Vid2[0] := CreateVideoEntry('7PD8mYVkMyQ', '0.00');
  c_vid2[1] := CreateVideoEntry('7PD8mYVkMyQ', '0.06');
  c_vid2[2] := CreateVideoEntry('7PD8mYVkMyQ', '0.19');
end.
