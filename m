Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 465DEC58114
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:54:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D6813F868
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:54:05 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id 91B793F6C7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=FepNPm2K;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6406f3dcc66so1583657a12.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045615; x=1763650415; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RPR3UfrNYxFDjh6mqln5EMxB6otbdQrc1I1BewMqrEE=;
        b=FepNPm2KZEwrp/caM8YzxIVwVNlabhKy4fxMiN4Ci/8cr/IccyocenppiVLuxnPtMq
         HtdGXsvjXoVKUG3gWY9tmfqWLOUgD600SPfMo9l94IoNkoUoPIOGxoiN13j/R9Msw1KN
         UWggEAImBkPjEEqzPgAWTaz24MvenQdc0fCTORiZ/bdJlRqbcllJaeRBad9NBZDSBcnm
         oQFToxvxMONWAtFt7iwvX62E33lHfnagLICDU37enKoxfwLthhhfVTHsDW3vxfwizjZ6
         L8CYoE3b4Ldgputw+KEW4nHFitg8KkgRYa4uGgXxSjTqZAj/mKasYna8NuIAcMuhe5PF
         FnYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045615; x=1763650415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RPR3UfrNYxFDjh6mqln5EMxB6otbdQrc1I1BewMqrEE=;
        b=JcO1hptW+WNIamDq2s8uptPV5liZr3jVh+gstY8dbyQd9sbEEkOdsaipb94zVe5mFL
         /tN/0s9jNQWPQ7jcDSERm1vTlADILzSEYeCS8faaGT+KJwXyo8Pj6wcpDXnx6Q0/hvGt
         vBFOyY9rjhKtK5I96/8a8cMcH8hUMgDuyCw7aDmbrwXyAGzxMWdgrrLMH9dKOH2sZBK7
         4jBoq1R/qcwtywcou0mDkeTF5QH6oaDmcDgpwwWsj0lLOZ5PBv+MxIfkCGulLcx6lxH1
         wf5Q5+W6wf7urHXa1yW3L872035r/SFDs6eMlgMoQlnlVVI+QVBpmNXFa0c82ubX6Ply
         sUZA==
X-Forwarded-Encrypted: i=1; AJvYcCUWdfFyJ9uUoeFdvmmuT7O/WTbQ5tDP9ty9nbgJCAdfn9klEIYFu4AcKdZ0uqQGmX4S976c4Lgkt+x/p0sV@lists.linaro.org
X-Gm-Message-State: AOJu0YxDbRIIhanMaAiqzGPNhgUgZzQBGLIDrp27zOMnzKlEv9L4rR9h
	OtdXvRFAjec1R0GzVnT1ZCYwPQoBcmCblhT5pbUJlLkshLv12b7CwMKc
X-Gm-Gg: ASbGncvCMmlJ58fl4+mA0nbAeuqyKkmdkqVMSLkZh7PdrX4sxR0nY3U8XfIhNJ0Dblf
	pF1bVTwfELgytx1XymSt31qywUG0A9WlTB9CP5sY8vW4ogwn4nlpz1yZRDf+bg8fvKXXj/CIycX
	kt/ecAThF2tFLk3G7QfubQEEWW0I+S6zX3aHB94DOY7BxgCKGv78gfb93fSFqh2F8HBA5vygRO0
	OWDqLLRkH2Lcbf4KCAub1UJTGodMdr9TuHjaR5M29AAmSbttopnIx7SSbX3k9YGEGR1B+VxkGCC
	qWxmaWbvmfdQT70+CF0qDhnaWPwQ8H7OMRZQX45rPSzjQk6GPVe0DVGj2Uk5G3n7gZBcMWTakoW
	KRtnDpHmSOOOxZ49eeWauVVtxG96A8tQ7bwt+VBd7EEl0LZQSb/12IgWUnjAavIe/XYb8sEpRcv
	FE62dGGZ1MlaQm8y1hbaAauw==
X-Google-Smtp-Source: AGHT+IH3EaxLSnCv9gLMHoWsafC+66G7Zf4PqH9YrKbECxXDf49gDk8XCoLQwGvA4IfFvykHWqo2Nw==
X-Received: by 2002:a17:907:60d1:b0:b73:21af:c0e7 with SMTP id a640c23a62f3a-b7331af147bmr800895766b.53.1763045615330;
        Thu, 13 Nov 2025 06:53:35 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:34 -0800 (PST)
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
Date: Thu, 13 Nov 2025 15:51:38 +0100
Message-ID: <20251113145332.16805-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 91B793F6C7
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.52:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: B7HX2BXDDAUQZEBSLJVFREJX3UA4RUJD
X-Message-ID-Hash: B7HX2BXDDAUQZEBSLJVFREJX3UA4RUJD
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 01/18] dma-buf: cleanup dma_fence_describe v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B7HX2BXDDAUQZEBSLJVFREJX3UA4RUJD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGRyaXZlciBhbmQgdGltZWxpbmUgbmFtZSBhcmUgbWVhbmluZ2xlc3MgZm9yIHNpZ25hbGVk
IGZlbmNlcy4NCg0KRHJvcCB0aGVtIGFuZCBhbHNvIHByaW50IHRoZSBjb250ZXh0IG51bWJlci4N
Cg0KdjI6IGF2b2lkIHRoZSBjYWxscyB3aGVuIHRoZSBCTyBpcyBhbHJlYWR5IHNpZ25hbGVkLg0K
djM6IHVzZSBzYW1lIGZvcm1hdCBhcyB0cmFjZSBwb2ludHMgZm9yIGNvbnRleHQgYW5kIHNlcW5v
Lg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAyMCArKysrKysrKysr
Ky0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jDQppbmRleCBjNWQxNDc4YjI4ZGQuLmI0ZjVjODYzNTI3NiAx
MDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jDQpAQCAtOTk3LDE5ICs5OTcsMjEgQEAgRVhQT1JUX1NZTUJPTChk
bWFfZmVuY2Vfc2V0X2RlYWRsaW5lKTsNCiAgKi8NCiB2b2lkIGRtYV9mZW5jZV9kZXNjcmliZShz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IHNlcV9maWxlICpzZXEpDQogew0KLQljb25z
dCBjaGFyIF9fcmN1ICp0aW1lbGluZTsNCi0JY29uc3QgY2hhciBfX3JjdSAqZHJpdmVyOw0KKwlj
b25zdCBjaGFyIF9fcmN1ICp0aW1lbGluZSA9ICIiOw0KKwljb25zdCBjaGFyIF9fcmN1ICpkcml2
ZXIgPSAiIjsNCisJY29uc3QgY2hhciAqc2lnbmFsZWQgPSAiIjsNCiANCiAJcmN1X3JlYWRfbG9j
aygpOw0KIA0KLQl0aW1lbGluZSA9IGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKGZlbmNlKTsNCi0J
ZHJpdmVyID0gZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZlbmNlKTsNCisJaWYgKCFkbWFfZmVuY2Vf
aXNfc2lnbmFsZWQoZmVuY2UpKSB7DQorCQl0aW1lbGluZSA9IGRtYV9mZW5jZV90aW1lbGluZV9u
YW1lKGZlbmNlKTsNCisJCWRyaXZlciA9IGRtYV9mZW5jZV9kcml2ZXJfbmFtZShmZW5jZSk7DQor
CQlzaWduYWxlZCA9ICJ1biI7DQorCX0NCiANCi0Jc2VxX3ByaW50ZihzZXEsICIlcyAlcyBzZXEg
JWxsdSAlc3NpZ25hbGxlZFxuIiwNCi0JCSAgIHJjdV9kZXJlZmVyZW5jZShkcml2ZXIpLA0KLQkJ
ICAgcmN1X2RlcmVmZXJlbmNlKHRpbWVsaW5lKSwNCi0JCSAgIGZlbmNlLT5zZXFubywNCi0JCSAg
IGRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkgPyAiIiA6ICJ1biIpOw0KKwlzZXFfcHJpbnRm
KHNlcSwgIiVsbHU6JWxsdSAlcyAlcyAlc3NpZ25hbGxlZFxuIiwNCisJCSAgIGZlbmNlLT5jb250
ZXh0LCBmZW5jZS0+c2Vxbm8sIHRpbWVsaW5lLCBkcml2ZXIsDQorCQkgICBzaWduYWxlZCk7DQog
DQogCXJjdV9yZWFkX3VubG9jaygpOw0KIH0NCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
