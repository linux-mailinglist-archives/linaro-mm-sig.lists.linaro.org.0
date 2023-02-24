Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0327A6A22F5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 21:03:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09A3044240
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 20:03:27 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by lists.linaro.org (Postfix) with ESMTPS id 73E8144243
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 20:02:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=DXggLen9;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.53 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id k21-20020a17090aaa1500b002376652e160so439858pjq.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 12:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l4ehVbwCT75xnP/ECU7XAGaXEnBwLlSeDxhb5qTgwac=;
        b=DXggLen98SswuMy6LWqXGQsVk+Kl+HCfw0GV1eAOFvn+k5vSTK02Ocr5Lbsyxv6vfh
         G20mSjTIjOf259aIQo9lioVuf2337pFt9wQRSOGi8YqoroNnPJKx2D4Mr0xHfHSxCGT7
         akg3hVHnOWkFuSiethSqYeWo7JDzOhnrfIoSCv7bq9Cg9YoLldU3y0kGrbBbMx0pQ+2p
         08cG5QwY8KRM5ilt4+qiozXhQ1XkMPB9i3dsYB6XbH95KMc8X6/uhu8+apx8JqhHqY4x
         6FZc7CMmgBc7sW4c5ct5na3F6MPDyh0tfN48fiZnvYPLT38xxShI5xvb/D2DWLAmHqBB
         a37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l4ehVbwCT75xnP/ECU7XAGaXEnBwLlSeDxhb5qTgwac=;
        b=MEJkkahbZSyDytCf9BfTregTHrr4GfSSYgzlNA5p1OSyYqdzquqa8AHdVzWAJKeJ0/
         pzlySRCeUr17w9nJg994lSohwsSnPIR3kYwEiNoqx+MqhscdWb3YGPCFd2dXhmYk6/O4
         P1wqxSSwBEVyJ/0QSIr78JkwwFnvOlRlx6zNlTdV49MMnH8hhPBqC+K+erNEkzZulisL
         882tkMv9gejfkfuwSWW9lkN6v3ynumkFX7HQT3Z/1PZDd3+zd9BkCiWSlL6xtcRZlu/c
         JIHtMgeM/aRSWXn1GVxV/xuWb3pt6e3Icka+rcmdgGnNdjzCcmVrZVCj5D6tXLVbaKwM
         t1Aw==
X-Gm-Message-State: AO0yUKV4YBR3fOzIWSQpGgXrI14VC1zkeNb3WhaTFYJYMb5CBiszyhk9
	W0cEpSLh5WlJ/FydGEHFFP0=
X-Google-Smtp-Source: AK7set+7gPv2NZgQnRNjYEEsoK8icNOajvOd/YFLS5f1LxWqWPzjxCeauf+X33arB9Ab3jCkqEV4GA==
X-Received: by 2002:a17:90b:33cf:b0:237:b92f:39d1 with SMTP id lk15-20020a17090b33cf00b00237b92f39d1mr644702pjb.0.1677268925626;
        Fri, 24 Feb 2023 12:02:05 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id d16-20020a17090abf9000b0023440af7aafsm61128pjs.9.2023.02.24.12.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 12:02:05 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:01:31 -0800
Message-Id: <20230224200155.2510320-4-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230224200155.2510320-1-robdclark@gmail.com>
References: <20230224200155.2510320-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 73E8144243
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received,209.85.216.53:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.53:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[18];
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
Message-ID-Hash: RNRFJGTG5QGFYJEEI5OLOVAUEM7X6DZP
X-Message-ID-Hash: RNRFJGTG5QGFYJEEI5OLOVAUEM7X6DZP
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 03/15] dma-buf/fence-chain: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RNRFJGTG5QGFYJEEI5OLOVAUEM7X6DZP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpQcm9wYWdhdGUgdGhl
IGRlYWRsaW5lIHRvIGFsbCB0aGUgZmVuY2VzIGluIHRoZSBjaGFpbi4NCg0KdjI6IFVzZSBkbWFf
ZmVuY2VfY2hhaW5fY29udGFpbmVkIFtUdnJ0a29dDQoNClNpZ25lZC1vZmYtYnk6IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IGZvciB0aGlzIG9uZS4NCi0tLQ0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDEyICsrKysrKysrKysrKw0KIDEgZmlsZSBjaGFu
Z2VkLCAxMiBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWNoYWluLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCmluZGV4
IGEwZDkyMDU3NmJhNi4uOTY2M2JhMWJiNmFjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS1jaGFpbi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWlu
LmMNCkBAIC0yMDYsNiArMjA2LDE3IEBAIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9jaGFpbl9yZWxl
YXNlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIAlkbWFfZmVuY2VfZnJlZShmZW5jZSk7DQog
fQ0KIA0KKw0KK3N0YXRpYyB2b2lkIGRtYV9mZW5jZV9jaGFpbl9zZXRfZGVhZGxpbmUoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UsDQorCQkJCQkga3RpbWVfdCBkZWFkbGluZSkNCit7DQorCWRtYV9m
ZW5jZV9jaGFpbl9mb3JfZWFjaChmZW5jZSwgZmVuY2UpIHsNCisJCXN0cnVjdCBkbWFfZmVuY2Ug
KmYgPSBkbWFfZmVuY2VfY2hhaW5fY29udGFpbmVkKGZlbmNlKTsNCisNCisJCWRtYV9mZW5jZV9z
ZXRfZGVhZGxpbmUoZiwgZGVhZGxpbmUpOw0KKwl9DQorfQ0KKw0KIGNvbnN0IHN0cnVjdCBkbWFf
ZmVuY2Vfb3BzIGRtYV9mZW5jZV9jaGFpbl9vcHMgPSB7DQogCS51c2VfNjRiaXRfc2Vxbm8gPSB0
cnVlLA0KIAkuZ2V0X2RyaXZlcl9uYW1lID0gZG1hX2ZlbmNlX2NoYWluX2dldF9kcml2ZXJfbmFt
ZSwNCkBAIC0yMTMsNiArMjI0LDcgQEAgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2Zl
bmNlX2NoYWluX29wcyA9IHsNCiAJLmVuYWJsZV9zaWduYWxpbmcgPSBkbWFfZmVuY2VfY2hhaW5f
ZW5hYmxlX3NpZ25hbGluZywNCiAJLnNpZ25hbGVkID0gZG1hX2ZlbmNlX2NoYWluX3NpZ25hbGVk
LA0KIAkucmVsZWFzZSA9IGRtYV9mZW5jZV9jaGFpbl9yZWxlYXNlLA0KKwkuc2V0X2RlYWRsaW5l
ID0gZG1hX2ZlbmNlX2NoYWluX3NldF9kZWFkbGluZSwNCiB9Ow0KIEVYUE9SVF9TWU1CT0woZG1h
X2ZlbmNlX2NoYWluX29wcyk7DQogDQotLSANCjIuMzkuMQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
