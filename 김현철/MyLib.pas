unit MyLib;

interface

function Convert3TextToDate(var Date: TDate; Year: string; Month: string; Day: string): Boolean;

implementation

uses SysUtils;

{** ������� ���� string���� TDate�� ����. ����ó����
  @param Date
  @return ��ȿ�� ��¥�� ��ȯ�� �� �ִٸ� True �ƴϸ� False
*}
function Convert3TextToDate(var Date: TDate; Year: string; Month: string; Day: string): Boolean;
var
  iYear, iMonth, iDay: Integer;
begin
  Date := 0;

  if Year <> '' then
  begin
    if not TryStrToInt(Year, iYear) then begin
      result := False;
     Exit;
    end;
  end else
  begin
    result := False;
    Exit;
  end;

  if Month <> '' then
  begin
    if not TryStrToInt(Month, iMonth) then begin
      result := False;
      Exit;
    end;
  end else
  begin
    result := False;
    Exit;
  end;

  if Day <> '' then
  begin
    if not TryStrToInt(Day, iDay) then begin
      result := False;
      Exit;
    end;
  end else
  begin
    result := False;
    Exit;
  end;

  Date := EncodeDate(iYear, iMonth, iDay);
  result := True;
end;



end.
