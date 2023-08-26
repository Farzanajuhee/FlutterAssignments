abstract class Account{
  int accountNumber;
  double balance;
  Account(this.accountNumber,this.balance);

  void deposit(double amount){
    balance += amount;
     print('Deposited Amount: $amount');
     print('Current Balance: $balance');
  }
  void withdraw(double amount);
}

class SavingsAccount extends Account{
  double interestRate;

  SavingsAccount(int accountNumber,double balance, this.interestRate)
    : super(accountNumber,balance);

  @override
  void withdraw(double amount){
    if(amount<=balance){
      balance = balance-amount;
      balance = balance + balance*(interestRate/100);
      print('Withdrawal Amount: $amount');
        print('Current Balance: $balance');
  }else{
      print("Insufficient Funds!");
  }
  }
}

class CurrentAccount extends Account{
  double overdraftLimit;

  CurrentAccount(int accountNumber,double balance,this.overdraftLimit)
    : super(accountNumber,balance);

  @override
  void withdraw(double amount){
    if(amount <= balance+overdraftLimit){
      balance -= amount;

    }else{
      print("Insufficient Funds!");
    }
  }
}

main(){
SavingsAccount sAccount = SavingsAccount(278950, 11000.0, 8.00);
  print('Saving Account:');
  print("Initial Balance: ${sAccount.balance}");
  sAccount.deposit(5000.0);
  sAccount.withdraw(7000.0);
  

  CurrentAccount cAccount = CurrentAccount(23456, 15000.0, 1500.0);
  print('\nCurrent Account:');
  print("Initial Balance: ${cAccount.balance}");
  cAccount.deposit(8000.0);
  cAccount.withdraw(15000.0);
  cAccount.withdraw(20000.0);

}