Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMROKZA3n2m5ZQQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 18:55:28 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2F119BD54
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 18:55:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F14643F814
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 17:55:26 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 67DC53F814
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 17:55:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=NP2u1AS6;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48373ad38d2so3425e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 09:55:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772042123; cv=none;
        d=google.com; s=arc-20240605;
        b=ars4m6D0Q2w/hhHYYmrvSeIWCjoaCsX2FHqON9MZaDSbg4g6gKOfT+ErQBh+TjvcD/
         xWXhj5sJRRcqb1YROD/o3lezyf1WXTj5R48ZPCVVnK/iarALZJpyl2AZ3IgsXzlD57tu
         gAC2SEpJw05uVmjPJFhV7+yw6G+ukq6QRNyRPCdzXO2Otunlk7tgBGpbDUBQ0o2PH4YR
         NRA0rsO10bDrrRrJaz8lqycAW/FySZsEIpmeOuIXVIOQFuWpVAEAuAaR0w6AzVSaZ9qv
         cKep0YBKmc1lpBRAHGtqCypIQCwUR77Vzh/LvZhsXS4EMKRS457y/r2dMbPi/lvWCfFV
         oo0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=i8gRH0YBs8R4dCXzko++9eZOKgk9GpolaSr9eR7PWeg=;
        fh=WQIbfcxnGYwRdGl1nrIfKNv2RTPuDwLDRS2IO8zWBww=;
        b=ZVPtYrPmw5kBNi+fyn4lEzH/OQ1qIT0JObFyaGhL/9Z1ZToYyex3h71FgSIPztQyWO
         tjFUbo7EJ+L1OD7nkYH8Me3cTv6dw+myzMMr5wvt/Y+dMpoqQap1OLGnRHuGfEAwRWv+
         NlPKwOThucRzPYOjq0KFEYqoDkL/eW+HJGcvL3sw5kWqwz1Xx20f212W8YjdT98WVOr9
         w72NFvtne1Qed+yL+HaSUUB6i3k2b/8bvSLBctWCJx+EnW1LRAnFw0Vop3qONflYOMe0
         puykiprOw67jg414QIouKcRvlkR1kdCa/toC+3lmwoMeeHJyQhTbzpHWBSiX3edQjspP
         ekWA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772042123; x=1772646923; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i8gRH0YBs8R4dCXzko++9eZOKgk9GpolaSr9eR7PWeg=;
        b=NP2u1AS6wHwdnzqhzD7JQ2v3An9/qrcsEndm9xWXzD19symhG6C7oL4o0GeMu9x8Y5
         vKgHS73XeJnL2x8Ft6oUChNN4xQL6Sb3zL4kSdDK6zyzJXrUe1K4bRYzphhaxPrcW6q2
         MCept+NKXgBDnrsUpsib/Xf5AvQnNyNPhsF/YZ79QNy5qMI6JWl56wRDeOKB29FnUf+Q
         6hMrPvjpu+pBuClh3HXFfHExDLV/6ldeE0dvym0X7VPt3zho3oFQt3uz4jUkl/l7/W+y
         o2VvIHoFq/uuoQKZVwgZ2/jKFFk28bhBgS2DyWXnyHXVy41eHL3b16YocDdejLSjz5pV
         NlDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772042123; x=1772646923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i8gRH0YBs8R4dCXzko++9eZOKgk9GpolaSr9eR7PWeg=;
        b=uWQN/amxwvpsOAiZHWTs395Fi0aQUfYzvd4CthaeEefGl5Mh9TR8YbA4FY7fv1+hrr
         2gdeUtHWwpRNwO4vrb9V68TyxQNFpbIPDIzG30yn1TTESbE2A71cSXtzkZq8j5erCBDQ
         ZDPT9watfCrhsHFPFlBeEpXhf5/C44rRo+4Fw2sZkosO0Neh3Cn+gjL2ESt9gr9fkj2T
         BCjtqtLlSu6AJCMlDFCr33fZlsCp328ZtIRAq7Rx/pPn2LM0p8ynzuuCzdkyOw5z/KAz
         fot8gpUr/eDWB2KpGkzLO5ArmWBQGdgc8ERbhUjp8xJBEhUANNTLBDrBY94TXYla/RFz
         3I0w==
X-Forwarded-Encrypted: i=1; AJvYcCUoaayMaRyRwqf2wVdsvabRsGb2hez51+a8dmEBv90DRQzm1mY0++vdFiO3hDPQfTSxpueaXJLIVnQdzvTR@lists.linaro.org
X-Gm-Message-State: AOJu0YxpziJs0YTydK3y8+9utReO1peGlsv90aVhN92PhHXWlmrefgCZ
	M61cBkkVbw6gllhuBjacQHdqTyWe/0tJtYabtXaR2JPH4BsSWlAuz0HfOpk5WTj+M0G/YAhqbJs
	2gpB0f71F1oN0X+8AcjaWVJq+y4CzVkQkAMUgXeDl
X-Gm-Gg: ATEYQzwd/XUAMLjFsQtZyJgGPBRThDpbyZr7kT9KqJLeuPfIwm8pROPzZTsmDgHzDg4
	xMxkiarUhsZTJCL+bOebkc7clcmOAk68M3WWU3JP2ni3Up8UCQuIxfFAArVghsLaXjICV62MphR
	CeroGbb/Js4c6UNOW+lAIfomj1uvBEcTLBpPapLtVU2qjYwRBz4SHl31LfHzfS6ZoQoSmR10IS0
	2pVoob5u6rIMk/tLN8zuwhlq30SAVNpbbwkhY2Nk0Vn95Z55/zTxi9JgIWM5DYMRt1jmf2cHZIb
	qlgjcPa1i+J2ur9mzgBxUPFAiaPgdOwL+7tElLBIP74DRnLGq5TadqWE9/WQ31KjIhRDT9tJxU0
	flsb7
X-Received: by 2002:a05:600c:8611:b0:47e:d9e7:1c12 with SMTP id
 5b1f17b1804b1-483bebec818mr726105e9.6.1772042122791; Wed, 25 Feb 2026
 09:55:22 -0800 (PST)
MIME-Version: 1.0
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com> <20260224-terrestrial-jaguarundi-of-influence-e3ccf1@houat>
In-Reply-To: <20260224-terrestrial-jaguarundi-of-influence-e3ccf1@houat>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 25 Feb 2026 09:55:10 -0800
X-Gm-Features: AaiRm52tUhgFoM5nopMxGR-oiwd-4ooH-ZyIViR4nk0fPe7YzI5THkHnLy4-ths
Message-ID: <CABdmKX1-SdLGR4=3q2dNAztA-2qz_AktVB9Pbs7kEZGQ3xLT_A@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Spamd-Bar: ----
Message-ID-Hash: DHCM3QZ5MYSFU2NNGXEBSDG3LCMGXWPZ
X-Message-ID-Hash: DHCM3QZ5MYSFU2NNGXEBSDG3LCMGXWPZ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Yosry Ahmed <yosryahmed@google.com>, Shakeel Butt <shakeel.butt@linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DHCM3QZ5MYSFU2NNGXEBSDG3LCMGXWPZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.979];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 2C2F119BD54
X-Rspamd-Action: no action

T24gVHVlLCBGZWIgMjQsIDIwMjYgYXQgMTo0MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IEhpIFRKLA0KPg0KPiBPbiBUaHUsIEZlYiAxOSwgMjAy
NiBhdCAwNToxNDo0MlBNIC0wODAwLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+ID4gT24gV2VkLCBG
ZWIgMTgsIDIwMjYgYXQgOToxNeKAr0FNIEVyaWMgQ2hhbnVkZXQgPGVjaGFudWRlQHJlZGhhdC5j
b20+IHdyb3RlOg0KPiA+ID4gQW4gZWFybGllciBzZXJpZXNbMV0gZnJvbSBNYXhpbWUgaW50cm9k
dWNlZCBkbWVtIHRvIHRoZSBjbWEgYWxsb2NhdG9yIGluDQo+ID4gPiBhbiBhdHRlbXB0IHRvIHVz
ZSBpdCBnZW5lcmFsbHkgZm9yIGRtYS1idWYuIFJlc3RhcnQgZnJvbSB0aGVyZSBhbmQgYXBwbHkN
Cj4gPiA+IHRoZSBjaGFyZ2UgaW4gdGhlIG5hcnJvd2VyIGNvbnRleHQgb2YgdGhlIENNQSBkbWEt
YnVmIGhlYXAgaW5zdGVhZC4NCj4gPiA+DQo+ID4gPiBJbiBsaW5lIHdpdGggaW50cm9kdWNpbmcg
Y2dyb3VwIHRvIHRoZSBzeXN0ZW0gaGVhcFsyXSwgdGhpcyBiZWhhdmlvciBpcw0KPiA+ID4gZW5h
YmxlZCBiYXNlZCBvbiBkbWFfaGVhcC5tZW1fYWNjb3VudGluZywgZGlzYWJsZWQgYnkgZGVmYXVs
dC4NCj4gPiA+DQo+ID4gPiBkbWVtIGlzIGNob3NlbiBmb3IgQ01BIGhlYXBzIGFzIGl0IGFsbG93
cyBsaW1pdHMgdG8gYmUgc2V0IGZvciBlYWNoDQo+ID4gPiByZWdpb24gYmFja2luZyBlYWNoIGhl
YXAuIFRoZSBjaGFyZ2UgaXMgb25seSBwdXQgaW4gdGhlIGRtYS1idWYgaGVhcCBmb3INCj4gPiA+
IG5vdyBhcyBpdCBndWFyYW50aWVzIGl0IGNhbiBiZSBhY2NvdW50ZWQgYWdhaW5zdCBhIHVzZXJz
cGFjZSBwcm9jZXNzDQo+ID4gPiB0aGF0IHJlcXVlc3RlZCB0aGUgYWxsb2NhdGlvbi4NCj4gPg0K
PiA+IEJ1dCBDTUEgbWVtb3J5IGlzIHN5c3RlbSBtZW1vcnksIGFuZCByZWd1bGFyIChub24tQ01B
KSBtb3ZhYmxlDQo+ID4gYWxsb2NhdGlvbnMgY2FuIG9jY3VyIG91dCBvZiB0aGVzZSBDTUEgYXJl
YXMuIFNvIHRoaXMgc3BsaXRzIHN5c3RlbQ0KPiA+IG1lbW9yeSBhY2NvdW50aW5nIGJldHdlZW4g
bWVtY2cgKGZyb20gWzJdKSBhbmQgZG1lbS4gSWYgSSB3YW50IHRvIHB1dA0KPiA+IGEgbGltaXQg
b24gc3lzdGVtIG1lbW9yeSB1c2UgSSBoYXZlIHRvIGFkanVzdCBtdWx0aXBsZSBsaW1pdHMgKG1l
bWNnICsNCj4gPiBkbWVtcykgYW5kIGtub3cgaG93IHRvIGRpdmlkZSB0aGUgdG90YWwgYmV0d2Vl
biB0aGVtIGFsbC4NCj4gPg0KPiA+IEhvdyBkbyB5b3UgZW52aXNpb24gdXNpbmcgdGhpcyBjb21i
aW5hdGlvbiBvZiBkaWZmZXJlbnQgY29udHJvbGxlcnM/DQo+DQo+IEkgZmVlbCBsaWtlIGl0IGNh
biBiZSBhcmd1ZWQgZWl0aGVyIHdheSwgYW5kIEkgZG9uJ3QgcmVhbGx5IHNlZSBhIHdheQ0KPiBv
dXQgb2Ygc3VwcG9ydGluZyBib3RoLg0KPg0KPiBMaWtlIHlvdSBwb2ludGVkIG91dCwgQ01BIGNh
biBpbmRlZWQgYmUgc2VlbiBhcyBzeXN0ZW0gbWVtb3J5LCBidXQgaXQncw0KPiBhbHNvIGEgbGlt
aXRlZCBwb29sIHRoYXQgeW91IG1pZ2h0IHdhbnQgdG8gcGxhY2UgYXJiaXRyYXJ5IGxpbWl0cyBv
bg0KPiBzaW5jZSwgdW5saWtlIHN5c3RlbSBtZW1vcnksIGl0IGNhbid0IGJlIHJlY2xhaW1lZCwg
d2lsbCBub3QgdHJpZ2dlciB0aGUNCj4gT09NIGtpbGxlciwgYW5kIG1vcmUgZ2VuZXJhbGx5IGlz
IGEgbXVjaCBtb3JlIHNwYXJzZSByZXNvdXJjZS4NCg0KT2sgdGhhbmtzLiBZZWFoIEkgZ3Vlc3Mg
d2UnbGwganVzdCBoYXZlIHRvIGFkZCB0aGUgYWNjb3VudGluZw0KY29tcGxleGl0eSBhcyBuZWVk
ZWQgdG8gc2F0aXNmeSBldmVyeW9uZSdzIGRpZmZlcmVudCBuZWVkcy4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
