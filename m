Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDDsDtE1l2lBvwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:09:53 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA2A1608B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:09:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 071E13FDB1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 16:09:52 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id C1068401D7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 16:08:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=dbGZbWT1;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43622089851so1106611f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 08:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771517312; x=1772122112; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sHYMqIdBeCXpl3TZbgvp21IohfSKQ4Ex+gLdhg50lgo=;
        b=dbGZbWT1ECJjG1RwEusYg7G//XnrbK8/zhuHmmaDd2JSuatqOU2ONbru1m3wwXGYir
         QkAMheCIjHl1mb7/bKtHMZkkaxs87Dxm0YR5kpzCp7Fi4tlpEBzNxiY5fvW47QvH+OmG
         zC+N6mtQ4TP9yG8YP9xV9hSjRzxUV64MaZc1BT2cmCXiBv7HtYiOxjLdIbgGlCQBzcmL
         d1ryBSjGaVXrn34PJQOZwPyVfoEW/JZOkCr369k2mfyieidQfBx5Z/DRPbQsnf24WpiQ
         J07nG1vMd/4yQkpZzaNiTZ0mAQ8Dvxj1gcLBTy7fE89yQ7E+etvuyzNj7ZopLeGstLOn
         LHsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771517312; x=1772122112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sHYMqIdBeCXpl3TZbgvp21IohfSKQ4Ex+gLdhg50lgo=;
        b=BbXyvJt6659u4lAK0C1GvOva0HIwkp31g6Ak9kzoCUA/FP/L72NkSZD4lodtOLrJAC
         vXEL5xm39Ora9+sAthLyiCiIjSPjHjnLenNaZY2/uWT+mA3QULMrWR2P1zBp7qvRAfjG
         8VUg29kB1vs2Ue4Pcje1QWb1k2z1bP/bV3e3WkPzTDbN3pmdFjsjsH533TWmM1lvUJ4y
         CXAbnwl6wtNv4EF/J+okSkhhkiVx8cPWIvxjUzyt2JFb+P45g5boq//rCX3RmIlP9JwI
         0IM4YGOFfcQUTbWNQ83/6Vz73VPKJbSQiBcZkWcSYjGbIKAyFXC4fSK7YXFzHldivUBH
         Xu4A==
X-Forwarded-Encrypted: i=1; AJvYcCUZxSZ4HnI+SJFeNu2OimWpXawqkzhiaAGfDsSG/OStGWfYK2aX5LsiXey05RHZNYq3YNfOPuvo+cineITt@lists.linaro.org
X-Gm-Message-State: AOJu0Yzw3RA0o2moWBecXtO+CMPmhRfG4q6a1haafn2uWLYaX6486PJ7
	KNxITMo2mjs/z9WlHOllkzkPdb3m9DvY3g8wsUT1FSeoTBKWgGhFss9T
X-Gm-Gg: AZuq6aJpZz5Gz0ox0S8a28w59s+9t4FTplBaJSmNYTMRF0u/8pvj7QWTkogEv+OjS9R
	UuynT8JL5PgeW6qYmZHNFFLqfizR/Ss/qvfRecQGOoXktL1+qwtVRNj/NBNNuvhZQVPLnMB602P
	Y7bN5R8vd3yMtHLWgJefrC9UrjZeYh+2JUlj3GEH3wCBv5+yougkgx7uswzX+BD3wRKvI0I7YcY
	6570F+bcSFhLAXJ1cnKkAh/0c9lA8nE/xm0WZFlcr5rmMYgmqn1xb+YQjotNRd1N1pvT+Ld607y
	mvKd0f+TViLEeiOtYlUaqkatI0lahd3h3zfW8DckgxmbwiUqoj50kWGm0V3dVncszX7ysrH/BIR
	Ji2FfzMK5lGN/2CrnG35m8gYom4YWfhm/hDCuOCPYVKLu3CzrOBX59aiYIuY1BNCUfHWTobZjcJ
	/ahyX2ZWpU51N24LD/3v0r6gxAFi6I9SORre/I960le1ignCg=
X-Received: by 2002:a05:6000:250c:b0:437:711c:8754 with SMTP id ffacd0b85a97d-43958df14b1mr9207829f8f.7.1771517311656;
        Thu, 19 Feb 2026 08:08:31 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1503:b900:9c42:5977:662a:d02d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac82f7sm54580031f8f.28.2026.02.19.08.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 08:08:31 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 19 Feb 2026 17:07:10 +0100
Message-ID: <20260219160822.1529-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219160822.1529-1-christian.koenig@amd.com>
References: <20260219160822.1529-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: HXNDMBYBV7IOFW5QLXGLADFXOFA3ZRIX
X-Message-ID-Hash: HXNDMBYBV7IOFW5QLXGLADFXOFA3ZRIX
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 7/8] dma-buf: use inline lock for the dma-fence-array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HXNDMBYBV7IOFW5QLXGLADFXOFA3ZRIX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,igalia.com:email,collabora.com:email]
X-Rspamd-Queue-Id: DFA2A1608B3
X-Rspamd-Action: no action

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UNCmltcGxlbWVudGF0aW9ucy4NCg0KU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBm
cmFtZXdvcmsncyBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCg0KQWxzbyBzYXZlcyBhYm91dCA0
IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NClJldmlld2VkLWJ5OiBQaGls
aXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KUmV2aWV3ZWQtYnk6IEJvcmlzIEJyZXpp
bGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLWFycmF5LmMgfCA1ICsrLS0tDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2Ut
YXJyYXkuaCAgIHwgMSAtDQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCmluZGV4IDY2NTdkNGIzMGFm
OS4uYzIxMTlhODA0OWZlIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1h
cnJheS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCkBAIC0yMDQs
OSArMjA0LDggQEAgdm9pZCBkbWFfZmVuY2VfYXJyYXlfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2Fy
cmF5ICphcnJheSwNCiANCiAJYXJyYXktPm51bV9mZW5jZXMgPSBudW1fZmVuY2VzOw0KIA0KLQlz
cGluX2xvY2tfaW5pdCgmYXJyYXktPmxvY2spOw0KLQlkbWFfZmVuY2VfaW5pdCgmYXJyYXktPmJh
c2UsICZkbWFfZmVuY2VfYXJyYXlfb3BzLCAmYXJyYXktPmxvY2ssDQotCQkgICAgICAgY29udGV4
dCwgc2Vxbm8pOw0KKwlkbWFfZmVuY2VfaW5pdCgmYXJyYXktPmJhc2UsICZkbWFfZmVuY2VfYXJy
YXlfb3BzLCBOVUxMLCBjb250ZXh0LA0KKwkJICAgICAgIHNlcW5vKTsNCiAJaW5pdF9pcnFfd29y
aygmYXJyYXktPndvcmssIGlycV9kbWFfZmVuY2VfYXJyYXlfd29yayk7DQogDQogCWF0b21pY19z
ZXQoJmFycmF5LT5udW1fcGVuZGluZywgc2lnbmFsX29uX2FueSA/IDEgOiBudW1fZmVuY2VzKTsN
CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtYXJyYXkuaA0KaW5kZXggMDc5YjNkZWMwYTE2Li4zNzBiM2QyYmJhMzcg
MTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oDQorKysgYi9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oDQpAQCAtMzgsNyArMzgsNiBAQCBzdHJ1Y3QgZG1h
X2ZlbmNlX2FycmF5X2NiIHsNCiBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5IHsNCiAJc3RydWN0IGRt
YV9mZW5jZSBiYXNlOw0KIA0KLQlzcGlubG9ja190IGxvY2s7DQogCXVuc2lnbmVkIG51bV9mZW5j
ZXM7DQogCWF0b21pY190IG51bV9wZW5kaW5nOw0KIAlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2Vz
Ow0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
