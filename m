Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1506192675E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2024 19:45:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFFF443CE6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2024 17:45:38 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by lists.linaro.org (Postfix) with ESMTPS id 60A2A40D56
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2024 17:45:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=EakSFR+4;
	spf=pass (lists.linaro.org: domain of surenb@google.com designates 209.85.128.172 as permitted sender) smtp.mailfrom=surenb@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-64d408a5d01so39201067b3.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jul 2024 10:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720028736; x=1720633536; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GhxR4AnmOLb2e8qgt4elcn3tmPYz1HfQBknaKkg9ViY=;
        b=EakSFR+4VIoqcMTMT4dKHOhFCg7577z1JtVDDvZe2PyHc7HUDlzcrdXD8+IHZdEx3p
         IFRzqy4KP+7IhvtntnODsqGMXz7ueu5xi30nH43yLud1PMS7jho9gtuwxt+lNi3YDzoh
         09JPX5W/VmlxQZlSr9t+s7we03fO5ttliqTyxo0tx6NPELfPersysZxJVXLId4a1JlcO
         9nxQXuAk6VK8ySB+2QbPKFvmhxZKfIM+Vt19dvzoIxffV0drSUWUBS2lUkOv/hEkqnN/
         6NiMgHJHVYYOfqIk+qYi838/q/4tHRMXVekI4VCgw0FNQW+0pGlIpH6+tZcU8xm56gIU
         2CDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720028736; x=1720633536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GhxR4AnmOLb2e8qgt4elcn3tmPYz1HfQBknaKkg9ViY=;
        b=no3luJ7ePXjXVbfbh9jG4Z/SywMpX9vvWKu6MUSebGozoy08B8uvTYmP1RFfhhiktT
         24w6oNxpC3eXMU/L4FEBhxlVHXF292XB1nVeAqxvck5rm7fB3r9qSSlHOJ4/VuBb7HLB
         EADlGjxr2r4JUQD/m+Fx6qnXidhbHOlrY9/4ajFNRpWwCPSklQuOi/hAoPTmGF3WMYXP
         xU+UaA/epSSRrXkUL+AksvHCA9lit+r3JzN1Z4802ro6BTeMdZOm3LsH0JbMaEwHDIZr
         5QkJyE/vgNgmZP3k+BdhUWFIAe2/S1IA5DXX1ZIlplxLZ198gxvP+WhBjadnkGEby5mn
         9CtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpjtkBptWu1+Tn3ewGF9b/EvsR2J9HVd6XnEC5RcoMyBXfJ0cFBvWcigVkZKv/AGVgNuHVyNFxlT2/kwutI4tYFUvczAaRXY4lCtp/OFQ=
X-Gm-Message-State: AOJu0Yyw/lsuhm7T8pdyyDJoXd+e5cYHrdu+SOZ8vB1t7AqGkKyBFvBS
	JF0DUkQzcN6psOO/zuC74d79UrFMhJ41WVyOMfXX+iBSFDVTYrE6doUVofUck9PbEAgAJm2AarR
	K7q24Qz9eKId42o8Jv52L5UpvuARV9FpzoSaf
X-Google-Smtp-Source: AGHT+IGhOytUB8CaG/gAFJEC68exEInJu4ze08dBFswC7EHqqNiHxCYGfnPatnT8gPM2A0u1TbA00DVz/5EvCS/GRV4=
X-Received: by 2002:a81:7c54:0:b0:646:25c7:178e with SMTP id
 00721157ae682-64c7123c013mr127129437b3.5.1720028735529; Wed, 03 Jul 2024
 10:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240630011215.42525-1-thorsten.blum@toblux.com>
 <20240701232634.0bddb542ddea123b48dcabdf@linux-foundation.org>
 <20240702064017.GA24838@lst.de> <e0f384b0-6913-4224-a3ea-bdae784f5dab@amd.com>
 <20240702003357.6bfd1d918c56d536bb664c37@linux-foundation.org> <CAJuCfpFCiUfpa45rG74zd-KoQcaA2fwgUw86iSF2CDiFrXCOdA@mail.gmail.com>
In-Reply-To: <CAJuCfpFCiUfpa45rG74zd-KoQcaA2fwgUw86iSF2CDiFrXCOdA@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Wed, 3 Jul 2024 10:45:21 -0700
Message-ID: <CAJuCfpHJPtduJwOyxTFT9RVmWZCcWULWhUN4ZPEt6earHp=MXA@mail.gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-Rspamd-Queue-Id: 60A2A40D56
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.172:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	URIBL_BLOCKED(0.00)[amd.com:email,mail-yw1-f172.google.com:helo,mail-yw1-f172.google.com:rdns,linux-foundation.org:email];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HUGAKMWU6U2JOO52WJS5OVEEWW2RU75I
X-Message-ID-Hash: HUGAKMWU6U2JOO52WJS5OVEEWW2RU75I
X-MailFrom: surenb@google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, Thorsten Blum <thorsten.blum@toblux.com>, jack@suse.cz, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Remove unnecessary kmalloc() cast
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HUGAKMWU6U2JOO52WJS5OVEEWW2RU75I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdWwgMiwgMjAyNCBhdCA4OjE14oCvQU0gU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJl
bmJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgSnVsIDIsIDIwMjQgYXQgNzozNOKA
r0FNIEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+IHdyb3RlOg0KPiA+
DQo+ID4gT24gVHVlLCAyIEp1bCAyMDI0IDA5OjEzOjM1ICswMjAwIENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiA+IHllcyB0aGF0IGlz
DQo+ID4gPiBpbnRlbnRpb25hbGx5IGEgZGVmaW5lIGFuZCBub3QgYW4gaW5saW5lIGZ1bmN0aW9u
Lg0KPiA+ID4NCj4gPiA+IFNlZSB0aGlzIHBhdGNoIGhlcmUgd2hpY2ggY2hhbmdlZCB0aGF0Og0K
PiA+ID4NCj4gPiA+IGNvbW1pdCAyYzMyMWYzZjcwYmMyODQ1MTA1OThmNzEyYjcwMmNlOGQ2MGM0
ZDE0DQo+ID4gPiBBdXRob3I6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+
DQo+ID4gPiBEYXRlOiAgIFN1biBBcHIgMTQgMTk6MDc6MzEgMjAyNCAtMDcwMA0KPiA+ID4NCj4g
PiA+ICAgICAgbW06IGNoYW5nZSBpbmxpbmVkIGFsbG9jYXRpb24gaGVscGVycyB0byBhY2NvdW50
IGF0IHRoZSBjYWxsIHNpdGUNCj4gPg0KPiA+IERhbmcsIHllcywgdGhhdCB3YXMgYSByZWdyZXR0
YWJsZSBjaGFuZ2UuICBCdXQgaGFyZGx5IHRoZSBlbmQgb2YgdGhlDQo+ID4gd29ybGQuICBJIGRv
IHRoaW5rIGVhY2ggc3VjaCBhbHRlcmF0aW9uIHNob3VsZCBoYXZlIGluY2x1ZGVkIGEgY29tbWVu
dA0KPiA+IHRvIHByZXZlbnQgcGVvcGxlIGZyb20gZ29pbmcgYW5kIGNsZWFuaW5nIHRoZW0gdXAu
DQo+DQo+IFNvcnJ5IEkgbWlzc2VkIHRoaXMgZGlzY3Vzc2lvbi4gWWVzLCB0aGUgZGVmaW5pdGlv
biB3YXMgaW50ZW50aW9uYWwNCj4gYW5kIEkgd2lsbCBhZGQgY29tbWVudHMgZm9yIGFsbCB0aGUg
Y2FzZXMgd2hpY2ggd2VyZSBjaGFuZ2VkIHRoaXMgd2F5Lg0KDQpQb3N0ZWQgaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzIwMjQwNzAzMTc0MjI1LjM4OTEzOTMtMS1zdXJlbmJAZ29vZ2xlLmNv
bS8NCmFkZGluZyBjbGFyaWZ5aW5nIGNvbW1lbnRzLg0KVGhhbmtzLA0KU3VyZW4uDQoNCj4gVGhh
bmtzLA0KPiBTdXJlbi4NCj4NCj4gPg0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
