object DM: TDM
  OldCreateOrder = False
  Height = 520
  Width = 709
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 608
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 536
    Top = 32
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=E:\Delphi_Project\PROJECT.IB'
      'ConnectionDef=Project')
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 64
  end
  object UserQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM USERTABLE')
    Left = 87
    Top = 136
    object UserQueryUSERCODE: TWideStringField
      FieldName = 'USERCODE'
      Origin = 'USERCODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object UserQueryNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 40
    end
    object UserQuerySCHOOL: TWideStringField
      FieldName = 'SCHOOL'
      Origin = 'SCHOOL'
      Required = True
      Size = 80
    end
    object UserQueryPHONE: TWideStringField
      FieldName = 'PHONE'
      Origin = 'PHONE'
      Required = True
      Size = 80
    end
    object UserQueryID: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
      Size = 200
    end
    object UserQueryPW: TWideStringField
      FieldName = 'PW'
      Origin = 'PW'
      Required = True
      Size = 200
    end
  end
  object PRQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM PRTABLE')
    Left = 167
    Top = 136
    object PRQueryPRCODE: TWideStringField
      FieldName = 'PRCODE'
      Origin = 'PRCODE'
      Size = 40
    end
    object PRQueryPRNAME: TWideStringField
      FieldName = 'PRNAME'
      Origin = 'PRNAME'
      Required = True
      Size = 200
    end
    object PRQueryBRAND: TWideStringField
      FieldName = 'BRAND'
      Origin = 'BRAND'
      Required = True
      Size = 200
    end
    object PRQueryEXPLANATION: TWideStringField
      FieldName = 'EXPLANATION'
      Origin = 'EXPLANATION'
      Size = 2000
    end
    object PRQueryIMAGE: TBlobField
      FieldName = 'IMAGE'
      Origin = 'IMAGE'
    end
    object PRQueryCT: TWideStringField
      FieldName = 'CT'
      Origin = 'CT'
      Size = 200
    end
  end
  object UserPRQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT USER.USERCODE, PR.PRCODE, RENT. * '
      'FROM RENT, USER, PR'
      'WHERE'
      '  RENT.USERCODE = USER.USERCODE AND'
      '  RENT.PR.PRCODE = PR.PRCODE'
      ''
      ''
      ''
      ''
      'SELECT BOOK.BOOK_TITLE, USERS.USER_NAME, RENT. * '
      'FROM RENT, BOOK, USERS'
      'WHERE'
      '  RENT.BOOK_SEQ = BOOK.BOOK_SEQ AND'
      '  RENT.USER_SEQ = USERS.USER_SEQ')
    Left = 304
    Top = 136
  end
end
