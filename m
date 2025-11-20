Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC70C74B72
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 16:01:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D22C3F98A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 15:01:17 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id 803A63F952
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 15:00:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=BR8vttm6;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-644fcafdce9so1487587a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 07:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763650823; x=1764255623; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TR/tq9rqcXsmUUX++Z4tC7vtqCs6KQO5/msjUdFZ3Jw=;
        b=BR8vttm6LdBTb1flePGX+bghV7lC33819Y1FOiPiFIcsWSvVDn/piq4QZl8nRdrrhi
         Hv0DvOPXKn8TDj//UD5UZdkah6WxwiUDWLxPq8Gn6jKddMqIZFabud5FaNdPU5njA7Jm
         w5u/ltkUmxuhtsV1jxR8VVo/dksQ663oibSoTzY1Mx9Brr9seLW/AoWtlgjG7Nhv/2Ug
         c0k53X/XFSmMmwxdseJXGn73Bp4xnhWnsHdM9CREBwTypc+6aGGIsSxtT47QRS2PzThk
         ZZACpYaisgBCQT0oOPqGn8zoVLU6X8smYCveSWXKfwRQUpOgebZbND2NSaqTOU9P10P6
         bJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763650823; x=1764255623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TR/tq9rqcXsmUUX++Z4tC7vtqCs6KQO5/msjUdFZ3Jw=;
        b=w9XI7n1BrWfcNBH+F/fTLk+TMqgl1MtBJ9ftf7F0+wO0FlPuJbW2JUCQCc36RM0yXe
         LpIBc5XjPcS2qhlBRA7WUcQYkOb9SHVeFTuAT5TMkX65NTJtuR976PBbO6Q9dQWkf3j3
         su9H+95TslzIFl+Mj4TTErS93icp5SYhubpfD+trJ9p2LFjT8Sv2z7TcY1Fu++yIlmab
         IV+BkrH70Y7JvgtPu0ejpM4IN45fHcNqQIYt7PfVwFOraelWuQ92KFCkNO09qzmm/MTx
         RzbcONRgagmyaZb4lofBbCNc/o2DFtX/63YN8h4PJkEmEUECn/EKaQK/p01nLlGkRK49
         /ADQ==
X-Gm-Message-State: AOJu0YygSO5R999woZAR70XjXt4C3+44DtBxznz0gDXukz2XEIKw2KJs
	vkmh6/ahpcRMZQUXO9KHGw1RYuQWudd6w2obUTnJa3aXr4FtIaJePfNL
X-Gm-Gg: ASbGncubv2m58Y9U8yqBsEbNHFESHDOgztzrK7KOYQPluXWaLBUPuaFM2DGkeU42OSe
	G67pAqhLGJr4PMN01t3cLhbaO+Jz1hrUdAmFEG0xlkMpS0lHuq2wB0OS534tY+8i+7kBwee2wh6
	w1EpP0VfiUjts7XqJrKVJrvxht8+D+CYczeC2do7NMRBuxqGyCqUKyD2ATYgEqsqnzKHTzitafx
	Ntee63nzcRK1MFCNr7l5kTSGcnbdvP4RGs6cqVYbgHpBDr+2jCJnZ4nCRuPM0xZn1hPYVY7JhgW
	VBE6jaYGXRkpzQzMjZ/MS/dkOcRBzuxIM3DE92f18t5bN/MCDeFp0iYu8TPob1gZbUrr48F9dBs
	aCqw3sMsz/1l68AQEKLx+uSjH9ofrZugOG68tGoALRreSqx8LtaC1EyDfauHperdzGErZ8+Neut
	b81fY/ScFnl7P6UhHb6nlCRKqw
X-Google-Smtp-Source: AGHT+IGuzNVpVHWhhWfLfTS2UWEMGrYSwJP3rK1+vj1kUJ1S/t2YyQMCeHfaZUx+JETxy9PwKqvPGg==
X-Received: by 2002:a05:6402:1ed5:b0:640:a356:e797 with SMTP id 4fb4d7f45d1cf-64536403e48mr3137102a12.13.1763650823291;
        Thu, 20 Nov 2025 07:00:23 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154c:c900:7aba:c4b7:a402:3cd2])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645f2easm2205878a12.33.2025.11.20.07.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:00:22 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	faith@gfxstrand.net,
	sumit.semwal@linaro.org
Date: Thu, 20 Nov 2025 15:41:08 +0100
Message-ID: <20251120150018.27385-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251120150018.27385-1-christian.koenig@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.50:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 803A63F952
X-Spamd-Bar: ----
Message-ID-Hash: 36KULJ2YTGBUNQ3ACVTSDZ3FR5UNOKDA
X-Message-ID-Hash: 36KULJ2YTGBUNQ3ACVTSDZ3FR5UNOKDA
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/4] dma-buf/sw-sync: always taint the kernel when sw-sync is used
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/36KULJ2YTGBUNQ3ACVTSDZ3FR5UNOKDA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIFNXLXN5bmMgZnVuY3Rpb25hbGl0eSBzaG91bGQgb25seSBiZSB1c2VkIGZvciB0ZXN0aW5n
IGFuZCBkZWJ1Z2dpbmcNCnNpbmNlIGl0IGlzIGluaGVyZW50bHkgdW5zYXZlLg0KDQpTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0N
CiBkcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIHwgNCArKysrDQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCmluZGV4IDNjMjBmMWQzMWNmNS4uNmYwOWQxM2Jl
NmI2IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KKysrIGIvZHJpdmVy
cy9kbWEtYnVmL3N3X3N5bmMuYw0KQEAgLTgsNiArOCw3IEBADQogI2luY2x1ZGUgPGxpbnV4L2Zp
bGUuaD4NCiAjaW5jbHVkZSA8bGludXgvZnMuaD4NCiAjaW5jbHVkZSA8bGludXgvdWFjY2Vzcy5o
Pg0KKyNpbmNsdWRlIDxsaW51eC9wYW5pYy5oPg0KICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQog
I2luY2x1ZGUgPGxpbnV4L3N5bmNfZmlsZS5oPg0KIA0KQEAgLTM0OSw2ICszNTAsOSBAQCBzdGF0
aWMgbG9uZyBzd19zeW5jX2lvY3RsX2NyZWF0ZV9mZW5jZShzdHJ1Y3Qgc3luY190aW1lbGluZSAq
b2JqLA0KIAlzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGU7DQogCXN0cnVjdCBzd19zeW5jX2Ny
ZWF0ZV9mZW5jZV9kYXRhIGRhdGE7DQogDQorCS8qIFNXIHN5bmMgZmVuY2UgYXJlIGluaGVyZW50
bHkgdW5zYWZlIGFuZCBjYW4gZGVhZGxvY2sgdGhlIGtlcm5lbCAqLw0KKwlhZGRfdGFpbnQoVEFJ
TlRfU09GVExPQ0tVUCwgTE9DS0RFUF9TVElMTF9PSyk7DQorDQogCWlmIChmZCA8IDApDQogCQly
ZXR1cm4gZmQ7DQogDQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
