function displayPaymentModal(issueDate, electricityUsage, waterUsage, junkCost, totalAmount, paymentStatus) {
    // Set invoice details in the modal
    document.getElementById('modalIssueDate').innerText = issueDate;
    document.getElementById('modalElectricityUsage').innerText = electricityUsage;
    document.getElementById('modalWaterUsage').innerText = waterUsage;
    document.getElementById('modalJunkCost').innerText = junkCost;
    document.getElementById('modalTotalAmount').innerText = totalAmount;
    document.getElementById('modalPaymentStatus').innerText = paymentStatus;

    var paymentDetailsSection = document.getElementById('paymentDetailsSection');
    var payButton = document.getElementById('payButton');
    
    if (paymentStatus.trim().toLowerCase() === 'paid') {
        paymentDetailsSection.classList.add('hidden');
        payButton.classList.add('hidden');
    } else {
        paymentDetailsSection.classList.remove('hidden');
        payButton.classList.remove('hidden');
    }

    // Show the payment modal
    var myModal = new bootstrap.Modal(document.getElementById('paymentModal'));
    myModal.show();
}

// Show or hide bank transfer details based on the selected option
document.getElementById('bankTransfer').addEventListener('change', function () {
    var bankTransfer = this.value;
    if (bankTransfer !== '') {
        document.getElementById('bankTransferDetails').style.display = 'block';
    } else {
        document.getElementById('bankTransferDetails').style.display = 'none';
    }
});
