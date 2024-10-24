Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5251A9AE53E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 14:43:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6491E40A8F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 12:43:06 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 9B6E045404
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 12:42:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=C7ApG0fZ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a9a977d6cc7so50306566b.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 05:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729773729; x=1730378529; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LYQP74pAccaxp/bWVaRuhS0QTdY30Bf36SGERpSHwKs=;
        b=C7ApG0fZHS2A7UxpdHXJHd/uvHuqBOvRF755F7tBPuujb4OoBoVzdTKvyWOOMBiAD2
         cJSnTbgaWW8i3mjxU0RM+qpAktMfXC//h97OnFxt8xtTObeaFcWWtZ92GeFf4rcPcJ3r
         Fln6yzGwPMP35zbDXvhvDAsiCqRMR0+5rOIyULX3Ysfhuse5HlNwAYi5GYQen76errlC
         ucmnT2CrPkkC7Mfg9eBwSl9NMLfV5krx2KF73yDnGMigdX1eLbU/8xbyFI+5UsA3yFXx
         eac/Z6yvxjjHzC4Ob7xC0mjhhOfnLPOUyikC3WTCQnNc55XrkfnNZxnH8YTp78sZWJkX
         nr6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729773729; x=1730378529;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LYQP74pAccaxp/bWVaRuhS0QTdY30Bf36SGERpSHwKs=;
        b=iSTZ/dtFF9FmgYtyfJIZA3ZK1ApD2mtEdOgKMjpjx15/xBjBlZMP9a99H/K6Kr/eMj
         kNuRHwLaFNrWpnJ6+ofAZRgqstPY6vdiqdBoOBN1RZmckIyyVR4P4BGv8K+Z5uUw8ghZ
         cWPuAM/SrvhJ1WklyDoPuvm9xkMYw1lq6CtooBWMVFqyu6jTAwkc/wlhho2RNHNpIcp3
         HSm/9c2HaBX05XQ9DRbgP+EGiOvWeueBBlyjY99RTcRnEIXeMmEm8l7sVFgsQ/Qgx5dv
         wu2V6Jjn1Oer+fxoM67VOLCacjrTC6svzm/asfuAfs5Dd2bOzIo8949IFOFUTGNFK8Zw
         AKAw==
X-Forwarded-Encrypted: i=1; AJvYcCWmLKeoPCZbGxQc1sizARKqxQoIvJZiJaHzWFWf2djh39nPGdqHfi2MsDlk21GJ1C+82Bkj/gp2RLJAoXov@lists.linaro.org
X-Gm-Message-State: AOJu0YyshGggpBZOi3v8qxyUHL5elcIHXjKPDsjggBNRENc4GoF+dtQa
	Jv5HnmYR8+BQDs7Bih1XsOmLxuv5V250DSik9ixzNb0io4zisRKI
X-Google-Smtp-Source: AGHT+IEilgT2WydO1IHCnafNNt39ENQJ3H3MKCDUHgc+VjYTRmF5GAqFBuV0eTODjlNsewSKNthecg==
X-Received: by 2002:a05:6402:43c9:b0:5c9:5928:970 with SMTP id 4fb4d7f45d1cf-5cb8b1c2410mr6786177a12.19.1729773729421;
        Thu, 24 Oct 2024 05:42:09 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:1550:4200:da3c:7fbc:c60c:ca4b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cb66a65419sm5623026a12.25.2024.10.24.05.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 05:42:09 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: friedrich.vock@gmx.de,
	Richardqi.Liang@amd.com,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 24 Oct 2024 14:41:59 +0200
Message-Id: <20241024124159.4519-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241024124159.4519-1-christian.koenig@amd.com>
References: <20241024124159.4519-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.218.47:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	FREEMAIL_TO(0.00)[gmx.de,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9B6E045404
X-Spamd-Bar: ----
Message-ID-Hash: UZFVJDYXKLRISP4TOYC2PVNSIOS2GWHW
X-Message-ID-Hash: UZFVJDYXKLRISP4TOYC2PVNSIOS2GWHW
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/3] dma-buf: add selftest for fence order after merge
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UZFVJDYXKLRISP4TOYC2PVNSIOS2GWHW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIGEgdGVzdCB3aGljaCBkb3VibGUgY2hlY2tzIHRoYXQgZmVuY2VzIGFyZSBpbiB0aGUgZXhw
ZWN0ZWQgb3JkZXINCmFmdGVyIGEgbWVyZ2UuDQoNCldoaWxlIGF0IGl0IGFsc28gc3dpdGNoIHRv
IHVzaW5nIGEgbW9jayBhcnJheSBmb3IgdGhlIGNvbXBsZXggdGVzdA0KaW5zdGVhZCBvZiBhIG1l
cmdlLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jIHwg
NjkgKysrKysrKysrKysrKysrKysrKysrKysrKystDQogMSBmaWxlIGNoYW5nZWQsIDY4IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UtdW53cmFwLmMgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3Jh
cC5jDQppbmRleCBmMGNlZTk4NGI2YzcuLjg3NmVhYmRkYjA4ZiAxMDA2NDQNCi0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UtdW53cmFwLmMNCkBAIC0zMDQsNiArMzA0LDcyIEBAIHN0YXRpYyBpbnQgdW53
cmFwX21lcmdlKHZvaWQgKmFyZykNCiAJcmV0dXJuIGVycjsNCiB9DQogDQorc3RhdGljIGludCB1
bndyYXBfbWVyZ2Vfb3JkZXIodm9pZCAqYXJnKQ0KK3sNCisJc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UsICpmMSwgKmYyLCAqYTEsICphMiwgKmMxLCAqYzI7DQorCXN0cnVjdCBkbWFfZmVuY2VfdW53
cmFwIGl0ZXI7DQorCWludCBlcnIgPSAwOw0KKw0KKwlmMSA9IG1vY2tfZmVuY2UoKTsNCisJaWYg
KCFmMSkNCisJCXJldHVybiAtRU5PTUVNOw0KKw0KKwlkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25h
bGluZyhmMSk7DQorDQorCWYyID0gbW9ja19mZW5jZSgpOw0KKwlpZiAoIWYyKSB7DQorCQlkbWFf
ZmVuY2VfcHV0KGYxKTsNCisJCXJldHVybiAtRU5PTUVNOw0KKwl9DQorDQorCWRtYV9mZW5jZV9l
bmFibGVfc3dfc2lnbmFsaW5nKGYyKTsNCisNCisJYTEgPSBtb2NrX2FycmF5KDIsIGYxLCBmMik7
DQorCWlmICghYTEpDQorCQlyZXR1cm4gLUVOT01FTTsNCisNCisJYzEgPSBtb2NrX2NoYWluKE5V
TEwsIGRtYV9mZW5jZV9nZXQoZjEpKTsNCisJaWYgKCFjMSkNCisJCWdvdG8gZXJyb3JfcHV0X2Ex
Ow0KKw0KKwljMiA9IG1vY2tfY2hhaW4oYzEsIGRtYV9mZW5jZV9nZXQoZjIpKTsNCisJaWYgKCFj
MikNCisJCWdvdG8gZXJyb3JfcHV0X2ExOw0KKw0KKwkvKg0KKwkgKiBUaGUgZmVuY2VzIGluIHRo
ZSBjaGFpbiBhcmUgdGhlIHNhbWUgYXMgaW4gYTEgYnV0IGluIG9wb3NpdGUgb3JkZXIsDQorCSAq
IHRoZSBkbWFfZmVuY2VfbWVyZ2UoKSBmdW5jdGlvbiBzaG91bGQgYmUgYWJsZSB0byBoYW5kbGUg
dGhhdC4NCisJICovDQorCWEyID0gZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZShhMSwgYzIpOw0KKw0K
KwlkbWFfZmVuY2VfdW53cmFwX2Zvcl9lYWNoKGZlbmNlLCAmaXRlciwgYTIpIHsNCisJCWlmIChm
ZW5jZSA9PSBmMSkgew0KKwkJCWYxID0gTlVMTDsNCisJCQlpZiAoIWYyKQ0KKwkJCQlwcl9lcnIo
IlVuZXhwZWN0ZWQgb3JkZXIhXG4iKTsNCisJCX0gZWxzZSBpZiAoZmVuY2UgPT0gZjIpIHsNCisJ
CQlmMiA9IE5VTEw7DQorCQkJaWYgKGYxKQ0KKwkJCQlwcl9lcnIoIlVuZXhwZWN0ZWQgb3JkZXIh
XG4iKTsNCisJCX0gZWxzZSB7DQorCQkJcHJfZXJyKCJVbmV4cGVjdGVkIGZlbmNlIVxuIik7DQor
CQkJZXJyID0gLUVJTlZBTDsNCisJCX0NCisJfQ0KKw0KKwlpZiAoZjEgfHwgZjIpIHsNCisJCXBy
X2VycigiTm90IGFsbCBmZW5jZXMgc2VlbiFcbiIpOw0KKwkJZXJyID0gLUVJTlZBTDsNCisJfQ0K
Kw0KKwlkbWFfZmVuY2VfcHV0KGEyKTsNCisJcmV0dXJuIGVycjsNCisNCitlcnJvcl9wdXRfYTE6
DQorCWRtYV9mZW5jZV9wdXQoYTEpOw0KKwlyZXR1cm4gLUVOT01FTTsNCit9DQorDQogc3RhdGlj
IGludCB1bndyYXBfbWVyZ2VfY29tcGxleCh2b2lkICphcmcpDQogew0KIAlzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSwgKmYxLCAqZjIsICpmMywgKmY0LCAqZjU7DQpAQCAtMzI3LDcgKzM5Myw3IEBA
IHN0YXRpYyBpbnQgdW53cmFwX21lcmdlX2NvbXBsZXgodm9pZCAqYXJnKQ0KIAkJZ290byBlcnJv
cl9wdXRfZjI7DQogDQogCS8qIFRoZSByZXN1bHRpbmcgYXJyYXkgaGFzIHRoZSBmZW5jZXMgaW4g
cmV2ZXJzZSAqLw0KLQlmNCA9IGRtYV9mZW5jZV91bndyYXBfbWVyZ2UoZjIsIGYxKTsNCisJZjQg
PSBtb2NrX2FycmF5KDIsIGRtYV9mZW5jZV9nZXQoZjIpLCBkbWFfZmVuY2VfZ2V0KGYxKSk7DQog
CWlmICghZjQpDQogCQlnb3RvIGVycm9yX3B1dF9mMzsNCiANCkBAIC0zNzUsNiArNDQxLDcgQEAg
aW50IGRtYV9mZW5jZV91bndyYXAodm9pZCkNCiAJCVNVQlRFU1QodW53cmFwX2NoYWluKSwNCiAJ
CVNVQlRFU1QodW53cmFwX2NoYWluX2FycmF5KSwNCiAJCVNVQlRFU1QodW53cmFwX21lcmdlKSwN
CisJCVNVQlRFU1QodW53cmFwX21lcmdlX29yZGVyKSwNCiAJCVNVQlRFU1QodW53cmFwX21lcmdl
X2NvbXBsZXgpLA0KIAl9Ow0KIA0KLS0gDQoyLjM0LjENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
