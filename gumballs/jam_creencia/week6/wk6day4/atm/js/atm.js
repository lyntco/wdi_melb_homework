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
    deposit: function (amount) {
      this.balance += amount;
    },
    withdraw: function (amount) {
      this.balance -= amount;
    }
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

      var balance1 = document.getElementById('balance1');
      balance1.innerHTML = '$' + accounts['checking']['balance'].toFixed(2);
      var balance2 = document.getElementById('balance2');
      balance2.innerHTML = '$' + accounts['savings']['balance'].toFixed(2);

    };




  if (accounts['checking']['balance']  == 0) {
    document.getElementById('balance1').style.backgroundColor="red";
  };

  var balance1 = document.getElementById('balance1');
  balance1.innerHTML = '$' + accounts['checking']['balance'].toFixed(2);

};






var withdrawButton = document.getElementById('checkingWithdraw');

withdrawButton.addEventListener('click', withdraw);



// SAVINGS


var deposit = function () {

  var amount = parseFloat(document.getElementById('savingsAmount').value);
  console.log(amount);


  accounts['savings']['balance'] += amount;
  console.log(amount);

   if (accounts['savings']['balance'] > 0) {
    document.getElementById('balance2').style.backgroundColor="#E3E3E3";
    };


  var balance2 = document.getElementById('balance2');
  balance2.innerHTML = '$' + accounts['savings']['balance'].toFixed(2);
};


var depositButton = document.getElementById('savingsDeposit');

depositButton.addEventListener('click', deposit);





var withdraw = function() {
  var amount = parseFloat(document.getElementById('savingsAmount').value);
  console.log(amount);

  var newBalance = amount - accounts['savings']['balance'] ;

  if ((accounts['savings']['balance'] - amount) >= 0) {
  accounts['savings']['balance'] -= amount;
  console.log(amount);
    } else if (newBalance < (accounts['checking']['balance'])) {
      accounts['savings']['balance'] = 0;
      accounts['checking']['balance'] -= newBalance;

      var balance1 = document.getElementById('balance1');
      balance1.innerHTML = '$' + accounts['checking']['balance'].toFixed(2);
      var balance2 = document.getElementById('balance2');
      balance2.innerHTML = '$' + accounts['savings']['balance'].toFixed(2);

    };

    if (accounts['savings']['balance']  == 0) {
      document.getElementById('balance2').style.backgroundColor="red";
    }; 

  var balance2 = document.getElementById('balance2');
  balance2.innerHTML = '$' + accounts['savings']['balance'].toFixed(2);

};






var withdrawButton = document.getElementById('savingsWithdraw');

withdrawButton.addEventListener('click', withdraw);





