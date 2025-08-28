module Lexer (
  lexContents,
  Token(..),
  TokenType(..)
) where

data Token = Token {
  tokenType :: TokenType,
  tokenValue :: Char
} deriving (Show, Eq)

data TokenType = INCPOINTER | DECPOINTER | INCDATA | DECDATA | OUTDATA | READDATA | CONDJUMPFORWARD | CONDJUMPBACKWARD | INVALID deriving (Show, Eq)

lexContents :: String -> [Token]
lexContents line = map lexToken line

lexToken :: Char -> Token
lexToken '[' = Token CONDJUMPFORWARD '['
lexToken ']' = Token CONDJUMPBACKWARD ']'
lexToken '>' = Token INCPOINTER '>'
lexToken '<' = Token DECPOINTER '<'
lexToken '+' = Token INCDATA '+'
lexToken '-' = Token DECDATA '-'
lexToken '.' = Token OUTDATA '.'
lexToken ',' = Token READDATA ','
lexToken c = Token INVALID c