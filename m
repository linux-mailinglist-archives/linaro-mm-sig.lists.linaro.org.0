Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F545C74B7E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 16:01:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA80F3F9B5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 15:01:50 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id 584C73F952
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 15:00:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="O+/Eddt7";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6418b55f86dso1712959a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 07:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763650825; x=1764255625; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HahB4kD3BbuZGs8EfAIsMuTo8cWrmLD5FsSAsoTAP4w=;
        b=O+/Eddt7zHFZ1fVYBmrKC1OyE+M6HOks5WihVSn5i+Hx0Bf/rMnEXPkBplqSHXMm52
         zsXHO1MTi1tBXWnUwicfGSUlCyZKhpLLumw9ZLAsnyFpyoVhtRRfkCZALH9ROzGp1eIL
         AeWseJ1Z8J8zqTBuuSQhE3YS8Lhu1+nNL17XaIMAe0ABW9JbcuvvvRjfPWb56nxPP4uX
         Ga0jaxUCAfvHhokZb1iEqCs4vzaR5TYd1P9yvSgZ97G5a2QB1vzpBZ6tY1avWQlAecrl
         lJeTWjdEBglXC0q0wQK5CTCL6QuqrzkPoWdUeHKk6CkO1dJnhC5XPC9SulE+NydGDjkr
         g+QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763650825; x=1764255625;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HahB4kD3BbuZGs8EfAIsMuTo8cWrmLD5FsSAsoTAP4w=;
        b=UHDS2gsu8mEl0f2qnyAhKlLkHcvF0m2fOy0xMNcFw7djURpuoIpbB3urpbM4GM8U4w
         94MNkN8LhNPQN+zoY5kW+hovGLffHO4Hzahng69drqxv/93JMUfPTSnITVibwMD/q32l
         gfnN4KFaxNl9EDzd6+A3lNJGuBYnAsJyvT5jD37dyx+22fGyy9hCgGdjiAQU/EtBg+Gu
         WhOd1wIWzGSl12zsodQlUNfkwQU+LDVV6FJTUFiRgllhLYgzbp7o7jmiAwZY0zY5c5aJ
         kzafg/JNZ1qGC3Gr/n/FZV7rLgfbniIlccIFsNEJ1RFecbDBs9lLHMNTlmEbwo9GdIcY
         jHXA==
X-Gm-Message-State: AOJu0YwsvLbfQRyc7m47pkO1ubMORbBpmn9J01mQaYpiQYEHGulAVyNK
	dimgEiqERG7W+iNJ4KOM3xRn6WisJIP3s5nbscz4hnXYUIJXkU7f6ztQ
X-Gm-Gg: ASbGnct3P+GwPuAyjQiv9GX8ZTpXf/tl3PHWa7wD913yNYihgzs70YDEWef9EFx/uaW
	mMZzxz8FJNK8SvoYdBeqc2XwvJvuvUKM2a3WK5MjQ+3ONckbGltHgXnFa8RPZjPhnftDTfMfAj4
	7Xq1Stq+Rv/1bMnshXQOviYXApgZ1pBMPRKge9d/La/x78xaAkEqh3aTCKd+HAgFR7yWWcbObEl
	TSVY16jxUmkQO6vV7V0ZEaJW1gA2lS/gdw90VtBewBM2osp6MfkQg2975P9EYaNPtWWy4pvIwWq
	JoLZV4GwcRsDvyf6WeaLZeDPgC7ViWdoaafqY1UWiphyTaXWXAFGDX6byPFEn8g/JIwxBTUkTv8
	EnA9dBtzNbPfAFGTsHDxByAHt0nsXRDM/SToPE0FZSmH058LHqOH/KzmIslH8hYcG20SGlJS2NY
	ctRK2l8TbokpbBEF2ojkMUhOt9
X-Google-Smtp-Source: AGHT+IHaVtV04nY0hHwgE9GEibS+3Ol+3hkr8JW8/PTF7cVq791tImDU/k/bJ0L5LNcwQUakY//3kg==
X-Received: by 2002:a17:907:9801:b0:b73:d7dc:ddc5 with SMTP id a640c23a62f3a-b7655258118mr359301466b.2.1763650825086;
        Thu, 20 Nov 2025 07:00:25 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154c:c900:7aba:c4b7:a402:3cd2])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645f2easm2205878a12.33.2025.11.20.07.00.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:00:24 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	faith@gfxstrand.net,
	sumit.semwal@linaro.org
Date: Thu, 20 Nov 2025 15:41:10 +0100
Message-ID: <20251120150018.27385-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251120150018.27385-1-christian.koenig@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.51:from];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 584C73F952
X-Spamd-Bar: ----
Message-ID-Hash: 737422WQQXX23GMJ2B6E6SERESETWJSR
X-Message-ID-Hash: 737422WQQXX23GMJ2B6E6SERESETWJSR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/4] drm/sched: warn and taint the kernel when maximum timeout is exceeded.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/737422WQQXX23GMJ2B6E6SERESETWJSR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RXhjZWVkaW5nIHRoZSByZWNvbW1lbmRlZCBtYXhpbXVtIHRpbWVvdXQgc2hvdWxkIGJlIG5vdGVk
IGluIGxvZ3MgYW5kDQpjcmFzaCBkdW1wcy4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL3Nj
aGVkdWxlci9zY2hlZF9tYWluLmMgfCAxMiArKysrKysrKysrKy0NCiAxIGZpbGUgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVy
L3NjaGVkX21haW4uYw0KaW5kZXggMWQ0ZjFiODIyZTdiLi44OGUyNGUxNDBkZWYgMTAwNjQ0DQot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCkBAIC0xMzE4LDEyICsxMzE4LDIyIEBA
IGludCBkcm1fc2NoZWRfaW5pdChzdHJ1Y3QgZHJtX2dwdV9zY2hlZHVsZXIgKnNjaGVkLCBjb25z
dCBzdHJ1Y3QgZHJtX3NjaGVkX2luaXRfDQogCXNjaGVkLT5vcHMgPSBhcmdzLT5vcHM7DQogCXNj
aGVkLT5jcmVkaXRfbGltaXQgPSBhcmdzLT5jcmVkaXRfbGltaXQ7DQogCXNjaGVkLT5uYW1lID0g
YXJncy0+bmFtZTsNCi0Jc2NoZWQtPnRpbWVvdXQgPSBhcmdzLT50aW1lb3V0Ow0KIAlzY2hlZC0+
aGFuZ19saW1pdCA9IGFyZ3MtPmhhbmdfbGltaXQ7DQogCXNjaGVkLT50aW1lb3V0X3dxID0gYXJn
cy0+dGltZW91dF93cSA/IGFyZ3MtPnRpbWVvdXRfd3EgOiBzeXN0ZW1fcGVyY3B1X3dxOw0KIAlz
Y2hlZC0+c2NvcmUgPSBhcmdzLT5zY29yZSA/IGFyZ3MtPnNjb3JlIDogJnNjaGVkLT5fc2NvcmU7
DQogCXNjaGVkLT5kZXYgPSBhcmdzLT5kZXY7DQogDQorCXNjaGVkLT50aW1lb3V0ID0gYXJncy0+
dGltZW91dDsNCisJaWYgKHNjaGVkLT50aW1lb3V0ID4gRE1BX0ZFTkNFX01BWF9SRUFTT05BQkxF
X1RJTUVPVVQpIHsNCisJCWRldl93YXJuKHNjaGVkLT5kZXYsICJUaW1lb3V0ICVsZCBleGNlZWRz
IHRoZSBtYXhpbXVtIHJlY29tbWVuZGVkIG9uZSFcbiIsDQorCQkJIHNjaGVkLT50aW1lb3V0KTsN
CisJCS8qDQorCQkgKiBNYWtlIHN1cmUgdGhhdCBleGNlZWRpbmcgdGhlIHJlY29tbWVuZGF0aW9u
IGlzIG5vdGVkIGluDQorCQkgKiBsb2dzIGFuZCBjcmFzaCBkdW1wcy4NCisJCSAqLw0KKwkJYWRk
X3RhaW50KFRBSU5UX1NPRlRMT0NLVVAsIExPQ0tERVBfU1RJTExfT0spOw0KKwl9DQorDQogCWlm
IChhcmdzLT5udW1fcnFzID4gRFJNX1NDSEVEX1BSSU9SSVRZX0NPVU5UKSB7DQogCQkvKiBUaGlz
IGlzIGEgZ3Jvc3MgdmlvbGF0aW9uLS10ZWxsIGRyaXZlcnMgd2hhdCB0aGUgIHByb2JsZW0gaXMu
DQogCQkgKi8NCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
