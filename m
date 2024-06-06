Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 795F48FDCDA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jun 2024 04:37:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FA4840B7A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jun 2024 02:37:37 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id D3E1C40B7A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Jun 2024 02:37:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=g9gD9xcB;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4215b888eabso34445e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Jun 2024 19:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1717641444; x=1718246244; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDq/ZYiqvUMpGmnfFROlIKqAnO6GO+2iuQr9cMLLamE=;
        b=g9gD9xcBVShTNr8zcYurCI4p/FrBy7ynHKgQWlXa8tg9T7X0oNf02xbuz+4ntxyuBU
         6YR0ethkZ5aWrAjBy+DZ4dTz9RB/Nt4NQDl9YNETCM8skWV1Zati3NwS3qvaZYSX+86P
         xJOpAmVpHK9n9UMACZxPgDQj8RtZFNm6tPmi1xTzS6BAu6Rxi9wFQwtR3iEM4LXNhIMv
         /900kcDQV3/LeECOzl2GgaGC3uiXqI2YEkM1ywjnAgxCtZagXJXsehIhjj/+iEdWjlIi
         cRoTN/Kx7hOeUu419R2m6Qjelwue9089xga8gwjIbnp2i0A46iBKz2Ga013KC6ur5SGU
         mpLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717641444; x=1718246244;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xDq/ZYiqvUMpGmnfFROlIKqAnO6GO+2iuQr9cMLLamE=;
        b=Gn0AhQPr4vVnK64yYNmDTMHp3Yb+H6Ovfptu6+dOKk4vTjjB4zwpa+H0qHznJMKLQs
         rXf0vB+kB823+LMe5x11waZJHEQk1WpKd4tL2HtprNYH+Ji/FyF36Ho/A9YdCXnBeBni
         MhgO521nGgpe9W4QJHZ8H3w6CC2VlfDF+t50RmQ4qEzCgg+WdAZXVaONPdB1mKN7b2Tn
         bmqylI4ybNaeMl/RWYGlem6tz4TdkCBCn4rfYQJYLblOalBUAyb92J+hKwdIEE+5mkrW
         tKB3se0JbeAcbOmMCuPSS2tTcyVCfdt8qu+Zd2QiXlGXV6bGYC1wls07hcj+tYs6tl+k
         6WZQ==
X-Gm-Message-State: AOJu0YxuwuxRWn64xbi+LoW4nPHhSAne2l1xZyztwAHzjnfbsKaw8oQG
	94jet3ivid9DHaqo/sPbL/d4joTo1fouihljXXA4GAsvvhV5hbVSMFBE6lT6d+40jnbGF+i5QX+
	XKdIrH/6Cw70ot9b7ebjAWAt4Kl5XkQ8UGEU=
X-Google-Smtp-Source: AGHT+IHaMob5QkMPplPJnTDM+qZg7pZsoKZ3tUHMJRiC4H1J40L0Caw6VHQuvDnoIsS+ROt+MN9cjAZbJk4mBEgVeG0=
X-Received: by 2002:a05:600c:3b1c:b0:41b:e55c:8dca with SMTP id
 5b1f17b1804b1-4215c34b2f8mr642165e9.7.1717641443632; Wed, 05 Jun 2024
 19:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240606020213.49854-1-21cnbao@gmail.com>
In-Reply-To: <20240606020213.49854-1-21cnbao@gmail.com>
From: John Stultz <jstultz@google.com>
Date: Wed, 5 Jun 2024 19:37:11 -0700
Message-ID: <CANDhNCpFXKs-z5Ymy=61fTqU3aXj4sM9RTD5_sEB0937CrVJBw@mail.gmail.com>
To: Barry Song <21cnbao@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D3E1C40B7A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: V5X66OZOKKSB5OR3UHDNQYXARIFUJ6C4
X-Message-ID-Hash: V5X66OZOKKSB5OR3UHDNQYXARIFUJ6C4
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, sumit.semwal@linaro.org, Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, tjmercier@google.com, v-songbaohua@oppo.com, hailong.liu@oppo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/heaps: Correct the types of fd_flags and heap_flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V5X66OZOKKSB5OR3UHDNQYXARIFUJ6C4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKdW4gNSwgMjAyNCBhdCA3OjAy4oCvUE0gQmFycnkgU29uZyA8MjFjbmJhb0BnbWFp
bC5jb20+IHdyb3RlOg0KPg0KPiBGcm9tOiBCYXJyeSBTb25nIDx2LXNvbmdiYW9odWFAb3Bwby5j
b20+DQo+DQo+IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YSBkZWZpbmVzIHRoZSBVQVBJIGFzIGZv
bGxvd3M6DQo+DQo+ICBzdHJ1Y3QgZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRhIHsNCj4gICAgICAg
ICBfX3U2NCBsZW47DQo+ICAgICAgICAgX191MzIgZmQ7DQo+ICAgICAgICAgX191MzIgZmRfZmxh
Z3M7DQo+ICAgICAgICAgX191NjQgaGVhcF9mbGFnczsNCj4gIH07DQo+DQo+IEJ1dCBkbWEgaGVh
cHMgYXJlIGNhc3RpbmcgYm90aCBmZF9mbGFncyBhbmQgaGVhcF9mbGFncyBpbnRvDQo+IHVuc2ln
bmVkIGxvbmcuIFRoaXMgcGF0Y2ggbWFrZXMgZG1hIGhlYXBzIC0gY21hIGhlYXAgYW5kDQo+IHN5
c3RlbSBoZWFwIGhhdmUgY29uc2lzdGVudCB0eXBlcyB3aXRoIFVBUEkuDQo+DQo+IFNpZ25lZC1v
ZmYtYnk6IEJhcnJ5IFNvbmcgPHYtc29uZ2Jhb2h1YUBvcHBvLmNvbT4NCg0KVGhhbmtzIGZvciBz
dWJtaXR0aW5nIHRoaXMgYWRkaXRpb25hbCBjbGVhbnVwIQ0KDQpBY2tlZC1ieTogSm9obiBTdHVs
dHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
