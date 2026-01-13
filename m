Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 91110D19D65
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 16:22:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B634E40155
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 15:22:06 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 689703F809
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 15:21:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=I5YUd6PS;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so4277595e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 07:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768317690; x=1768922490; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=psbRZ8aqRYZkBh8lBreeaxoYq2EjUL4kDmkSGeuE/s0=;
        b=I5YUd6PSJNNK3BOah1+ZWATdUWhoW0BucDtQctQpaykE1dmJH0H4q0Lp/dhr2w/ifk
         IO49/F2faYqLbKDJBdfHm2v9huujVDXIX3P44MuUN2miroSdNZjLQbYrgSg55IxeGHSB
         4fBOY//bLqKtiybCIdCfOOrTj4SpoSgujyvfPVCWSLwtJy8nfiqXwI+nNNy1FrtBIDse
         HBISbVSLINJzmhFe3tnf87YbEUbPDVqlfusvpHfJctXn8wqwObu+FD5S+zRY5EqGvHbC
         A10dlyEZ0RDKl/z81HkNSY1dny5oz96VLjNprT4UhaVM7XuVSAQEk2YwPam0PckRfvE4
         Ptyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768317690; x=1768922490;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=psbRZ8aqRYZkBh8lBreeaxoYq2EjUL4kDmkSGeuE/s0=;
        b=QAzDyZEZ4VSznHOvTXWWGOdc2A+89nCqlnuA+MM6943pIU9q5wP+ud1vWE2Is0QWfV
         A2dcZ7sFdAM9r+4ymrcRLYUWe7bXRs4XNY+O7l/ItfPGOVj08h2LgL3DsxgtigF/kIbo
         K+4LuCQlnugCGUwWtwHsh2seTt08+Ue1dEDb/D3luwPLPM90JCYQOAzul5DuH9ILY6Yw
         KEN+ff61Fhp3ye3FIc+9eIV+vxZCtH6ocGBtaEFcvA2mezMYzth6B8CHKvYYkrPJVxJZ
         QynHzClvbzq8P25RvaPhqbrSB+8r35HpZeODst7LUhTvKmkZ67tMoNh65phiQxlgXemK
         ULYg==
X-Forwarded-Encrypted: i=1; AJvYcCWhlsGrk/cbE1xCLJf/EwAfV2pYu5ZTiMptt3rO3Axpa7I7Em5ZkQgfBJWMp0bwvLJBH3+E0OY54qFy911M@lists.linaro.org
X-Gm-Message-State: AOJu0YxdrvI6tdGMVY+9an0JMG0zX9JcULs0gkmbeseh4s149kqIG8fE
	+z/co25L+z4XaxQcPqKws0a+BQqxFa15FRQqZxr3Oj5vaO1+iNrAw/HE
X-Gm-Gg: AY/fxX6kPw4yHNC6W9c1n+JR++ZVqvSTfYL/tvtHv2URdrFkYLTi41IOSgpok+RHcjV
	nHiWnIiYBscZil6QmVCIXRzKwWwIL6x3YoCzjrTY0L+zfEXcUeemnaiDQVXnWaKynm0R2mWMB/l
	WUY0dFnSlrPj/RJw6kTGvWOvG6w7hPvItO1vjewlJVLLvXIN6hHVuMITVQysLRWd4ro1Yw270rV
	rtxVR1JM7aYLHj3mC2WKyUepvOlJGL2BC4awXAdh64TYgD9++jJ+ZIG6oQJGHDmICqdMre2qQXY
	/wrXNqFCDBkZ60TwHCG8lY7scy3l5uqG+G29Ls/Yw9mf2LxWAoSVzzGw4q2e1UbvCKJKty76hjf
	edDqt98vlM5z7kG3YZZ0KuYXFy7X2IRIcM68pqIOOVtomLEndQcuHBoin2mAazyz51w4ipM7ty5
	59P+w4qDOjUioNE0S8ktYQvQ4=
X-Google-Smtp-Source: AGHT+IF/qMbWLM1kY6lAXJxa1994we2c0oH/TUGTrUZGbn+GeCttfi7pDB0Jolv6sAAbxRjq+4+UYQ==
X-Received: by 2002:a05:600c:1385:b0:477:582e:7a81 with SMTP id 5b1f17b1804b1-47d84b0a227mr252090575e9.4.1768317690115;
        Tue, 13 Jan 2026 07:21:30 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:141c:9800:1651:dfa:9e48:25d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ecf6a5466sm129518405e9.11.2026.01.13.07.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:21:29 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 13 Jan 2026 16:16:09 +0100
Message-ID: <20260113152125.47380-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113152125.47380-1-christian.koenig@amd.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 689703F809
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[mail-wm1-f54.google.com:helo,mail-wm1-f54.google.com:rdns];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.54:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:141c:9800:1651:dfa:9e48:25d5:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: FWKIVMBKXTWYBKOXQXTB5KMQRT5K4R6E
X-Message-ID-Hash: FWKIVMBKXTWYBKOXQXTB5KMQRT5K4R6E
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 02/10] dma-buf: add dma_fence_is_initialized function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FWKIVMBKXTWYBKOXQXTB5KMQRT5K4R6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29tZSBkcml2ZXIgdXNlIGZlbmNlLT5vcHMgdG8gdGVzdCBpZiBhIGZlbmNlIHdhcyBpbml0aWFs
aXplZCBvciBub3QuDQpUaGUgcHJvYmxlbSBpcyB0aGF0IHRoaXMgdXRpbGl6ZXMgaW50ZXJuYWwg
YmVoYXZpb3Igb2YgdGhlIGRtYV9mZW5jZQ0KaW1wbGVtZW50YXRpb24uDQoNClNvIGJldHRlciBh
YnN0cmFjdCB0aGF0IGludG8gYSBmdW5jdGlvbi4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5jIHwgMTMgKysrKysrKy0tLS0tLQ0KIGRyaXZlcnMvZ3B1
L2RybS9xeGwvcXhsX3JlbGVhc2UuYyAgICAgICB8ICAyICstDQogaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UuaCAgICAgICAgICAgICAgIHwgMTIgKysrKysrKysrKysrDQogMyBmaWxlcyBjaGFuZ2Vk
LCAyMCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2pvYi5jDQppbmRleCAwYTBkY2JmMDc5OGQuLmI5N2Y5MGJiZThiOSAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9qb2IuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5jDQpAQCAtMjc4LDkgKzI3OCwx
MCBAQCB2b2lkIGFtZGdwdV9qb2JfZnJlZV9yZXNvdXJjZXMoc3RydWN0IGFtZGdwdV9qb2IgKmpv
YikNCiAJdW5zaWduZWQgaTsNCiANCiAJLyogQ2hlY2sgaWYgYW55IGZlbmNlcyB3ZXJlIGluaXRp
YWxpemVkICovDQotCWlmIChqb2ItPmJhc2Uuc19mZW5jZSAmJiBqb2ItPmJhc2Uuc19mZW5jZS0+
ZmluaXNoZWQub3BzKQ0KKwlpZiAoam9iLT5iYXNlLnNfZmVuY2UgJiYNCisJICAgIGRtYV9mZW5j
ZV9pc19pbml0aWFsaXplZCgmam9iLT5iYXNlLnNfZmVuY2UtPmZpbmlzaGVkKSkNCiAJCWYgPSAm
am9iLT5iYXNlLnNfZmVuY2UtPmZpbmlzaGVkOw0KLQllbHNlIGlmIChqb2ItPmh3X2ZlbmNlICYm
IGpvYi0+aHdfZmVuY2UtPmJhc2Uub3BzKQ0KKwllbHNlIGlmIChkbWFfZmVuY2VfaXNfaW5pdGlh
bGl6ZWQoJmpvYi0+aHdfZmVuY2UtPmJhc2UpKQ0KIAkJZiA9ICZqb2ItPmh3X2ZlbmNlLT5iYXNl
Ow0KIAllbHNlDQogCQlmID0gTlVMTDsNCkBAIC0yOTcsMTEgKzI5OCwxMSBAQCBzdGF0aWMgdm9p
ZCBhbWRncHVfam9iX2ZyZWVfY2Ioc3RydWN0IGRybV9zY2hlZF9qb2IgKnNfam9iKQ0KIA0KIAlh
bWRncHVfc3luY19mcmVlKCZqb2ItPmV4cGxpY2l0X3N5bmMpOw0KIA0KLQlpZiAoam9iLT5od19m
ZW5jZS0+YmFzZS5vcHMpDQorCWlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQoJmpvYi0+aHdf
ZmVuY2UtPmJhc2UpKQ0KIAkJZG1hX2ZlbmNlX3B1dCgmam9iLT5od19mZW5jZS0+YmFzZSk7DQog
CWVsc2UNCiAJCWtmcmVlKGpvYi0+aHdfZmVuY2UpOw0KLQlpZiAoam9iLT5od192bV9mZW5jZS0+
YmFzZS5vcHMpDQorCWlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQoJmpvYi0+aHdfdm1fZmVu
Y2UtPmJhc2UpKQ0KIAkJZG1hX2ZlbmNlX3B1dCgmam9iLT5od192bV9mZW5jZS0+YmFzZSk7DQog
CWVsc2UNCiAJCWtmcmVlKGpvYi0+aHdfdm1fZmVuY2UpOw0KQEAgLTMzNSwxMSArMzM2LDExIEBA
IHZvaWQgYW1kZ3B1X2pvYl9mcmVlKHN0cnVjdCBhbWRncHVfam9iICpqb2IpDQogCWlmIChqb2It
Pmdhbmdfc3VibWl0ICE9ICZqb2ItPmJhc2Uuc19mZW5jZS0+c2NoZWR1bGVkKQ0KIAkJZG1hX2Zl
bmNlX3B1dChqb2ItPmdhbmdfc3VibWl0KTsNCiANCi0JaWYgKGpvYi0+aHdfZmVuY2UtPmJhc2Uu
b3BzKQ0KKwlpZiAoZG1hX2ZlbmNlX2lzX2luaXRpYWxpemVkKCZqb2ItPmh3X2ZlbmNlLT5iYXNl
KSkNCiAJCWRtYV9mZW5jZV9wdXQoJmpvYi0+aHdfZmVuY2UtPmJhc2UpOw0KIAllbHNlDQogCQlr
ZnJlZShqb2ItPmh3X2ZlbmNlKTsNCi0JaWYgKGpvYi0+aHdfdm1fZmVuY2UtPmJhc2Uub3BzKQ0K
KwlpZiAoZG1hX2ZlbmNlX2lzX2luaXRpYWxpemVkKCZqb2ItPmh3X3ZtX2ZlbmNlLT5iYXNlKSkN
CiAJCWRtYV9mZW5jZV9wdXQoJmpvYi0+aHdfdm1fZmVuY2UtPmJhc2UpOw0KIAllbHNlDQogCQlr
ZnJlZShqb2ItPmh3X3ZtX2ZlbmNlKTsNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcXhs
L3F4bF9yZWxlYXNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCmluZGV4
IDdiM2M5YTYwMTZkYi4uYjM4YWUwYjI1ZjNjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3F4bC9xeGxfcmVsZWFzZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNl
LmMNCkBAIC0xNDYsNyArMTQ2LDcgQEAgcXhsX3JlbGVhc2VfZnJlZShzdHJ1Y3QgcXhsX2Rldmlj
ZSAqcWRldiwNCiAJaWRyX3JlbW92ZSgmcWRldi0+cmVsZWFzZV9pZHIsIHJlbGVhc2UtPmlkKTsN
CiAJc3Bpbl91bmxvY2soJnFkZXYtPnJlbGVhc2VfaWRyX2xvY2spOw0KIA0KLQlpZiAocmVsZWFz
ZS0+YmFzZS5vcHMpIHsNCisJaWYgKGRtYV9mZW5jZV9pc19pbml0aWFsaXplZCgmcmVsZWFzZS0+
YmFzZSkpIHsNCiAJCVdBUk5fT04obGlzdF9lbXB0eSgmcmVsZWFzZS0+Ym9zKSk7DQogCQlxeGxf
cmVsZWFzZV9mcmVlX2xpc3QocmVsZWFzZSk7DQogDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4IGVlYTY3NGFj
ZGZhNi4uMzcxYWE4ZWNmMThlIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTI3NCw2ICsyNzQsMTggQEAg
dm9pZCBkbWFfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3JlZik7DQogdm9pZCBkbWFfZmVu
Y2VfZnJlZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7DQogdm9pZCBkbWFfZmVuY2VfZGVzY3Jp
YmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHN0cnVjdCBzZXFfZmlsZSAqc2VxKTsNCiANCisv
KioNCisgKiBkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQgLSB0ZXN0IGlmIGZlbmNlIHdhcyBpbml0
aWFsaXplZA0KKyAqIEBmZW5jZTogZmVuY2UgdG8gdGVzdA0KKyAqDQorICogUmV0dXJuOiBUcnVl
IGlmIGZlbmNlIHdhcyBpbml0aWFsaXplZCwgZmFsc2Ugb3RoZXJ3aXNlLiBXb3JrcyBjb3JyZWN0
bHkgb25seQ0KKyAqIHdoZW4gbWVtb3J5IGJhY2tpbmcgdGhlIGZlbmNlIHN0cnVjdHVyZSBpcyB6
ZXJvIGluaXRpYWxpemVkIG9uIGFsbG9jYXRpb24uDQorICovDQorc3RhdGljIGlubGluZSBib29s
IGRtYV9mZW5jZV9pc19pbml0aWFsaXplZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCit7DQor
CXJldHVybiBmZW5jZSAmJiAhIWZlbmNlLT5vcHM7DQorfQ0KKw0KIC8qKg0KICAqIGRtYV9mZW5j
ZV9wdXQgLSBkZWNyZWFzZXMgcmVmY291bnQgb2YgdGhlIGZlbmNlDQogICogQGZlbmNlOiBmZW5j
ZSB0byByZWR1Y2UgcmVmY291bnQgb2YNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
