Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF369A25AB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Oct 2024 16:56:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F18B93F505
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Oct 2024 14:56:38 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id AB8313F4D5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Oct 2024 14:56:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PAJpTGu9;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-431548bd1b4so9470075e9.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Oct 2024 07:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729176983; x=1729781783; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=c6lgZ2s7gZvIQeVKB3cBzOcMl3XHl1CU+KIuW+CzuIA=;
        b=PAJpTGu9+8iBqkyjN7FXxN5bP9j6pXK/XXr5IKuWu0Z97T6+LA2i89YbsEvy+cLZPR
         IRk5H9RWda1esBw/ljYc+9dNws9tHVrwnnWr9PjD8bWDVSbhVGqUu6CZR4z0RRD4391d
         vdTyabpMeXxC2ysg57cmXC0U2dKhK5MkL2BAdnqMsYPRqc/IgOk5IbY1OTpzfvgo5fxy
         bKmfioyVlD0XxZOgS34Jf7DHLqr+e7sMDnJuTIgSqDbzcdIdlStukvkIIm8V7hwmmkIZ
         jr4TcDUB5HfAtg8AWvsyKygLZV9Yjz8HOr2a3niocBeIkkl3lzJbYhauap7Jw/JdNnXz
         dahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729176983; x=1729781783;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c6lgZ2s7gZvIQeVKB3cBzOcMl3XHl1CU+KIuW+CzuIA=;
        b=ZgfmxiLdXyU6Nads0JLlbQLXdEhImDrljRLQuYht1Hx6O1q7PxljgY/QBE8J0BpmQu
         tmb15Bv6w7drLcDU5hADwWjUZD3OoZ/HOgs6EjyzzsDJNkD4ogdc/yYATM2vN5dzxUxe
         N2FrtDkcTim4O2FVQZFd8zCS6JeDS2bKZnlsOaBlFJbx0OaJU/pYE2Qp8SmupEhtNPYx
         77Q4/IZu8jQFyfczP76lzEENgZz33rdXuqsi9L3kOsYDFZcwEVciX2umtkWTU2wkz4Al
         vdVJ8DASaNagldN6ONVTPk02QbFYtx9qj+0WIiIsakeVIi4VHCayNJ+ABNpKBhFmdmc0
         cSTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNHmRsEXXenO8Z+XwOedQKE3Iqkagh4OeEIB8zPxtlFgBDt20VfdLZn+9qBsxpc4ZzK8eiD2OOJxtgezQL@lists.linaro.org
X-Gm-Message-State: AOJu0YwLk/uLYap4eBzdY+zNjqy8uDy6jmaNNSmUWcXLeQ2z4V60EVEm
	/d7Hsh/nN9CppnNLh+wrWq1PIjxoFq9ciCQwsE7gA25pjFKlE8hI
X-Google-Smtp-Source: AGHT+IHpmJLXV8xpXHikQQwDgsMns3py4eeEyAuR4qodjetWJLTKwogwGJrPxlwEahxuEo9YZRu/CQ==
X-Received: by 2002:a05:600c:511a:b0:431:5aea:95f with SMTP id 5b1f17b1804b1-4315aea0c65mr20192865e9.16.1729176982326;
        Thu, 17 Oct 2024 07:56:22 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:15bb:6500:de04:97f8:9651:925b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43158c37f36sm28670365e9.7.2024.10.17.07.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 07:56:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: Richardqi.Liang@amd.com,
	sumit.semwal@linaro.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 17 Oct 2024 16:56:21 +0200
Message-Id: <20241017145621.3045-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AB8313F4D5
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.42:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
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
Message-ID-Hash: 22LBL7AQ3ODB7USO4WF53OGFXXED5BA4
X-Message-ID-Hash: 22LBL7AQ3ODB7USO4WF53OGFXXED5BA4
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/dma-fence_array: use kvzalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/22LBL7AQ3ODB7USO4WF53OGFXXED5BA4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmVwb3J0cyBpbmRpY2F0ZXMgdGhhdCBzb21lIHVzZXJzcGFjZSBhcHBsaWNhdGlvbnMgdHJ5IHRv
IG1lcmdlIG1vcmUgdGhhbg0KODBrIG9mIGZlbmNlcyBpbnRvIGEgc2luZ2xlIGRtYV9mZW5jZV9h
cnJheSBsZWFkaW5nIHRvIGEgd2FybmluZyBmcm9tDQpremFsbG9jKCkgdGhhdCB0aGUgcmVxdWVz
dGVkIHNpemUgYmVjb21lcyB0byBiaWcuDQoNCldoaWxlIHRoYXQgaXMgY2xlYXJseSBhbiB1c2Vy
c3BhY2UgYnVnIHdlIHNob3VsZCBwcm9iYWJseSBoYW5kbGUgdGhhdCBjYXNlDQpncmFjZWZ1bGx5
IGluIHRoZSBrZXJuZWwuDQoNClNvIHdlIGNhbiBlaXRoZXIgcmVqZWN0IHJlcXVlc3RzIHRvIG1l
cmdlIG1vcmUgdGhhbiBhIHJlYXNvbmFibGUgYW1vdW50IG9mDQpmZW5jZXMgKDY0ayBtYXliZT8p
IG9yIHdlIGNhbiBzdGFydCB0byB1c2Uga3Z6YWxsb2MoKSBpbnN0ZWFkIG9mIGt6YWxsb2MoKS4N
ClRoaXMgcGF0Y2ggaGVyZSBkb2VzIHRoZSBsYXRlci4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ0M6IHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmcNCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDYgKysr
LS0tDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCg0K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KaW5kZXggOGEwOGZmZGUzMWU3Li40NmFjNDJiY2Zh
YzAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCisrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KQEAgLTExOSw4ICsxMTksOCBAQCBz
dGF0aWMgdm9pZCBkbWFfZmVuY2VfYXJyYXlfcmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkNCiAJZm9yIChpID0gMDsgaSA8IGFycmF5LT5udW1fZmVuY2VzOyArK2kpDQogCQlkbWFfZmVu
Y2VfcHV0KGFycmF5LT5mZW5jZXNbaV0pOw0KIA0KLQlrZnJlZShhcnJheS0+ZmVuY2VzKTsNCi0J
ZG1hX2ZlbmNlX2ZyZWUoZmVuY2UpOw0KKwlrdmZyZWUoYXJyYXktPmZlbmNlcyk7DQorCWt2ZnJl
ZV9yY3UoZmVuY2UsIHJjdSk7DQogfQ0KIA0KIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9z
ZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQpAQCAtMTUzLDcgKzE1Myw3IEBA
IHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmRtYV9mZW5jZV9hcnJheV9hbGxvYyhpbnQgbnVtX2Zl
bmNlcykNCiB7DQogCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5Ow0KIA0KLQlyZXR1cm4g
a3phbGxvYyhzdHJ1Y3Rfc2l6ZShhcnJheSwgY2FsbGJhY2tzLCBudW1fZmVuY2VzKSwgR0ZQX0tF
Uk5FTCk7DQorCXJldHVybiBrdnphbGxvYyhzdHJ1Y3Rfc2l6ZShhcnJheSwgY2FsbGJhY2tzLCBu
dW1fZmVuY2VzKSwgR0ZQX0tFUk5FTCk7DQogfQ0KIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2Fy
cmF5X2FsbG9jKTsNCiANCi0tIA0KMi4zNC4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
