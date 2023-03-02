Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F54E6A8D9B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 00:54:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2747740E17
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Mar 2023 23:54:58 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by lists.linaro.org (Postfix) with ESMTPS id 8FC4540E17
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Mar 2023 23:54:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=NgK5Qtsz;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.48 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id p3-20020a17090ad30300b0023a1cd5065fso674202pju.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Mar 2023 15:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677801243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MohZmh6ZcfzJn1OmRfs/o8+oM4ZPKLi2FB+4LPpL34o=;
        b=NgK5QtszZ34lTuRCDFR83nPJyn+DB4rxTP0xE2Tk42ck5MrS8xMf8+Res005BFWuUk
         OiuxWxoPYxy985tYupfANAIrsky/jHuQ0bpw0XrNrep1WFn2j77wuC2WfXhWBQrMh2KG
         evUciIFKtkiC5/Hmp/8FmBzb9+e5Vo7L6cnn6JIueIthHxAVhn335lRK8rGh5mGIius4
         Wa8k5qiZYL/4YmTU7abiVzfN5/DUGErsbDi1RVQ8/Tenm/Tt8tNy7WPC+INzuVg/caoS
         m+ubGaCAgoPAqn+oSkkBszkky6JbiZxyGBXxNkFY9Ckw1BDh1V34yYFBDyAdvi6yg4k8
         BRdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677801243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MohZmh6ZcfzJn1OmRfs/o8+oM4ZPKLi2FB+4LPpL34o=;
        b=Qxz0cop2SPU4CogINNGRlhToGDxpy5BnNfh8RCw3tC5qH2e5N2FQtl7OtfArA9Fnwm
         7/bze3Gm913xvc4SgLunIc9NgQc4XOj9HBvZITcAZ3aPhkTPzs3E7SNG3G2vxUlFi3Uo
         BW9cosOgVzKYtb91td/jMoDyiRkk8MZxMvvPIjTV/gKKUOPdmEwJiSt2atRZCNdtBa6N
         5xSi2OwJKAV5XgjByR/wlsUL/JKv9uSzrjYlrF/8Klw2CM9720PL0xOnPcbCH69JR37u
         rBLVvkbnSQ9nejbvYIs8nlvys4kDWbMXHHXWG06F2KW9O1t12F6yVc9dH/rQ7JQZQMzs
         5ESg==
X-Gm-Message-State: AO0yUKW1U3ZhHQAFSu21IXlF3eSdRpsDCnS5FSwvA6iaeX5owOGTgUZV
	hrOuOUSZ/iqi7wfpZQYX8ZQ=
X-Google-Smtp-Source: AK7set/jeW66C3SIqgDS1jGcRzwkcvjfPVt1xDGPtA139q1orfwZ9smn/0e+p7xdiCiKqaxbrcx5WA==
X-Received: by 2002:a05:6a20:12c3:b0:c7:40f8:73d3 with SMTP id v3-20020a056a2012c300b000c740f873d3mr261340pzg.33.1677801242601;
        Thu, 02 Mar 2023 15:54:02 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id 35-20020a631763000000b004ecd14297f2sm227996pgx.10.2023.03.02.15.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Mar 2023 15:54:02 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  2 Mar 2023 15:53:24 -0800
Message-Id: <20230302235356.3148279-3-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230302235356.3148279-1-robdclark@gmail.com>
References: <20230302235356.3148279-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8FC4540E17
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.48:from];
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
Message-ID-Hash: SR5WYGYCOIXCYSDJJBRFUMVS72CCCFBS
X-Message-ID-Hash: SR5WYGYCOIXCYSDJJBRFUMVS72CCCFBS
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 02/15] dma-buf/fence-array: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SR5WYGYCOIXCYSDJJBRFUMVS72CCCFBS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpQcm9wYWdhdGUgdGhl
IGRlYWRsaW5lIHRvIGFsbCB0aGUgZmVuY2VzIGluIHRoZSBhcnJheS4NCg0KU2lnbmVkLW9mZi1i
eTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KUmV2aWV3ZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDExICsrKysrKysrKysrDQogMSBmaWxlIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UtYXJyYXkuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KaW5kZXggNWM4
YTcwODQ1NzdiLi45YjNjZTg5NDgzNTEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0K
QEAgLTEyMywxMiArMTIzLDIzIEBAIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9yZWxlYXNl
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIAlkbWFfZmVuY2VfZnJlZShmZW5jZSk7DQogfQ0K
IA0KK3N0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsDQorCQkJCQkga3RpbWVfdCBkZWFkbGluZSkNCit7DQorCXN0cnVjdCBkbWFf
ZmVuY2VfYXJyYXkgKmFycmF5ID0gdG9fZG1hX2ZlbmNlX2FycmF5KGZlbmNlKTsNCisJdW5zaWdu
ZWQgaTsNCisNCisJZm9yIChpID0gMDsgaSA8IGFycmF5LT5udW1fZmVuY2VzOyArK2kpDQorCQlk
bWFfZmVuY2Vfc2V0X2RlYWRsaW5lKGFycmF5LT5mZW5jZXNbaV0sIGRlYWRsaW5lKTsNCit9DQor
DQogY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX2FycmF5X29wcyA9IHsNCiAJ
LmdldF9kcml2ZXJfbmFtZSA9IGRtYV9mZW5jZV9hcnJheV9nZXRfZHJpdmVyX25hbWUsDQogCS5n
ZXRfdGltZWxpbmVfbmFtZSA9IGRtYV9mZW5jZV9hcnJheV9nZXRfdGltZWxpbmVfbmFtZSwNCiAJ
LmVuYWJsZV9zaWduYWxpbmcgPSBkbWFfZmVuY2VfYXJyYXlfZW5hYmxlX3NpZ25hbGluZywNCiAJ
LnNpZ25hbGVkID0gZG1hX2ZlbmNlX2FycmF5X3NpZ25hbGVkLA0KIAkucmVsZWFzZSA9IGRtYV9m
ZW5jZV9hcnJheV9yZWxlYXNlLA0KKwkuc2V0X2RlYWRsaW5lID0gZG1hX2ZlbmNlX2FycmF5X3Nl
dF9kZWFkbGluZSwNCiB9Ow0KIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2FycmF5X29wcyk7DQog
DQotLSANCjIuMzkuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
