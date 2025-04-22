Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD10A97A67
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Apr 2025 00:23:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03E3C45835
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Apr 2025 22:23:18 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by lists.linaro.org (Postfix) with ESMTPS id 05E5844A85
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Apr 2025 22:23:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=K38H+LLw;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.208.174 as permitted sender) smtp.mailfrom=jstultz@google.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-3105ef2a070so56936581fa.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Apr 2025 15:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745360583; x=1745965383; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e2uRwWrb8ebhkycf61ed5XHbka2o5yaZh1hlxBkjDhc=;
        b=K38H+LLwbj0LlY0qHyma4aQLJAIpmCH5VTuut5JfGflLcbwb6BwNCfyT+5jikhv1YB
         FujFfz9Tk4yDj11F0nkD0lRb5/1ntlrpWVvfvkWpt4rj0HmbC7+v+xNmkEw3viRKGaKL
         Z8RSTm97v/7mZcME+Qb1D6TsmCc9TItnWDvQ3G5O5u720guuy+QT08icCbDousxyAOS1
         Hale2v86/FzWmCZu8NTItmf1k57W60LXaqavWeFcQ2uf6MlXNcp8V4pjdk7p06eS+RYH
         Mz1Tnh+9tI6ea9JQp3wAnwKxb6thnEfwC3W6EBfPNywk9FZVniU1Add+wFXefjV6n2ws
         Z8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745360583; x=1745965383;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e2uRwWrb8ebhkycf61ed5XHbka2o5yaZh1hlxBkjDhc=;
        b=V3b+/kqh3kJvsb885PmB4A81f+J3EJzZLnJr8Lp4a0cr5dpsKglU+SqIjhnGHyJ8TH
         bSlyyQVl1m5D+S0VkdSPfVRX6M99X2a03iofkC0nBO96wYsGmnmeqGY/uK96AnNNBMa4
         wjFpzP8LNGq7BZe8n1gZ06Ec4xjDAMOCVeT0QQrr9aYWnSQIKP3GGZAHHHqXm4yubdBk
         /4DogxpmsVAUu2VdbH9Y1YNGKBl3/G7TZD9PSxO6smxprXeaCmZaKIdTUvYf6VEuF8BY
         iWhRr0E8pdHEc5gfvcGj4q/Swb+YcQe+7+bPZVXiJXMlHx5NV7lsUcdX+x7Ca0ZuWhx9
         VN4g==
X-Forwarded-Encrypted: i=1; AJvYcCU183M002XdKM4WQl5DRuSq4JcZAxS2d6jHFXHhxHk/jDC+4squhxVsoAw08DUsCxaDmBV1sewCtvAUuvFz@lists.linaro.org
X-Gm-Message-State: AOJu0YxMJdW2sL8ZU5HtgnUhRmWUgf3rm/8xnGawngpdkPFl1rsMsF5U
	MtT7nfR02E3pxoPthqQLpjQJzFwmFclPmY+CyfOTwV9GiVKVi18m1xlNLYzrdvPDypCT5T5l8Y3
	WOW2I3SDxA3ikbh0P/O4nbbpsRuFXMFIY8y4=
X-Gm-Gg: ASbGncuvkwC9ql396FLxk6zxwzEngTJ5a316LICTzDy29GcXs6iQP1wiV9vX4MhZBry
	I0eO4h3EQTQixRb9+lcTfBcurDFEuuH7YK7eblD26/nCq3HPpFTQSvckDk/EVm3/jVEb0H16vfJ
	AbqXx3q21Py3I//D4FUqdOmsNT7aMglXUwMIz9QfUMaQGaKHcnM8D7dRABz0+P
X-Google-Smtp-Source: AGHT+IGrB/MiyfMTsIh+vYbWS/FNQhnUERjXD1nH9PAly6Ako+aVzVIOOf/PQlHpqWj+hJ7n2hzR9xaSmnbnValKnS0=
X-Received: by 2002:a2e:bea1:0:b0:30b:f24a:651a with SMTP id
 38308e7fff4ca-310904c626dmr45311251fa.5.1745360582583; Tue, 22 Apr 2025
 15:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250422191939.555963-1-jkangas@redhat.com> <20250422191939.555963-2-jkangas@redhat.com>
In-Reply-To: <20250422191939.555963-2-jkangas@redhat.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 22 Apr 2025 15:22:50 -0700
X-Gm-Features: ATxdqUFD0eE26rdQ7w42uNdNNlbQHNUlvuTnoRS4o--E4bvf8dH1hzjOR3S0oaE
Message-ID: <CANDhNCpqSeSUkV2QvgLW3JY+Tsf_UOBjBrn4vBkYf+dvbtq2wQ@mail.gmail.com>
To: Jared Kangas <jkangas@redhat.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 05E5844A85
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.97 / 15.00];
	BAYES_HAM(-2.97)[99.85%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.174:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.174:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: SWBBA6RETKEDAPBKKK6FIWBG6CIP2QBM
X-Message-ID-Hash: SWBBA6RETKEDAPBKKK6FIWBG6CIP2QBM
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, mripard@kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] dma-buf: heaps: Parameterize heap name in __add_cma_heap()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SWBBA6RETKEDAPBKKK6FIWBG6CIP2QBM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMjIsIDIwMjUgYXQgMTI6MTnigK9QTSBKYXJlZCBLYW5nYXMgPGprYW5nYXNA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IFByZXBhcmUgZm9yIHRoZSBpbnRyb2R1Y3Rpb24gb2Yg
YSBmaXhlZC1uYW1lIENNQSBoZWFwIGJ5IHJlcGxhY2luZyB0aGUNCj4gdW51c2VkIHZvaWQgcG9p
bnRlciBwYXJhbWV0ZXIgaW4gX19hZGRfY21hX2hlYXAoKSB3aXRoIHRoZSBoZWFwIG5hbWUuDQo+
DQo+IFNpZ25lZC1vZmYtYnk6IEphcmVkIEthbmdhcyA8amthbmdhc0ByZWRoYXQuY29tPg0KDQpU
aGFua3Mgc28gbXVjaCBmb3IgdGFraW5nIHRoaXMgZWZmb3J0IG9uLiBMb29rcyBnb29kIHRvIG1l
IQ0KDQpBY2tlZC1ieTogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
