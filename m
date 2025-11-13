Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A004C58141
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:55:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8C503F882
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:55:48 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id 19D123F80D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=I0jC2RYD;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-640aaa89697so1330353a12.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045622; x=1763650422; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RL6rVAENXblPP/WtJ2kkdTszLuUIj+9DJtEA2dEhVX8=;
        b=I0jC2RYDLV0S8gH5Xq6rTgKtt1jq7/2nos3+WCMq45Qa6ey48ufa56E/0Rcksf9X3u
         UuvmuXIl0l/9P5gS8lIJPK1IyFXWi85C+pV2J83bE+0CrTpZM4i+oUx7GiQxpOpQasl2
         eOQ2En9y1djg4l8ad8KanzdmQapv/v1rrI/mavvtrA5QkjtoO934bvMMvK1Gm4eOxoAm
         S4xZQSrebmX1i5+9ZtZ/kzwmOriusLJ4O/K/D+381AfwEmN/LHJf1P3mcNulOu2b/AmV
         5a/T1w3me28q/NqDqaBJxsXoVqyvuKZyOBesJ6WDYGBv05l9fl6eXlkM0DZXnt6IZ8dx
         v7fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045622; x=1763650422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RL6rVAENXblPP/WtJ2kkdTszLuUIj+9DJtEA2dEhVX8=;
        b=DGs82QR1yrQwiHXgJfoVFoOZf/5bpKbn0rHE2cmO0mhwXiCKY1fLYyleVs48rntdZF
         xoDnLHyP6bOcttW3hgqvevmH+rk6I+ASCoNhFiq4YBb+T4vc6Ygir8BV6qiL7d6+dwjA
         BLBRNW0WsvOleTAsbNWjZ9aWTGpzD0YbUF6uCZzoOqpt56UUtua5VJ+3yxPchN6SEWd9
         r4K32UB2It+j/YlNzgEiR+YgqcYP6FYS3jKWqpzmQqwWxGNb+wroz/ZtcYpmTuAOp6m/
         b2STdGD7wHJ5jm1xkGrfRVU5KBOcx2gUiQ2Y1oDzxfa50P1tbcz6emy/ba0IQekYUoYK
         VL3g==
X-Forwarded-Encrypted: i=1; AJvYcCW/ApYJQiqFwm5AEBUqx8MiSByBkfMNIv3JEE6hPGzjnLYbZ5xuCZu4wQc9FgwIQp4mGU6QFrA6mCIcnGel@lists.linaro.org
X-Gm-Message-State: AOJu0YwKDGQ/y46UazMCGKPegTzMz2OxNIOHwO/M3+Gbb77o6Pok9gAc
	OpkvT9kzllLh5oYQrQGFGrJirwTRrmUaiP/0JCLKU1ArWcG3UD/wPXi1
X-Gm-Gg: ASbGnctTbvU1MCvnHyyhvxuBOn+b/q6fHqzsofsxNb+PxuNJlr73C4wdi38UvNZLQkF
	JCXOac6HqIPcAejcFdE6NerR4E/impA02XnMLTnSe5+lljQW8xMCIST7ckeCxZCOjXquUWvOy6n
	0y8muz9mZVV+8/7cUD/+ZPRHF2y/vc/t0FGRKlMYIxlxY7mdy12DCWfhP3tY2wLs1okjUlFxzJ3
	mNpvL3St2PD4WAlegZuskaqvgk6BqeYFwRBJHNj9Bnk+80nEc+Web2HjQgP3eNdfoHMV6huC2qg
	QYMSPBerHEE6lR3/3DV24906XljnbKdi7xJWCpqSveENr+1LKE/kWTj004j8QPsX8W0VJAC2hrB
	BP1hzSOf0ZwyHyVFSmlf+EFBh9xZ6vU3Z2tmNFYE5QR9HMKYFUSMp9NLzIIU7hhG0aM3vuFq2Q8
	2nVGYLCbn2Xl8=
X-Google-Smtp-Source: AGHT+IGYQ0sKPnZptZ94g0b4Qw3M0eMfY5NZER2npxVtf37GPZpeeMZ5KtmaqoxHfAiQ/F3so5ZQuQ==
X-Received: by 2002:a17:907:1c1b:b0:b37:4f78:55b2 with SMTP id a640c23a62f3a-b7331b5f2b8mr710287666b.34.1763045621980;
        Thu, 13 Nov 2025 06:53:41 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:41 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 15:51:46 +0100
Message-ID: <20251113145332.16805-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 19D123F80D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: HZO7GA5CVG36OKLLFOUEVSAHWE7RGSAO
X-Message-ID-Hash: HZO7GA5CVG36OKLLFOUEVSAHWE7RGSAO
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 09/18] drm/amdgpu: fix KFD eviction fence enable_signaling path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HZO7GA5CVG36OKLLFOUEVSAHWE7RGSAO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2FsbGluZyBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSBoZXJlIGlzIGlsbGVnYWwhDQoNClNpZ25l
ZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0t
LQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYyB8IDYg
LS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmMNCmluZGV4IDFlZjc1OGFj
NTA3Ni4uMDljOTE5ZjcyYjZjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2FtZGtmZF9mZW5jZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmMNCkBAIC0xMjAsMTIgKzEyMCw2IEBAIHN0YXRpYyBib29s
IGFtZGtmZF9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQogew0K
IAlzdHJ1Y3QgYW1kZ3B1X2FtZGtmZF9mZW5jZSAqZmVuY2UgPSB0b19hbWRncHVfYW1ka2ZkX2Zl
bmNlKGYpOw0KIA0KLQlpZiAoIWZlbmNlKQ0KLQkJcmV0dXJuIGZhbHNlOw0KLQ0KLQlpZiAoZG1h
X2ZlbmNlX2lzX3NpZ25hbGVkKGYpKQ0KLQkJcmV0dXJuIHRydWU7DQotDQogCWlmICghZmVuY2Ut
PnN2bV9ibykgew0KIAkJaWYgKCFrZ2Qya2ZkX3NjaGVkdWxlX2V2aWN0X2FuZF9yZXN0b3JlX3By
b2Nlc3MoZmVuY2UtPm1tLCBmKSkNCiAJCQlyZXR1cm4gdHJ1ZTsNCi0tIA0KMi40My4wDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
