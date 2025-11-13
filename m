Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 177C3C58150
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:56:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 345E93F83F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:56:12 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id A1C543F839
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=GPi9jUQz;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b7260435287so126094966b.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045623; x=1763650423; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NKmnEQ/nUI33x0xsdd1mSPqaJsxAwU8yNUcMzUe1VSA=;
        b=GPi9jUQzm0IS73HmkmI/1vT4UFH3DoCDAm4x6ZtCNEU80XyvG8x0r+KLDT+bIRfnds
         iiGCT7tsnHxm2NXpOMIvFaK5sz58ql0MbKvEQWbZzGNGu4ER8RirUFtTZMAQIFfXsmXX
         TXdv3/Alj79om1U0R4vPPc2r57h18ngvWsJbsDa/ftAMf+yWjs3PHXQjd5lRS2fO/oxm
         8pk9CGo/qC4fjjVLR+xBDi5shN5nck3EC2c3Xp2KnbUDSl9sTP/FWgn/nEYPtAf4BhBw
         qSBs/fqZPD4HoWQzSipRvRynS9h8CSvqWo6eTgy+YgKydMHGxBYBQXe4CZKEh+ykDcmw
         uhxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045623; x=1763650423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NKmnEQ/nUI33x0xsdd1mSPqaJsxAwU8yNUcMzUe1VSA=;
        b=s+1rvxZbShO/FBJ7gMDoXnX0LX2htCP2QwGaWrfzNc4/4Iz8CPY8p7lFBy1+3iwGrl
         HEkDrAUxZ26i9zszLbvuILUEA7m9M+h2QBT2p3ASQFKEURIllGagHfm6YcXGWVs+DeVd
         Qlj2y0bB+uBDUZd8Tqm9GwzBxSOmyMrHla1jBuLgDIvyR1BNbkZk6oS1Gr0aCTA3Datp
         HWm1uYXSzu06w7MOK/kSWL99PzYF/eZ9R4S1M0lQmTsXeQCGhGfTkRHtdMhD66jsU/aG
         K0/yzVBvMOOMcNilp5KO/A8voRYMHAZxHctckZX+xLRp4YUsR7zxplXIKSzExYKq8KpH
         0N+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXJA08EjSm57DCJcuMrQ4b6jN0qkMG4Xdsu+LfpMoPohfyPjtLn/t8R6GSqRBYKrYGxrSx1ruFqXnOX4Dr2@lists.linaro.org
X-Gm-Message-State: AOJu0Yyc7kU7IwpG6PoXLa/sIm4sGPAA1n5fySlNgCg8WliqGos1zPPn
	3ZL9qXI/CKnbY5MtG4OE9OEnGfcf4U1p7hstl6NaQCBquZJ+CSY3P0fP
X-Gm-Gg: ASbGnctKrCNmXXskCbSRWRhRmk3qSHD4ElkaMVSzG4sP5qoO5gYcBUiq7i4D9eWaD33
	Ut33fly5edL+W1R53svr3GCIAPqaTjHXQptzPL74WH/f36gXEdJ3oJxAuA9cY+r61tW3mgPve/f
	SpF7ey6PfdCi3X6HCs5f5Z9PiilU8zsz4SDgkMwS89MDS8DeRv8RoekWIrOgyUF6mlb7atjyz31
	DLGWkIFBThDpiekKdGdCvV4AsD3lPJE133JmwreuXG3UU9ehxUCaTgnyKntVh4RZoBMi0SmXRPA
	VL/I4dTodVJwAngr7Q+LBSPyNgtlh9S2tm6UHL8yfUzFlbgzJXVAPCUa1/GR+2v1lr/UCyKu1EN
	8P51V3JWs9mhi/FA/AjCLFzlbZjy5hIkaYX8pQhNwKHSSPZ9HD94eqb8RHIwk7Pptt46EyksJQF
	uiaFA1XC0OLQg=
X-Google-Smtp-Source: AGHT+IGg++u+GaHI/MTXIjLOGncykPNSekn7i6/RimPgdNfxQMkJ6YRb52ePk8VS7b1+3/78EaXHzQ==
X-Received: by 2002:a17:907:7f8c:b0:b30:c9d5:3adc with SMTP id a640c23a62f3a-b7331aaad1cmr676555866b.49.1763045623545;
        Thu, 13 Nov 2025 06:53:43 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:43 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 15:51:48 +0100
Message-ID: <20251113145332.16805-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A1C543F839
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.42:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: BDVWGM226UTMRL4HUTHXVZSATWKOJMSG
X-Message-ID-Hash: BDVWGM226UTMRL4HUTHXVZSATWKOJMSG
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/18] drm/amdgpu: independence for the amdgpu_eviction_fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BDVWGM226UTMRL4HUTHXVZSATWKOJMSG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBzaG91bGQgYWxsb3cgYW1kZ3B1X2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRncHUgbW9k
dWxlLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGln
YWxpYS5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZXZpY3Rp
b25fZmVuY2UuYyB8IDMgKy0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2V2
aWN0aW9uX2ZlbmNlLmggfCAxIC0NCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAz
IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2V2aWN0aW9uX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZXZpY3Rpb25fZmVuY2UuYw0KaW5kZXggMjNkN2QwYjBkNjI1Li45NWVlMjJjNDNjZWIgMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZXZpY3Rpb25fZmVu
Y2UuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2V2aWN0aW9uX2Zl
bmNlLmMNCkBAIC0xNjcsOSArMTY3LDggQEAgYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlX2NyZWF0ZShz
dHJ1Y3QgYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlX21nciAqZXZmX21ncikNCiANCiAJZXZfZmVuY2Ut
PmV2Zl9tZ3IgPSBldmZfbWdyOw0KIAlnZXRfdGFza19jb21tKGV2X2ZlbmNlLT50aW1lbGluZV9u
YW1lLCBjdXJyZW50KTsNCi0Jc3Bpbl9sb2NrX2luaXQoJmV2X2ZlbmNlLT5sb2NrKTsNCiAJZG1h
X2ZlbmNlX2luaXQ2NCgmZXZfZmVuY2UtPmJhc2UsICZhbWRncHVfZXZpY3Rpb25fZmVuY2Vfb3Bz
LA0KLQkJCSAmZXZfZmVuY2UtPmxvY2ssIGV2Zl9tZ3ItPmV2X2ZlbmNlX2N0eCwNCisJCQkgTlVM
TCwgZXZmX21nci0+ZXZfZmVuY2VfY3R4LA0KIAkJCSBhdG9taWNfaW5jX3JldHVybigmZXZmX21n
ci0+ZXZfZmVuY2Vfc2VxKSk7DQogCXJldHVybiBldl9mZW5jZTsNCiB9DQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlLmggYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZXZpY3Rpb25fZmVuY2UuaA0KaW5kZXggZmNk
ODY3YjcxNDdkLi5mYjcwZWZiNTQzMzggMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZXZpY3Rpb25fZmVuY2UuaA0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlLmgNCkBAIC0yNyw3ICsyNyw2IEBADQogDQog
c3RydWN0IGFtZGdwdV9ldmljdGlvbl9mZW5jZSB7DQogCXN0cnVjdCBkbWFfZmVuY2UgYmFzZTsN
Ci0Jc3BpbmxvY2tfdAkgbG9jazsNCiAJY2hhcgkJIHRpbWVsaW5lX25hbWVbVEFTS19DT01NX0xF
Tl07DQogCXN0cnVjdCBhbWRncHVfZXZpY3Rpb25fZmVuY2VfbWdyICpldmZfbWdyOw0KIH07DQot
LSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
