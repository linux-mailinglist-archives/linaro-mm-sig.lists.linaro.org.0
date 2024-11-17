Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A217A9D04BC
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 17 Nov 2024 18:03:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7B9B3F575
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 17 Nov 2024 17:03:39 +0000 (UTC)
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	by lists.linaro.org (Postfix) with ESMTPS id CEBB13EBEA
	for <linaro-mm-sig@lists.linaro.org>; Sun, 17 Nov 2024 17:03:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Ol1P9gyj;
	spf=pass (lists.linaro.org: domain of 34iE6ZwkKDU8A03v8tzv8x55x2v.t532z4r85-33-9zx2z9A9.2z4r85.58x@flex--tjmercier.bounces.google.com designates 209.85.128.202 as permitted sender) smtp.mailfrom=34iE6ZwkKDU8A03v8tzv8x55x2v.t532z4r85-33-9zx2z9A9.2z4r85.58x@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6ea86f1df79so60743787b3.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 17 Nov 2024 09:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1731863010; x=1732467810; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ip5/1nZqGxhHDaB5wRv08h0uSCzJ6//9B4YB74TxInY=;
        b=Ol1P9gyjoHRc19h/gll+WbKSWWIjjxI7LB0aAoZGfTSq529E6UDyiuU+qE1XaeG579
         Kk979OQuotPqpfNd+sZGl4ITYriVck2UL/w3v4hvC5OLhQcNAHHHfusbseUu4dT5a6aP
         IS6rhvMhgV6DfXF3kS/hiwBeGEb3e0kE9QGbAXFaucfcwG2knluqvrLG71u8H41xJAOS
         6D1gAqQElsWhKnQADUm1XY6BuZepLmaAh1yPSkplc/Sct9fXRLiw48o1ihQ4AWAOPbxK
         NaiTH3TNAFaIoxAx+jctx9tBiZWrlwWHdieW4nxHKP8jNOwTAMJ9r2JPLe+bV2H4NfJc
         b7PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731863010; x=1732467810;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ip5/1nZqGxhHDaB5wRv08h0uSCzJ6//9B4YB74TxInY=;
        b=gT++dkbhFH1i0OGJTrvERYLn/zs55d+7R0mGPhsn3UGpPRlW5oqkO+UDsHN61+vIiH
         HEgvVqE1ys0MCT251zm0NjsMobz7y0SsKmVPCXQm/XE7PG2GLk1zXfKlm3lyAT6feu85
         erFqCYSC55PVGMARtqvPqOchRfbh8Gjfa9my8KbAo9iltLgpVN5bD7MYXJ2wWF5cNN+2
         V42eXZpnUUvODYhNCXsXzDpspbloWLVT7kCZf/kyBvdHm9Pysoo2/G29RmXPVy0IlilP
         yB2AEruGZYMPWjqLXWRvOVnoqi2DNrY28CLTrX8OkJ2iF0UXF52ckElbeLhIwooFP/fv
         qXJw==
X-Forwarded-Encrypted: i=1; AJvYcCVd+8waS0sO4paJPz5vUvdZCkIiJULfXzOHztLKxFQ+lugLq5p97svYzJ8+PJC9fX+JVcvVOEBCQrEOKtGJ@lists.linaro.org
X-Gm-Message-State: AOJu0YzkHAe73v+F0ZogYF3v/Vhu/rm8LGBJNI32pBUX1wd0UNVOnIGs
	Z23NTWaxIe855QGxOcqVNXSGV6nnfD1urryLW2qOj1tQQG3pqfbnS0ADZCOEgkCbHWfY+TpPmSA
	QNw9RUBzgT9Nd4g==
X-Google-Smtp-Source: AGHT+IG0Mg9dEvwB5HqwR/qPZEBllHTbHdRpgDouyxkiR2h6fNWlGlmde25AJXfVR0dvbM7cSC6zwR6YjRdqgDw=
X-Received: from tj.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:527])
 (user=tjmercier job=sendgmr) by 2002:a81:ad0a:0:b0:6e3:d670:f603 with SMTP id
 00721157ae682-6ee55c2f44fmr1527227b3.3.1731863010097; Sun, 17 Nov 2024
 09:03:30 -0800 (PST)
Date: Sun, 17 Nov 2024 17:03:25 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Message-ID: <20241117170326.1971113-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
	"=?UTF-8?q?Ma=C3=ADra=20Canal?=" <mcanal@igalia.com>
X-Rspamd-Queue-Id: CEBB13EBEA
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.128.202:from];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,34iE6ZwkKDU8A03v8tzv8x55x2v.t532z4r85-33-9zx2z9A9.2z4r85.58x@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,34iE6ZwkKDU8A03v8tzv8x55x2v.t532z4r85-33-9zx2z9A9.2z4r85.58x@flex--tjmercier.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.202:from];
	DNSWL_BLOCKED(0.00)[209.85.128.202:from];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: MCHP6LWT7WFDYLGQ4CAXD6GWYJJADYB6
X-Message-ID-Hash: MCHP6LWT7WFDYLGQ4CAXD6GWYJJADYB6
X-MailFrom: 34iE6ZwkKDU8A03v8tzv8x55x2v.t532z4r85-33-9zx2z9A9.2z4r85.58x@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Fix __dma_buf_debugfs_list_del argument for !CONFIG_DEBUG_FS
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MCHP6LWT7WFDYLGQ4CAXD6GWYJJADYB6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGFyZ3VtZW50cyBmb3IgX19kbWFfYnVmX2RlYnVnZnNfbGlzdF9kZWwgZG8gbm90IG1hdGNo
IGZvciBib3RoIHRoZQ0KQ09ORklHX0RFQlVHX0ZTIGNhc2UgYW5kIHRoZSAhQ09ORklHX0RFQlVH
X0ZTIGNhc2UuIFRoZSAhQ09ORklHX0RFQlVHX0ZTDQpjYXNlIHNob3VsZCB0YWtlIGEgc3RydWN0
IGRtYV9idWYgKiwgYnV0IGl0J3MgY3VycmVudGx5IHN0cnVjdCBmaWxlICouDQpUaGlzIGNhbiBs
ZWFkIHRvIHRoZSBidWlsZCBlcnJvcjoNCg0KZXJyb3I6IHBhc3NpbmcgYXJndW1lbnQgMSBvZiDi
gJhfX2RtYV9idWZfZGVidWdmc19saXN0X2RlbOKAmSBmcm9tDQppbmNvbXBhdGlibGUgcG9pbnRl
ciB0eXBlIFstV2Vycm9yPWluY29tcGF0aWJsZS1wb2ludGVyLXR5cGVzXQ0KDQpkbWEtYnVmLmM6
NjM6NTM6IG5vdGU6IGV4cGVjdGVkIOKAmHN0cnVjdCBmaWxlICrigJkgYnV0IGFyZ3VtZW50IGlz
IG9mDQp0eXBlIOKAmHN0cnVjdCBkbWFfYnVmICrigJkNCiAgIDYzIHwgc3RhdGljIHZvaWQgX19k
bWFfYnVmX2RlYnVnZnNfbGlzdF9kZWwoc3RydWN0IGZpbGUgKmZpbGUpDQoNCkZpeGVzOiBiZmM3
YmM1MzkzOTIgKCJkbWEtYnVmOiBEbyBub3QgYnVpbGQgZGVidWdmcyByZWxhdGVkIGNvZGUgd2hl
biAhQ09ORklHX0RFQlVHX0ZTIikNClNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2llciA8dGptZXJj
aWVyQGdvb2dsZS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMiArLQ0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMNCmluZGV4IDg4OTJiYzcwMWE2Ni4uYWZiOGMxYzUwMTA3IDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAg
LTYwLDcgKzYwLDcgQEAgc3RhdGljIHZvaWQgX19kbWFfYnVmX2RlYnVnZnNfbGlzdF9hZGQoc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZikNCiB7DQogfQ0KIA0KLXN0YXRpYyB2b2lkIF9fZG1hX2J1Zl9k
ZWJ1Z2ZzX2xpc3RfZGVsKHN0cnVjdCBmaWxlICpmaWxlKQ0KK3N0YXRpYyB2b2lkIF9fZG1hX2J1
Zl9kZWJ1Z2ZzX2xpc3RfZGVsKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQogew0KIH0NCiAjZW5k
aWYNCi0tIA0KMi40Ny4wLjMzOC5nNjBjY2ExNTgxOS1nb29nDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
