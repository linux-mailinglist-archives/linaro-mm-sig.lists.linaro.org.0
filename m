Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE7069D4D4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 21:20:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 413163F499
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 20:20:23 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	by lists.linaro.org (Postfix) with ESMTPS id 3D2053F46F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 20:19:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=eNWnZdY7;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.215.176 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id k29so1596230pgm.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 12:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MohZmh6ZcfzJn1OmRfs/o8+oM4ZPKLi2FB+4LPpL34o=;
        b=eNWnZdY7bb0sIPeM/dP+nfuIuObMIanncbZ+NRD8X1XJMJ3PtrtrWEi9KbjDnT/8w/
         4868uK4c3a+o7f87mCfBXFuvYydQ0cuDb9mH/m5cPTpxn/qovKcax5YMahSlLSjYQWnj
         cOhgi+GA0fYpdhHXJew7nHx03aK8aUQ8p5ZFGvXeOjgRTpbbfDaG4dcHiobo8k+1cZdr
         rdBw52ruPwcHMxTkGp2qw/JKV4NNoevhSbXnwZWXIRBNhlsTWdgG+NiAWOZqCVkeVTPm
         EKNybgNSFZ+jaB3UZq7n3CyDCiF7d7P5sjMF/me3F6e407AydxnfmvvF+ZJZ22/xu8M0
         auhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MohZmh6ZcfzJn1OmRfs/o8+oM4ZPKLi2FB+4LPpL34o=;
        b=vvMDHbYzwDU43l5+N3/MJEl4pwql204NYPXLM0DTxpInoIs6CIhmfkRIUNkreuBzzM
         Fre+0SWTXIuBnDG1DfAPh/Nhyxos38M9+hMX65VX60uv2hXySe5ix8Jqutq3MKNqw/40
         X3p5rvKndFMKk2xPAP7RVa9Hv79knN1niYYUD7BwtCZX58EYxqe6ntln8ZV37UC3iQp+
         Mbs18DQ9sUpyxlb1xdN4WtMROlkpsYfG9KVbvVCvG2iBATErc3oqwxZSVGoJZ4B4SSPd
         rv2N8CYhWKLoWTAjxDI+/0ZkbLoC/o9IYzoozvZNbA7lIvuxqHdUUv9eYEUFQVin7CwL
         BTuw==
X-Gm-Message-State: AO0yUKVZw3f9tm6aoADWsZ9ZEkJwyJicUHGAdwH6/ctcmV+DhxTOLHa9
	1uWKUSpB/wHZm+HjsLMvmlk=
X-Google-Smtp-Source: AK7set/IEnsknqrg1Kvv1r90ECUxuHVfyDcG96xSfQIiNKkRh0eFALUg+af5KU3PpovvGnGW2S9fJw==
X-Received: by 2002:a62:52d7:0:b0:5a9:d4fa:d3c7 with SMTP id g206-20020a6252d7000000b005a9d4fad3c7mr2485352pfb.7.1676924362392;
        Mon, 20 Feb 2023 12:19:22 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id g20-20020aa78754000000b005a9bf65b591sm7029643pfo.135.2023.02.20.12.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 12:19:22 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 20 Feb 2023 12:18:49 -0800
Message-Id: <20230220201916.1822214-3-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230220201916.1822214-1-robdclark@gmail.com>
References: <20230220201916.1822214-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3D2053F46F
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.215.176:from];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
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
Message-ID-Hash: EETWHZG4OKLXZ27WYCTS4O6GZJ6ATZZH
X-Message-ID-Hash: EETWHZG4OKLXZ27WYCTS4O6GZJ6ATZZH
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 02/14] dma-buf/fence-array: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EETWHZG4OKLXZ27WYCTS4O6GZJ6ATZZH/>
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
