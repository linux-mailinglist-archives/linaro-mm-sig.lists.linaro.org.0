Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D318C7AD4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 19:09:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38C45447B7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 17:09:37 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 671AD447B7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 17:09:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=EGdwHvZu;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-420107286ecso5175e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 10:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715879365; x=1716484165; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qQzIVlQ1gpgjynAxQQJO0srkRwgd45+RmoC324lNlhs=;
        b=EGdwHvZuudjn8SeE/7snB5KOgH8L0J3CueDcwpt1XVjTbvAjSkB/BuqlWgY/S2wXFT
         bBUH1FirxRD0s/kSmKzubODc12DR/YQ56LjndIdnaLczbUFBUxDkviC9BA5UvWCJCBqx
         xQjbnJ301uBE24kEfuHyLTxGFX0HFyPxOEGHmKf7lV5IMH+e6BkNSolG3JBzpkawKWCS
         vZ3t+aIk37xBAw5HC0excBYsCngYYctXXfWvkHNzBwoELaXq4RHe4W7bdTMXxAjgncw6
         vLwdqXz59cZsFK15USTtVBI6iJBoeS1OIq9RwfRbcNZ3dAmdohuZ2vVb7qvlssdUyTF+
         98Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715879365; x=1716484165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qQzIVlQ1gpgjynAxQQJO0srkRwgd45+RmoC324lNlhs=;
        b=Nx9OaBOOis6c+z7fgRlTAwcjaegnl72NHdX9WVHuJepRaNGdGRKll1nGn5p0/B2Ekp
         OfUvY6zCTJHss1t/4U9AxTJe/u7IAIiQUJqzGSNmdDoDU+RuDrYKt9Vf3LWyZILsYUsU
         P7yPMheEZCzYfDb+SjLYShw6jmgPmHXCwS9VYxZZTDt5uRHFMmeWbrIVFe1at7KxJLbu
         FBSaXYZAhWDNRGpBtcGHcnnVmhDwPuaSog7g4E6uLMEFX5FxTiRfL6k+mOJ0nH5V+b2D
         ezdsv3AKow2p7S7pJsvouOF8agfbKLP18toWRpWsQ+KtrxiU7/yoP7aEamb0ibJxEwpr
         y3yg==
X-Forwarded-Encrypted: i=1; AJvYcCVfFNKWjZx1PXQ+vXZxXIp0KB/sk20FoynW/f3at3LHkDdl6iA3x9gbkNhGs6HnMyrtitF3hsWCj2wwCoBhgQJVPw+qBBVYHrpHhcWrVzI=
X-Gm-Message-State: AOJu0YyXW07GKFsVegcmrDaE71xAOnx2DwstfnAaEli8xlV5Xs94rE/k
	h3xosgImGmAhNqSJPTPh4wGo+7FlVW8mKaNXr4HVjT6Z5JC7yDPbpjQ/gNd8WDXP20GQpO/oARI
	i1lPYsZnw3ayHmXGPUeNPiIRTHnfIfhhclI8=
X-Google-Smtp-Source: AGHT+IEbIHaPpQUwsM2bGOORaLwAAJk/9w7y7+ELgEsY9rlNpgazkzZDH+eXj4VRQX5ZsmyvpnueMFsMKYjhmj/eslA=
X-Received: by 2002:a05:600c:5024:b0:41b:4c6a:de7a with SMTP id
 5b1f17b1804b1-4200f8bbe7bmr11807905e9.3.1715879365312; Thu, 16 May 2024
 10:09:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
 <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com> <20240516-truthful-fair-kudu-adb6df@penduick>
In-Reply-To: <20240516-truthful-fair-kudu-adb6df@penduick>
From: John Stultz <jstultz@google.com>
Date: Thu, 16 May 2024 10:09:13 -0700
Message-ID: <CANDhNCqyh2ZKsOyb9rLBpUZZ+VTU8M70XBQC3aC2=G_v8LqciA@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 671AD447B7
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: ZWK7SLZRTUHYEGLRN2HJH3PUICNV5GVM
X-Message-ID-Hash: ZWK7SLZRTUHYEGLRN2HJH3PUICNV5GVM
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZWK7SLZRTUHYEGLRN2HJH3PUICNV5GVM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgMTYsIDIwMjQgYXQgNToyMuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+IE9uIFdlZCwgTWF5IDE1LCAyMDI0IGF0IDExOjQyOjU4QU0g
LTA3MDAsIEpvaG4gU3R1bHR6IHdyb3RlOg0KPiA+IEkgYXBvbG9naXplIGFzIG15IHdvcnJ5IGlz
IG1vc3RseSBib3JuIG91dCBvZiBzZWVpbmcgdmVuZG9ycyByZWFsbHkNCj4gPiBwdXNoIG9wYXF1
ZSBmZWF0dXJlIGZsYWdzIGluIHRoZWlyIG9sZCBpb24gaGVhcHMsIHNvIGluIHByb3ZpZGluZyBh
DQo+ID4gZmxhZ3MgYXJndW1lbnQsIGl0IHdhcyBtb3N0bHkgaW50ZW5kZWQgYXMgYW4gZXNjYXBl
IGhhdGNoIGZvcg0KPiA+IG9idmlvdXNseSBjb21tb24gYXR0cmlidXRlcy4gU28gaGF2aW5nIHRo
ZSBmaXJzdCBiZSBzb21ldGhpbmcgdGhhdA0KPiA+IHNlZW1zIHJlYXNvbmFibGUsIGJ1dCBpc24n
dCBhY3R1YWxseSB0aGF0IGNvbW1vbiBtYWtlcyBtZSBmcmV0IHNvbWUuDQo+ID4NCj4gPiBTbyBh
Z2Fpbiwgbm90IGFuIG9iamVjdGlvbiwganVzdCBzb21ldGhpbmcgZm9yIGZvbGtzIHRvIHN0ZXcg
b24gdG8NCj4gPiBtYWtlIHN1cmUgdGhpcyBpcyByZWFsbHkgdGhlIHJpZ2h0IGFwcHJvYWNoLg0K
Pg0KPiBJIHVuZGVyc3RhbmQgeW91ciBoZXNpdGF0aW9uIGFuZCBjb25jZXJuIDopIElzIHRoZXJl
IGFueXRoaW5nIHdlIGNvdWxkDQo+IHByb3ZpZGUgdGhhdCB3b3VsZCBoZWxwIG1vdmluZyB0aGUg
ZGlzY3Vzc2lvbiBmb3J3YXJkPw0KPg0KDQpNb3N0bHkgSSBqdXN0IHdhbnQgdG8gbWFrZSBzdXJl
IGl0J3MgZGlzY3Vzc2VkLCB3aGljaCBpcyB3aHkgSSByYWlzZQ0KaXQgYXMgYSBjb25jZXJuLg0K
DQpHZXR0aW5nIEFQSXMgcmlnaHQgaXMgaGFyZCwgYW5kIEkga25vdyBJJ3ZlIG1hZGUgbXkgc2hh
cmUgb2YgbWlzdGFrZXMNCihmb3IgaW5zdGFuY2UsIGEgc2l0dWF0aW9uIHRoYXQgdmVyeSBtdWNo
IGVjaG9lcyB0aGlzIGN1cnJlbnQNCnF1ZXN0aW9uOiB0aGUgKl9BTEFSTSBjbG9ja2lkcyBwcm9i
YWJseSBzaG91bGQgaGF2ZSB1c2VkIGEgZmxhZykuIFNvDQpJJ3ZlIGZvdW5kIGhpZ2hsaWdodGlu
ZyB0aGUgdHJhZGUtb2ZmcyBhbmQgZ2V0dGluZyBvdGhlciBmb2xrJ3MNCnBlcnNwZWN0aXZlcyB1
c2VmdWwgdG8gYXZvaWQgc3VjaCBpc3N1ZXMuICBCdXQgSSBhbHNvIGRvbid0IGludGVuZCB0bw0K
bmVlZGxlc3NseSBkZWxheSB0aGluZ3MuDQoNCj4gPiBBbm90aGVyIHRoaW5nIHRvIGRpc2N1c3Ms
IHRoYXQgSSBkaWRuJ3Qgc2VlIGluIHlvdXIgbWFpbDogRG8gd2UgaGF2ZQ0KPiA+IGFuIG9wZW4t
c291cmNlIHVzZXIgb2YgdGhpcyBuZXcgZmxhZz8NCj4NCj4gTm90IGF0IHRoZSBtb21lbnQuIEkg
Z3Vlc3MgaXQgd291bGQgYmUgb25lIG9mIHRoZSB0aGluZ3MgdGhhdCB3b3VsZA0KPiByZWR1Y2Ug
eW91ciBjb25jZXJucywgYnV0IGlzIGl0IGEgcmVxdWlyZW1lbnQ/DQoNClNvIEknZCBkZWZlciB0
byBTaW1hIG9uIHRoaXMuIFRoZXJlIGhhdmUgYmVlbiBhIG51bWJlciBvZiBoZWFwDQpyZWxlYXRl
ZCBjaGFuZ2VzIHRoYXQgaGF2ZSBoYWQgdG8gYmUgaGVsZCBvdXQgb2YgdHJlZSBvbiB0aGlzDQpy
ZXF1aXJlbWVudCwgYnV0IEknbSBob3BpbmcgcmVjZW50IGVmZm9ydHMgb24gdXBzdHJlYW0gZGV2
aWNlIHN1cHBvcnQNCndpbGwgZXZlbnR1YWxseSB1bmJsb2NrIHRob3NlLg0KDQp0aGFua3MNCi1q
b2huDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
