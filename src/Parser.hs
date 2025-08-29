module Parser (
  parseRoot,
  ASTNode(..),
  ASTNodeType(..)
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
  let root = ASTNode { nodeType = ROOT, nodeChildren = [], nodeValue = ' ' } -- root
      validTokens = filter (\token -> tokenType token /= INVALID) tokens
  in parseTokens validTokens root

parseTokens :: [Token] -> ASTNode -> ASTNode
parseTokens tokens parent =
  let (nestedTokens, _) = parseNested tokens
      astChildren = parseChildren nestedTokens
  in parent { nodeChildren = nodeChildren parent ++ astChildren }

-- asumes that nested tokens are already made
parseChildren :: [Token] -> [ASTNode]
parseChildren tokens =
  let
  in map (\token -> case tokenType token of
    NESTED ->
      let parsedChildren = parseChildren (tokenChildren token)
      in ASTNode { nodeType = LOOP, nodeChildren = parsedChildren, nodeValue = tokenValue token }
    _ -> (ASTNode { nodeType = OPERATION, nodeChildren = [], nodeValue = tokenValue token })) tokens

parseNested :: [Token] -> ([Token], [Token]) -- body children, remaining 
parseNested [] = ([], [])
parseNested (token:tokens) = 
  case tokenType token of
    CONDJUMPFORWARD -> 
      let (bodyChildren, rest) = parseNested tokens
      in case rest of 
        (restToken:restTokens) | tokenType restToken == CONDJUMPBACKWARD ->
          let loopToken = Token { tokenType = NESTED, tokenValue = ' ', tokenChildren = bodyChildren }
              (other, remaining) = parseNested restTokens
          in (loopToken: other, remaining)
        _ -> error "Unmatched [ bracket"

    CONDJUMPBACKWARD -> 
      ([], token:tokens) -- this doesnt consume it?
    _ -> 
      let (other, rest) = parseNested tokens
      in (token : other, rest)