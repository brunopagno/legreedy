class TransactionType < EnumerateIt::Base
  associate_values :in, :out
end