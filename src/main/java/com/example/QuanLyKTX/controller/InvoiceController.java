package com.example.QuanLyKTX.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.QuanLyKTX.model.Invoice;
import com.example.QuanLyKTX.service.InvoiceService;

@Controller
public class InvoiceController {
    private InvoiceService invoiceService = null;

    public InvoiceController(InvoiceService invoiceService) {
        this.invoiceService = invoiceService;
    }
    
    @GetMapping(value = "/api/invoices", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public List<Invoice> getAllInvoices() {
        return invoiceService.getAlInvoices();
    }

    @PostMapping("/api/invoices")
    public ResponseEntity<Invoice> addInvoice(@RequestBody Invoice invoice) {
        Invoice savedInvoice = invoiceService.saveInvoice(invoice);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedInvoice);
    }

    @GetMapping("/api/invoices/{invoiceId}")
    public ResponseEntity<Invoice> getInvoiceById(@PathVariable Long invoiceId) {
        Invoice Invoice = invoiceService.findById(invoiceId);
        return ResponseEntity.ok(Invoice);
    }

    @GetMapping("/api/invoices/unpaid-count")
    public ResponseEntity<Long> getUnpaidInvoiceCount() {
        Long unpaidCount = invoiceService.getUnpaidInvoiceCount();
        return ResponseEntity.ok(unpaidCount);
    }
}
