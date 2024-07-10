Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6F892CE39
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 11:33:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2FA341106
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 09:33:25 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by lists.linaro.org (Postfix) with ESMTPS id D07623F392
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jul 2024 09:33:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=GnfZvnS0;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.167.47) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52e9ab8b7cdso784323e87.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jul 2024 02:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1720604001; x=1721208801; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GTHGZWFFIG2y8znG1jvML///poV3IrhnVzz1kC5uonU=;
        b=GnfZvnS0gIjM75hg9r+U2swpTdBTaeouIFIr/lCzYEVuZyDrnPiP+iIWnPOaHVOh5g
         6WQaDBiQnATdFTv1dlEfjZtnnpk23Zvfi1upS1bqTXCmcCSXgHkFF5tlAJuvN5xX0HQ+
         i9HjeiBVg+fbjeGdlzXKi97RFFTQg3cc9fNCc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720604001; x=1721208801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GTHGZWFFIG2y8znG1jvML///poV3IrhnVzz1kC5uonU=;
        b=JuKi/iGF7lKvS245DcSGFhXsJxQZQ0BZqtDkWaLLkWDnEWAVtrDtY+KW7h1AbowaJj
         u33QHESB3LVusImQyUvMISpvpWuWt/AhM5QncDenfRi855VitDbzJ7c7OrADwF/VSnJN
         3axzxTjdO81mjt9ZZuz7wSTIFJTNmv2wBZ468IDf64yyueBCI/yTWuD5KLEa35dqzwQb
         AzPsAmznNs06ddPrhZWLSxD8IAlhHl9ons96pFn98U3TzkGs61QkyYJ5gcm7SwLrMvVr
         tRaSMcj6rXUyYjzzs1966pC86oP4eHEPsLcy/9Ql7UchJWE1X635CBE2DobuBOQ2/PaX
         pJGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIjBUAE2jLqRO2+CDCEB5SM+Y9aGTK68OWHd93FAvhfW946KN493muwseuf2wpcmMLj3kuKnNdKmghz2BQVI43097mnGo7za24+HLQ3Ag=
X-Gm-Message-State: AOJu0YxuXxww/Cxpg4xSkeaBD1Zay+l62zmEmvy+V+g8lHMLtucHxQ0d
	yaNnWz3INDrFIEjaYgWF8H2VfpKA2/rs5luQLyRW2uKV6PorZq96wgZiSe5apIo=
X-Google-Smtp-Source: AGHT+IE53obXe9iAhMtu+VAErcsSEkowso2ZAWhhq6KbgW5hVFggamUEZCMm4iphO7D+n2JaklYQbA==
X-Received: by 2002:a05:6512:10d2:b0:52e:9b18:9a7f with SMTP id 2adb3069b0e04-52eb9993c36mr3246261e87.2.1720604001546;
        Wed, 10 Jul 2024 02:33:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6f5a27sm73448935e9.23.2024.07.10.02.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 02:33:20 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>,
	LKML <linux-kernel@vger.kernel.org>
Date: Wed, 10 Jul 2024 11:31:16 +0200
Message-ID: <20240710093120.732208-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Rspamd-Queue-Id: D07623F392
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.47:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DWL_DNSWL_BLOCKED(0.00)[ffwll.ch:dkim];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa:received,209.85.167.47:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BW5M7T7NY55XAD25OGODYAQ4E7MMTPJC
X-Message-ID-Hash: BW5M7T7NY55XAD25OGODYAQ4E7MMTPJC
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] drm: Add might_fault to drm_modeset_lock priming
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BW5M7T7NY55XAD25OGODYAQ4E7MMTPJC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2UgYWxyZWFkeSB0ZWFjaCBsb2NrZGVwIHRoYXQgZG1hX3Jlc3YgbmVzdHMgd2l0aGluIGRybV9t
b2Rlc2V0X2xvY2ssDQpidXQgdGhlcmUncyBhIGxvdCBtb3JlOiBBbGwgZHJtIGttcyBpb2N0bCBy
ZWx5IG9uIGJlaW5nIGFibGUgdG8NCnB1dC9nZXRfdXNlciB3aGlsZSBob2xkaW5nIG1vZGVzZXQg
bG9ja3MsIHNvIHdlIHJlYWxseSBuZWVkIGENCm1pZ2h0X2ZhdWx0IGluIHRoZXJlIHRvbyB0byBj
b21wbGV0ZSB0aGUgcGljdHVyZS4gQWRkIGl0Lg0KDQpNb3RpdmF0ZWQgYnkgYSBzeXpib3QgcmVw
b3J0IHRoYXQgYmxldyB1cCBvbiBiY2FjaGVmcyBkb2luZyBhbg0KdW5jb25kaXRpb25hbCBjb25z
b2xlX2xvY2sgd2F5IGRlZXAgaW4gdGhlIGxvY2tpbmcgaGllcmFyY2h5LCBhbmQNCmxvY2tkZXAg
b25seSBub3RpY2luZyB0aGUgZGVwZW5jeSBsb29wIGluIGEgZHJtIGlvY3RsIGluc3RlYWQgb2Yg
bXVjaA0KZWFybGllci4gVGhpcyBhbm5vdGF0aW9uIHdpbGwgbWFrZSBzdXJlIHN1Y2ggaXNzdWVz
IGhhdmUgYSBtdWNoIGhhcmRlcg0KdGltZSBlc2NhcGluZy4NCg0KUmVmZXJlbmNlczogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzAwMDAwMDAwMDAwMDczZGI4YjA2MWNkNDM0OTZA
Z29vZ2xlLmNvbS8NClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPg0KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+DQpDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KQ2M6
IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KQ2M6IFN1bWl0IFNlbXdh
bCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpD
YzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQotLS0NCiBkcml2ZXJzL2dwdS9kcm0v
ZHJtX21vZGVfY29uZmlnLmMgfCAyICsrDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX2NvbmZpZy5jIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9tb2RlX2NvbmZpZy5jDQppbmRleCA1Njg5NzIyNTgyMjIuLjM3ZDJl
MGE0ZWY0YiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9jb25maWcuYw0K
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX2NvbmZpZy5jDQpAQCAtNDU2LDYgKzQ1Niw4
IEBAIGludCBkcm1tX21vZGVfY29uZmlnX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikNCiAJ
CWlmIChyZXQgPT0gLUVERUFETEspDQogCQkJcmV0ID0gZHJtX21vZGVzZXRfYmFja29mZigmbW9k
ZXNldF9jdHgpOw0KIA0KKwkJbWlnaHRfZmF1bHQoKTsNCisNCiAJCXd3X2FjcXVpcmVfaW5pdCgm
cmVzdl9jdHgsICZyZXNlcnZhdGlvbl93d19jbGFzcyk7DQogCQlyZXQgPSBkbWFfcmVzdl9sb2Nr
KCZyZXN2LCAmcmVzdl9jdHgpOw0KIAkJaWYgKHJldCA9PSAtRURFQURMSykNCi0tIA0KMi40NS4y
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
