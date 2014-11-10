// var eatPie = function () {
//   console.log(this);
// }

// var ga = {

//   freeLunch: function() {
//     console.log(this);
//   }
// }

// var deposit = function(amount) {
//   balance = balance + amount;
// }

// var withdraw = function(amount) {
//   if (amount <= balance) {
//     balance = balance - amount;
//     return true
//   } else {
//     return false;
//   }
// }

// var savingsAccount = { //this does the same this as var deposit and withdraw above but keeps it in one variable.
//   balance: 0,

//   deposit: function(amount) {
//   this.balance = balance + amount; // this allows you to access the balance. Otherwise it's undefinded. Concept is called "context"
// },

//   withdraw: function(amount) {
//   if (amount <= balance) {
//     this.balance = balance - amount;
//     return true
//     }
//     else {
//     return false;
//     }
//   }
// }

var createAccount = function(initialBalance) {

  var account = {
    balance: initialBalance,

    deposit: function(amount) {
      this.balance = this.balance + amount;
    },

    withdraw: function (amount) {
      if (amount <=this.balance) {
      this.balance = this.balance - amount;
      return true
      } else {
        return false;
      }
    }
  };

  return account;
}

// var renderBalance = function() {
//   var checkingBalance = document.getElementbyId('balance1');
//   var checkingDepositBtn = document.getElementbyId('checkingDeposit');

// };

// var checkingAccount = createAccount(0);

// checkingDepositBtn.addEventListener('click', function() {
//   var amount = parseInt(document.getElementbyId('checkingAmount').value);

//   checkingAccount.deposit(amount):
//   renderBalance();

//   checkingBalance.innerHTML = '$' + checkingAmount.balance;
// });

var app = {
  init: function() {
    this.checkingAccount = creatAccount(50);
    this.renderBalance();

    var checkingDepositBtn = document.getElementbyId('checkingDeposit');

    checkingDepositBtn.addEventListener('click', function(){
      var amount = parseInt(document.getElementbyId('checkingAmount').value);

      app.checkingAccount.deposit(amount);
      app.renderBalance();

    });
  },

  renderBalance: function() {
    var checkingBalance = document.getElementbyId('balance1');
    checkingBalance.innerHTML = '$' + this.checkingAccount.balance;
  }
}

app init;