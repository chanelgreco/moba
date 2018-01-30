debtors = Debtor.first_or_create!([{
    name: "Simplificator AG",
    contact: "Sandra Blatter",
    email: "sandra.blatter@simplificator.com",
    expenses_limit: 1000.0
  },
  {
    name: "Chanel Greco",
    contact: "Chanel Greco",
    email: "chanel.d.greco@gmail.com",
    expenses_limit: 10000.0
  }
])
