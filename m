Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CFED1296E96
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 14:23:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03B23665FB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 12:23:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E8D9466635; Fri, 23 Oct 2020 12:23:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57CD7665BB;
	Fri, 23 Oct 2020 12:22:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BAB1665FE5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 12:22:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AC46266009; Fri, 23 Oct 2020 12:22:29 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 685C460FF8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 12:22:28 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a72so1224861wme.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 05:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l68XO7xQj33o6JWbWMWZkGONENy/DxFvUnFeVCTeGi8=;
 b=kFq56M3gwbvtrYLdqmC+yyp1MiX+kQBSls7+HnV6ilK8fRn2RgdyL8Z6G/iMxvOEVG
 0gtNXEIFARqJQlq85uLMxj/qGzRj7b3mpUCoK2v1KQ1PTIlfu1aaPIm5wObt1wE7hBqw
 mfJlL313wkSNSslS8RXoKfxH1fEJZchziYpEaawbEI52sijAcsDNHm6D1MVsYq8BA7yC
 u6E3kSXnc6B5q0fMGPTc/zKtf4HoNWZWxB6/ati74XMKAPUvziE1jn1Lp77kQE4z83UZ
 HF2ZWVeQT8HhkOFI4bA/+NLjceo4ij7IvF4pQJ3GJoFrilO2LZiYJKFIwCj9Thtt50vP
 muKA==
X-Gm-Message-State: AOAM531njq1HDOr8egSoN9wDUK86ng8DS3dsOaJ1KGRVZ1mKsuenGe9G
 Hh5icbhq8Si8ZELqzfdnDNoEdA==
X-Google-Smtp-Source: ABdhPJwPwU1hLA+MfVAzbSi/5oxo75UPCs85Tq0o08JbHiqr38YS1fGUKKAsWwR4dLGwDNigNva1dA==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr2049208wmi.84.1603455747583;
 Fri, 23 Oct 2020 05:22:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:26 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:16 +0200
Message-Id: <20201023122216.2373294-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 05/65] drm/atomic-helper: Add dma-fence
	annotations
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

VGhpcyBpcyBhIGJpdCBkaXNhcHBvaW50aW5nIHNpbmNlIHdlIG5lZWQgdG8gc3BsaXQgdGhlIGFu
bm90YXRpb25zCm92ZXIgYWxsIHRoZSBkaWZmZXJlbnQgcGFydHMuCgpJIHdhcyBjb25zaWRlcmlu
ZyBqdXN0IGxlYWtpbmcgdGhlIGNyaXRpY2FsIHNlY3Rpb24gaW50byB0aGUKLT5hdG9taWNfY29t
bWl0X3RhaWwgY2FsbGJhY2sgb2YgZWFjaCBkcml2ZXIuIEJ1dCB0aGF0IHdvdWxkIG1lYW4gd2UK
bmVlZCB0byBwYXNzIHRoZSBmZW5jZV9jb29raWUgaW50byBlYWNoIGRyaXZlciAodGhlcmUncyBh
IHRvdGFsIG9mIDEzCmltcGxlbWVudGF0aW9ucyBvZiB0aGlzIGhvb2sgcmlnaHQgbm93KSwgc28g
YmFkIGZsYWcgZGF5LiBBbmQgYWxzbyBhCmJpdCBsZWFreSBhYnN0cmFjdGlvbi4KCkhlbmNlIGp1
c3QgZG8gaXQgZnVuY3Rpb24tYnktZnVuY3Rpb24uCgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKQ2M6IGxpbnV4LXJkbWFA
dmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19oZWxwZXIuYyB8IDE2ICsrKysr
KysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2F0b21pY19oZWxwZXIuYwppbmRleCA1NDlhMzFlNjA0MmMuLjIzMDEzMjA5ZDRiZiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMKQEAgLTE1NjcsNiArMTU2Nyw3IEBAIEVYUE9S
VF9TWU1CT0woZHJtX2F0b21pY19oZWxwZXJfd2FpdF9mb3JfZmxpcF9kb25lKTsKIHZvaWQgZHJt
X2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKm9sZF9z
dGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gb2xkX3N0YXRlLT5kZXY7CisJYm9v
bCBmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOwogCiAJZHJtX2F0
b21pY19oZWxwZXJfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoZGV2LCBvbGRfc3RhdGUpOwogCkBA
IC0xNTc4LDYgKzE1NzksOCBAQCB2b2lkIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsKHN0
cnVjdCBkcm1fYXRvbWljX3N0YXRlICpvbGRfc3RhdGUpCiAKIAlkcm1fYXRvbWljX2hlbHBlcl9j
b21taXRfaHdfZG9uZShvbGRfc3RhdGUpOwogCisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZl
bmNlX2Nvb2tpZSk7CisKIAlkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl92YmxhbmtzKGRldiwg
b2xkX3N0YXRlKTsKIAogCWRybV9hdG9taWNfaGVscGVyX2NsZWFudXBfcGxhbmVzKGRldiwgb2xk
X3N0YXRlKTsKQEAgLTE1OTcsNiArMTYwMCw3IEBAIEVYUE9SVF9TWU1CT0woZHJtX2F0b21pY19o
ZWxwZXJfY29tbWl0X3RhaWwpOwogdm9pZCBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfdGFpbF9y
cG0oc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKm9sZF9zdGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2ID0gb2xkX3N0YXRlLT5kZXY7CisJYm9vbCBmZW5jZV9jb29raWUgPSBkbWFfZmVu
Y2VfYmVnaW5fc2lnbmFsbGluZygpOwogCiAJZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X21vZGVz
ZXRfZGlzYWJsZXMoZGV2LCBvbGRfc3RhdGUpOwogCkBAIC0xNjA5LDYgKzE2MTMsOCBAQCB2b2lk
IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsX3JwbShzdHJ1Y3QgZHJtX2F0b21pY19zdGF0
ZSAqb2xkX3N0YXRlKQogCiAJZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUob2xkX3N0
YXRlKTsKIAorCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhmZW5jZV9jb29raWUpOworCiAJZHJt
X2F0b21pY19oZWxwZXJfd2FpdF9mb3JfdmJsYW5rcyhkZXYsIG9sZF9zdGF0ZSk7CiAKIAlkcm1f
YXRvbWljX2hlbHBlcl9jbGVhbnVwX3BsYW5lcyhkZXYsIG9sZF9zdGF0ZSk7CkBAIC0xNjI0LDYg
KzE2MzAsOSBAQCBzdGF0aWMgdm9pZCBjb21taXRfdGFpbChzdHJ1Y3QgZHJtX2F0b21pY19zdGF0
ZSAqb2xkX3N0YXRlKQogCWt0aW1lX3Qgc3RhcnQ7CiAJczY0IGNvbW1pdF90aW1lX21zOwogCXVu
c2lnbmVkIGludCBpLCBuZXdfc2VsZl9yZWZyZXNoX21hc2sgPSAwOworCWJvb2wgZmVuY2VfY29v
a2llOworCisJZmVuY2VfY29va2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKIAog
CWZ1bmNzID0gZGV2LT5tb2RlX2NvbmZpZy5oZWxwZXJfcHJpdmF0ZTsKIApAQCAtMTY1Miw2ICsx
NjYxLDggQEAgc3RhdGljIHZvaWQgY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUg
Km9sZF9zdGF0ZSkKIAkJaWYgKG5ld19jcnRjX3N0YXRlLT5zZWxmX3JlZnJlc2hfYWN0aXZlKQog
CQkJbmV3X3NlbGZfcmVmcmVzaF9tYXNrIHw9IEJJVChpKTsKIAorCWRtYV9mZW5jZV9lbmRfc2ln
bmFsbGluZyhmZW5jZV9jb29raWUpOworCiAJaWYgKGZ1bmNzICYmIGZ1bmNzLT5hdG9taWNfY29t
bWl0X3RhaWwpCiAJCWZ1bmNzLT5hdG9taWNfY29tbWl0X3RhaWwob2xkX3N0YXRlKTsKIAllbHNl
CkBAIC0xODEwLDYgKzE4MjEsNyBAQCBpbnQgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCiAJCQkgICAgIGJvb2wgbm9uYmxvY2spCiB7CiAJaW50IHJldDsK
Kwlib29sIGZlbmNlX2Nvb2tpZTsKIAogCWlmIChzdGF0ZS0+YXN5bmNfdXBkYXRlKSB7CiAJCXJl
dCA9IGRybV9hdG9taWNfaGVscGVyX3ByZXBhcmVfcGxhbmVzKGRldiwgc3RhdGUpOwpAQCAtMTgz
Miw2ICsxODQ0LDggQEAgaW50IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwlmZW5jZV9jb29raWUgPSBk
bWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOworCiAJaWYgKCFub25ibG9jaykgewogCQlyZXQg
PSBkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl9mZW5jZXMoZGV2LCBzdGF0ZSwgdHJ1ZSk7CiAJ
CWlmIChyZXQpCkBAIC0xODY5LDYgKzE4ODMsNyBAQCBpbnQgZHJtX2F0b21pY19oZWxwZXJfY29t
bWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJICovCiAKIAlkcm1fYXRvbWljX3N0YXRlX2dl
dChzdGF0ZSk7CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJaWYg
KG5vbmJsb2NrKQogCQlxdWV1ZV93b3JrKHN5c3RlbV91bmJvdW5kX3dxLCAmc3RhdGUtPmNvbW1p
dF93b3JrKTsKIAllbHNlCkBAIC0xODc3LDYgKzE4OTIsNyBAQCBpbnQgZHJtX2F0b21pY19oZWxw
ZXJfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJcmV0dXJuIDA7CiAKIGVycjoKKwlk
bWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2llKTsKIAlkcm1fYXRvbWljX2hlbHBl
cl9jbGVhbnVwX3BsYW5lcyhkZXYsIHN0YXRlKTsKIAlyZXR1cm4gcmV0OwogfQotLSAKMi4yOC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
