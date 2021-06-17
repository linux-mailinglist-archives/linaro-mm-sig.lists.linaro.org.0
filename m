Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B200E3AB255
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AADE961A2A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 84D9E6675F; Thu, 17 Jun 2021 11:17:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A37A163524;
	Thu, 17 Jun 2021 11:17:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C0C2263504
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 393CE63503; Thu, 17 Jun 2021 11:16:16 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by lists.linaro.org (Postfix) with ESMTPS id D190D61A28
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:12 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id ji1so3089927ejc.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=aaz1/XKVq6nri9Uw2UQQseQfjyJkmrID5vYRDnEleeE=;
 b=aHbD1drE9FbjEyitAtdun/cQ3QyTanLaK+Y3bCT4fKCTIR1PW3W0pDZm1VyNa4MchY
 UHbjP+Vc4GfVwUbmH5SjvBJy8Tcy3t9PfEyqdPVDWzv53NDA2H7q3MauZcUyJFaf3EO4
 tDUmoCFv+cGdLDcG+/qRhmeK6NgN5HvSpG0O8SO3Fgc518ut9tY6DR8Se8bVv/GFjZ8y
 3ZrnuqclHm/x0QdgrXwv4D1uG0vYGia2mgjevoWFppjq8bPFcCWN71PDWzC5SP3Y+bhG
 Ue/Bk8A57XcjO8PzTNgxZfc/10yl9mozKfHv+sIOJhuSev6jgqstGh3JUKAwbFq6BQYx
 8pYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aaz1/XKVq6nri9Uw2UQQseQfjyJkmrID5vYRDnEleeE=;
 b=X5f6KH1GgCdzvxT8NwrMV3kc4k2huwuTMb6FJ4h94WCqTcU9mwWJMA3QREU1bW11lc
 HN4zwtEq8wWC3NaznSW5oAmXB1pLG28WLnX7zmMSHFDwTt6pYMlLyhPGj5P6cnaEUCfI
 MAQpjGjzn9pNNtUYqRdYU9S837wChttPwrhFh0GAKAIpBYWDl8eVBdorNE2IUaLjAlE7
 jf2E6isC/8k7CK6RcmDXOZIFski7kquuPvS1OMrPvqA6qoQDUrvpBFpfWvhRFkAJaokK
 cYjTKmCNmTY2vDa3GYQpsVwacBHh6G0imN+OZFouUr02yrGoiTorg65AabxyQjYmkmPl
 2LLQ==
X-Gm-Message-State: AOAM533l2wTOODUukyaXArX+9iKPq2vnslxS56C76D5PF1sRUAfJQHSP
 huRxW1GtCa0gq4rkWgZQK5I=
X-Google-Smtp-Source: ABdhPJwoYJMNnGPh7pQmMwrYk0Y7Rh5oWm9rnGO6B3+1nHi8CA4dRJA2EJOwZaRm1RPhr6RMumZCeQ==
X-Received: by 2002:a17:906:a95:: with SMTP id
 y21mr4725045ejf.522.1623928571596; 
 Thu, 17 Jun 2021 04:16:11 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:11 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:57 +0200
Message-Id: <20210617111558.28486-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/16] drm/nouveau: use the new iterator in
 nouveau_fence_sync
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvbm91dmVhdV9mZW5jZS5jIHwgNDggKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwppbmRleCAwNWQwYjNlYjM2OTAuLmRjOGQ3Y2ExZTIz
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwpAQCAtMzM5LDE0ICsz
MzksMTUgQEAgbm91dmVhdV9mZW5jZV93YWl0KHN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmZW5jZSwg
Ym9vbCBsYXp5LCBib29sIGludHIpCiB9CiAKIGludAotbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVj
dCBub3V2ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGV4
Y2x1c2l2ZSwgYm9vbCBpbnRyKQorbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBub3V2ZWF1X2Jv
ICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLAorCQkgICBib29sIGV4Y2x1c2l2
ZSwgYm9vbCBpbnRyKQogewogCXN0cnVjdCBub3V2ZWF1X2ZlbmNlX2NoYW4gKmZjdHggPSBjaGFu
LT5mZW5jZTsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJl
c3YgPSBudmJvLT5iby5iYXNlLnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJ
c3RydWN0IGRtYV9yZXN2X2N1cnNvciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
CiAJc3RydWN0IG5vdXZlYXVfZmVuY2UgKmY7Ci0JaW50IHJldCA9IDAsIGk7CisJaW50IHJldDsK
IAogCWlmICghZXhjbHVzaXZlKSB7CiAJCXJldCA9IGRtYV9yZXN2X3Jlc2VydmVfc2hhcmVkKHJl
c3YsIDEpOwpAQCAtMzU1LDEwICszNTYsNyBAQCBub3V2ZWF1X2ZlbmNlX3N5bmMoc3RydWN0IG5v
dXZlYXVfYm8gKm52Ym8sIHN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKmNoYW4sIGJvb2wgZQogCQkJ
cmV0dXJuIHJldDsKIAl9CiAKLQlmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3QocmVzdik7Ci0J
ZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKHJlc3YpOwotCi0JaWYgKGZlbmNlKSB7CisJZG1h
X3Jlc3ZfZm9yX2VhY2hfZmVuY2UocmVzdiwgJmN1cnNvciwgZXhjbHVzaXZlLCBmZW5jZSkgewog
CQlzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpwcmV2ID0gTlVMTDsKIAkJYm9vbCBtdXN0X3dhaXQg
PSB0cnVlOwogCkBAIC0zNjYsNDEgKzM2NCwxOSBAQCBub3V2ZWF1X2ZlbmNlX3N5bmMoc3RydWN0
IG5vdXZlYXVfYm8gKm52Ym8sIHN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKmNoYW4sIGJvb2wgZQog
CQlpZiAoZikgewogCQkJcmN1X3JlYWRfbG9jaygpOwogCQkJcHJldiA9IHJjdV9kZXJlZmVyZW5j
ZShmLT5jaGFubmVsKTsKLQkJCWlmIChwcmV2ICYmIChwcmV2ID09IGNoYW4gfHwgZmN0eC0+c3lu
YyhmLCBwcmV2LCBjaGFuKSA9PSAwKSkKKwkJCWlmIChwcmV2ICYmIChwcmV2ID09IGNoYW4gfHwK
KwkJCQkgICAgIGZjdHgtPnN5bmMoZiwgcHJldiwgY2hhbikgPT0gMCkpCiAJCQkJbXVzdF93YWl0
ID0gZmFsc2U7CiAJCQlyY3VfcmVhZF91bmxvY2soKTsKIAkJfQogCi0JCWlmIChtdXN0X3dhaXQp
CisJCWlmIChtdXN0X3dhaXQpIHsKIAkJCXJldCA9IGRtYV9mZW5jZV93YWl0KGZlbmNlLCBpbnRy
KTsKLQotCQlyZXR1cm4gcmV0OwotCX0KLQotCWlmICghZXhjbHVzaXZlIHx8ICFmb2JqKQotCQly
ZXR1cm4gcmV0OwotCi0JZm9yIChpID0gMDsgaSA8IGZvYmotPnNoYXJlZF9jb3VudCAmJiAhcmV0
OyArK2kpIHsKLQkJc3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqcHJldiA9IE5VTEw7Ci0JCWJvb2wg
bXVzdF93YWl0ID0gdHJ1ZTsKLQotCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQo
Zm9iai0+c2hhcmVkW2ldLAotCQkJCQkJZG1hX3Jlc3ZfaGVsZChyZXN2KSk7Ci0KLQkJZiA9IG5v
dXZlYXVfbG9jYWxfZmVuY2UoZmVuY2UsIGNoYW4tPmRybSk7Ci0JCWlmIChmKSB7Ci0JCQlyY3Vf
cmVhZF9sb2NrKCk7Ci0JCQlwcmV2ID0gcmN1X2RlcmVmZXJlbmNlKGYtPmNoYW5uZWwpOwotCQkJ
aWYgKHByZXYgJiYgKHByZXYgPT0gY2hhbiB8fCBmY3R4LT5zeW5jKGYsIHByZXYsIGNoYW4pID09
IDApKQotCQkJCW11c3Rfd2FpdCA9IGZhbHNlOwotCQkJcmN1X3JlYWRfdW5sb2NrKCk7CisJCQlp
ZiAocmV0KQorCQkJCXJldHVybiByZXQ7CiAJCX0KLQotCQlpZiAobXVzdF93YWl0KQotCQkJcmV0
ID0gZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIGludHIpOwogCX0KLQotCXJldHVybiByZXQ7CisJcmV0
dXJuIDA7CiB9CiAKIHZvaWQKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
