Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 084216A6388
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 00:01:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08E8144244
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 23:01:58 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by lists.linaro.org (Postfix) with ESMTPS id DCE454423F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 22:58:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ZagXoGgo;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.52 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id x20-20020a17090a8a9400b00233ba727724so557012pjn.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 14:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677625124;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l4ehVbwCT75xnP/ECU7XAGaXEnBwLlSeDxhb5qTgwac=;
        b=ZagXoGgot3rF1P+jOmf47rOJFpEPyUG8PwWfOLPRh3xSQUqeeHDID7n0sh9Q00CXC3
         sgTAdPcGx0vTAaf91U7QFRQd7BtzPU9/xzZDsh6+1971e+/qbZEV4cga/gyzupQeV8K0
         JtSSXHn8OFX+595H3ttUaMjri3lpZR1Qu5ue9p/fl15Spmpkv1pspaa/8iap75dnBL9Q
         EnhUyOhaR/b2xtpJelKtQ96TzFznKM+M3+8KNNxu73yr1RsQVXCsCEu/YCrCjgVl652J
         s83rIBMH4UG72ZcVEGSRMUU9NDtiOfl+jopPOZqjr96ypXHI03MMtB8OixiovnAuGT4Y
         fyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677625124;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l4ehVbwCT75xnP/ECU7XAGaXEnBwLlSeDxhb5qTgwac=;
        b=L77LL6Fj+2w4IbiL+/x2Oi35Rpsx+BRK319Dhis4gYQMiKJ9Wtm8PB0bFmMUWkGTdV
         eGn9mCxJJeiRXSva7unlb0/SzG2G70zJrA94pRNMoKVxlcOtS4VioRYCuF9pb/n9dQ1v
         gw5E3HNJwAbZ8SW6u6rmqqQ5hrUcFAWHeWbnmDXEn6zb7IlZqoMXsHnIpIyZE5v13spJ
         uFJB8HTC5SvLXG3cjb5oYNE2+sJQ7k53XdCAyZd6diT2f8QReMAB4HZseSc0eVwOgi/a
         MZR3kSwWJ0YtMZAsUaEEkAVuihjTtflfFoDLZWoMtZZz1PHGEAmK3jCRGkoP0CWjq/aa
         tAvw==
X-Gm-Message-State: AO0yUKVEDdt6IHHLSBdFRsnIAvJbhjb8fNl7c04iieggkLrwabOEdiKx
	ZfyUWONlxjfSAz2Cf7xs3Ig=
X-Google-Smtp-Source: AK7set8hoLg5bctNWbZ+82twM3+oK6UKHMtI4y7UbnnGjn/K5pWj4/SUHfnn3a/bFr2b/Fa26YHa9Q==
X-Received: by 2002:a17:902:d507:b0:19c:e9c4:cc13 with SMTP id b7-20020a170902d50700b0019ce9c4cc13mr4994218plg.25.1677625124037;
        Tue, 28 Feb 2023 14:58:44 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id e7-20020a170902b78700b00198f73f9d54sm6996620pls.117.2023.02.28.14.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 14:58:43 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Feb 2023 14:58:07 -0800
Message-Id: <20230228225833.2920879-4-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230228225833.2920879-1-robdclark@gmail.com>
References: <20230228225833.2920879-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DCE454423F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.216.52:from];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.52:from];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[chromium.org:email,amd.com:email];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: HVB5F7AL4RRVVMS3SKP3OIEUAWMYSTTH
X-Message-ID-Hash: HVB5F7AL4RRVVMS3SKP3OIEUAWMYSTTH
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 03/16] dma-buf/fence-chain: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HVB5F7AL4RRVVMS3SKP3OIEUAWMYSTTH/>
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
