Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8F5CB5D24
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:25:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D7F63F9AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:25:31 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id A971D3F91F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=MEfTCYRQ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477aa218f20so278585e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455854; x=1766060654; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J8jXAWobBK8lmzqtWAfGt3fFqrY73+n7TmYwmeiH5sg=;
        b=MEfTCYRQh7ataFgfC/jnb6cBOqrL8bcjS+dJPpdlYJYmro8P+eFytg3N2KZ7RNATMv
         I4Q1iuA/a2Af45HjvmEGwWSPZCCCPPid23ujy2wkguLzfU5898Y9kxjxOBPgfi79dP8x
         ikeM8cSMviwZwVjNDIi9td4OGUOthOckg2Td9SB6jB5KzlDqcXGhvCkVGhbGWkLyEIax
         7Yp3mlH9hr6ff0DWNXJKSB6URxlPaHSBX6YUsPGorO2rKD7TVxoXXzK6K84R6AGGLsZ1
         JESAGXybN6LD5kb7YBeqZi1IrIEwN/VcDQg8sULyksU3onAXK8W2VLS/j/Q/K3HcDgvd
         QDFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455854; x=1766060654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J8jXAWobBK8lmzqtWAfGt3fFqrY73+n7TmYwmeiH5sg=;
        b=p8qP5IR3N4rRlU05TBW58aG8J6C5V4W9qUksXTVbBAxnkcSMz6LU9VaLiylXau/vee
         Hinvhah1TcqQNhuQa8n71TA5JXkzMvMaxediWHmWSHHCpyhkEFBpTdZdYgKOwTr58QKj
         MVXOTIgHNF3/nz6FM9wOllc2CzNUmme4Sr7vQhBEaPXQ2wOT+lw1zqfZxb5np7nhIN7A
         XZiC4Fdid0Yb045fnuHk1St+3vMPVShZPVRGIRkhJNdhgqaoCUPESWhuAUxqcBkhQpTF
         dqRTULVO1gUi/WUNXL9abUXooeOvvgpCQ0GkIWXO7v97cqITsX6XMZbH0K+oZV9fW0D6
         shXA==
X-Forwarded-Encrypted: i=1; AJvYcCVE4DnXVmY1tkg03PyS5ulOxJpCfeJn4S9QwkqlNUUWLXrcN17t73wWVumE5mWF1U72/nvA6NxB+g/9R+EI@lists.linaro.org
X-Gm-Message-State: AOJu0YxGl/yvo0M4j/p/13bzPLBFR97vLOdOIOw0CmRFFP/qCihDAajj
	0r3/g0/vGILJDjT9nDUrfIo4MA2Pbj19cB4D+sYvaJRE1ynkMGhTZDbE
X-Gm-Gg: AY/fxX5phQ3+0sAsKcprXn6qYYY79Sv3sX/QbEjjTOLi3LCLXUhIgc72tyj7oDylRGI
	D9k70j2YoytxKEpOYMLDfkwMiUvY7QLcXh5L5XjLTo0wtgniM/F2bq8SuAAP2cAmMAFuXBfpgeC
	VmYnYNBwpVAm2roY6qeEzz9makzlM9r7CrR5tCHwFtXxSfBXU69bNKrngv0Ak4qH5shSzKql6zK
	6WUXV7hC3feBzRQ5K5BLEvMpVcTm6QOh1LjwMMl5P2ALV1ytnaz5t0cQMBG5fxVKsU4b+6YnwtE
	lUFLY2uckTtcqlLV5Klcrh5kOHyQL2m2x70xQq5uak8YiLYClcVipnXHc6+nEX4NFXYkfci28W/
	2dfyOg1zmMXm+wnMOSBW9qHQNSyKhuGXgSF8Q3dERj9+ScBb5RMD6A7/ZdBoLxLf9EPZCdlAXWM
	iTbZ6ZIW6GHV4BFuPmukbiTGqD
X-Google-Smtp-Source: AGHT+IGanhxv+rE041hNFLEsidCULWlUDVkaof3bXZYKcx7EcSCAIfz0xo1NC2o1UUjT6LmSeA+v/A==
X-Received: by 2002:a05:600c:3e1a:b0:477:afc5:fb02 with SMTP id 5b1f17b1804b1-47a83790571mr60868735e9.21.1765455853623;
        Thu, 11 Dec 2025 04:24:13 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:13 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:35 +0100
Message-ID: <20251211122407.1709-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.49:server fail,2a00:e180:152a:9f00:dc26:feac:12f7:4088:query timed out];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A971D3F91F
X-Spamd-Bar: ---
Message-ID-Hash: 7C5RYNWWLRONRRBWUJQCEVGRV2EQGL2G
X-Message-ID-Hash: 7C5RYNWWLRONRRBWUJQCEVGRV2EQGL2G
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 04/19] dma-buf/selftests: drop the mock_wait implementation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7C5RYNWWLRONRRBWUJQCEVGRV2EQGL2G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWN0dWFsbHkgdGVzdCB0aGUgZG9jdW1lbnRlZCBleHBlY3RhdGlvbiBvZiBkbWFfZmVuY2Vfd2Fp
dCgpIGluc3RlYWQgb2YNCmNvbW1pbmcgdXAgd2l0aCBhIG1vY2tfd2FpdCBpbXBsZW1lbnRhdGlv
biB3aGljaCB1c2VzIHVuZG9jdW1lbnRlZA0KYW5kIG5vbiBzdGFuZGFyZCByZXR1cm4gY29kZXMg
YW5kIGJlaGF2aW9yLg0KDQpBZGRpdGlvbmFsIHRvIHRoYXQgaW5jcmVhc2UgdGhlIHRpbWVvdXQg
dG8gb25lIHNlY29uZCwgb3RoZXJ3aXNlIHRoZQ0KdGVzdCBjYXNlIGlzIGEgYml0IHVucmVsaWFi
bGUuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyB8IDUxICsrKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCA0NiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYw0KaW5kZXggNWNi
OGY5MGE3NDQ4Li41ZDBkOWFiYzZlMjEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvc3Qt
ZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYw0KQEAgLTMz
LDUwICszMyw5IEBAIHN0YXRpYyB2b2lkIG1vY2tfZmVuY2VfcmVsZWFzZShzdHJ1Y3QgZG1hX2Zl
bmNlICpmKQ0KIAlrbWVtX2NhY2hlX2ZyZWUoc2xhYl9mZW5jZXMsIHRvX21vY2tfZmVuY2UoZikp
Ow0KIH0NCiANCi1zdHJ1Y3Qgd2FpdF9jYiB7DQotCXN0cnVjdCBkbWFfZmVuY2VfY2IgY2I7DQot
CXN0cnVjdCB0YXNrX3N0cnVjdCAqdGFzazsNCi19Ow0KLQ0KLXN0YXRpYyB2b2lkIG1vY2tfd2Fr
ZXVwKHN0cnVjdCBkbWFfZmVuY2UgKmYsIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQ0KLXsNCi0J
d2FrZV91cF9wcm9jZXNzKGNvbnRhaW5lcl9vZihjYiwgc3RydWN0IHdhaXRfY2IsIGNiKS0+dGFz
ayk7DQotfQ0KLQ0KLXN0YXRpYyBsb25nIG1vY2tfd2FpdChzdHJ1Y3QgZG1hX2ZlbmNlICpmLCBi
b29sIGludHIsIGxvbmcgdGltZW91dCkNCi17DQotCWNvbnN0IGludCBzdGF0ZSA9IGludHIgPyBU
QVNLX0lOVEVSUlVQVElCTEUgOiBUQVNLX1VOSU5URVJSVVBUSUJMRTsNCi0Jc3RydWN0IHdhaXRf
Y2IgY2IgPSB7IC50YXNrID0gY3VycmVudCB9Ow0KLQ0KLQlpZiAoZG1hX2ZlbmNlX2FkZF9jYWxs
YmFjayhmLCAmY2IuY2IsIG1vY2tfd2FrZXVwKSkNCi0JCXJldHVybiB0aW1lb3V0Ow0KLQ0KLQl3
aGlsZSAodGltZW91dCkgew0KLQkJc2V0X2N1cnJlbnRfc3RhdGUoc3RhdGUpOw0KLQ0KLQkJaWYg
KHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmYtPmZsYWdzKSkNCi0JCQli
cmVhazsNCi0NCi0JCWlmIChzaWduYWxfcGVuZGluZ19zdGF0ZShzdGF0ZSwgY3VycmVudCkpDQot
CQkJYnJlYWs7DQotDQotCQl0aW1lb3V0ID0gc2NoZWR1bGVfdGltZW91dCh0aW1lb3V0KTsNCi0J
fQ0KLQlfX3NldF9jdXJyZW50X3N0YXRlKFRBU0tfUlVOTklORyk7DQotDQotCWlmICghZG1hX2Zl
bmNlX3JlbW92ZV9jYWxsYmFjayhmLCAmY2IuY2IpKQ0KLQkJcmV0dXJuIHRpbWVvdXQ7DQotDQot
CWlmIChzaWduYWxfcGVuZGluZ19zdGF0ZShzdGF0ZSwgY3VycmVudCkpDQotCQlyZXR1cm4gLUVS
RVNUQVJUU1lTOw0KLQ0KLQlyZXR1cm4gLUVUSU1FOw0KLX0NCi0NCiBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRtYV9mZW5jZV9vcHMgbW9ja19vcHMgPSB7DQogCS5nZXRfZHJpdmVyX25hbWUgPSBtb2Nr
X25hbWUsDQogCS5nZXRfdGltZWxpbmVfbmFtZSA9IG1vY2tfbmFtZSwNCi0JLndhaXQgPSBtb2Nr
X3dhaXQsDQogCS5yZWxlYXNlID0gbW9ja19mZW5jZV9yZWxlYXNlLA0KIH07DQogDQpAQCAtMzQ5
LDE0ICszMDgsMTQgQEAgc3RhdGljIGludCB0ZXN0X3dhaXQodm9pZCAqYXJnKQ0KIA0KIAlkbWFf
ZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyhmKTsNCiANCi0JaWYgKGRtYV9mZW5jZV93YWl0X3Rp
bWVvdXQoZiwgZmFsc2UsIDApICE9IC1FVElNRSkgew0KKwlpZiAoZG1hX2ZlbmNlX3dhaXRfdGlt
ZW91dChmLCBmYWxzZSwgMCkgIT0gMCkgew0KIAkJcHJfZXJyKCJXYWl0IHJlcG9ydGVkIGNvbXBs
ZXRlIGJlZm9yZSBiZWluZyBzaWduYWxlZFxuIik7DQogCQlnb3RvIGVycl9mcmVlOw0KIAl9DQog
DQogCWRtYV9mZW5jZV9zaWduYWwoZik7DQogDQotCWlmIChkbWFfZmVuY2Vfd2FpdF90aW1lb3V0
KGYsIGZhbHNlLCAwKSAhPSAwKSB7DQorCWlmIChkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGYsIGZh
bHNlLCAwKSAhPSAxKSB7DQogCQlwcl9lcnIoIldhaXQgcmVwb3J0ZWQgaW5jb21wbGV0ZSBhZnRl
ciBiZWluZyBzaWduYWxlZFxuIik7DQogCQlnb3RvIGVycl9mcmVlOw0KIAl9DQpAQCAtMzkzLDE2
ICszNTIsMTYgQEAgc3RhdGljIGludCB0ZXN0X3dhaXRfdGltZW91dCh2b2lkICphcmcpDQogDQog
CWRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKHd0LmYpOw0KIA0KLQlpZiAoZG1hX2ZlbmNl
X3dhaXRfdGltZW91dCh3dC5mLCBmYWxzZSwgMSkgIT0gLUVUSU1FKSB7DQorCWlmIChkbWFfZmVu
Y2Vfd2FpdF90aW1lb3V0KHd0LmYsIGZhbHNlLCAxKSAhPSAwKSB7DQogCQlwcl9lcnIoIldhaXQg
cmVwb3J0ZWQgY29tcGxldGUgYmVmb3JlIGJlaW5nIHNpZ25hbGVkXG4iKTsNCiAJCWdvdG8gZXJy
X2ZyZWU7DQogCX0NCiANCiAJbW9kX3RpbWVyKCZ3dC50aW1lciwgamlmZmllcyArIDEpOw0KIA0K
LQlpZiAoZG1hX2ZlbmNlX3dhaXRfdGltZW91dCh3dC5mLCBmYWxzZSwgMikgPT0gLUVUSU1FKSB7
DQorCWlmIChkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KHd0LmYsIGZhbHNlLCBIWikgPT0gMCkgew0K
IAkJaWYgKHRpbWVyX3BlbmRpbmcoJnd0LnRpbWVyKSkgew0KLQkJCXByX25vdGljZSgiVGltZXIg
ZGlkIG5vdCBmaXJlIHdpdGhpbiB0aGUgamlmZnkhXG4iKTsNCisJCQlwcl9ub3RpY2UoIlRpbWVy
IGRpZCBub3QgZmlyZSB3aXRoaW4gb25lIEhaIVxuIik7DQogCQkJZXJyID0gMDsgLyogbm90IG91
ciBmYXVsdCEgKi8NCiAJCX0gZWxzZSB7DQogCQkJcHJfZXJyKCJXYWl0IHJlcG9ydGVkIGluY29t
cGxldGUgYWZ0ZXIgdGltZW91dFxuIik7DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
