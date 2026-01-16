Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F3CD38956
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Jan 2026 23:37:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE259401BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Jan 2026 22:37:03 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 1E0643F83E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 22:36:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=AYFTOi4i;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47ee730612dso19025e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 14:36:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768603017; cv=none;
        d=google.com; s=arc-20240605;
        b=Wakm3YzQMRinpfZY5W7sqTLtGSGZ4O6hUIipW8/xo4Ut55CES9xCr4M3PEadoiGqPB
         oi3HSX/Ai2jQXW6nWI8f2g4omS4gc8r8LkzYk7yT20yEc7wbsZZse9wFhaWx4y1r5H4H
         ahoUK4NoEMtaPb5fvYY665pHS0oL4INIEZJGsFSxD12Mv9VEGG8mrZ0hcgAxDiqa/hRE
         mWn06F/QMldSnwz807dwfWnjnJHEkU2y/Af/50X02I78R8XHmJ3h2TCy+3atmfRSTo1b
         oIPSlJEo4YqknB3n1OqGXFv+BOWUutbGUHRT7uUx2FQZ8rOSEm7ZQ3mLi8Oqb5qs0onJ
         Ab5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ref6+anxG3jpxuCLrmeQkq0IM/fUcznqpxMnwP+SsV0=;
        fh=Bddc+IzsBN3GFkykAio3EgjOAvtH2wYXVKjqVUPkiSw=;
        b=as2HXHOVvxPPNhvs+Nh3Ifzq6jwHwHCwTmPAxj/Zr1DrGinuodMMIkt5m5ra3+FmI6
         FVFgHb0qmGz7rCHdZ7xfDjmQETvbGPCBdc5xEYY8pTR2uWXO1EW8ZLTSVJ7a1LCkU2Sl
         SscD7PbExL+VMousFR6KRqgeOqXSFgY9twxR5JCVWXStRMVarKAbrCf/6AyZsvr09iB7
         +0/7wtIsRSzSd5KDgyX3YGHVeaPakzXt8uDY9R+XfTX+tW/6MDjDD7Kzl9MAXg3iXwMp
         bSSj6px6LFRfCI24iV8hspEyQ4vIBkyllFpLnsW/5Ltq+juRw2WVnVAgFV5BXp9UKVTn
         zzvQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1768603017; x=1769207817; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ref6+anxG3jpxuCLrmeQkq0IM/fUcznqpxMnwP+SsV0=;
        b=AYFTOi4iOtVnRY6lRStYgWgyDa+DPQtGbZHIEvV5clCOG6c5YN/r+06fSZw3M7voqg
         89piJEALeB8T5sHagt+sx+/gWttq06ILJ5s1bzICfGlOlLzOYzuRc/Q4gfQnU8MszQE/
         YOB33m0hYa89lt0exEGXf3sjl6JB6n19ilpixWnVzlsgaIGYy+z1/cKSybrqpwnpThEL
         ymgxPnl9XHpX4w2tzR+aHr+MjQfwRF341cSrYEzOVLUrKi7wuNzq6KELzOkLd0x2uBqM
         N5jOdHLMXRXQoz7u33SlTA4M0640m+B8H3GK4Tldi1uorgtyElF9oX7ZNa2U1Q6oytVU
         LiCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768603017; x=1769207817;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ref6+anxG3jpxuCLrmeQkq0IM/fUcznqpxMnwP+SsV0=;
        b=u5DzOxNSOSWrrhIrffl55iWRysSCtcHy0/Q77oyOsd7jKIvQ5t0fm4cWOqvvR0eS8s
         u7hbn6oKZ4lWOlCZPadB5GthkFDAkSAKKMAQL6ZaEsNo4I10yUyXLmmCJHZQ4dDnb00C
         Ah8usUh1xyG9IgO9Nn8HcwSZIMbgrkNTrk7py1mjQu2ABgDj3aciM/TyVtHnuswDZqtv
         FagEcGbCJWw5Q/GL1ZSgT+xN49Rt4BsLodxKq/UIUnko6J99kpcfcsYRm26U0Lz1DhTP
         0PKLUjmjNm/RqbxBNxO8OJN0Ijxpc7H123WsOgX/Kzv4yTTvB8LMc6R/M80jGdehY35G
         aGig==
X-Forwarded-Encrypted: i=1; AJvYcCWvDkobWiOow76RR0lk5ZYVZc4xotfhHztgqUsQKQlMXb4oBAsLjKEE+yNJ+TWzTwRRNRgfoCb/7ZGUR1YR@lists.linaro.org
X-Gm-Message-State: AOJu0YwfBg+h4D+eY42UqmymzM6ujpW06LunXukMvxYunk3ITK3Avjq2
	A+LiY8DBLZHsedjeEFwUs4qnisz0ZB89i9KJAGZNo/ngzwF1wVN2xV5L2j1CicHVwrwxmQ/db6U
	dWcQysWYeK3vOofzcK2UAb083HXwgwLnF22lru3ck
X-Gm-Gg: AY/fxX4xyxnH8KX74kz7PUBoV98qGrdAmqbwryNGpikZ6Z4IgtgQT6JhRaDEfgOzrWk
	Fobzqa5OrbpNiSKkl1brIeKnE90JE+uCUFpvd/NwQpjQxO6tesG0FqBMl90SYiimhtCwK7LNVNW
	iOK8iu9A0kYSPCmnryghVr7ygUE8BfGIOV3VyojKo+c2YOOTAhEkY8M+V4USZQCllO0yLobgNQA
	ApxLEnDV/jvb9V2kSp2PElhxeqvgJR+epemmo5Y/3L/7HkTuNC4zmjdLUKnnAsYXdfWhoADldCf
	aieqHrPv0CNXFgbbniCxZZ1wDocWmaR+NtV3
X-Received: by 2002:a05:600d:111:b0:477:563a:135c with SMTP id
 5b1f17b1804b1-4802781fa1dmr195595e9.0.1768603016926; Fri, 16 Jan 2026
 14:36:56 -0800 (PST)
MIME-Version: 1.0
References: <20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com> <20260116-dmabuf-heap-system-memcg-v3-1-ecc6b62cc446@redhat.com>
In-Reply-To: <20260116-dmabuf-heap-system-memcg-v3-1-ecc6b62cc446@redhat.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 16 Jan 2026 14:36:44 -0800
X-Gm-Features: AZwV_Qj0Dz4LSBCQIqyfkjH-g5gAHdJ-h5DhHq4dUYsXKP4PwrirabqAetr4Apw
Message-ID: <CABdmKX1ZCkF2N1Esi6Uo=jK=soXZe_eWhSSxHtMTcRWs-ZUYog@mail.gmail.com>
To: Eric Chanudet <echanude@redhat.com>
X-Rspamd-Queue-Id: 1E0643F83E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.49:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YXHHM5HX3OFGFO2TIUGKTCRXAT73YUNK
X-Message-ID-Hash: YXHHM5HX3OFGFO2TIUGKTCRXAT73YUNK
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maxime Ripard <mripard@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] dma-buf: heaps: add parameter to account allocations using cgroup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YXHHM5HX3OFGFO2TIUGKTCRXAT73YUNK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMTI6MDbigK9QTSBFcmljIENoYW51ZGV0IDxlY2hhbnVk
ZUByZWRoYXQuY29tPiB3cm90ZToNCj4NCj4gQWRkIGEgcGFyYW1ldGVyIHRvIGVuYWJsZSBkbWEt
YnVmIGhlYXBzIGFsbG9jYXRpb24gYWNjb3VudGluZyB1c2luZw0KPiBjZ3JvdXAgZm9yIGhlYXBz
IHRoYXQgaW1wbGVtZW50IGl0LiBJdCBpcyBkaXNhYmxlZCBieSBkZWZhdWx0IGFzIGRvaW5nDQo+
IHNvIGluY3VycyBjYXZlYXRzIGJhc2VkIG9uIGhvdyBtZW1jZyBjdXJyZW50bHkgYWNjb3VudHMg
Zm9yIHNoYXJlZA0KPiBidWZmZXJzLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBFcmljIENoYW51ZGV0
IDxlY2hhbnVkZUByZWRoYXQuY29tPg0KDQpSZXZpZXdlZC1ieTogVC5KLiBNZXJjaWVyIDx0am1l
cmNpZXJAZ29vZ2xlLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
