Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB238908CB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Mar 2024 19:59:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 348973F087
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Mar 2024 18:59:40 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 15EA43F087
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Mar 2024 18:59:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=BjK1SfvD;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.208.46 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-56c583f5381so984968a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Mar 2024 11:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711652376; x=1712257176; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SV03oY6mA1k7yFAqo606Edki3tImpf784xBEQW1rWUc=;
        b=BjK1SfvDHUHdK//aKlj61sgWUBrRK2pNn33ASVNVemwJH9uE17Ne8/03nZMNatS97d
         hTT+ZlDprpc1TQyPyC1evv2pocZDKoXt+XBcClJ9qK296IDWgKrGU3JxEu0FDf6/0Y3k
         JFdFzwh8ucq3JBjz1N1cQw59HmFmL+02HM9xXDVP8O5/VQMKt4JJZOWDCi+1nwCaCNV2
         QTmQXvor7cnbTJ3VUozUHz0ob1FFYj3d1xDJ+ks6wSycIre74RB3i/JD8HkkGNZC77Zi
         tglm6Uu1h6nd5CZokaAKLl/uF8EnXGbI88Y7E0F2luiR5G1rzs5Gs+f1F7a1NSijP72d
         GeGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711652376; x=1712257176;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SV03oY6mA1k7yFAqo606Edki3tImpf784xBEQW1rWUc=;
        b=CbKvt/pXSWP2K9nPHlnvAefWiVnVV+pXaFVmNDmtGw+iYS4mXh2ttdf1Xut7j4oN2X
         /7Bk3+XGXjKX7Tm5qPTQSeFm3kAJTHWnpmrLUasSF0rELVNjoza3lV7LDZRJR39E0Jfb
         K1cPrVtsqUy+Mta7UIomHSWztJEHLu6U1HBTJL9oFzrAQKU/Jse+TUREayYCB3W7fbE8
         zdyusYsdnqOQa0FI4CpgbE3pI2Q5GF24x/oYPGr9l3HHOTZ9xxhMthPjcuxv3gGBO6uY
         bhBT++7ug8N6QAxDOypBTJo41zhEVJ9Vu3KFFC8ZrPfvbN6X7aIupxUPdzzXnIyk9/TD
         FTvA==
X-Forwarded-Encrypted: i=1; AJvYcCVSliQkTsDcwZp1LTZGP3FQyNP8Sj7PuZd/cw9aFec6zNrQoF4cwkeUk5KV5GAZ4dZff9Lh6QGvJ5yTX/u8VBiYKP4xSChGPeKLm4Nl3ss=
X-Gm-Message-State: AOJu0Yy9gtYsWuazmeDhi4th9UHoMO0eT/cvGyXsd3zSTRvRlHJJdcm3
	bwIAW0UHMaSUsAW3vM79buXNrhSKqOzoz1MzlDHmE0V1oVItl5cTDUqW3vQ9I7U3ZV40lOWOF+q
	gVIf55dYzjlKjTsDR9tliSPRqzg8=
X-Google-Smtp-Source: AGHT+IHH6kALHqnYmeUzkijmT2flDCiOXUQodFJ0YRAefUwzLtPQNiMfdrwYHt0+Y04OzFPVBmxtNxsdJW80RtmOanA=
X-Received: by 2002:a05:6402:5107:b0:56b:d013:a67e with SMTP id
 m7-20020a056402510700b0056bd013a67emr243546edd.18.1711652375798; Thu, 28 Mar
 2024 11:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240322214801.319975-1-robdclark@gmail.com> <1Wwj_q3RYer6np0Orz0wJd9dlF82iBSX-PIVSlhCgJbpfVBMHF_CF04gHojkvqnvz9NXH6kACZGXQG9yXwtkbjIzLmdi-GNDkO5Nz2E-J9Y=@emersion.fr>
 <CAF6AEGvUsP7fjqFH9Co1vE0ZGRmMXmFBCrNc3hCQwxky3mME3A@mail.gmail.com> <y5mjLoUp9fKwSNrAEOQJtfqfDZ5cYtsf_KcbNCWQieZE-uJXQJE6bQhC6oLfS6aBZRimZSarDjUmeakjwYZmtQZWPM_3lAENdY17K-VyGsc=@emersion.fr>
In-Reply-To: <y5mjLoUp9fKwSNrAEOQJtfqfDZ5cYtsf_KcbNCWQieZE-uJXQJE6bQhC6oLfS6aBZRimZSarDjUmeakjwYZmtQZWPM_3lAENdY17K-VyGsc=@emersion.fr>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 28 Mar 2024 11:59:24 -0700
Message-ID: <CAF6AEGtCcrjBG=EMgc0NrsR75qd8jJL=-kFYoVBur+L3PY64Dw@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
X-Rspamd-Queue-Id: 15EA43F087
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.51 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.51)[97.80%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,vger.kernel.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from];
	NEURAL_HAM(-0.00)[-0.954];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QIVUUVI43XK6J2A3YL5UKJOU7U44ACMV
X-Message-ID-Hash: QIVUUVI43XK6J2A3YL5UKJOU7U44ACMV
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Dominik Behr <dbehr@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/prime: Unbreak virtgpu dma-buf export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QIVUUVI43XK6J2A3YL5UKJOU7U44ACMV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXIgMjgsIDIwMjQgYXQgMTE6NTTigK9BTSBTaW1vbiBTZXIgPGNvbnRhY3RAZW1l
cnNpb24uZnI+IHdyb3RlOg0KPg0KPiBPbiBUaHVyc2RheSwgTWFyY2ggMjh0aCwgMjAyNCBhdCAx
OTo0NywgUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gPiBhbnkg
Y2hhbmNlIEkgY291bGQgdGFsayB5b3UgaW50byBwdXNoaW5nIHRvIGRybS1taXNjLWZpeGVzPw0K
Pg0KPiBPaCBzb3JyeSwgSSB0aG91Z2h0IHlvdSBoYWQgYWNjZXNz4oCmIFB1c2hlZCB3aXRoIGEg
bWlub3IgZWRpdCB0byByZW1vdmUNCj4gdW5uZWNlc3NhcnkgcGFyZW50aGVzZXMgdG8gbWFrZSBj
aGVja3BhdGNoIGhhcHB5IQ0KDQpUaGFua3MhDQoNCkJSLA0KLVINCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
