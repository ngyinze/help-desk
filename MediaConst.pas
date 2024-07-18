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

  c_ImageURL1: TArray<string> = [
   'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/1.gif',
   'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/2.gif',
   'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/3.gif',
   'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/4.gif'
   ];

var
    c_Vid1: TArray<TVideoEntry>;
    c_Vid1_0: TVideoEntry = (ID: 'yfov50mD4-s'; Timestamp: '0.00');
    c_Vid1_1: TVideoEntry = (ID: 'yfov50mD4-s'; Timestamp: '0.4');
    c_Vid1_2: TVideoEntry = (ID: 'yfov50mD4-s'; Timestamp: '0.11');
    c_Vid1_3: TVideoEntry = (ID: 'yfov50mD4-s'; Timestamp: '0.20');

implementation
begin
  c_Vid1 := [
    c_Vid1_0, c_Vid1_1, c_Vid1_2, c_Vid1_3
  ];
end.
