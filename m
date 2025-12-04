Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 782AFCA4214
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 16:00:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 573EF3F9D5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 15:00:13 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id B79D23F690
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 14:59:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ftbMuZej;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477b1cc8fb4so7393435e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Dec 2025 06:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764860395; x=1765465195; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SQkEoJ9MFKVqqKXaYJBrPLqj/enkBTJ1LhHId5TSfKc=;
        b=ftbMuZej3amDSPTYblnHFpSHkbfJaX8DqnWqIAhx84d+2R3gEZSekb7d9/gDmT7XAH
         5740BHQxMlaZbZzSCcOPlNQm9MN0blnWQN3WnWBBedpe7gRNCuIP75Tqk1PEBXruaC1F
         P+HGXLwUmoK9ZK/3bHs4unpZ+pAo/06BflFdV2rtCjwtPOyQx8LXbOVsfCG2SLddwu9i
         9IWmYcIdZpSTKEcSBMW7HOj4y2AcCqY9fR3TcB9nE8y8mVMfV0O7Z0LkMd5yd3FCGsDs
         a+W3ToKeOfnsqQ0D+1nrbr5g1ERCdph6ou2VHCqd8NMov+rfYDtJBinWZdPKuCDIeuDL
         pZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764860395; x=1765465195;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SQkEoJ9MFKVqqKXaYJBrPLqj/enkBTJ1LhHId5TSfKc=;
        b=M/Esx3FCZnLdIxhjjlo8MwcifILhEF1UhJh0HegOsMg0mOZwXalSk6OZvibvRUbdn8
         cnRWcelLYaWWokZrGBFX3HfYOHJi8FLUmIEgJ71irtKUvnIv35+mlPja3jUr9ThwepQb
         1LTKqFpq/4B2VBnxaYPyxxnRvCaH7goQ4tvZ0zL0i9a3FMDSX11XBDwQZfkY5Za/GpQS
         skZk9CVdUaM8gQaKXAIcOsOaKQ2xNdPQ3r7EJ3f8uzNY4k+FNUWU4KdmK+KPrN8S1j9+
         k14Z7U9quDnFc2HAn4gIuLu3AhBv06cWm5/97lS74oTI3t7VRBwzyHtZ9MODIXRDkR0q
         KGqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVf05By3SN57tg/MW6pMhe58Df35DpORhui6wYvDMk9Mvcc8tNblFGzOb156cRGwvLBskDvCyzWpRusO42o@lists.linaro.org
X-Gm-Message-State: AOJu0Yy1X09NVSWpoQLdBzeKdHgV3qHYo/lUtMrNoEM6VNAYjjohJ7he
	irjh98WMESMefz0F3lqZXcLWm+ZJ18bAlfn8nopB+1FbGpvlAc5Lgveo
X-Gm-Gg: ASbGnct697kkVKVZhh46YlNbiPoiVYhXDGmqOof80o/Ie0IvXBNkqBTuLz9oZrnqaJO
	HCcQCS25UUT5rHRI9X7KD4P2EeSRp2GTWghvLAkDwjwHLmKIckNUxUBWYKKKsFN1GjmDSi5s+RD
	R0qhJeRT4vYVas7ooaPw5MuMf46EzXuLGaRm9krodH7cm4+O5AchMyt1mZBZRhFu5oSiAaZEAgv
	2pky7pdd+ObViCSlLt2+XL6I6qeVbRW8FfZbESGGez/YkPN3VWfdkFhEgf+2shjk3CvgXtuFrHj
	COW4gZ2182atmzp69JWx10gC0n5lgerRElXFnuogopxqoXx5X9UTmoFw6YPya3UqnMLF4VKPCfL
	HYjPbjXOl1t8dPxmurxsm7v1kAsi+IwdK26+27HZuXc3f1ThrtbgKcw5F8W8W9l/jd4hJfq19qN
	IINN25HiKm0g06X0kDDOVk1aA=
X-Google-Smtp-Source: AGHT+IFwu7JW/Xgfu086XVAKU85p92ZgvuSF9cmbHbDPgEySuByIW32VzQBsGlUWUivmDHHBV2Jk7A==
X-Received: by 2002:a05:6000:220b:b0:429:cbba:b246 with SMTP id ffacd0b85a97d-42f794b35a0mr3950582f8f.0.1764860394438;
        Thu, 04 Dec 2025 06:59:54 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1591:1600:c95:ff70:a9ae:a00c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331af5sm3473291f8f.31.2025.12.04.06.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 06:59:53 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	simona.vetter@ffwll.ch
Date: Thu,  4 Dec 2025 15:59:51 +0100
Message-ID: <20251204145952.7052-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.47:from];
	BLOCKLISTDE_FAIL(0.00)[2a00:e180:1591:1600:c95:ff70:a9ae:a00c:server fail];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B79D23F690
X-Spamd-Bar: ----
Message-ID-Hash: WWR5AFSB25UUAREDTFJKMUYY5RENL3F6
X-Message-ID-Hash: WWR5AFSB25UUAREDTFJKMUYY5RENL3F6
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf: improve sg_table debugging hack v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WWR5AFSB25UUAREDTFJKMUYY5RENL3F6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBkZWJ1Z2dpbmcgaGFjayBpcyBpbXBvcnRhbnQgdG8gZW5mb3JjZSB0aGUgcnVsZSB0aGF0
IGltcG9ydGVycw0Kc2hvdWxkICpuZXZlciogdG91Y2ggdGhlIHVuZGVybHlpbmcgc3RydWN0IHBh
Z2Ugb2YgdGhlIGV4cG9ydGVyLg0KDQpJbnN0ZWFkIG9mIGp1c3QgbWFuZ2xpbmcgdGhlIHBhZ2Ug
bGluayBjcmVhdGUgYSBjb3B5IG9mIHRoZSBzZ190YWJsZQ0KYnV0IG9ubHkgY29weSBvdmVyIHRo
ZSBETUEgYWRkcmVzc2VzIGFuZCBub3QgdGhlIHBhZ2VzLg0KDQpUaGlzIHdpbGwgY2F1c2UgYSBO
VUxMIHBvaW50ZXIgZGUtcmVmZXJlbmNlIGlmIHRoZSBpbXBvcnRlciB0cmllcyB0bw0KdG91Y2gg
dGhlIHN0cnVjdCBwYWdlLiBTdGlsbCBxdWl0ZSBhIGhhY2sgYnV0IHRoaXMgYXQgbGVhc3QgYWxs
b3dzIHRoZQ0KZXhwb3J0ZXIgdG8gcHJvcGVybHkga2VlcHMgaXQncyBzZ190YWJsZSBpbnRhY3Qg
d2hpbGUgYWxsb3dpbmcgdGhlDQpETUEtYnVmIG1haW50YWluZXIgdG8gZmluZCBhbmQgZml4IG1p
c2JlaGF2aW5nIGltcG9ydGVycyBhbmQgZmluYWxseQ0Kc3dpdGNoIG92ZXIgdG8gdXNpbmcgYSBk
aWZmZXJlbnQgZGF0YSBzdHJ1Y3R1cmUgaW4gdGhlIGZ1dHVyZS4NCg0KdjI6IGltcHJvdmUgdGhl
IGhhY2sgZnVydGhlciBieSB1c2luZyBhIHdyYXBwZXIgc3RydWN0dXJlIGFuZCBleHBsYWluaW5n
DQp0aGUgYmFja2dyb3VuZCBhIGJpdCBtb3JlIGluIHRoZSBjb21taXQgbWVzc2FnZS4NCg0KU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
UmV2aWV3ZWQtYnk6IE1pY2hhZWwgSi4gUnVobCA8bWljaGFlbC5qLnJ1aGxAaW50ZWwuY29tPiAo
djEpDQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgNzIgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDU4IGluc2VydGlvbnMo
KyksIDE0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDIzMDViYjJjYzFmMS4uOGM0
YWZkMzYwYjcyIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTM1LDYgKzM1LDEyIEBADQogDQogI2luY2x1
ZGUgImRtYS1idWYtc3lzZnMtc3RhdHMuaCINCiANCisvKiBXcmFwcGVyIHRvIGhpZGUgdGhlIHNn
X3RhYmxlIHBhZ2UgbGluayBmcm9tIHRoZSBpbXBvcnRlciAqLw0KK3N0cnVjdCBkbWFfYnVmX3Nn
X3RhYmxlX3dyYXBwZXIgew0KKwlzdHJ1Y3Qgc2dfdGFibGUgKm9yaWdpbmFsOw0KKwlzdHJ1Y3Qg
c2dfdGFibGUgd3JhcHBlcjsNCit9Ow0KKw0KIHN0YXRpYyBpbmxpbmUgaW50IGlzX2RtYV9idWZf
ZmlsZShzdHJ1Y3QgZmlsZSAqKTsNCiANCiBzdGF0aWMgREVGSU5FX01VVEVYKGRtYWJ1Zl9saXN0
X211dGV4KTsNCkBAIC04MjgsMjEgKzgzNCw1NyBAQCB2b2lkIGRtYV9idWZfcHV0KHN0cnVjdCBk
bWFfYnVmICpkbWFidWYpDQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfcHV0LCAi
RE1BX0JVRiIpOw0KIA0KLXN0YXRpYyB2b2lkIG1hbmdsZV9zZ190YWJsZShzdHJ1Y3Qgc2dfdGFi
bGUgKnNnX3RhYmxlKQ0KK3N0YXRpYyBpbnQgZG1hX2J1Zl9tYW5nbGVfc2dfdGFibGUoc3RydWN0
IHNnX3RhYmxlICoqc2dfdGFibGUpDQogew0KLSNpZmRlZiBDT05GSUdfRE1BQlVGX0RFQlVHDQot
CWludCBpOw0KLQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOw0KLQ0KLQkvKiBUbyBjYXRjaCBhYnVz
ZSBvZiB0aGUgdW5kZXJseWluZyBzdHJ1Y3QgcGFnZSBieSBpbXBvcnRlcnMgbWl4DQotCSAqIHVw
IHRoZSBiaXRzLCBidXQgdGFrZSBjYXJlIHRvIHByZXNlcnZlIHRoZSBsb3cgU0dfIGJpdHMgdG8N
Ci0JICogbm90IGNvcnJ1cHQgdGhlIHNndC4gVGhlIG1peGluZyBpcyB1bmRvbmUgb24gdW5tYXAN
Ci0JICogYmVmb3JlIHBhc3NpbmcgdGhlIHNndCBiYWNrIHRvIHRoZSBleHBvcnRlci4NCisJc3Ry
dWN0IHNjYXR0ZXJsaXN0ICp0b19zZywgKmZyb21fc2c7DQorCXN0cnVjdCBzZ190YWJsZSAqZnJv
bSA9ICpzZ190YWJsZTsNCisJc3RydWN0IGRtYV9idWZfc2dfdGFibGVfd3JhcHBlciAqdG87DQor
CWludCBpLCByZXQ7DQorDQorCWlmICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX0RFQlVHKSkN
CisJCXJldHVybiAwOw0KKw0KKwkvKg0KKwkgKiBUbyBjYXRjaCBhYnVzZSBvZiB0aGUgdW5kZXJs
eWluZyBzdHJ1Y3QgcGFnZSBieSBpbXBvcnRlcnMgY29weSB0aGUNCisJICogc2dfdGFibGUgd2l0
aG91dCBjb3B5aW5nIHRoZSBwYWdlX2xpbmsgYW5kIGdpdmUgb25seSB0aGUgY29weSBiYWNrIHRv
DQorCSAqIHRoZSBpbXBvcnRlci4NCiAJICovDQotCWZvcl9lYWNoX3NndGFibGVfc2coc2dfdGFi
bGUsIHNnLCBpKQ0KLQkJc2ctPnBhZ2VfbGluayBePSB+MHhmZlVMOw0KLSNlbmRpZg0KKwl0byA9
IGt6YWxsb2Moc2l6ZW9mKCp0byksIEdGUF9LRVJORUwpOw0KKwlpZiAoIXRvKQ0KKwkJcmV0dXJu
IC1FTk9NRU07DQorDQorCXJldCA9IHNnX2FsbG9jX3RhYmxlKCZ0by0+d3JhcHBlciwgZnJvbS0+
bmVudHMsIEdGUF9LRVJORUwpOw0KKwlpZiAocmV0KQ0KKwkJZ290byBmcmVlX3RvOw0KKw0KKwl0
b19zZyA9IHRvLT53cmFwcGVyLnNnbDsNCisJZm9yX2VhY2hfc2d0YWJsZV9kbWFfc2coZnJvbSwg
ZnJvbV9zZywgaSkgew0KKwkJc2dfc2V0X3BhZ2UodG9fc2csIE5VTEwsIDAsIDApOw0KKyAgICAg
ICAgICAgICAgICBzZ19kbWFfYWRkcmVzcyh0b19zZykgPSBzZ19kbWFfYWRkcmVzcyhmcm9tX3Nn
KTsNCisgICAgICAgICAgICAgICAgc2dfZG1hX2xlbih0b19zZykgPSBzZ19kbWFfbGVuKGZyb21f
c2cpOw0KKwkJdG9fc2cgPSBzZ19uZXh0KHRvX3NnKTsNCisJfQ0KIA0KKwl0by0+b3JpZ2luYWwg
PSBmcm9tOw0KKwkqc2dfdGFibGUgPSAmdG8tPndyYXBwZXI7DQorCXJldHVybiAwOw0KKw0KK2Zy
ZWVfdG86DQorCWtmcmVlKHRvKTsNCisJcmV0dXJuIHJldDsNCit9DQorDQorc3RhdGljIHZvaWQg
ZG1hX2J1Zl9kZW1hbmdsZV9zZ190YWJsZShzdHJ1Y3Qgc2dfdGFibGUgKipzZ190YWJsZSkNCit7
DQorCXN0cnVjdCBkbWFfYnVmX3NnX3RhYmxlX3dyYXBwZXIgKmNvcHk7DQorDQorCWlmICghSVNf
RU5BQkxFRChDT05GSUdfRE1BQlVGX0RFQlVHKSkNCisJCXJldHVybjsNCisNCisJY29weSA9IGNv
bnRhaW5lcl9vZigqc2dfdGFibGUsIHR5cGVvZigqY29weSksIHdyYXBwZXIpOw0KKwkqc2dfdGFi
bGUgPSBjb3B5LT5vcmlnaW5hbDsNCisJc2dfZnJlZV90YWJsZSgmY29weS0+d3JhcHBlcik7DQor
CWtmcmVlKGNvcHkpOw0KIH0NCiANCiBzdGF0aWMgaW5saW5lIGJvb2wNCkBAIC0xMTM5LDcgKzEx
ODEsOSBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KIAkJaWYgKHJldCA8IDApDQogCQkJZ290byBlcnJv
cl91bm1hcDsNCiAJfQ0KLQltYW5nbGVfc2dfdGFibGUoc2dfdGFibGUpOw0KKwlyZXQgPSBkbWFf
YnVmX21hbmdsZV9zZ190YWJsZSgmc2dfdGFibGUpOw0KKwlpZiAocmV0KQ0KKwkJZ290byBlcnJv
cl91bm1hcDsNCiANCiAJaWYgKElTX0VOQUJMRUQoQ09ORklHX0RNQV9BUElfREVCVUcpKSB7DQog
CQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOw0KQEAgLTEyMjAsNyArMTI2NCw3IEBAIHZvaWQgZG1h
X2J1Zl91bm1hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwN
CiANCiAJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KIA0KLQlt
YW5nbGVfc2dfdGFibGUoc2dfdGFibGUpOw0KKwlkbWFfYnVmX2RlbWFuZ2xlX3NnX3RhYmxlKCZz
Z190YWJsZSk7DQogCWF0dGFjaC0+ZG1hYnVmLT5vcHMtPnVubWFwX2RtYV9idWYoYXR0YWNoLCBz
Z190YWJsZSwgZGlyZWN0aW9uKTsNCiANCiAJaWYgKGRtYV9idWZfcGluX29uX21hcChhdHRhY2gp
KQ0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
