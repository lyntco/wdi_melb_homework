var accounts = {
  checking: {
    balance: 0,
    deposit: function (amount) {
      accounts.checking.balance += amount;

    },
    withdraw: function (amount) {
      this.balance -= amount;
    }
  },

  savings: {
    balance: 0,
    deposit: function (amount) {},
    withdraw: function (amount) {}
  }
};

// CHECKING


var deposit = function () {

  var amount = parseFloat(document.getElementById('checkingAmount').value);
  console.log(amount);


  accounts['checking']['balance'] += amount;
  console.log(amount);

   if (accounts['checking']['balance'] > 0) {
    document.getElementById('balance1').style.backgroundColor="#E3E3E3";
    };


  var balance1 = document.getElementById('balance1');
  balance1.innerHTML = '$' + accounts['checking']['balance'].toFixed(2);
};


var depositButton = document.getElementById('checkingDeposit');

depositButton.addEventListener('click', deposit);





var withdraw = function() {
  var amount = parseFloat(document.getElementById('checkingAmount').value);
  console.log(amount);

  var newBalance = amount - accounts['checking']['balance'] ;

  if ((accounts['checking']['balance'] - amount) >= 0) {
  accounts['checking']['balance'] -= amount;
  console.log(amount);
   } else if (newBalance < (accounts['savings']['balance'])) {
      accounts['checking']['balance'] = 0;
      accounts['savings']['balance'] -= newBalance;
