Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D5DBBE36E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Oct 2025 15:47:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90411456B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Oct 2025 13:47:18 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id EDB0644472
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Oct 2025 13:47:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=K5Mp4Px4;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-46b303f7469so31692315e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Oct 2025 06:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759758435; x=1760363235; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ykaAfDA6fK+gQoVD6r/9heA6ErlZ1qqQhHNz6PenFtM=;
        b=K5Mp4Px4BMAxhSrp1+wl4VWd4gpvTvpGwV5duUBHWeFgkPIzslJdWyCYVqAcYKt2Qe
         l0AWYHxYD+7BxqVaiBdxL5U56fxEqSf9fYOQ7lHZ2kLe6PfPvOWUy22lUsCSURM5mTwP
         PIhONstz05SlWBeYWCaPk5TCofqj+pYbRH+qk0a9TMnabEP2jvA4Kut1ih180oUAaSoT
         QXrLx8mb9SVk3sd+KPSTsMxeQgbVXPuYC/gASKOJmC93mW1CX174yTJqvNgen4LPDR07
         E37FnOT9nYK0AwaYVzbn32c5kbQJkfmpOH1HzWon36wyhkrL+74EARJE9xMA/ITlli/4
         wwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758435; x=1760363235;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ykaAfDA6fK+gQoVD6r/9heA6ErlZ1qqQhHNz6PenFtM=;
        b=CUMdqDCNJ6pIdPMe9t8ephz8R0qCUZW/7O9uix89ayx4gsQLzQq0b2Rly9/3SVEBfZ
         qnizy4pXkcDuavN66hc4PU2fI2xsSadsPS0BtGQBZif9FA0qE0AO3V73xkO0E28npevq
         simB25a6Ou7sUXCVsaeW5EdZp/0dth9qjDIXNNFIMdfqxrs7mH+3IaSgXc1eUFCm7Xb+
         uvYHaeKyN3D0DXgigpWVEKpCzNWUp/2JSbQLT1d7O0nJNyH3m07ocQjaaE5NupfkO3ng
         PTMxTF/mmrSBdmc0a2z5PfylfVYxcGX7fJGYVw5ReqTWKxHbsms5aUYPcuxkETD3RXn5
         93gA==
X-Forwarded-Encrypted: i=1; AJvYcCWfBLtnkMp2f8vnHKtvU2xr5Vz0Sqv5AgSSD5PPSdiRmXNxlNaS28sF98vV0qJ9TXUYZRKz6stpGkLihTwx@lists.linaro.org
X-Gm-Message-State: AOJu0YymJIFgNgqxofi++C2gVOiwQ9yYVGB0WIG0XbIlgLcqvnSflmqr
	BpTgUCqN/dYHKKSYfOFOoacOavwWukPaodpy7D69iOCEx11zXU9kn/mW
X-Gm-Gg: ASbGnctlmc3dsFm47ogVHPe0ca3YBknX2RoBZvycUnziNfKUq1jW+7QeQi4KqGGu2LE
	zCNgh568RXPnEMQluZ72ox4Eyn1MK2h5XP7+q2R68HiHDsKK3BeYdLUN85/fMKAL5Lhjh2B5vdC
	BTelXKEymrF7Ae1+9GWYMKi5KOFbtq940ivUzGu3Cnlx0k8Kb89d7K89mpDKKU1wdhEsyZgSVm0
	KMqU/kSenH83xsFLk2oIhZTpJ7V7d4hEn9jW0UidSJoOnFitgr2d+uBJ2NXJM0cM2PnSQf4WIFw
	kfJpIQORAOZxpJ3d44xG6iQBcxsiHiwwG9RQdW/0n8+0VInkfOfOkZgNgz/Pb9oQ0ChVAXfde8C
	W9mZwAwN/GLoOodxH82NWsiKfhTZHee9efeYrKfoRDzx1p+Z4agCpWvEemsM=
X-Google-Smtp-Source: AGHT+IGt/TaymBas0Wox5VXpeJZMwWsZOYyvYRRK6eQW+9dxtYpqDSvK0Ox0qUxnYoZRr2+FbONLPQ==
X-Received: by 2002:a05:6000:2204:b0:408:5363:8266 with SMTP id ffacd0b85a97d-425671b07c1mr8352403f8f.44.1759758434680;
        Mon, 06 Oct 2025 06:47:14 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:1585:c600:2084:c9fe:598c:ebd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8b0068sm20966125f8f.26.2025.10.06.06.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 06:47:14 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	simona.vetter@ffwll.ch
Date: Mon,  6 Oct 2025 15:47:12 +0200
Message-ID: <20251006134713.1846-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: EDB0644472
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HZDQ7SFOG4722BISB6BEEA34B7QESM2O
X-Message-ID-Hash: HZDQ7SFOG4722BISB6BEEA34B7QESM2O
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf: replace "#if" with just "if"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HZDQ7SFOG4722BISB6BEEA34B7QESM2O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Tm8gbmVlZCB0byBjb25kaXRpb25hbCBjb21waWxlIHRoYXQgY29kZSwgbGV0IHRoZSBjb21waWxl
cnMgZGVhZCBjb2RlDQplbGltaW5hdGlvbiBoYW5kbGUgaXQgaW5zdGVhZC4NCg0KU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQog
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDUgKystLS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDJiY2Y5Y2Vj
YTk5Ny4uMjMwNWJiMmNjMWYxIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Yw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTExNDEsOCArMTE0MSw3IEBA
IHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1Zl9tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gsDQogCX0NCiAJbWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsNCiAN
Ci0jaWZkZWYgQ09ORklHX0RNQV9BUElfREVCVUcNCi0Jew0KKwlpZiAoSVNfRU5BQkxFRChDT05G
SUdfRE1BX0FQSV9ERUJVRykpIHsNCiAJCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7DQogCQl1NjQg
YWRkcjsNCiAJCWludCBsZW47DQpAQCAtMTE1NCwxMCArMTE1MywxMCBAQCBzdHJ1Y3Qgc2dfdGFi
bGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoLA0KIAkJCWlmICghUEFHRV9BTElHTkVEKGFkZHIpIHx8ICFQQUdFX0FMSUdORUQobGVuKSkg
ew0KIAkJCQlwcl9kZWJ1ZygiJXM6IGFkZHIgJWxseCBvciBsZW4gJXggaXMgbm90IHBhZ2UgYWxp
Z25lZCFcbiIsDQogCQkJCQkgX19mdW5jX18sIGFkZHIsIGxlbik7DQorCQkJCWJyZWFrOw0KIAkJ
CX0NCiAJCX0NCiAJfQ0KLSNlbmRpZiAvKiBDT05GSUdfRE1BX0FQSV9ERUJVRyAqLw0KIAlyZXR1
cm4gc2dfdGFibGU7DQogDQogZXJyb3JfdW5tYXA6DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
