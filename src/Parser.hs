module Parser (
  parseRoot
) where
import Lexer (Token(..), TokenType(..))
import Data.Maybe (mapMaybe)

data ASTNode = ASTNode {
  nodeType :: ASTNodeType,
  nodeChildren :: [ASTNode],
  nodeValue :: Char
} deriving (Show, Eq)

data ASTNodeType = ROOT | OPERATION | LOOP deriving (Show, Eq)

parseRoot :: [Token] -> ASTNode
parseRoot tokens =
  let root = ASTNode { nodeType = ROOT, nodeChildren = [], nodeValue = '!' } -- root !
      validTokens = filter (\token -> tokenType token /= INVALID) tokens
  in parseTokens validTokens root 0 True

parseTokens :: [Token] -> ASTNode -> Int -> Bool -> ASTNode
parseTokens tokens parent loopCount shouldAppend
  | shouldAppend == True =
    let newChildren = parseChildren tokens parent loopCount
    in parent { nodeChildren = nodeChildren parent ++ newChildren }
  | shouldAppend == False = 
    let _ = parseChildren tokens parent loopCount
    in parent
  | otherwise = parent

parseChildren :: [Token] -> ASTNode -> Int -> [ASTNode]
parseChildren tokens parent loopCount =
  let 
    zippedTokens = zip [0..] tokens
  in mapMaybe (\(idx, token) -> case tokenType token of
    CONDJUMPFORWARD -> 
      let loopNode = ASTNode { nodeType = LOOP, nodeChildren = [], nodeValue = (tokenValue token) }
      in Just (parseTokens (drop (idx + 1) tokens) loopNode (loopCount + 1) False)
    CONDJUMPBACKWARD -> case loopCount of
      -- 0 -> error "Invalid usage of ]"
      1 -> Just (parseTokens (take idx tokens) parent (loopCount - 1) True)
      _ -> Nothing

    -- everyting else
    _ -> Just (ASTNode { nodeType = OPERATION, nodeChildren = [], nodeValue = (tokenValue token) })) zippedTokens