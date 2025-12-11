Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A050CB5D33
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:26:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31EFC3F998
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:26:19 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 8E9CD3F9B6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=gat8S9KJ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47755de027eso325375e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455856; x=1766060656; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NbpPVrzPAlKs0sk1NH70zC7B/mKS9m8HRr6Hh0Ntmuc=;
        b=gat8S9KJffFwh0F7JmF/VXWLmSVbDM60Xe/vgqrmHtEdzIfxnwhlc6IUNJAYJ210uO
         19bCEsuvkO9P0kcWFy/DSQ8rn9ULrtItsRXI52I1EKzT9ZWyEQjIXtSSVai3CenYgWRP
         HuMxr/fJ/xfWM6gLvNkYExBuT2IehzuD3z4urUVg6j5YeyHEa58FoZ4uPqo34r+fWKI/
         t0E6JnpVjzBcShl1J7xW2XLLk6jMXJ99mTEk7V6WA/6jCoyuon2vRRlKTIkPxUG9fREv
         ogryAI0C/HWACNnKiOTXYMZNZ18q3J8fKod0VSX1w1VczH0Nw2Mex8opMcR6g0Ry6bco
         e+bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455856; x=1766060656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NbpPVrzPAlKs0sk1NH70zC7B/mKS9m8HRr6Hh0Ntmuc=;
        b=oS+eN+sCDo0f49c8+Ne1RJL5zq7hw7+9fIkEZl0+jvh78CwmXoYys5NrgyDYv6l63z
         HLRpxqlUrFEzuUlnZKixByzESKa8rVuqs3u6lX5VHaDjyjxy3awxcVSEetIfY4S/wKU1
         moD1xewO2IqchIOy62t67IOVm3g/bA8K/mwlSyIzJECYhj7WrMCz0aWBQZ94fDQmR3gq
         VTi8rv9j9DItmUkl9CC9Q/gmz08sbKDwLklziU0UmpP3U591Ac+8d7bt8J58JwPdIXVJ
         VJXEE4nHBuSk761FubqcG82PKyLJkiXdjqvBbleJJl2wlAPBMpit/zz0GZBF6aNHocLh
         tEig==
X-Forwarded-Encrypted: i=1; AJvYcCX+rfyItqXb0trod2lmurbP2p6YVDVK5CN/CJqj9FR1wyZ+TH201r5UIjRYSk8Girizvi5CpfJgYbdP7M21@lists.linaro.org
X-Gm-Message-State: AOJu0YyPtjcwHm+wpVORvx6RQ6GYH7/D/pF0CQUJF/fFbGuCqhN0Sk32
	y7MyubpsqMvxJTwv+gZS/kAhDG9JQFBrFjPTkcf3ClKq4OjeZ3BxAebH
X-Gm-Gg: AY/fxX7tn1DeKGNeE6KK4FpJRPRApqOwwrrrQGOJcJvq9nIL4rlZeZwGOECWLXN2fJ9
	+AZrmOb5V/lLN2g/W3q7Tz+hfb8QSD5lj9qt8MG0XDxb2OWuOLo8UMNcd6LSCWgl0mfLONQST7V
	lY+4Ok0NCWqxIla3dkXq5HBY4ZQwjA1qJ1NtXW86TheQ1b2bs7Ca5B5mfKhFs8I7lNSKfrEMEKk
	KfzxuBiX+hYMCQVpPO7Gt/e/XYzkWc2EaqeNv8c5ferb20deEqClR0lwhFO39b5Vw8VcYy8gGCL
	1kfIMoEqtK53UE347dVYQ6XxfuESY9XXXCbqDeScuf3q08FhZyMbBUz38sf8R2R/lvU0kRNk6Za
	/OkpC8KH+SQtfDluM9kuYVsrw8MXtqDB0vgiVFB/X+/C7EmpXMdKGf/RM7L/+rMmI1glFWYhoRl
	CVzFDxxZEmpJQANUIma0q2P1Az
X-Google-Smtp-Source: AGHT+IEObtek3SSUISo0BK//+wOuSD6ufacxtT8fJlRFsxpyjHrhmJGAbig7vCojM0CY/HKswlW/NA==
X-Received: by 2002:a05:600c:8a0c:10b0:477:98f7:2aec with SMTP id 5b1f17b1804b1-47a856439e0mr39020445e9.3.1765455856396;
        Thu, 11 Dec 2025 04:24:16 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:16 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:38 +0100
Message-ID: <20251211122407.1709-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
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
	BLOCKLISTDE_FAIL(0.00)[209.85.128.47:server fail,2a00:e180:152a:9f00:dc26:feac:12f7:4088:query timed out];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8E9CD3F9B6
X-Spamd-Bar: ----
Message-ID-Hash: ISQIXEY6CCGACWJBWKQPAMCZIYJO5NLO
X-Message-ID-Hash: ISQIXEY6CCGACWJBWKQPAMCZIYJO5NLO
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 07/19] dma-buf: use inline lock for the dma-fence-array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ISQIXEY6CCGACWJBWKQPAMCZIYJO5NLO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UgaW1wbGVtZW50YXRpb25zLg0KDQpTbyB1c2UgdGhpcyBhcHByb2FjaCBmb3IgdGhlIGZy
YW1ld29yaydzIGludGVybmFsIGZlbmNlcyBhcyB3ZWxsLg0KDQpBbHNvIHNhdmVzIGFib3V0IDQg
Ynl0ZXMgZm9yIHRoZSBleHRlcm5hbCBzcGlubG9jay4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KUmV2aWV3ZWQtYnk6IFBoaWxp
cHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMgfCA1ICsrLS0tDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXku
aCAgIHwgMSAtDQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCmluZGV4IDY2NTdkNGIzMGFmOS4uYzIx
MTlhODA0OWZlIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5j
DQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCkBAIC0yMDQsOSArMjA0
LDggQEAgdm9pZCBkbWFfZmVuY2VfYXJyYXlfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICph
cnJheSwNCiANCiAJYXJyYXktPm51bV9mZW5jZXMgPSBudW1fZmVuY2VzOw0KIA0KLQlzcGluX2xv
Y2tfaW5pdCgmYXJyYXktPmxvY2spOw0KLQlkbWFfZmVuY2VfaW5pdCgmYXJyYXktPmJhc2UsICZk
bWFfZmVuY2VfYXJyYXlfb3BzLCAmYXJyYXktPmxvY2ssDQotCQkgICAgICAgY29udGV4dCwgc2Vx
bm8pOw0KKwlkbWFfZmVuY2VfaW5pdCgmYXJyYXktPmJhc2UsICZkbWFfZmVuY2VfYXJyYXlfb3Bz
LCBOVUxMLCBjb250ZXh0LA0KKwkJICAgICAgIHNlcW5vKTsNCiAJaW5pdF9pcnFfd29yaygmYXJy
YXktPndvcmssIGlycV9kbWFfZmVuY2VfYXJyYXlfd29yayk7DQogDQogCWF0b21pY19zZXQoJmFy
cmF5LT5udW1fcGVuZGluZywgc2lnbmFsX29uX2FueSA/IDEgOiBudW1fZmVuY2VzKTsNCmRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtYXJyYXkuaA0KaW5kZXggMDc5YjNkZWMwYTE2Li4zNzBiM2QyYmJhMzcgMTAwNjQ0
DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oDQorKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1hcnJheS5oDQpAQCAtMzgsNyArMzgsNiBAQCBzdHJ1Y3QgZG1hX2ZlbmNl
X2FycmF5X2NiIHsNCiBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5IHsNCiAJc3RydWN0IGRtYV9mZW5j
ZSBiYXNlOw0KIA0KLQlzcGlubG9ja190IGxvY2s7DQogCXVuc2lnbmVkIG51bV9mZW5jZXM7DQog
CWF0b21pY190IG51bV9wZW5kaW5nOw0KIAlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOw0KLS0g
DQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
