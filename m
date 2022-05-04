Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA0B519F2A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 14:23:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 587F248071
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 12:23:05 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 04D4B402B7
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 May 2022 12:22:59 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id d5so1777920wrb.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 May 2022 05:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e2dYbzpbHvQMo1jShWOwpkjE5/wTuIDOzNVfw59wRas=;
        b=V8shUO/xhYYbGZxdaNXzcK+WSqnYEbC6vYpIe/DgsNDk/dO+GmoNGwGyQyQLbVU9OE
         iElPz6pcmk3jEpAVYaMdpkyYKF54+3jG92k2DdgkCFNUq6HTNk9H5mKoqSSmaikNXOJv
         qJXof+/srLWZWFkSKX13xgjjPwf4WCm92SuHFyV8AvOoUjiLhEJGtlm96SA1PGaMp8c/
         RedoRDc74gzxjOXdgSZjJLpxr9ucuUwTYtrXdzd746W8b39SoUsn1KNlL7uvAKMgJMt/
         w+H+pbpyGqDKy3FLVOoHIL2muANFh3Kf/bfEEPJn9PKUNG4qlt3JDujI5j39BaHDLu/v
         mhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e2dYbzpbHvQMo1jShWOwpkjE5/wTuIDOzNVfw59wRas=;
        b=TrMxexNzmPgMZPa7E/KIFgqahddjUWk69p+u01zp5nmEbJuN1Xa0T2BUu7qgl1UanD
         tdu2u63dx4KnQmGhVzXovH5j1z/vDmwo6pFRZXOKTGftdOmSZCgDvTSZGuzUJsG0/rr7
         Vmb5NOYhYR3iLiEd428L+m7gkk3979JeGCE4PpKqIEJaqFg+jVhAbywA/5neYC0e3KS9
         YUqTTcJP9Or1Z4si3mbDsFZb8U9WNN/yJ7B1OiqKJdPDooDuAUuzbITosb3AyTOutNRm
         SL7RgoodUnwkac8doR6cLhZf36XohdWc2eR4gMpgSrYU0hor8d2SmAwJyu4LluA+DEeT
         CTlA==
X-Gm-Message-State: AOAM532vV/25OA6bh2j7A1T6HC5viJIMRGKpyLahXv/k6DCko8tFTtjk
	d1ijK9jeFg1P/Mv/gZIvVJU=
X-Google-Smtp-Source: ABdhPJz3kydFY+B/6iKFZcfRMy8REtjbOq66KG75DTt9bv0nOKZk2oLXx1bF/92Na3BGZlRTJLMNtQ==
X-Received: by 2002:a5d:498d:0:b0:20a:dc6b:35c9 with SMTP id r13-20020a5d498d000000b0020adc6b35c9mr16348694wrq.176.1651666978028;
        Wed, 04 May 2022 05:22:58 -0700 (PDT)
Received: from able.fritz.box (p57b0b7c9.dip0.t-ipconnect.de. [87.176.183.201])
        by smtp.gmail.com with ESMTPSA id l28-20020a05600c1d1c00b003942a244ed1sm1462119wms.22.2022.05.04.05.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 05:22:57 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org
Date: Wed,  4 May 2022 14:22:52 +0200
Message-Id: <20220504122256.1654-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: TTRYOMKHTIJYC6ABSS6FYAJ45V2BKQFV
X-Message-ID-Hash: TTRYOMKHTIJYC6ABSS6FYAJ45V2BKQFV
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/5] dma-buf: cleanup dma_fence_unwrap selftest
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TTRYOMKHTIJYC6ABSS6FYAJ45V2BKQFV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHNlbGZ0ZXN0cywgZml4IHRoZSBlcnJvciBoYW5kbGluZywgcmVtb3ZlIHVudXNlZCBmdW5j
dGlvbnMgYW5kIHN0b3ANCmxlYWtpbmcgbWVtb3J5IGluIGZhaWxlZCB0ZXN0cy4NCg0KU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0t
DQogZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYyB8IDQwICsrKysrKysrKysr
LS0tLS0tLS0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAyNCBk
ZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2Ut
dW53cmFwLmMgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jDQppbmRleCAw
MzlmMDE2YjU3YmUuLjU5NjI4YWRkOTNmNSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UtdW53cmFwLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2Ut
dW53cmFwLmMNCkBAIC00LDI3ICs0LDE5IEBADQogICogQ29weXJpZ2h0IChDKSAyMDIyIEFkdmFu
Y2VkIE1pY3JvIERldmljZXMsIEluYy4NCiAgKi8NCiANCisjaW5jbHVkZSA8bGludXgvZG1hLWZl
bmNlLmg+DQorI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS1hcnJheS5oPg0KKyNpbmNsdWRlIDxs
aW51eC9kbWEtZmVuY2UtY2hhaW4uaD4NCiAjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLXVud3Jh
cC5oPg0KLSNpZiAwDQotI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPg0KLSNpbmNsdWRlIDxsaW51
eC9rdGhyZWFkLmg+DQotI2luY2x1ZGUgPGxpbnV4L21tLmg+DQotI2luY2x1ZGUgPGxpbnV4L3Nj
aGVkL3NpZ25hbC5oPg0KLSNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQotI2luY2x1ZGUgPGxpbnV4
L3NwaW5sb2NrLmg+DQotI2luY2x1ZGUgPGxpbnV4L3JhbmRvbS5oPg0KLSNlbmRpZg0KIA0KICNp
bmNsdWRlICJzZWxmdGVzdC5oIg0KIA0KICNkZWZpbmUgQ0hBSU5fU1ogKDQgPDwgMTApDQogDQot
c3RhdGljIGlubGluZSBzdHJ1Y3QgbW9ja19mZW5jZSB7DQorc3RydWN0IG1vY2tfZmVuY2Ugew0K
IAlzdHJ1Y3QgZG1hX2ZlbmNlIGJhc2U7DQogCXNwaW5sb2NrX3QgbG9jazsNCi19ICp0b19tb2Nr
X2ZlbmNlKHN0cnVjdCBkbWFfZmVuY2UgKmYpIHsNCi0JcmV0dXJuIGNvbnRhaW5lcl9vZihmLCBz
dHJ1Y3QgbW9ja19mZW5jZSwgYmFzZSk7DQotfQ0KK307DQogDQogc3RhdGljIGNvbnN0IGNoYXIg
Km1vY2tfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KIHsNCkBAIC00NSw3ICszNyw4IEBAIHN0
YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICptb2NrX2ZlbmNlKHZvaWQpDQogCQlyZXR1cm4gTlVMTDsN
CiANCiAJc3Bpbl9sb2NrX2luaXQoJmYtPmxvY2spOw0KLQlkbWFfZmVuY2VfaW5pdCgmZi0+YmFz
ZSwgJm1vY2tfb3BzLCAmZi0+bG9jaywgMCwgMCk7DQorCWRtYV9mZW5jZV9pbml0KCZmLT5iYXNl
LCAmbW9ja19vcHMsICZmLT5sb2NrLA0KKwkJICAgICAgIGRtYV9mZW5jZV9jb250ZXh0X2FsbG9j
KDEpLCAxKTsNCiANCiAJcmV0dXJuICZmLT5iYXNlOw0KIH0NCkBAIC0xMTMsNyArMTA2LDYgQEAg
c3RhdGljIGludCBzYW5pdHljaGVjayh2b2lkICphcmcpDQogCWlmICghY2hhaW4pDQogCQlyZXR1
cm4gLUVOT01FTTsNCiANCi0JZG1hX2ZlbmNlX3NpZ25hbChmKTsNCiAJZG1hX2ZlbmNlX3B1dChj
aGFpbik7DQogCXJldHVybiBlcnI7DQogfQ0KQEAgLTE1NCwxMCArMTQ2LDEwIEBAIHN0YXRpYyBp
bnQgdW53cmFwX2FycmF5KHZvaWQgKmFyZykNCiAJCWVyciA9IC1FSU5WQUw7DQogCX0NCiANCi0J
ZG1hX2ZlbmNlX3NpZ25hbChmMSk7DQotCWRtYV9mZW5jZV9zaWduYWwoZjIpOw0KKwlkbWFfZmVu
Y2VfcHV0KGYxKTsNCisJZG1hX2ZlbmNlX3B1dChmMik7DQogCWRtYV9mZW5jZV9wdXQoYXJyYXkp
Ow0KLQlyZXR1cm4gMDsNCisJcmV0dXJuIGVycjsNCiB9DQogDQogc3RhdGljIGludCB1bndyYXBf
Y2hhaW4odm9pZCAqYXJnKQ0KQEAgLTE5NiwxMCArMTg4LDEwIEBAIHN0YXRpYyBpbnQgdW53cmFw
X2NoYWluKHZvaWQgKmFyZykNCiAJCWVyciA9IC1FSU5WQUw7DQogCX0NCiANCi0JZG1hX2ZlbmNl
X3NpZ25hbChmMSk7DQotCWRtYV9mZW5jZV9zaWduYWwoZjIpOw0KKwlkbWFfZmVuY2VfcHV0KGYx
KTsNCisJZG1hX2ZlbmNlX3B1dChmMik7DQogCWRtYV9mZW5jZV9wdXQoY2hhaW4pOw0KLQlyZXR1
cm4gMDsNCisJcmV0dXJuIGVycjsNCiB9DQogDQogc3RhdGljIGludCB1bndyYXBfY2hhaW5fYXJy
YXkodm9pZCAqYXJnKQ0KQEAgLTI0MiwxMCArMjM0LDEwIEBAIHN0YXRpYyBpbnQgdW53cmFwX2No
YWluX2FycmF5KHZvaWQgKmFyZykNCiAJCWVyciA9IC1FSU5WQUw7DQogCX0NCiANCi0JZG1hX2Zl
bmNlX3NpZ25hbChmMSk7DQotCWRtYV9mZW5jZV9zaWduYWwoZjIpOw0KKwlkbWFfZmVuY2VfcHV0
KGYxKTsNCisJZG1hX2ZlbmNlX3B1dChmMik7DQogCWRtYV9mZW5jZV9wdXQoY2hhaW4pOw0KLQly
ZXR1cm4gMDsNCisJcmV0dXJuIGVycjsNCiB9DQogDQogaW50IGRtYV9mZW5jZV91bndyYXAodm9p
ZCkNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
