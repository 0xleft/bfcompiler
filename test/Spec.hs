import Test.Hspec
import Lexer ( lexContents, Token(..), TokenType(..) )
import Parser (parseRoot, ASTNode(..), ASTNodeType(..))

main :: IO ()
main = hspec $ do
  describe "test correct AST generation" $ do
    it "should generate correct AST tree" $ do
      testContent <- readFile "test/test.bf"
      let lexedContents = lexContents testContent
          astRoot = parseRoot lexedContents

      astRoot `shouldBe` ASTNode {nodeType = ROOT, nodeChildren = [
        ASTNode {nodeType = LOOP, nodeChildren = [
            ASTNode {nodeType = OPERATION, nodeChildren = [], nodeValue = '-'},
            ASTNode {nodeType = LOOP, nodeChildren = [
              ASTNode {nodeType = OPERATION, nodeChildren = [], nodeValue = '+'}
            ], nodeValue = ' '},
            ASTNode {nodeType = OPERATION, nodeChildren = [], nodeValue = '-'}
          ], nodeValue = ' '}
        ], nodeValue = ' '}