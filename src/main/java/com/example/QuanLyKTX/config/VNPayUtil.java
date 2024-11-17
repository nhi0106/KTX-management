// package com.example.QuanLyKTX.config;

// import javax.crypto.Mac;
// import javax.crypto.spec.SecretKeySpec;
// import java.util.Base64;

// public class VNPayUtil {
//     private static final String HMAC_SHA512 = "HmacSHA512";

//     public static String hmacSHA512(String key, String data) {
//         try {
//             Mac mac = Mac.getInstance(HMAC_SHA512);
//             SecretKeySpec secretKeySpec = new SecretKeySpec(key.getBytes(), HMAC_SHA512);
//             mac.init(secretKeySpec);
//             byte[] rawHmac = mac.doFinal(data.getBytes());
//             return Base64.getEncoder().encodeToString(rawHmac);
//         } catch (Exception e) {
//             throw new RuntimeException("Unable to perform HMACSHA512", e);
//         }
//     }
// }
