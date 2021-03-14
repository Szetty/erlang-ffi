import Test.Hspec
import Foreign.Erlang

-- In order to run correctly this needs to have an erlang node running at `test@127.0.0.1`
-- and having a process registered as `:p` that can receive and send messages back
-- Elixir one liner to start the given process: 
-- `fn -> receive do {from, 'Hello, Erlang!', from_name} -> send from, "Hello, #{from_name}! I got your message." end end |> spawn |> Process.register(:p)`
main = hspec $ runIO $ do
    self <- createSelf "haskell@localhost"
    mbox <- createMBox self
    mboxSend mbox (Long "test" "127.0.0.1") (Right "p") (mboxSelf mbox, "Hello, Erlang!" :: [Char], "Haskell Test")
    answer <- mboxRecv mbox
    (fromErlang answer) `shouldBe` "Hello, Haskell Test! I got your message."