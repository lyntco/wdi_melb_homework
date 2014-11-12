// Specification:

// Keep track of the checking and savings balances somewhere
// Add functionality so that a user can deposit money into one of the bank accounts.
// Make sure you are updating the display and manipulating the HTML of the page so a user can see the change.
// Add functionality so that a user can withdraw money from one of the bank accounts.
// Make sure you are updating the display and manipulating the HTML of the page so a user can see the change.
// Make sure the balance in an account can't go negative. If a user tries to withdraw more money than exists in the account, ignore the transaction.



// What happens when the user wants to withdraw more money from the checking account than is in the account? These accounts have overdraft protection, so if a withdrawal can be covered by the balances in both accounts, take the checking balance down to $0 and take the rest of the withdrawal from the savings account. If the withdrawal amount is more than the combined account balance, ignore it.
// Make sure there is overdraft protection going both ways.
// Are there ways to refactor your code to make it DRYer
// When the balance of the bank account is $0 the background of that bank account should be red. It should be gray when there is money in the account (hint: add/remove classes with corresponding colours set in the CSS).


// sets the balances
var checkingBal = 0;
var savBal = 0;


/////////////////////-------------///////////////////

// checking account deposits function
var checkDeposit = function() {
  var cAmount = document.getElementById('checkingAmount').value;
  cAmount = parseInt(cAmount);

  checkingBal += cAmount;
  document.getElementById('balance1').innerHTML = "$" + checkingBal;
};

// checking withdraw function
var checkWithdraw = function(amount) {
  var cWithdraw = document.getElementById('checkingAmount').value;
  cWithdraw = parseInt(cWithdraw);

  // checks the withdrawal is not more than the actual balance
  if (cWithdraw > checkingBal) {
    # checks the other accounts ifthere isnt enough
    if (cWithdraw > savBal) {

    // ctalking part of the balance from each account if there is not enough funds in the checking account
    } else {




      // not working

      // You need to get the balance left from the account you are taking from, then set the balance to 0 and use that amount to lower the amount you are taking off

      var newBalance = checkingBal - cWithdraw;
      newBalance = savBal

    };
  } else {
    checkingBal -= cWithdraw;
    document.getElementById('balance1').innerHTML = "$" + checkingBal;
  };
};

// Checking account withdraw button
var cWithdrawBut = document.getElementById('checkingWithdraw');
cWithdrawBut.addEventListener('click', checkWithdraw);

// Checking account deposit button
var cDepositBut = document.getElementById('checkingDeposit');
cDepositBut.addEventListener('click', checkDeposit);

/////////////////////-------------///////////////////

// saving account deposits function
var savDeposit = function() {
  var sAmount = document.getElementById('savingsAmount').value;
  sAmount = parseInt(sAmount);

  savBal += sAmount;
  document.getElementById('balance2').innerHTML = "$" + savBal;
};

// saving withdraw function
var savWithdraw = function(amount) {
  var sWithdraw = document.getElementById('savingsAmount').value;
  sWithdraw = parseInt(sWithdraw);

  // checks the withdrawal is not more than the actual balance
  if (sWithdraw > savBal) {
    console.log('No Negs')
  } else {
  savBal -= sWithdraw;
  document.getElementById('balance2').innerHTML = "$" + savBal;
  };
};

// Savings account buttons
var sDepositBut = document.getElementById('savingsDeposit');
sDepositBut.addEventListener('click', savDeposit);

// Checking account withdraw button
var sWithdrawBut = document.getElementById('savingsWithdraw');
sWithdrawBut.addEventListener('click', savWithdraw);

/////////////////////-------------///////////////////




