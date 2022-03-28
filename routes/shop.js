const express = require('express');

const shopController = require('../controllers/shop');

const router = express.Router();

router.get('/dslr', shopController.getDslr);

router.get('/laptop', shopController.getLaptop);

router.get('/phone', shopController.getPhones);

router.get('/clothes', shopController.getclothes);

router.get('/shoes', shopController.getShoes);

router.post('/addtocart', shopController.addtocart);

router.post('/buynow', shopController.buynow);

module.exports = router;