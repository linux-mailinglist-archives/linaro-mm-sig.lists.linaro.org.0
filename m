Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1012C9AE535
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 14:42:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E51C44600
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 12:42:29 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id A561B40A8F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 12:42:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="ebSetC/y";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5c9552d02e6so1112462a12.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 05:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729773726; x=1730378526; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6lgZ2s7gZvIQeVKB3cBzOcMl3XHl1CU+KIuW+CzuIA=;
        b=ebSetC/yXsS6qKmjklTiTjgp1i5sTs58MqYN/BmJfiH/oBLzLsskMrWkkt7kOlQWzv
         I7OgavKVLRrWkhUOcyjLRIwoeerlrqZ3XMFpOTw770vWCsPbcsMLkoIOS3HjcPGWDVeI
         pgZ7d+8cwgrmhAX25BCWf/SszgK9sE1qsKPSUQKiAICuMZC5hk8h3iLoMX8QxYlGIwTI
         yceNkdNhI/8NU+W43CtWz5okj37pWFgg7X3dLQoaMuZI2toAxGEMzeHACq4ZtYQV5zbh
         NNkPdgPV8HmFIGB9prXHqpQ5ITIpiL43+GuvyW70vlUHI8j9EOdi4Z/I6Y2XH1HFggUR
         k2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729773726; x=1730378526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c6lgZ2s7gZvIQeVKB3cBzOcMl3XHl1CU+KIuW+CzuIA=;
        b=VTWwmvliB0oAhuZ0EJZMDKwN4LZwdXJJi19cX7RbxC/5ytyRU/eMXeMz2P/2K/jFJG
         NSkab4l5TPdRD/+XI69sgUggnirUpbvJcoZSeUF3Esgi8GwkkVB5m7hN042/mhHTAOb9
         HjFpII7C5/nvMWGsRwDzPtVIGFRuG679HI27dr3uUl9GKMd39n4tuSdFoL1VSHnfX6nl
         w5H4cb71Bg467XELi0WObiD6Lc/jeqBJ6wXNe66nJJZVssYGKLq8T4TX2mPBsUH5uEbL
         yF5kvidSwFFbA+F7CK0mBggWaXPN8NnNajkZAIXd02HcMEUH692adjrmu5Pv6NS3ck5p
         Z6TA==
X-Forwarded-Encrypted: i=1; AJvYcCWWzGwfNq7QGuFzK6CeLwZndI6Gl8YMqIEa8L3st0BiRYm+3GxVWVzb4RDTqlce3Gmbn/Iyce50wtIYTJG6@lists.linaro.org
X-Gm-Message-State: AOJu0Ywj1zEDJfujlhvMS3ePFUP9n4+7lMNcZC9nbZ5XI/FswEA9TaPB
	5ySqyzooPwpaQuWo3AAuJGW0zmRuP20zf8N9eK9KXaQ4pFvKTIUp
X-Google-Smtp-Source: AGHT+IEUBGWWQn+Dk6Xzmic0E/nCMs656ZBtST4vy2Vu3op4POs8oDMCCCvVt/vWJpaFM6t/9QMhog==
X-Received: by 2002:a05:6402:13c9:b0:5c9:709c:24ab with SMTP id 4fb4d7f45d1cf-5cba242831cmr1565779a12.6.1729773725326;
        Thu, 24 Oct 2024 05:42:05 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:1550:4200:da3c:7fbc:c60c:ca4b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cb66a65419sm5623026a12.25.2024.10.24.05.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 05:42:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: friedrich.vock@gmx.de,
	Richardqi.Liang@amd.com,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 24 Oct 2024 14:41:57 +0200
Message-Id: <20241024124159.4519-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241024124159.4519-1-christian.koenig@amd.com>
References: <20241024124159.4519-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.51:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.51:from];
	FREEMAIL_TO(0.00)[gmx.de,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A561B40A8F
X-Spamd-Bar: ----
Message-ID-Hash: S3M5NTFHUTI4EL2MO3LYBGUOKJJLWYHY
X-Message-ID-Hash: S3M5NTFHUTI4EL2MO3LYBGUOKJJLWYHY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/3] dma-buf/dma-fence_array: use kvzalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S3M5NTFHUTI4EL2MO3LYBGUOKJJLWYHY/>
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
