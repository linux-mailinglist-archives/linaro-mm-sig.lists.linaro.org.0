Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC84AA9232
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 13:39:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44573460AC
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 11:39:05 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by lists.linaro.org (Postfix) with ESMTPS id 751C543F65
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 11:38:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=qsYTYKo8;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.182 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3f8ae3ed8f4so3082742b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 May 2025 04:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746445131; x=1747049931; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9GMQp9j85OZqKlkrHyZMpU/XUq0rYEnvHyaTGQjhBF4=;
        b=qsYTYKo8jUTwY2kYmJnpD0cIc80DqIiTlk97lfwN+M8i/Aii8uTDODgWwTMmHTvM4t
         aZE+tSs4rBtKgzLoyF7BrtDIRDNKcvHSNLIO/d+tlekjY706sLqg9MHDIEZ0879tkO8U
         Z2VIWZBNR/RufSXYNFV/h9uAiZYsijtxBSUyfgV5Ben7YiVPkg0YRu6xXdK+3SeeTZ0l
         j2HMopUBoNuPleZJWqalFZBnNygH3I5zkWjN/xSDteteankt25K92M8iuuSXwHoFhs95
         gW+oNWOYubrB6mfLQ3+gPSRyK+N7QHRPyvxTaOW99U4p7L/LMnwIYGm4OGtOEz6MjKO+
         vCgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746445131; x=1747049931;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9GMQp9j85OZqKlkrHyZMpU/XUq0rYEnvHyaTGQjhBF4=;
        b=cn+5LpMXuxnB5mahYDZ94iVItJ0V+MU/FAhIR1Asr3Za+xSXeR3vXs/5REx14OkJEQ
         uzKTRbL1HX5pbpeXXACWNuX4ArnB7g0oOX3wCvWlXjLxXayjNvTQs7auvDH18krdPrLz
         3+DjtCeBRyMz9dcuaP3vDtcBqTZrVRZ+bI/v9e5y7QpPrUnqpjbBFeXvvjYBF/pMqarf
         tmtcP73H9Zmpm+ZwKxpNkNs62PjVsIsN5gGwjoUusdG2TvMWQ3o9KkeXilOo1yJ45DTY
         xJ1VhJezrXraGMYyEIRj2rI5OhvBWULmnCd7dtEPLupTLNyJHqW7kwDZZ4QtFG7JfXES
         8yTA==
X-Forwarded-Encrypted: i=1; AJvYcCWr3LRP9y3/PGFaABDiY/QZ/6oaJ1OBWS4MoPjX0EvTc5sAJYjUwdBt1Hp6og8y+olh+R1xG9IE7wrRp710@lists.linaro.org
X-Gm-Message-State: AOJu0YyqBF+oVQauZ1WWrx/gb0XLtLGRlZ16G7vkmFGyOAro2jjNMsXe
	nV9hJOIcS2L2lvdUMCn0zK1uPZeD9b4zhvghEVBJb5tNRBCHxT3uBTTIvMVPiHYV9CkwAEKYiWC
	CZBtWqXRbCjkdiaMXaS++osG00qg3+IQYMlOq/eV1
X-Gm-Gg: ASbGnctI4Wh/NiEe3yHJ0ojs1doyEN4HcB9H9ILpTlgVZIS5Obc9xDA3OuxRSX3LJVn
	P7pgoA0JYLUaGFXtJ/CzMYJj9YCnA38eQCPnARmDZ8PxOBtZWFIT9Hsv971NuJpJa1NFORlEO6n
	mLviMeVbnWuQKmzoqVDIBLfg0=
X-Google-Smtp-Source: AGHT+IFsXXtVZfrIMVAYeKVEaw/tyOZiD5EOR3pAScS4csZ0mXU9Ezu4MEU3Ox8q9DYU0yBa6wml39ms50QahdcbUm8=
X-Received: by 2002:a05:6808:1a1c:b0:402:11c2:253e with SMTP id
 5614622812f47-403536715ffmr4977375b6e.21.1746445130746; Mon, 05 May 2025
 04:38:50 -0700 (PDT)
MIME-Version: 1.0
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
 <20250502100049.1746335-10-jens.wiklander@linaro.org> <aBTpiMIevmAmp5vr@casper.infradead.org>
In-Reply-To: <aBTpiMIevmAmp5vr@casper.infradead.org>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Mon, 5 May 2025 13:38:38 +0200
X-Gm-Features: ATxdqUHaC_cUwJGh0_wJGsfxAOxe5bhlKMecpe-U61GAupKguhd7Rz5skfHcbL8
Message-ID: <CAHUa44HOq91O0yUWVUKcUzYv9j3xqOU3WsDg9KDXiExcdPO8fQ@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 751C543F65
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.48 / 15.00];
	BAYES_HAM(-2.98)[99.90%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.182:from];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,linux-foundation.org,kvack.org];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: WVE5D7TURESTEGQJK7OOUJG5TAY7DP37
X-Message-ID-Hash: WVE5D7TURESTEGQJK7OOUJG5TAY7DP37
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 09/14] cma: export cma_alloc() and cma_release()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WVE5D7TURESTEGQJK7OOUJG5TAY7DP37/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIEZyaSwgTWF5IDIsIDIwMjUgYXQgNTo1MOKAr1BNIE1hdHRoZXcgV2lsY294IDx3
aWxseUBpbmZyYWRlYWQub3JnPiB3cm90ZToNCj4NCj4gT24gRnJpLCBNYXkgMDIsIDIwMjUgYXQg
MTE6NTk6MjNBTSArMDIwMCwgSmVucyBXaWtsYW5kZXIgd3JvdGU6DQo+ID4gRXhwb3J0IHRoZSB0
d28gZnVuY3Rpb25zIGNtYV9hbGxvYygpIGFuZCBjbWFfcmVsZWFzZSgpLg0KPg0KPiBXaHk/ICBU
aGlzIGlzIGNsZWFybHkgcGFydCBvZiBhIGxhcmdlciBzZXJpZXMsIGJ1dCB5b3UndmUgZ2l2ZW4g
dGhvc2Ugb2YNCj4gdXMgd2hvIGFyZSBzdWJzY3JpYmVkIHRvIGxpbnV4LW1tIGFic29sdXRlbHkg
bm8gaW5mb3JtYXRpb24gYWJvdXQgd2h5DQo+IHlvdSB3YW50IHRvIGRvIHRoaXMuDQoNCkknbSBz
b3JyeSwgaXQncyBwYXJ0IG9mIHRoaXMgcGF0Y2g6IHNldA0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGttbC8yMDI1MDUwMjEwMDA0OS4xNzQ2MzM1LTEtamVucy53aWtsYW5kZXJAbGluYXJvLm9y
Zy8NCiBJJ2xsIENDIGEgYml0IG1vcmUgaW4gdGhlIG5leHQgdmVyc2lvbiBvZiB0aGUgcGF0Y2gg
c2V0Lg0KDQpJdCdzIG5lZWRlZCBpZiB0aGUgVEVFIHN1YnN5c3RlbSBpcyBidWlsdCBhcyBhIGxv
YWQgbW9kdWxlLg0KDQpUaGFua3MsDQpKZW5zDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
