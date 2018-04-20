import Data.Char
import Text.Parsec.String (Parser)

-- Org documents are trees.
data Node = Node { headline :: String
                 , content :: [String]
                 , children :: [Node]
                 }

-- There is no root node, aside from the document itself.
data TopLevel = TopLevel [Node]
