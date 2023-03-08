Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A246B0DB9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 16:54:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E23243F0B2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 15:54:48 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by lists.linaro.org (Postfix) with ESMTPS id 154E43F0BB
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 15:53:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=hpCfI9KD;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.52 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id kb15so16928253pjb.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 07:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678290815;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lcraofrhRDAdrHGa0UzQfcfeN59LkTANHVsK7xkfU0Q=;
        b=hpCfI9KDoIpsurVFvi6JvaCUXX5V8whc+Mt2IXW2uSOKz1Q5dxdtHiQPVq9AM6tUPq
         sCk6nrAsOY0qx5qi93O60+KSvFUlcqYXolDmY6IaV1mxU2SPBhwXNjArN22qgCeWCJJe
         fSRxj7YAkbEoJg+AsCJxxqqPGDHWTusIaKafAqQARUTvnru8GsWdU19lLWZjfZMnLG5q
         2aGL4M/jwCBSO49iC5E4wCZyOeonSOiwMDtNWhIQAZqezZ/H8I9KLd5FmTgctqbptQGE
         b0Jp2fx5HIZ7CuqdQOX1R9PbAc2Yj9x8cvWgU9S1PS2hlr985tWoNfwGVqQ33VOxtSUd
         DmOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678290815;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lcraofrhRDAdrHGa0UzQfcfeN59LkTANHVsK7xkfU0Q=;
        b=0xLm08w5Mym9MGOjpT1V010Gu2O/KqT9KuPc8oTQ9yTzOyV5s6q2XyMTMWH0LYa9Ia
         jX5PDfzGM6prg5riqmtHhPKSnTOm6fgVTN0ka/DpGGPMEBFPSxqbhX/nITXp6u02/ru3
         XcoVR31FRnbJ5OJfrH7qnGEZGFAuF24aAuv3+GKF+fO6sYFItR+9C9ZRLktkXLWRQzaM
         RKUO7On0l/wiCVDgc+CPEHeSJQl0iCfZXBFoja9q8+AZPZESChw5czmu4P31hp0sdWDe
         ETUAzpFEeudqrO/RPqtE1jkuuzOjigT7I7bTFvDHQgQOk4TqxQWNVqPFwVsvKY5OMRg+
         t84Q==
X-Gm-Message-State: AO0yUKXyLTs85Lv4v1l00LE7v+ZdwTJ2XXx7foZKyVolAGIS0q6K4OFp
	+Qwl3I4Cl10HHewa2GGRoic=
X-Google-Smtp-Source: AK7set/2eF5m88UMlszgcFp7cgo5yOQOxbJycIrpK9ko8JpPSABVkued0J6pMJtqfFLipyBKXl6Sjw==
X-Received: by 2002:a17:903:22c5:b0:198:fded:3b69 with SMTP id y5-20020a17090322c500b00198fded3b69mr23560954plg.53.1678290815231;
        Wed, 08 Mar 2023 07:53:35 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id j7-20020a170902690700b001991942dde7sm9951550plk.125.2023.03.08.07.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 07:53:34 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 Mar 2023 07:52:54 -0800
Message-Id: <20230308155322.344664-4-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 154E43F0BB
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.52:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
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
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,gmail.com,intel.com,basnieuwenhuizen.nl,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: QA5QZ3WFEG6D45OQBAMWUMEHOOGFOJYS
X-Message-ID-Hash: QA5QZ3WFEG6D45OQBAMWUMEHOOGFOJYS
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Turner <mattst88@gmail.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v10 03/15] dma-buf/fence-chain: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QA5QZ3WFEG6D45OQBAMWUMEHOOGFOJYS/>
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
X2ZlbmNlX2NoYWluX29wcyk7DQogDQotLSANCjIuMzkuMg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
