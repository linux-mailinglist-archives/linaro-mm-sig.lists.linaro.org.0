Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 531DC69D4D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 21:20:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63A843F499
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 20:20:42 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by lists.linaro.org (Postfix) with ESMTPS id 929243F520
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 20:19:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=YzeOmopC;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.174 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id n20so1180240pfu.12
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 12:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5If47abMxVvdOGe/2jH89dN5UVVTGLmcg6EQzMCdPac=;
        b=YzeOmopCn0gh++/gAGcFEfcXWPP1jVMzasozIMD7Gnkw8K3NyhlEHe1zc8el3aD0Vx
         CIjGOhfZLHb/eeQuNytwDrZu2MoSPDSzBx0NkJozDbP/hff1JNpcf2JBAIZfOu4xeUEk
         +zOyP81obkNmacqYNnkI/8yrUexPNt23g3fRPvuMaEXgoQIpCMGtdvsH2gFRg7OLk4HQ
         DlyJkIqao3kfB+qsI6mVx2PKcGPpW6oE1VQU/ZgJ4BErwqSEE0o8LhrAJChvdIFMFXmY
         FFXESxU7CgmFAJRaj8/2sXKYQmNzH+0DmG3t+TEr8o4FPil3h4k4nq2uUgFAqGXt3R3M
         6feg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5If47abMxVvdOGe/2jH89dN5UVVTGLmcg6EQzMCdPac=;
        b=Rd+mFrsuzHHtkbR83lWFqkae1XaiJ/N9mHDT1GJGeT9d1DTEy2lbaRAxv/xEbr/FEN
         zF9U0qnhTxIp08L6W41uijbHNcXLBEFbINB6cv6vAS/Y4B40mB/QNzHYwSx0Jyzexe5p
         1Hw3DvYftv6cxB6T4TQS8sqdetcwSKVElz/eYeEKkgHCehcIBMLE37fOTXLNS0AA+Wud
         66+kq8TFXT6LLhdddXNnJrSrUODNQ4GSFYBPRcKFyUuR5I2pRfEqdd34g0I5Q2VXgJ4m
         mpGmZh3eIbvg/fFAVlAaipE7vany2vZC5qtR3lP4SfXIK78rhIoi9dpOFjvDbS40oVE1
         erkQ==
X-Gm-Message-State: AO0yUKWWdv9a83kurXSVC2zSP4n9n/f+seAXr621wZQa+Y9CZGjDw1AZ
	/rPnhBl09kXL5Bgw3/jahCs=
X-Google-Smtp-Source: AK7set9GUlIkvZiMMJHbL1YlDHIQPYuqsE3eGFqhvDr4pSZzxB82JJDY+CxjmHJJWkP5dBcF/eD+Jw==
X-Received: by 2002:a62:7911:0:b0:5a9:c16f:b4ea with SMTP id u17-20020a627911000000b005a9c16fb4eamr1495085pfc.7.1676924363589;
        Mon, 20 Feb 2023 12:19:23 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id c6-20020a62e806000000b00593e4e6516csm390202pfi.124.2023.02.20.12.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 12:19:23 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 20 Feb 2023 12:18:50 -0800
Message-Id: <20230220201916.1822214-4-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230220201916.1822214-1-robdclark@gmail.com>
References: <20230220201916.1822214-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 929243F520
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.174:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: BVOHAO6SWTXQ2YKIQPS5HV52KNWAG56S
X-Message-ID-Hash: BVOHAO6SWTXQ2YKIQPS5HV52KNWAG56S
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 03/14] dma-buf/fence-chain: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BVOHAO6SWTXQ2YKIQPS5HV52KNWAG56S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpQcm9wYWdhdGUgdGhl
IGRlYWRsaW5lIHRvIGFsbCB0aGUgZmVuY2VzIGluIHRoZSBjaGFpbi4NCg0KU2lnbmVkLW9mZi1i
eTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KUmV2aWV3ZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gZm9yIHRoaXMgb25lLg0KLS0t
DQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jIHwgMTMgKysrKysrKysrKysrKw0K
IDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNo
YWluLmMNCmluZGV4IGEwZDkyMDU3NmJhNi4uNDY4NDg3NGFmNjEyIDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWNoYWluLmMNCkBAIC0yMDYsNiArMjA2LDE4IEBAIHN0YXRpYyB2b2lkIGRtYV9mZW5j
ZV9jaGFpbl9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIAlkbWFfZmVuY2VfZnJl
ZShmZW5jZSk7DQogfQ0KIA0KKw0KK3N0YXRpYyB2b2lkIGRtYV9mZW5jZV9jaGFpbl9zZXRfZGVh
ZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQorCQkJCQkga3RpbWVfdCBkZWFkbGluZSkN
Cit7DQorCWRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaChmZW5jZSwgZmVuY2UpIHsNCisJCXN0cnVj
dCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0gdG9fZG1hX2ZlbmNlX2NoYWluKGZlbmNlKTsNCisJ
CXN0cnVjdCBkbWFfZmVuY2UgKmYgPSBjaGFpbiA/IGNoYWluLT5mZW5jZSA6IGZlbmNlOw0KKw0K
KwkJZG1hX2ZlbmNlX3NldF9kZWFkbGluZShmLCBkZWFkbGluZSk7DQorCX0NCit9DQorDQogY29u
c3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX2NoYWluX29wcyA9IHsNCiAJLnVzZV82
NGJpdF9zZXFubyA9IHRydWUsDQogCS5nZXRfZHJpdmVyX25hbWUgPSBkbWFfZmVuY2VfY2hhaW5f
Z2V0X2RyaXZlcl9uYW1lLA0KQEAgLTIxMyw2ICsyMjUsNyBAQCBjb25zdCBzdHJ1Y3QgZG1hX2Zl
bmNlX29wcyBkbWFfZmVuY2VfY2hhaW5fb3BzID0gew0KIAkuZW5hYmxlX3NpZ25hbGluZyA9IGRt
YV9mZW5jZV9jaGFpbl9lbmFibGVfc2lnbmFsaW5nLA0KIAkuc2lnbmFsZWQgPSBkbWFfZmVuY2Vf
Y2hhaW5fc2lnbmFsZWQsDQogCS5yZWxlYXNlID0gZG1hX2ZlbmNlX2NoYWluX3JlbGVhc2UsDQor
CS5zZXRfZGVhZGxpbmUgPSBkbWFfZmVuY2VfY2hhaW5fc2V0X2RlYWRsaW5lLA0KIH07DQogRVhQ
T1JUX1NZTUJPTChkbWFfZmVuY2VfY2hhaW5fb3BzKTsNCiANCi0tIA0KMi4zOS4xDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
