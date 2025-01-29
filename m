Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3BDA21B73
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jan 2025 11:58:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A83D3F5DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jan 2025 10:58:56 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id DB2DA3F50E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jan 2025 10:58:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Sc247pts;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4361f664af5so76075545e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jan 2025 02:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738148323; x=1738753123; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BCZc8xDP9pPSNxttm70iMigfL5th12FqcCo7IOA6V+Q=;
        b=Sc247ptssCiX39eKDVPGI6J4h6b3pheNFjQcu5fMYi0BiVLhp0kjpY2hXP95lX2kR+
         xudMRctTHycnRqk89Vacw3GRaToGe7qWgLtqzyvtBkZ+6ZAfn510Wcbhb+ju9eDH04v/
         B0Iau7oWQtP16/gm6bdbCW1sL2fiVBYmf/WaPAY9Zel6sTk1BO5AMLpUx+HbDi4FnkeK
         I8mlbtKzeXYtjPudtODC5hjm5SX/eFbSRHXJsfJAHDdoZvCfR6AJS/wiQwrZNJNlLt04
         YPi0nVIvasMs6vukOUnAdcj67n15UcoppSKwgmT5SBp2Ck3uGezii8qWQ4jtsK/kShGX
         FCKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738148323; x=1738753123;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BCZc8xDP9pPSNxttm70iMigfL5th12FqcCo7IOA6V+Q=;
        b=cyVaWBWN3paolbrQYtByLO6lXxnp63z+cXR0O3VXyiJb63Ew4JesYlA7pajz37VL89
         AbKI9GA82/DvRBPIrC47Bohrqy2QgKheXvEvEaItqhz+3tE8vg+cUwJcqdeCjy2PSKkC
         1t/WbqLlLGc0O0/xKCBqyXi8L3vVNN0ZtuN3foMam34YSJqsN8ujGC77Upd2tKQ9qJ2z
         amDYSiToFtx0InLnLduxe5rS8wHQgjsWg5d2jFsslewJWVRaqmNt8Pr3LDjSk/JX/pR2
         i3EcasRT4KK7Y0yKIy0WoZaqp6WZQKUFapzgbMmzWwoJjOISPQGfAFgWqedsfxHWbl6h
         3wRg==
X-Forwarded-Encrypted: i=1; AJvYcCV1wTUOCR8z0Q1VQa4PLL/47Ri0xpT/UE1q/dves4ZC53+ij3lKag7WlXyocf86WNzJE3DFcC+rT5BD+2cY@lists.linaro.org
X-Gm-Message-State: AOJu0YxdFOLnDiNGNI4XTfD7YpK8/nhwWyg9BUIhFG8Ba7681WdzURf1
	8GsyRts4GYtWdkudumMF3JDerje/TOozHaldw8uj67jX76m+wvoD
X-Gm-Gg: ASbGncuQU3ZnVlBRnHz1xuYiXwswPzZ/mJzO9dt7tjoxYYRFgkEl+EYS+I6AZny37ox
	sYIwWMSdp9RmLWqOO1RtxaUV056jmvgnWiZdnwyMt+rCLZqiSuOAcyDb9RIAXav8TMjBZLrKHYz
	zhDdwbuVBLMYKIx6ANuoycQMKZwF7Xa73Hy802A8JkkibH1g9wx0EqMhIOqE0YYoGYtGKwjkAje
	x6R0n3SEoi817Fm2bU0q7MRWa9MwRi4MhzpS0R/COE3Cs2vUZ0XUHjRcfX0L7V+z8iZBNTRYuqD
	Yzq4wiKWjy2A+JuwO3taDgpga5O2
X-Google-Smtp-Source: AGHT+IGgtaEqtH/cW/86/vQfGKpvANAEytRLXGcfmwRSAwJkb80m0MYMQgXmvACFtIwUpFret10jlQ==
X-Received: by 2002:a05:600c:1987:b0:434:fa61:fdfb with SMTP id 5b1f17b1804b1-438dc3ccaf8mr20504355e9.18.1738148322573;
        Wed, 29 Jan 2025 02:58:42 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:155e:6600:95fb:4b3a:6bf6:e1ae])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc27125sm18370265e9.15.2025.01.29.02.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 02:58:42 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: l.stach@pengutronix.de,
	marek.olsak@amd.com,
	sumit.semwal@linaro.org
Date: Wed, 29 Jan 2025 11:58:41 +0100
Message-Id: <20250129105841.1806-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DB2DA3F50E
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_3(2.50)[209.85.128.53:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17:c];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	RCPT_COUNT_FIVE(0.00)[6]
Message-ID-Hash: A7JT6QEV3JDALEJCUWOCIGDESTJ5SYTD
X-Message-ID-Hash: A7JT6QEV3JDALEJCUWOCIGDESTJ5SYTD
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix timeout handling in dma_resv_wait_timeout v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A7JT6QEV3JDALEJCUWOCIGDESTJ5SYTD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RXZlbiB0aGUga2VybmVsZG9jIHNheXMgdGhhdCB3aXRoIGEgemVybyB0aW1lb3V0IHRoZSBmdW5j
dGlvbiBzaG91bGQgbm90DQp3YWl0IGZvciBhbnl0aGluZywgYnV0IHN0aWxsIHJldHVybiAxIHRv
IGluZGljYXRlIHRoYXQgdGhlIGZlbmNlcyBhcmUNCnNpZ25hbGVkIG5vdy4NCg0KVW5mb3J0dW5h
dGVseSB0aGF0IGlzbid0IHdoYXQgd2FzIGltcGxlbWVudGVkLCBpbnN0ZWFkIG9mIG9ubHkgcmV0
dXJuaW5nDQoxIHdlIGFsc28gd2FpdGVkIGZvciBhdCBsZWFzdCBvbmUgamlmZmllcy4NCg0KRml4
IHRoYXQgYnkgYWRqdXN0aW5nIHRoZSBoYW5kbGluZyB0byB3aGF0IHRoZSBmdW5jdGlvbiBpcyBh
Y3R1YWxseQ0KZG9jdW1lbnRlZCB0byBkby4NCg0KdjI6IGltcHJvdmUgY29kZSByZWFkYWJpbGl0
eQ0KDQpSZXBvcnRlZC1ieTogTWFyZWsgT2zFocOhayA8bWFyZWsub2xzYWtAYW1kLmNvbT4NClJl
cG9ydGVkLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4NClNpZ25lZC1v
ZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiA8
c3RhYmxlQHZnZXIua2VybmVsLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
IHwgMTIgKysrKysrKy0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCmluZGV4IDVmOGQwMTA1MTZmMC4uYzc4Y2RhZTNk
ZWFmIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCisrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtNjg0LDExICs2ODQsMTMgQEAgbG9uZyBkbWFfcmVz
dl93YWl0X3RpbWVvdXQoc3RydWN0IGRtYV9yZXN2ICpvYmosIGVudW0gZG1hX3Jlc3ZfdXNhZ2Ug
dXNhZ2UsDQogCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB1c2FnZSk7DQogCWRt
YV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7DQogDQotCQly
ZXQgPSBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOw0KLQkJaWYgKHJl
dCA8PSAwKSB7DQotCQkJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7DQotCQkJcmV0dXJuIHJl
dDsNCi0JCX0NCisJCXJldCA9IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIGludHIsIHRp
bWVvdXQpOw0KKwkJaWYgKHJldCA8PSAwKQ0KKwkJCWJyZWFrOw0KKw0KKwkJLyogRXZlbiBmb3Ig
emVybyB0aW1lb3V0IHRoZSByZXR1cm4gdmFsdWUgaXMgMSAqLw0KKwkJaWYgKHRpbWVvdXQpDQor
CQkJdGltZW91dCA9IHJldDsNCiAJfQ0KIAlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsNCiAN
Ci0tIA0KMi4zNC4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
