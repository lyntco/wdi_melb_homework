
// var savingsAccount = {
// 	balance: 0,

// 	deposit: function(amount) {
// 		this.balance = this.balance + amount;
// 	},

// 	withdraw: function(amount) {
// 		if (amount <= this.balance) {
// 			this.balance = this.balance - amount;
// 			return true;
// 		}	else {
// 			return false;
// 		}
// 	}
// }



var createAccount = function(initialBalance) {

	var account = {
		balance: initialBalance,

		deposit: function(amount) {
			this.balance = this.balance + amount
		},

		withdraw: function(amount) {
			if (amount <= this.balance) {
				this.balance = this.balance - amount;
				return true;
			}	else {
				return false;
			}
		}
	};

	return account;
};


// var checkingAccount = createAccount(0);

// var updateBalance = function() {
// 	var checkingBalance = document.getElementById('balance1');
// 	checkingBalance.innerHTML = '$' + checkingAccount.balance;
// };


// var checkingDepositBtn = document.getElementById('checkingDeposit');

// checkingDepositBtn.addEventListener('click', function() {
// 	var amount = parseInt(document.getElementById('checkingAmount').value);

// 	checkingAccount.deposit(amount);

// 	updateBalance();

// });


var app = {
	init: function() {
		this.checkingAccount = createAccount(0);
		this.updateBalance();

		var checkingDepositBtn = document.getElementById('checkingDeposit');

		checkingDepositBtn.addEventListener('click', function() {
			var amount = parseInt(document.getElementById('checkingAmount').value);

			app.checkingAccount.deposit(amount);

			app.updateBalance();

		});

	},

	updateBalance: function() {
		var checkingBalance = document.getElementById('balance1');
		checkingBalance.innerHTML = '$' + this.checkingAccount.balance;
	}

}

app.init();








