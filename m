Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8773E42254E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:38:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E0C360DC1
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:38:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A2C736051A; Tue,  5 Oct 2021 11:38:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B13B962432;
	Tue,  5 Oct 2021 11:38:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EECE5604FD
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AA4CE605DC; Tue,  5 Oct 2021 11:37:52 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 72A30604FD
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:50 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id r10so20305306wra.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ADVhS57c+/GkE4bftpulTNsBWIzwdND+k45HTika4Iw=;
 b=K+VIzMzniJZU/owwllo1bAVsHAUC0XtwomGJQ+mOTouhl4P8Pn+DjdPtHodHX9hkW/
 znbHgCjXWB+XXChVFseAanjm8CmZJih3X2H7D1Nd7POvqvuSAkzIPECorZ2OW6su1+v6
 dJMPkVxjJwYw9W0a8sD36D30ykvvFWAGiB478FaiTb/uIbLB2tncSfUpnuDYFJf64WMk
 sF5MrnKpmonM2dLrc9a8xJqOKg2lCsChJo23ho8cBNuRb3VNdr7lv2z4hnbs04xT0lOS
 moMF6THwCOvomqJnZksbIXhjfy0SbrtaPW7goox3soXlfhHvz9TTEA0/zvmjwvdhzeZa
 f6WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ADVhS57c+/GkE4bftpulTNsBWIzwdND+k45HTika4Iw=;
 b=2tPOQfDzk5E2GUPM3Q6T8wnjszVXRy1mioKFyceeX/hwXChw1DDTNnTCkhEirppHHS
 rrS8tozDPfYc2JL3cIa0OO5DWRtJiTXZcVLf3Jp9u7eipg96EqzBvpZ6pbR0yFEUvEbW
 IqbL3rioAjlRWoTd1n8DKJFKND/4fu924w1GxJHh0ZlNqJYJuV7OvLrOE/tF5Gdxi1Fl
 LI+FNOGYLI8B9Uj3y0kcrr42DAIYOb9Df5OWmvgOVQu0h1hlyiEzx9IuJsUmDQjjyIlg
 AwyQz9OsFZFaIjMkr6vqlTJzpspBO+2g7hsPraP2i8U6QB+yGNFJTlwnZJq2p9JUumpp
 jorw==
X-Gm-Message-State: AOAM530a8zDu+LaHAO3CdkhSGwLCvAeGNy45Z5tee5A6Vem3CJiNsqHt
 rPQl0JWZkqEBssTlvGhbTCRN62aeHU8=
X-Google-Smtp-Source: ABdhPJyOFhtBorgkT5NlHM3GxBe5ssDhT8cLzxAhKrt5iOfLQPL34ZYFB073VRI3a9wBp2lQeXevXw==
X-Received: by 2002:adf:cd02:: with SMTP id w2mr8333593wrm.358.1633433869507; 
 Tue, 05 Oct 2021 04:37:49 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:49 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:19 +0200
Message-Id: <20211005113742.1101-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 05/28] dma-buf: use new iterator in
 dma_resv_get_fences v3
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KCnYyOiB1c2Ugc2l6ZW9mKHZvaWQq
KSBpbnN0ZWFkCnYzOiBmaXggcmViYXNlIGJ1ZwoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyB8IDEwOCArKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRl
eCBlNWVhNDJkZjBjNmIuLjFhNDNiZWYwM2FmMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTUzOCw5OSAr
NTM4LDYxIEBAIEVYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfY29weV9mZW5jZXMpOwogICogZG1hX3Jl
c3ZfZ2V0X2ZlbmNlcyAtIEdldCBhbiBvYmplY3QncyBzaGFyZWQgYW5kIGV4Y2x1c2l2ZQogICog
ZmVuY2VzIHdpdGhvdXQgdXBkYXRlIHNpZGUgbG9jayBoZWxkCiAgKiBAb2JqOiB0aGUgcmVzZXJ2
YXRpb24gb2JqZWN0Ci0gKiBAcGZlbmNlX2V4Y2w6IHRoZSByZXR1cm5lZCBleGNsdXNpdmUgZmVu
Y2UgKG9yIE5VTEwpCi0gKiBAcHNoYXJlZF9jb3VudDogdGhlIG51bWJlciBvZiBzaGFyZWQgZmVu
Y2VzIHJldHVybmVkCi0gKiBAcHNoYXJlZDogdGhlIGFycmF5IG9mIHNoYXJlZCBmZW5jZSBwdHJz
IHJldHVybmVkIChhcnJheSBpcyBrcmVhbGxvYydkIHRvCisgKiBAZmVuY2VfZXhjbDogdGhlIHJl
dHVybmVkIGV4Y2x1c2l2ZSBmZW5jZSAob3IgTlVMTCkKKyAqIEBzaGFyZWRfY291bnQ6IHRoZSBu
dW1iZXIgb2Ygc2hhcmVkIGZlbmNlcyByZXR1cm5lZAorICogQHNoYXJlZDogdGhlIGFycmF5IG9m
IHNoYXJlZCBmZW5jZSBwdHJzIHJldHVybmVkIChhcnJheSBpcyBrcmVhbGxvYydkIHRvCiAgKiB0
aGUgcmVxdWlyZWQgc2l6ZSwgYW5kIG11c3QgYmUgZnJlZWQgYnkgY2FsbGVyKQogICoKICAqIFJl
dHJpZXZlIGFsbCBmZW5jZXMgZnJvbSB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0LiBJZiB0aGUgcG9p
bnRlciBmb3IgdGhlCiAgKiBleGNsdXNpdmUgZmVuY2UgaXMgbm90IHNwZWNpZmllZCB0aGUgZmVu
Y2UgaXMgcHV0IGludG8gdGhlIGFycmF5IG9mIHRoZQogICogc2hhcmVkIGZlbmNlcyBhcyB3ZWxs
LiBSZXR1cm5zIGVpdGhlciB6ZXJvIG9yIC1FTk9NRU0uCiAgKi8KLWludCBkbWFfcmVzdl9nZXRf
ZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNlICoqcGZlbmNlX2V4
Y2wsCi0JCQl1bnNpZ25lZCBpbnQgKnBzaGFyZWRfY291bnQsCi0JCQlzdHJ1Y3QgZG1hX2ZlbmNl
ICoqKnBzaGFyZWQpCitpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKm9i
aiwgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlX2V4Y2wsCisJCQl1bnNpZ25lZCBpbnQgKnNoYXJl
ZF9jb3VudCwgc3RydWN0IGRtYV9mZW5jZSAqKipzaGFyZWQpCiB7Ci0Jc3RydWN0IGRtYV9mZW5j
ZSAqKnNoYXJlZCA9IE5VTEw7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2VfZXhjbDsKLQl1bnNp
Z25lZCBpbnQgc2hhcmVkX2NvdW50OwotCWludCByZXQgPSAxOwotCi0JZG8gewotCQlzdHJ1Y3Qg
ZG1hX3Jlc3ZfbGlzdCAqZm9iajsKLQkJdW5zaWduZWQgaW50IGksIHNlcTsKLQkJc2l6ZV90IHN6
ID0gMDsKLQotCQlzaGFyZWRfY291bnQgPSBpID0gMDsKLQotCQlyY3VfcmVhZF9sb2NrKCk7Ci0J
CXNlcSA9IHJlYWRfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKKwlzdHJ1Y3QgZG1hX3Jlc3Zf
aXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAKLQkJZmVuY2VfZXhjbCA9
IGRtYV9yZXN2X2V4Y2xfZmVuY2Uob2JqKTsKLQkJaWYgKGZlbmNlX2V4Y2wgJiYgIWRtYV9mZW5j
ZV9nZXRfcmN1KGZlbmNlX2V4Y2wpKQotCQkJZ290byB1bmxvY2s7CisJKnNoYXJlZF9jb3VudCA9
IDA7CisJKnNoYXJlZCA9IE5VTEw7CiAKLQkJZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9i
aik7Ci0JCWlmIChmb2JqKQotCQkJc3ogKz0gc2l6ZW9mKCpzaGFyZWQpICogZm9iai0+c2hhcmVk
X21heDsKKwlpZiAoZmVuY2VfZXhjbCkKKwkJKmZlbmNlX2V4Y2wgPSBOVUxMOwogCi0JCWlmICgh
cGZlbmNlX2V4Y2wgJiYgZmVuY2VfZXhjbCkKLQkJCXN6ICs9IHNpemVvZigqc2hhcmVkKTsKKwlk
bWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iaiwgdHJ1ZSk7CisJZG1hX3Jlc3ZfZm9yX2Vh
Y2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKIAotCQlpZiAoc3opIHsKLQkJCXN0
cnVjdCBkbWFfZmVuY2UgKipuc2hhcmVkOworCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19yZXN0YXJ0
ZWQoJmN1cnNvcikpIHsKKwkJCXVuc2lnbmVkIGludCBjb3VudDsKIAotCQkJbnNoYXJlZCA9IGty
ZWFsbG9jKHNoYXJlZCwgc3osCi0JCQkJCSAgIEdGUF9OT1dBSVQgfCBfX0dGUF9OT1dBUk4pOwot
CQkJaWYgKCFuc2hhcmVkKSB7Ci0JCQkJcmN1X3JlYWRfdW5sb2NrKCk7CisJCQl3aGlsZSAoKnNo
YXJlZF9jb3VudCkKKwkJCQlkbWFfZmVuY2VfcHV0KCgqc2hhcmVkKVstLSgqc2hhcmVkX2NvdW50
KV0pOwogCi0JCQkJZG1hX2ZlbmNlX3B1dChmZW5jZV9leGNsKTsKLQkJCQlmZW5jZV9leGNsID0g
TlVMTDsKKwkJCWlmIChmZW5jZV9leGNsKQorCQkJCWRtYV9mZW5jZV9wdXQoKmZlbmNlX2V4Y2wp
OwogCi0JCQkJbnNoYXJlZCA9IGtyZWFsbG9jKHNoYXJlZCwgc3osIEdGUF9LRVJORUwpOwotCQkJ
CWlmIChuc2hhcmVkKSB7Ci0JCQkJCXNoYXJlZCA9IG5zaGFyZWQ7Ci0JCQkJCWNvbnRpbnVlOwot
CQkJCX0KKwkJCWNvdW50ID0gY3Vyc29yLmZlbmNlcyA/IGN1cnNvci5mZW5jZXMtPnNoYXJlZF9j
b3VudCA6IDA7CisJCQljb3VudCArPSBmZW5jZV9leGNsID8gMCA6IDE7CiAKLQkJCQlyZXQgPSAt
RU5PTUVNOwotCQkJCWJyZWFrOworCQkJLyogRXZlbnR1YWxseSByZS1hbGxvY2F0ZSB0aGUgYXJy
YXkgKi8KKwkJCSpzaGFyZWQgPSBrcmVhbGxvY19hcnJheSgqc2hhcmVkLCBjb3VudCwKKwkJCQkJ
CSBzaXplb2Yodm9pZCAqKSwKKwkJCQkJCSBHRlBfS0VSTkVMKTsKKwkJCWlmIChjb3VudCAmJiAh
KnNoYXJlZCkgeworCQkJCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOworCQkJCXJldHVybiAt
RU5PTUVNOwogCQkJfQotCQkJc2hhcmVkID0gbnNoYXJlZDsKLQkJCXNoYXJlZF9jb3VudCA9IGZv
YmogPyBmb2JqLT5zaGFyZWRfY291bnQgOiAwOwotCQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9j
b3VudDsgKytpKSB7Ci0JCQkJc2hhcmVkW2ldID0gcmN1X2RlcmVmZXJlbmNlKGZvYmotPnNoYXJl
ZFtpXSk7Ci0JCQkJaWYgKCFkbWFfZmVuY2VfZ2V0X3JjdShzaGFyZWRbaV0pKQotCQkJCQlicmVh
azsKLQkJCX0KLQkJfQotCi0JCWlmIChpICE9IHNoYXJlZF9jb3VudCB8fCByZWFkX3NlcWNvdW50
X3JldHJ5KCZvYmotPnNlcSwgc2VxKSkgewotCQkJd2hpbGUgKGktLSkKLQkJCQlkbWFfZmVuY2Vf
cHV0KHNoYXJlZFtpXSk7Ci0JCQlkbWFfZmVuY2VfcHV0KGZlbmNlX2V4Y2wpOwotCQkJZ290byB1
bmxvY2s7CiAJCX0KIAotCQlyZXQgPSAwOwotdW5sb2NrOgotCQlyY3VfcmVhZF91bmxvY2soKTsK
LQl9IHdoaWxlIChyZXQpOwotCi0JaWYgKHBmZW5jZV9leGNsKQotCQkqcGZlbmNlX2V4Y2wgPSBm
ZW5jZV9leGNsOwotCWVsc2UgaWYgKGZlbmNlX2V4Y2wpCi0JCXNoYXJlZFtzaGFyZWRfY291bnQr
K10gPSBmZW5jZV9leGNsOwotCi0JaWYgKCFzaGFyZWRfY291bnQpIHsKLQkJa2ZyZWUoc2hhcmVk
KTsKLQkJc2hhcmVkID0gTlVMTDsKKwkJZG1hX2ZlbmNlX2dldChmZW5jZSk7CisJCWlmIChkbWFf
cmVzdl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vyc29yKSAmJiBmZW5jZV9leGNsKQorCQkJKmZlbmNl
X2V4Y2wgPSBmZW5jZTsKKwkJZWxzZQorCQkJKCpzaGFyZWQpWygqc2hhcmVkX2NvdW50KSsrXSA9
IGZlbmNlOwogCX0KKwlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKIAotCSpwc2hhcmVkX2Nv
dW50ID0gc2hhcmVkX2NvdW50OwotCSpwc2hhcmVkID0gc2hhcmVkOwotCXJldHVybiByZXQ7CisJ
cmV0dXJuIDA7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9nZXRfZmVuY2VzKTsKIAot
LSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
