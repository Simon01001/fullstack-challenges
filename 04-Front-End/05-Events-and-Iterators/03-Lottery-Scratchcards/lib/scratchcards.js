const all = document.querySelectorAll("li");
let balance = document.getElementById("balance");
console.log(all);
balance = parseInt(balance.innerText, 10);

all.forEach((card) => {
  card.addEventListener('click', (event) => {
    balance -= 10;
    console.log(balance);
    const updatedBalance = document.getElementById("balance");
    updatedBalance.innerText = balance;
    if (balance < 10) {
      balance = 10;
    }
    const prize = document.querySelector(".scratchcard");
    balance += parseInt(prize.dataset.amount, 10);
    prize.dataset.scratched = "true";
  });
});
