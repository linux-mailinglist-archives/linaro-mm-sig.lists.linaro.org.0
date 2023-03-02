Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1D56A8DA7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 00:55:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DDD940E16
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Mar 2023 23:55:21 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by lists.linaro.org (Postfix) with ESMTPS id 20DE53F546
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Mar 2023 23:54:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=NUH74MoM;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.51 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id m8-20020a17090a4d8800b002377bced051so4515016pjh.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Mar 2023 15:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677801246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l4ehVbwCT75xnP/ECU7XAGaXEnBwLlSeDxhb5qTgwac=;
        b=NUH74MoMlFjyHOoQOc3Tof5RqeryUU+TpxADwdecLbscsf67tEJFGhdRs5OWz2/eTD
         TiLDpF0n8UeoLj2nlfhjnUo8HWIroTQsFdMjRz3T8ZqPaP+qGQXWYPlzbuX5L2PKmK2A
         0jC6PSe+O7Q2xNLrCnTVKAUdK3IXA7sY0mler06fvzHsOkx+hfv+ibsPiqd2d9neDEgs
         w/RMn11V5lkdSlkYR+t6K3Zoh6Qlc8CBHrHcs+E9+BSxFMdEs6ht9x3dpgxcLNnK/RYU
         L6QanlZS1tad8ALNEB7qe3o8tbuTg/z0in+tZN4tPjzXP7abOw6YrX5drli2n2JuAPdO
         tZsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677801246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l4ehVbwCT75xnP/ECU7XAGaXEnBwLlSeDxhb5qTgwac=;
        b=osQRLpt+C4d0YKFYY3OSNG2hBFwAKySpno62LTHXprLbhl46DHMjc6dNsgXjCUqJYT
         I6WQds274c8V4WrI6X/Dla92CAcGH/aLx+dCkPB0PTduJhD9jeVY3hQBdcmVchSQfiTT
         AU+qev3nJhdakJ2h7PO2j2O5om5wRugxegNzALI+Ju3ycreiuhV5QjmIC7ANw2foEaIQ
         +rHZN8jl0RStmPW5b9CZJVjsAvjWXNVXS2cFg4ouVRXMlXmnDbLiTEJd5yNRIR083h+K
         dtDhS+kpGg6xmN/s0Up8Nkn0aPCFQ2AEMXUDR8NS95Pvst/znCY6QU8nJqFVmEAPX5W3
         SDHg==
X-Gm-Message-State: AO0yUKWwOUGjusqCuKR83bd7hV+77pvzMkQ0lDXzCq4vdw19vvgbdvO9
	WLxhgsB8uBrPMPy50UhT4ac=
X-Google-Smtp-Source: AK7set9yFD6Y5yJLKU6vm3DlNq9ITibopHzdU7+nBSZ1Vfy3oUeJJSkMSehminR0BguhikQjch98Ig==
X-Received: by 2002:a17:902:ea0c:b0:19a:727e:d4f3 with SMTP id s12-20020a170902ea0c00b0019a727ed4f3mr4273475plg.5.1677801244532;
        Thu, 02 Mar 2023 15:54:04 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id ka3-20020a170903334300b0019e21d2ed2esm226622plb.88.2023.03.02.15.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Mar 2023 15:54:04 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  2 Mar 2023 15:53:25 -0800
Message-Id: <20230302235356.3148279-4-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230302235356.3148279-1-robdclark@gmail.com>
References: <20230302235356.3148279-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 20DE53F546
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.51:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
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
Message-ID-Hash: GHKPEOV6FYJR2JG5YDI77RRAKLIB73CS
X-Message-ID-Hash: GHKPEOV6FYJR2JG5YDI77RRAKLIB73CS
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 03/15] dma-buf/fence-chain: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GHKPEOV6FYJR2JG5YDI77RRAKLIB73CS/>
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
