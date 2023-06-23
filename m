Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8034C73C312
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jun 2023 23:43:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 471523EE8C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jun 2023 21:43:23 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by lists.linaro.org (Postfix) with ESMTPS id 5C3C53ED7B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jun 2023 21:43:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=qVR3YSLE;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.160.174 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4007b5bafceso32291cf.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jun 2023 14:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1687556588; x=1690148588;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vKykNlOx+IYCcda+j3r4HjOXr8RTAPOM9+ozRi0gyU0=;
        b=qVR3YSLErh6dr+Vb1AW2l4ftjP/Z4eSmPCPM8Q59yk5s5BsNMzyRfXXJ2NxCrWiI0X
         dkPzCwqi3u1pdFXEfF5X6E7coC3rsdV7oICfd5bVHy4boenulW8oUI36No+kaGwjU9Xh
         4RbGRaFQ2QK4v3/i94/gpuKoxtTlmHg4ZwhKv97u3B9yDaMNrZjCd0QT0zSwGbqQuC0n
         j97VDTVMiy7HkTiYD+rv2kX5T26rP2XDMUm+eSgPhRlZt4IH7Xe0Q76v2Iad4cuy5qgq
         r1dEP8HPBig2LfrXd0mtktYQ27ko7xu3GzeZD30ESsSG8o09OFq/JZ0WTABrUfj9oDmE
         rloA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687556588; x=1690148588;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vKykNlOx+IYCcda+j3r4HjOXr8RTAPOM9+ozRi0gyU0=;
        b=P2K21acVVIqyij6pzYp4/dvHSW0hqFQ/MorLnfn0FQqpae15PeHOtrRzEuDClnbGMR
         nDr6vFN095l/ymZQg3j0EvHxqVfEWO2p0xsl6cZY2UdhEc0q6K00r8L2YbMVjXBT1kqq
         qMLEnxO+cisgY2pRTz1x6OF+2Kc0khs2XdABE6StF5yeUUKrK3t4V++5JtkCNn0gGjq6
         RUoAoP9MXwVHck8ChzGe0RuUKeq0XVTyGILmQEddiW+/UhRkeyC7ZEM5+XXUv5pA1f+S
         XoEhPXBV4mCUxqS4UBbYvhuMQNoseuvmT0cKodAFT0v+z20Sl9acrhMTBittZZi7RAcG
         Qtng==
X-Gm-Message-State: AC+VfDwSDXuBtjMmyY787HIr1RsnShIUWhwX/rzX2iU9n7snupUn9Fvo
	L+b7QZ2sD4TLP5oXtnGWISnaVqcSSPGKLSCq8g7l
X-Google-Smtp-Source: ACHHUZ4poLvnSuV5cyybrW+VYzDvgGaHb87NRI6SmoHLs2JwOgyMJ4Txhi7tpMXi7olkf0B9pr7+6kAmVS3RPX/kjkQ=
X-Received: by 2002:a05:622a:353:b0:3f8:5b2:aef5 with SMTP id
 r19-20020a05622a035300b003f805b2aef5mr15887qtw.29.1687556587861; Fri, 23 Jun
 2023 14:43:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230623211457.102544-1-Julia.Lawall@inria.fr> <20230623211457.102544-7-Julia.Lawall@inria.fr>
In-Reply-To: <20230623211457.102544-7-Julia.Lawall@inria.fr>
From: John Stultz <jstultz@google.com>
Date: Fri, 23 Jun 2023 14:42:57 -0700
Message-ID: <CANDhNCpGy8UkUA8UdFZWYdJVEGG=kM_ws6Sy37dyUYFgk9uz5g@mail.gmail.com>
To: Julia Lawall <Julia.Lawall@inria.fr>
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.174:from];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5C3C53ED7B
X-Spamd-Bar: --------
Message-ID-Hash: XKO4ZAF3TYHJVZRJZK6VJTPFHV5NY7SC
X-Message-ID-Hash: XKO4ZAF3TYHJVZRJZK6VJTPFHV5NY7SC
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, keescook@chromium.org, kernel-janitors@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 06/26] dma-buf: system_heap: use array_size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XKO4ZAF3TYHJVZRJZK6VJTPFHV5NY7SC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKdW4gMjMsIDIwMjMgYXQgMjoxNeKAr1BNIEp1bGlhIExhd2FsbCA8SnVsaWEuTGF3
YWxsQGlucmlhLmZyPiB3cm90ZToNCj4NCj4gVXNlIGFycmF5X3NpemUgdG8gcHJvdGVjdCBhZ2Fp
bnN0IG11bHRpcGxpY2F0aW9uIG92ZXJmbG93cy4NCj4NCj4gVGhlIGNoYW5nZXMgd2VyZSBkb25l
IHVzaW5nIHRoZSBmb2xsb3dpbmcgQ29jY2luZWxsZSBzZW1hbnRpYyBwYXRjaDoNCj4NCj4gLy8g
PHNtcGw+DQo+IEBADQo+ICAgICBzaXplX3QgZTEsZTI7DQo+ICAgICBleHByZXNzaW9uIENPVU5U
Ow0KPiAgICAgaWRlbnRpZmllciBhbGxvYyA9IHt2bWFsbG9jLHZ6YWxsb2Msa3ZtYWxsb2Msa3Z6
YWxsb2N9Ow0KPiBAQA0KPg0KPiAoDQo+ICAgICAgIGFsbG9jKA0KPiAtICAgICAgICAgICAoZTEp
ICogKGUyKQ0KPiArICAgICAgICAgICBhcnJheV9zaXplKGUxLCBlMikNCj4gICAgICAgLC4uLikN
Cj4gfA0KPiAgICAgICBhbGxvYygNCj4gLSAgICAgICAgICAgKGUxKSAqIChDT1VOVCkNCj4gKyAg
ICAgICAgICAgYXJyYXlfc2l6ZShDT1VOVCwgZTEpDQo+ICAgICAgICwuLi4pDQo+ICkNCj4gLy8g
PC9zbXBsPg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBKdWxpYSBMYXdhbGwgPEp1bGlhLkxhd2FsbEBp
bnJpYS5mcj4NCg0KVGhhbmtzIGZvciBzZW5kaW5nIHRoaXMgb3V0IQ0KDQpBY2tlZC1ieTogSm9o
biBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
