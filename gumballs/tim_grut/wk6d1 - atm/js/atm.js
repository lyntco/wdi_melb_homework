var accounts = {
  checking: {
    balance: 0,
    deposit: function (amount) {
accounts.checking.balance += amount;

    },
    withdraw: function (amount) {
accounts.checking.balance -= amount;

    }
  },

  savings: {
    balance: 0,
    deposit: function (amount) {
      accounts.savings.balance += amount;
    },
    withdraw: function (amount) {
accounts.savings.balance -= amount;

    }
  }
};

// var checkBalance = accounts.checking.balance
// var saveBalance = accounts.checking.balance













document.getElementById('checkingDeposit').addEventListener('click', function () {
  var amount = document.getElementById('checkingAmount').value;
accounts.checking.deposit (parseFloat(amount))
document.getElementById('balance1').innerHTML = ("$" + accounts.checking.balance);



if (accounts.checking.balance === parseFloat(0)) {
document.getElementById('checkingAccount').style.backgroundColor = "#ff0000"
}
else {
background1.style.backgroundColor = "#6C9A74"


};


 });

var checkingOUT = document.getElementById('checkingWithdraw');

checkingOUT.addEventListener('click', function () {

  var amount = document.getElementById('checkingAmount').value;
  if (amount > accounts.checking.balance){
if (amount > accounts.savings.balance + accounts.checking.balance){}

else {}
accounts.checking.balance = 0
accounts.savings.withdraw (parseFloat(amount) - accounts.checking.balance)
  document.getElementById('balance2').innerHTML = ("$" + accounts.savings.balance);
  }

  else {
  accounts.checking.withdraw (parseFloat(amount))
  document.getElementById('balance1').innerHTML = ("$" + accounts.checking.balance);

if (accounts.checking.balance === parseFloat(0)) {
  var background1 = document.getElementById('checkingAccount');
background1.style.backgroundColor = "#ff0000"
}
else {
background1.style.backgroundColor = "#6C9A74"


};

}
 });



var savingIN = document.getElementById('savingsDeposit');
savingIN.addEventListener('click', function () {
  var amount = document.getElementById('savingsAmount').value;
accounts.savings.deposit (parseFloat(amount))
document.getElementById('balance2').innerHTML = ("$" + accounts.savings.balance);


var background1 = document.getElementById('savingsAccount');
if (accounts.savings.balance === parseFloat(0)) {
background1.style.backgroundColor = "#ff0000"
}
else {
background1.style.backgroundColor = "#6C9A74"


};


 });

var savingOUT = document.getElementById('savingsWithdraw');

savingOUT.addEventListener('click', function () {

  var amount = document.getElementById('savingsAmount').value;
  if (amount > accounts.savings.balance){
if (amount > accounts.savings.balance + accounts.checking.balance){}

else {}
accounts.checking.withdraw (parseFloat(amount) - accounts.savings.balance)
accounts.savings.balance = 0
  document.getElementById('balance2').innerHTML = ("$" + accounts.savings.balance);
   document.getElementById('balance1').innerHTML = ("$" + accounts.checking.balance);
  }

  else {
  accounts.savings.withdraw (parseFloat(amount))
  document.getElementById('balance2').innerHTML = ("$" + accounts.savings.balance);

if (accounts.savings.balance === parseFloat(0)) {
  var background2 = document.getElementById('savingsAccount');
background2.style.backgroundColor = "#ff0000"
}
else {
background2.style.backgroundColor = "#6C9A74"


};

}
 });






