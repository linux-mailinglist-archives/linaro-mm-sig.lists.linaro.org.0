Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2DE1EDFA7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 10:18:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12B786176E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 08:18:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0020E6189D; Thu,  4 Jun 2020 08:18:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EAD26179A;
	Thu,  4 Jun 2020 08:13:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1E63860CB2
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0CDB5616E2; Thu,  4 Jun 2020 08:12:46 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 03B2260CB2
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:42 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id g10so4293082wmh.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2020 01:12:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nP9MOB+NRJcIZvAbkEER1wMU4XBwsFVpcXFNKANe0X8=;
 b=Gq5sBCyEjOBJE0Cj7gt0lFWiuz4UkwTMv9EthHfYT3URLQA+FJKzHQ8Dt9u70ay9U6
 /Jg7tu/caxogE00UyUux3jQ+TN53m703pbr8TaQNapCmUz3qJv2OYV/Afs65K9W2VmhF
 ufE8pXEHHMub51kxrKrD6YLSN4FoAh1+4gPqVl5D/Z/a9YRWn9MOLQ1TED8ny0ZKvZx1
 ndmuHeDv2aTrPA0W/992tP5guVBl/MismqvUMzvZopz62I35hU2Il/0oLBeByygw2d5w
 ZNm2gDpo3BYb0Wd8bYFfA5BfJ+TGf3HXFJjLLvSwpkNycoqp/ZVFku19BHujwyj3AfkE
 KOgg==
X-Gm-Message-State: AOAM531JIY/krGps6/iOAF4GVOitsIrrptGkiQutSrqODFI2HwXFmBk3
 y1IfPUdeqFKwHfcZNV4EpQN+Mg==
X-Google-Smtp-Source: ABdhPJykIL9KNzrWb72K3NVL+V2g/6mdC3SH7CAQEoT09C7y7QbvAegOLkcv21ECmp0YTrkrfLSkzQ==
X-Received: by 2002:a1c:9e13:: with SMTP id h19mr2939010wme.107.1591258361040; 
 Thu, 04 Jun 2020 01:12:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:40 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:13 +0200
Message-Id: <20200604081224.863494-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 07/18] drm/atomic-helper: Add dma-fence
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
ZHJtX2F0b21pY19oZWxwZXIuYwppbmRleCA3Y2Q3ZmUwZDU3YjQuLmJmY2M3ODU3YTlhMSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMKQEAgLTE1NDksNiArMTU0OSw3IEBAIEVYUE9S
VF9TWU1CT0woZHJtX2F0b21pY19oZWxwZXJfd2FpdF9mb3JfZmxpcF9kb25lKTsKIHZvaWQgZHJt
X2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKm9sZF9z
dGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gb2xkX3N0YXRlLT5kZXY7CisJYm9v
bCBmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOwogCiAJZHJtX2F0
b21pY19oZWxwZXJfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoZGV2LCBvbGRfc3RhdGUpOwogCkBA
IC0xNTYwLDYgKzE1NjEsOCBAQCB2b2lkIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsKHN0
cnVjdCBkcm1fYXRvbWljX3N0YXRlICpvbGRfc3RhdGUpCiAKIAlkcm1fYXRvbWljX2hlbHBlcl9j
b21taXRfaHdfZG9uZShvbGRfc3RhdGUpOwogCisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZl
bmNlX2Nvb2tpZSk7CisKIAlkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl92YmxhbmtzKGRldiwg
b2xkX3N0YXRlKTsKIAogCWRybV9hdG9taWNfaGVscGVyX2NsZWFudXBfcGxhbmVzKGRldiwgb2xk
X3N0YXRlKTsKQEAgLTE1NzksNiArMTU4Miw3IEBAIEVYUE9SVF9TWU1CT0woZHJtX2F0b21pY19o
ZWxwZXJfY29tbWl0X3RhaWwpOwogdm9pZCBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfdGFpbF9y
cG0oc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKm9sZF9zdGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2ID0gb2xkX3N0YXRlLT5kZXY7CisJYm9vbCBmZW5jZV9jb29raWUgPSBkbWFfZmVu
Y2VfYmVnaW5fc2lnbmFsbGluZygpOwogCiAJZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X21vZGVz
ZXRfZGlzYWJsZXMoZGV2LCBvbGRfc3RhdGUpOwogCkBAIC0xNTkxLDYgKzE1OTUsOCBAQCB2b2lk
IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsX3JwbShzdHJ1Y3QgZHJtX2F0b21pY19zdGF0
ZSAqb2xkX3N0YXRlKQogCiAJZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUob2xkX3N0
YXRlKTsKIAorCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhmZW5jZV9jb29raWUpOworCiAJZHJt
X2F0b21pY19oZWxwZXJfd2FpdF9mb3JfdmJsYW5rcyhkZXYsIG9sZF9zdGF0ZSk7CiAKIAlkcm1f
YXRvbWljX2hlbHBlcl9jbGVhbnVwX3BsYW5lcyhkZXYsIG9sZF9zdGF0ZSk7CkBAIC0xNjA2LDYg
KzE2MTIsOSBAQCBzdGF0aWMgdm9pZCBjb21taXRfdGFpbChzdHJ1Y3QgZHJtX2F0b21pY19zdGF0
ZSAqb2xkX3N0YXRlKQogCWt0aW1lX3Qgc3RhcnQ7CiAJczY0IGNvbW1pdF90aW1lX21zOwogCXVu
c2lnbmVkIGludCBpLCBuZXdfc2VsZl9yZWZyZXNoX21hc2sgPSAwOworCWJvb2wgZmVuY2VfY29v
a2llOworCisJZmVuY2VfY29va2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKIAog
CWZ1bmNzID0gZGV2LT5tb2RlX2NvbmZpZy5oZWxwZXJfcHJpdmF0ZTsKIApAQCAtMTYzNCw2ICsx
NjQzLDggQEAgc3RhdGljIHZvaWQgY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUg
Km9sZF9zdGF0ZSkKIAkJaWYgKG5ld19jcnRjX3N0YXRlLT5zZWxmX3JlZnJlc2hfYWN0aXZlKQog
CQkJbmV3X3NlbGZfcmVmcmVzaF9tYXNrIHw9IEJJVChpKTsKIAorCWRtYV9mZW5jZV9lbmRfc2ln
bmFsbGluZyhmZW5jZV9jb29raWUpOworCiAJaWYgKGZ1bmNzICYmIGZ1bmNzLT5hdG9taWNfY29t
bWl0X3RhaWwpCiAJCWZ1bmNzLT5hdG9taWNfY29tbWl0X3RhaWwob2xkX3N0YXRlKTsKIAllbHNl
CkBAIC0xNzg5LDYgKzE4MDAsNyBAQCBpbnQgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCiAJCQkgICAgIGJvb2wgbm9uYmxvY2spCiB7CiAJaW50IHJldDsK
Kwlib29sIGZlbmNlX2Nvb2tpZTsKIAogCWlmIChzdGF0ZS0+YXN5bmNfdXBkYXRlKSB7CiAJCXJl
dCA9IGRybV9hdG9taWNfaGVscGVyX3ByZXBhcmVfcGxhbmVzKGRldiwgc3RhdGUpOwpAQCAtMTgx
MSw2ICsxODIzLDggQEAgaW50IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwlmZW5jZV9jb29raWUgPSBk
bWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOworCiAJaWYgKCFub25ibG9jaykgewogCQlyZXQg
PSBkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl9mZW5jZXMoZGV2LCBzdGF0ZSwgdHJ1ZSk7CiAJ
CWlmIChyZXQpCkBAIC0xODQ4LDYgKzE4NjIsNyBAQCBpbnQgZHJtX2F0b21pY19oZWxwZXJfY29t
bWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJICovCiAKIAlkcm1fYXRvbWljX3N0YXRlX2dl
dChzdGF0ZSk7CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJaWYg
KG5vbmJsb2NrKQogCQlxdWV1ZV93b3JrKHN5c3RlbV91bmJvdW5kX3dxLCAmc3RhdGUtPmNvbW1p
dF93b3JrKTsKIAllbHNlCkBAIC0xODU2LDYgKzE4NzEsNyBAQCBpbnQgZHJtX2F0b21pY19oZWxw
ZXJfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJcmV0dXJuIDA7CiAKIGVycjoKKwlk
bWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2llKTsKIAlkcm1fYXRvbWljX2hlbHBl
cl9jbGVhbnVwX3BsYW5lcyhkZXYsIHN0YXRlKTsKIAlyZXR1cm4gcmV0OwogfQotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
