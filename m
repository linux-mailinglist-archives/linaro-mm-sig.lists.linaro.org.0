Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CFF519F35
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 14:23:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB5BB4655D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 12:23:23 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by lists.linaro.org (Postfix) with ESMTPS id E7A2346560
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 May 2022 12:23:02 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id i5so1757448wrc.13
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 May 2022 05:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xVf0ouNzqYcmj9vzxVqNivW1b4yIyv0QPUJDmRo41CY=;
        b=cnaRnMV7sVg7pNWlxjmJG4DXhnAkGth6VkW4qHR2+NeZjYcIVgzYm4EIKVITZ+qOIo
         Kvy5RjLFyzQ2UnGYA6vtHAb/DocXrfzILOY+iHkQkDqGOwhKuiovwEPFba8EcDN4JRJX
         HN4ewxKo0KaRna9MIfgIRuMzKhilOh4ZeNmJVz8AYzxsM2VqLgE/aF7Olu24RskfOikw
         IcxEzWhEyBYG6F2crJ7OQhykiWEiyVJz6n6Sww3jHMGkFSXMyIjieiAcrtdghbQ07Xpo
         Hch6h+yhiw2xE5tFnMg7zSBDRfiYueZkynesDJXoOcc/qupKWgp9Yljf3z2phLYUgOFZ
         V4Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xVf0ouNzqYcmj9vzxVqNivW1b4yIyv0QPUJDmRo41CY=;
        b=FRbX6IdrNCjbbUKYZK4BPsuxCJB0vi/qFN0eBNO7IA0/8krkwZ9IKU+N/CfNOZ73GL
         gPPafsZ6N+zUa7Rq62dOJLbDdJipT1rRK5zxBY6m6UMN2dCc0gN1RBKYhtzdg+pMN4Ly
         1MN2qYAh2Rf6WbsWD0gAKnLK2Ovn1RAj8leT72c99yXDl8G62ciWms1ORcoJTTQM1J8S
         ZcXx9JrljQdWe4BniALBiZbWfj3skaf3Vg31jpWKUcbWAvMEXY+76gZOcGgycwRjsoq1
         b7kXbtC+IxhRgPLA9VQl8yvZaZy62e/bQg/ikXoVuqodENsheJG2yp8w4e/Lwvt+cSz3
         4RNQ==
X-Gm-Message-State: AOAM530dGc2s0pBStaDgWBaTz6we5npjcZv8f7wrgrq607J7yGAOnf3J
	ZuB8N7n3M4y5FM1+o7rYboU=
X-Google-Smtp-Source: ABdhPJyA8j1ql7YtH3QnjRvNvAgCWa1faL1t7sZcwDC7aGuoOXqd2a8oYgG0bQwmuGU5DBqd4cdxCw==
X-Received: by 2002:a5d:5681:0:b0:207:b2d2:aa4f with SMTP id f1-20020a5d5681000000b00207b2d2aa4fmr16464829wrv.170.1651666982035;
        Wed, 04 May 2022 05:23:02 -0700 (PDT)
Received: from able.fritz.box (p57b0b7c9.dip0.t-ipconnect.de. [87.176.183.201])
        by smtp.gmail.com with ESMTPSA id l28-20020a05600c1d1c00b003942a244ed1sm1462119wms.22.2022.05.04.05.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 05:23:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org
Date: Wed,  4 May 2022 14:22:56 +0200
Message-Id: <20220504122256.1654-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220504122256.1654-1-christian.koenig@amd.com>
References: <20220504122256.1654-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: LYQZOMNF6F4SHFNETVDXPBGTFORRUGIW
X-Message-ID-Hash: LYQZOMNF6F4SHFNETVDXPBGTFORRUGIW
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/5] drm: use dma_fence_unwrap_merge() in drm_syncobj
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LYQZOMNF6F4SHFNETVDXPBGTFORRUGIW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHVud3JhcCBtZXJnZSBmdW5jdGlvbiBpcyBub3cgaW50ZW5kZWQgZm9yIHRoaXMgdXNlIGNh
c2UuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIHwgNTcgKysrKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCA1MCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fc3luY29iai5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCmluZGV4IDdlNDhk
Y2QxYmVlNC4uYmJhZDllNDY5NmU3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9z
eW5jb2JqLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQpAQCAtMTg0LDYg
KzE4NCw3IEBADQogICovDQogDQogI2luY2x1ZGUgPGxpbnV4L2Fub25faW5vZGVzLmg+DQorI2lu
Y2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS11bndyYXAuaD4NCiAjaW5jbHVkZSA8bGludXgvZmlsZS5o
Pg0KICNpbmNsdWRlIDxsaW51eC9mcy5oPg0KICNpbmNsdWRlIDxsaW51eC9zY2hlZC9zaWduYWwu
aD4NCkBAIC04NTMsNTcgKzg1NCwxMiBAQCBkcm1fc3luY29ial9mZF90b19oYW5kbGVfaW9jdGwo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCiAJCQkJCSZhcmdzLT5oYW5kbGUp
Ow0KIH0NCiANCi0NCi0vKg0KLSAqIFRyeSB0byBmbGF0dGVuIGEgZG1hX2ZlbmNlX2NoYWluIGlu
dG8gYSBkbWFfZmVuY2VfYXJyYXkgc28gdGhhdCBpdCBjYW4gYmUNCi0gKiBhZGRlZCBhcyB0aW1l
bGluZSBmZW5jZSB0byBhIGNoYWluIGFnYWluLg0KLSAqLw0KLXN0YXRpYyBpbnQgZHJtX3N5bmNv
YmpfZmxhdHRlbl9jaGFpbihzdHJ1Y3QgZG1hX2ZlbmNlICoqZikNCi17DQotCXN0cnVjdCBkbWFf
ZmVuY2VfY2hhaW4gKmNoYWluID0gdG9fZG1hX2ZlbmNlX2NoYWluKCpmKTsNCi0Jc3RydWN0IGRt
YV9mZW5jZSAqdG1wLCAqKmZlbmNlczsNCi0Jc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXk7
DQotCXVuc2lnbmVkIGludCBjb3VudDsNCi0NCi0JaWYgKCFjaGFpbikNCi0JCXJldHVybiAwOw0K
LQ0KLQljb3VudCA9IDA7DQotCWRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaCh0bXAsICZjaGFpbi0+
YmFzZSkNCi0JCSsrY291bnQ7DQotDQotCWZlbmNlcyA9IGttYWxsb2NfYXJyYXkoY291bnQsIHNp
emVvZigqZmVuY2VzKSwgR0ZQX0tFUk5FTCk7DQotCWlmICghZmVuY2VzKQ0KLQkJcmV0dXJuIC1F
Tk9NRU07DQotDQotCWNvdW50ID0gMDsNCi0JZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoKHRtcCwg
JmNoYWluLT5iYXNlKQ0KLQkJZmVuY2VzW2NvdW50KytdID0gZG1hX2ZlbmNlX2dldCh0bXApOw0K
LQ0KLQlhcnJheSA9IGRtYV9mZW5jZV9hcnJheV9jcmVhdGUoY291bnQsIGZlbmNlcywNCi0JCQkJ
ICAgICAgIGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKDEpLA0KLQkJCQkgICAgICAgMSwgZmFsc2Up
Ow0KLQlpZiAoIWFycmF5KQ0KLQkJZ290byBmcmVlX2ZlbmNlczsNCi0NCi0JZG1hX2ZlbmNlX3B1
dCgqZik7DQotCSpmID0gJmFycmF5LT5iYXNlOw0KLQlyZXR1cm4gMDsNCi0NCi1mcmVlX2ZlbmNl
czoNCi0Jd2hpbGUgKGNvdW50LS0pDQotCQlkbWFfZmVuY2VfcHV0KGZlbmNlc1tjb3VudF0pOw0K
LQ0KLQlrZnJlZShmZW5jZXMpOw0KLQlyZXR1cm4gLUVOT01FTTsNCi19DQotDQogc3RhdGljIGlu
dCBkcm1fc3luY29ial90cmFuc2Zlcl90b190aW1lbGluZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVf
cHJpdmF0ZSwNCiAJCQkJCSAgICBzdHJ1Y3QgZHJtX3N5bmNvYmpfdHJhbnNmZXIgKmFyZ3MpDQog
ew0KIAlzdHJ1Y3QgZHJtX3N5bmNvYmogKnRpbWVsaW5lX3N5bmNvYmogPSBOVUxMOw0KKwlzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSwgKnRtcDsNCiAJc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hh
aW47DQotCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KIAlpbnQgcmV0Ow0KIA0KIAl0aW1lbGlu
ZV9zeW5jb2JqID0gZHJtX3N5bmNvYmpfZmluZChmaWxlX3ByaXZhdGUsIGFyZ3MtPmRzdF9oYW5k
bGUpOw0KQEAgLTkxMiwxMyArODY4LDE0IEBAIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpfdHJhbnNm
ZXJfdG9fdGltZWxpbmUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQogCX0NCiAJcmV0
ID0gZHJtX3N5bmNvYmpfZmluZF9mZW5jZShmaWxlX3ByaXZhdGUsIGFyZ3MtPnNyY19oYW5kbGUs
DQogCQkJCSAgICAgYXJncy0+c3JjX3BvaW50LCBhcmdzLT5mbGFncywNCi0JCQkJICAgICAmZmVu
Y2UpOw0KKwkJCQkgICAgICZ0bXApOw0KIAlpZiAocmV0KQ0KIAkJZ290byBlcnJfcHV0X3RpbWVs
aW5lOw0KIA0KLQlyZXQgPSBkcm1fc3luY29ial9mbGF0dGVuX2NoYWluKCZmZW5jZSk7DQotCWlm
IChyZXQpDQotCQlnb3RvIGVycl9mcmVlX2ZlbmNlOw0KKwlmZW5jZSA9IGRtYV9mZW5jZV91bndy
YXBfbWVyZ2UodG1wKTsNCisJZG1hX2ZlbmNlX3B1dCh0bXApOw0KKwlpZiAoIWZlbmNlKQ0KKwkJ
Z290byBlcnJfcHV0X3RpbWVsaW5lOw0KIA0KIAljaGFpbiA9IGRtYV9mZW5jZV9jaGFpbl9hbGxv
YygpOw0KIAlpZiAoIWNoYWluKSB7DQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
