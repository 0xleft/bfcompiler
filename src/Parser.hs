module Parser (
  parseRoot
) where
import Lexer (Token(..), TokenType(..))

data ASTNode = ASTNode {
  nodeType :: ASTNodeType,
  nodeChildren :: [ASTNode],
  nodeValue :: Char
} deriving (Show, Eq)

data ASTNodeType = ROOT | OPERATION | LOOP deriving (Show, Eq)

parseRoot :: [Token] -> ASTNode
parseRoot tokens =
  let root = ASTNode ROOT [] '!'
  in parseTokens tokens root

parseTokens :: [Token] -> ASTNode -> ASTNode
parseTokens tokens parent =
  let 
    validTokens = filter (\token -> tokenType token /= INVALID) tokens
    newChildren = map (\token -> case tokenType token of
                                  CONDJUMPFORWARD -> ASTNode LOOP [] (tokenValue token)
                                  CONDJUMPBACKWARD -> ASTNode LOOP [] (tokenValue token)
                                  _ -> ASTNode OPERATION [] (tokenValue token)) validTokens

  in parent { nodeChildren = nodeChildren parent ++ newChildren }