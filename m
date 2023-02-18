Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8822C69BC5C
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 22:17:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 999364423D
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 21:17:07 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by lists.linaro.org (Postfix) with ESMTPS id 23AE03F339
	for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 21:15:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=CNTa3icU;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.170 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id 19so1501300plo.7
        for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 13:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5If47abMxVvdOGe/2jH89dN5UVVTGLmcg6EQzMCdPac=;
        b=CNTa3icUd804RiMnh5GApmZCXhp0f7037aAPuvfSQytTW0npuSY78gEtlHqHCmn8NW
         5eyb8k4NDi+V7FS2GFNTsCMCbwtF/ltNdJ1R8lKpXjwlSuW/xA05CvMqFBhSSu07MEsU
         JH2yxu12s/Sag2BEmE1hSCDB+qldNLfSTvnE6oWJFCK0Mmjy4N6LpwoNiHLpYA46vDhq
         FKyzDBMCupniEDosM2D/oX5huHqWv+fGKFcFhLGvsIObJuL5txuSIxuJcq6Ha7jB3e5N
         8lvmchf4xOKnqQmPJFYTIwbQW4VQVAXjRPv2OhBvHAUvo9YyVyaFKXVLfvp2bURupKsZ
         whYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5If47abMxVvdOGe/2jH89dN5UVVTGLmcg6EQzMCdPac=;
        b=ohD+yjtREgF3i8TvutnZUF65ToiSdy4j27Ct+nKJexH4id7+ybBR4CjF4LWNqx31a0
         RgPTlu0nmMt5puQCfEMFMxJrxk0n5oyvaBMcQLdfhusdc0FRBEQcJocyL9PBHsCFFAzl
         hBMX02bZtoveX69MVVyv76HdQEQ28nWu+2Lm0wRJ8ORW6WFO1jIC4JeMYH9Nl4cVbc+z
         qYh1D8Ozl4MKQoFEl/+nzRA90vHU5TbtBsA1kNe6Z5t9dGyK9ENPaCmuWmYDlFRuh4Ea
         /m4cWSY2Q2/cAugPCgx6telLTOZ5Eh2dBkf/sDcNxLoQfPEXj6AYOBYTGFjq+1t3VUL1
         4umQ==
X-Gm-Message-State: AO0yUKXCqJwAcVHpwcQuF7AjJKOHcntuYFpZKj493wl/U0+NzPaDyY+m
	ueGH/QT/8epbnqLb1whj/fs=
X-Google-Smtp-Source: AK7set8+pwmvlN4/RTpTbvPrSu6bTCkr/ysSnaWTuvTnV/TRfDp/g41/uigNU2EfzQvt83CM+JnvNw==
X-Received: by 2002:a17:902:f9cc:b0:19a:fd85:1891 with SMTP id kz12-20020a170902f9cc00b0019afd851891mr1808045plb.14.1676754952290;
        Sat, 18 Feb 2023 13:15:52 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id b21-20020a170902d31500b0019aafc42328sm236770plc.153.2023.02.18.13.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 13:15:51 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 18 Feb 2023 13:15:46 -0800
Message-Id: <20230218211608.1630586-4-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230218211608.1630586-1-robdclark@gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 23AE03F339
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[73.67.135.195:received,209.85.214.170:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.170:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 6GE27QJECM7BYPAHNDSF567QOCIKYGP2
X-Message-ID-Hash: 6GE27QJECM7BYPAHNDSF567QOCIKYGP2
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 03/14] dma-buf/fence-chain: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6GE27QJECM7BYPAHNDSF567QOCIKYGP2/>
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
