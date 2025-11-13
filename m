Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AECC58153
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:56:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A33353F88A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:56:23 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id 657A23F840
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=a9cD5ozJ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b7359b03878so80941866b.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045624; x=1763650424; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xwyu8SCiFn4mAgJ3pD0lgYvgHMUO+OEdoQazcZIs6fA=;
        b=a9cD5ozJXodrRu53c/OgtohXlH/OekFmWen/eNj1WZh5pCSgOtAF3xbuVLAUuu0rxC
         JXuGz9GC/6hmDwvn0KO7y0Vsj3viTcYz7kzmL58+cVZcnYt2fytA87xSI0qpZ3bJNKZS
         JMk4FyLtzle2pSuhBIbUKV5nVs6DcJkgPZNoP/k6rMBU8CIO8GA65cyjll0vAgVsKxfB
         hCzyf7YgzWK62Hxwicf4YeMIfHIDLxjVzh/mQ1NWIOsonelUTOtJKPaWf9xIR3ZhBk34
         kouxQjUv18EzI8YvtRK9htfKAhHHVZ+aaN08YMPflmcYvQJXnXC+PAoXWREHWZOJVh87
         EgbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045624; x=1763650424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xwyu8SCiFn4mAgJ3pD0lgYvgHMUO+OEdoQazcZIs6fA=;
        b=bawB9+IzEQYKMV5CASy0Fx0j78Vp91bgop1C0SVWkXTnMImwao+yhKNFRPyOzBLw1l
         QGayUg1/pizQlMF12unqEK9lzcS+1Yg5rc0cWYyWKHdtNinLp+MoEm8Bu+wDPuNPCFl3
         lTMuyR+gWlA9xdEZhnrUohDyO+qnVos+acj/QgiizL5FRJt0wEpPLiGHS97KI1q48tpB
         5m7PkABLlkb5JCTJn7q66NgTPuVU0w8WVTxfcCELZIxcN0V98Rzbd9ItN8tlOknuYaAR
         UH8DrrWy4Epw0LCdQHCrB74scl1Nq5DXw6rWm0C+OVJUvbiw4zLHTpEYKo6Q5cghZffB
         hmnA==
X-Forwarded-Encrypted: i=1; AJvYcCVgntVG38EvgYXWGyJVvdjrOSTsC/jbbg/e+2hDtYMm05/XUS8JhPi4lsd9OrAp6bngKZd7a9Vl7vx0QGtv@lists.linaro.org
X-Gm-Message-State: AOJu0YzRXsaRXqHRWCVtFptX4NVCQ1GNLRhI3pXQ8x145bbO6NAv1au9
	xs0/9svwGPfcPqLJTchy+1MgU+s7BSN/wsX3KhtbU8CE9Z11vtJ+w/VXU+h0sA==
X-Gm-Gg: ASbGncsGZ2RdJMuZsaNSVHtRpBIYr4qe7QBIZNT3uipVa4Qyc4FDDgwwXgHs3gc53tg
	KiVX626si6DTls5i7LwkrfWqy8SflzquEQ0PF1E2AxONnoXJlLlMnoiPJX7dl3VRw8jE9ohcAXh
	OFdXdte/peE7IYebMQT6uM8ph/sEahxT87Ngbn7lD9vgYIEiitOehLwBHLYN4d96IZvcDkRiEZ/
	i/uvOCQfHrAgTckLbw4WsgPFSjTLKLFrX9EzYyLuyuoNAlVsmwPmWWkmKJDMeNqzeCjQYUaJYX0
	nU9Rx9OWt2vFPC6ASptq+XygmHIwpo+XHX1+q9ILXbqrqZm3ZTM/aWwRahbdK/IJoVc5lH4+QMZ
	wnvhYk9HdFpqmqIWYhvuBaYhccEeWVMdKfL1I1L1yQmdExBeO3cHWZv7SWWHGFgqKC9RtcUZBiR
	L77SjrcUgZ8iQ=
X-Google-Smtp-Source: AGHT+IEw4YS4smpt6WicO5Q6hlDrx5fmWS4sNTZNppd+ozXro9T4f2MOiNnNLcV7TyOpypzG5Un2eg==
X-Received: by 2002:a17:907:2d14:b0:b04:48b5:6ea5 with SMTP id a640c23a62f3a-b734816d1fcmr419558266b.17.1763045624277;
        Thu, 13 Nov 2025 06:53:44 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.43
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
Date: Thu, 13 Nov 2025 15:51:49 +0100
Message-ID: <20251113145332.16805-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 657A23F840
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
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
Message-ID-Hash: B7PKWE2PRBRPWPR3IB6PGOM5MNGK6TTV
X-Message-ID-Hash: B7PKWE2PRBRPWPR3IB6PGOM5MNGK6TTV
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 12/18] drm/amdgpu: independence for the amdgpu_vm_tlb_fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B7PKWE2PRBRPWPR3IB6PGOM5MNGK6TTV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBzaG91bGQgYWxsb3cgYW1kZ3B1X3ZtX3RsYl9mZW5jZXMgdG8gb3V0bGl2ZSB0aGUgYW1k
Z3B1IG1vZHVsZS4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpZ2FsaWEuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3ZtX3RsYl9mZW5jZS5jIHwgNCArLS0tDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAzIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3ZtX3RsYl9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3ZtX3RsYl9mZW5jZS5jDQppbmRleCA1ZDI2Nzk3MzU2YTMuLjI3YmYxZjU2OTgzMCAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bV90bGJfZmVuY2Uu
Yw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3RsYl9mZW5jZS5j
DQpAQCAtMzMsNyArMzMsNiBAQCBzdHJ1Y3QgYW1kZ3B1X3RsYl9mZW5jZSB7DQogCXN0cnVjdCBh
bWRncHVfZGV2aWNlCSphZGV2Ow0KIAlzdHJ1Y3QgZG1hX2ZlbmNlCSpkZXBlbmRlbmN5Ow0KIAlz
dHJ1Y3Qgd29ya19zdHJ1Y3QJd29yazsNCi0Jc3BpbmxvY2tfdAkJbG9jazsNCiAJdWludDE2X3QJ
CXBhc2lkOw0KIA0KIH07DQpAQCAtOTgsOSArOTcsOCBAQCB2b2lkIGFtZGdwdV92bV90bGJfZmVu
Y2VfY3JlYXRlKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCBzdHJ1Y3QgYW1kZ3B1X3ZtICp2
bQ0KIAlmLT5kZXBlbmRlbmN5ID0gKmZlbmNlOw0KIAlmLT5wYXNpZCA9IHZtLT5wYXNpZDsNCiAJ
SU5JVF9XT1JLKCZmLT53b3JrLCBhbWRncHVfdGxiX2ZlbmNlX3dvcmspOw0KLQlzcGluX2xvY2tf
aW5pdCgmZi0+bG9jayk7DQogDQotCWRtYV9mZW5jZV9pbml0NjQoJmYtPmJhc2UsICZhbWRncHVf
dGxiX2ZlbmNlX29wcywgJmYtPmxvY2ssDQorCWRtYV9mZW5jZV9pbml0NjQoJmYtPmJhc2UsICZh
bWRncHVfdGxiX2ZlbmNlX29wcywgTlVMTCwNCiAJCQkgdm0tPnRsYl9mZW5jZV9jb250ZXh0LCBh
dG9taWM2NF9yZWFkKCZ2bS0+dGxiX3NlcSkpOw0KIA0KIAkvKiBUT0RPOiBXZSBwcm9iYWJseSBu
ZWVkIGEgc2VwYXJhdGUgd3EgaGVyZSAqLw0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
