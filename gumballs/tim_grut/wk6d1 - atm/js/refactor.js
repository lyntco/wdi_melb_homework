var createAccount = function(initialBalance) {

  var account = {
    balance: initialBalance,
    deposit: function(amoumt) {
      this.balance = this.balance + amount;
    },
    withdraw: function(amount) {
      if (amount<= this.balance) {
       this.balance = this.balance - amount;
       return true;
     } else {
      return false;
    }
  }
};
return account
}

var renderBalance = function() {
var checkingBalance = document.getElementById('balance1');
checkingBalance.innerHTML = "$" + checkingsAccount.balance;
}
var CheckingsAccount = creatAccount(0);

var checkingDepositBtn = document.getElementById('checkingDeposit');

checkingDepositBtn.addEventListener('click', function() {
var amount = parseInt(document.getElementById('checkingAmount').value);

checkingsAccount.deposit(amount);
renderBalance();
});
