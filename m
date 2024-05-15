Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A48708C6C4A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 20:43:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A98E1447D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 18:43:22 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id C80E43F624
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 18:43:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=EKvVYdDe;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42012c85e61so302225e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 11:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715798592; x=1716403392; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EYw08SuW0XGtCkslQ7Pr4vhaF6oLwiqfmnivOAxBqiQ=;
        b=EKvVYdDeyuQsFvCE1qLfmkFDI+yyn678nXt2QstgDDzUx19BRFf103vGXR5gErnWje
         Pb1jCMDVjq8NDb9WYrU3UDIWncWniJ8xXxi19o6OhVi32hgsIlBfuCL7nPL/8qReUBdU
         VRhP4rjtVJJfsKrR9asZmxuzPK4QbmqvWjhkEttCnB85PTUaNwizrTHgNPDUsWnU3zSI
         raesgsQZ3kikVLDv/vrLc11KAEGsa59mCYSdR+T/Kybrptu0IveWZJoCs3zs6s2pygGY
         LILtqt51xkLGsGXf/uyId8jGbBlXesUcIgzOzov6RMsMipsxmmfEMX7kq5D9Q6OVTGvE
         K1ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715798592; x=1716403392;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EYw08SuW0XGtCkslQ7Pr4vhaF6oLwiqfmnivOAxBqiQ=;
        b=GZV/O2g3/oFPylKqZQz8q1tupu6S5y2r+Nm/pykka/SC2VuW7uT/FRl0hBmENJC0kS
         i/yMR4SO93O1dSivPcV0mXbRqzTY//w/7wxcjWtBJbRHhOhoWDlih/aKPdnFLLLqIlHC
         oSyWcfJMGOTAEBrBgv8NvHSRAmegYd3nP1eMqqslEtZjSMP2qzjsYHJ0TkIOG3651BKj
         Slde72ciOOPLBT8YAIkHAxnM6Ha1nnUIScQNDgKakYqKg5y/jNYM17QYYR3gfN3Zja+9
         tjyJr/L/i85csVG1ynkF94bnakTzibCpN3zf4d1Ro5tfMgGHUWITAUtWCToKggM2nXpV
         bAEw==
X-Forwarded-Encrypted: i=1; AJvYcCUBiqmlK78R13KI7X+fqtqIsYAHzbVVtO/CoFW0Zlopy5yqRgYLXcTrOVOBHJ8QSB3++Q17nAb+pDhMZDmg0afXdEB3BEdF9V3m4awm2lk=
X-Gm-Message-State: AOJu0Ywk7g44VLPOSuzGgE4JrMZup+h2l7TsSK/FiK1TBXXe933RVRXm
	pgNa4+vLDcF4m3RW5FdZKeFjaTupwXiIqbzcvp/4rZxuIjx+FwDZLNPK+bJ8MhJwjWxB8gyOJER
	9hoTnDpE9q47CjvllqIl2zyzBTi5/t2Ba1dY=
X-Google-Smtp-Source: AGHT+IFXSyoRhWYZAyF4PDyMeovRDQKPGnBFuRGgfH4SBcREIVqL7zoHTwvnfnjWyp/GpdS9YamBKyr7G4+ZcxRuOuI=
X-Received: by 2002:a05:600c:3d9a:b0:41f:a15d:2228 with SMTP id
 5b1f17b1804b1-4200ebea389mr9541355e9.0.1715798591515; Wed, 15 May 2024
 11:43:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
In-Reply-To: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
From: John Stultz <jstultz@google.com>
Date: Wed, 15 May 2024 11:42:58 -0700
Message-ID: <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C80E43F624
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.46:from];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 22WV7Z2TAFFLBH5NJSOFTUVG6B472CJA
X-Message-ID-Hash: 22WV7Z2TAFFLBH5NJSOFTUVG6B472CJA
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/22WV7Z2TAFFLBH5NJSOFTUVG6B472CJA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMTUsIDIwMjQgYXQgNjo1N+KAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+IFRoaXMgc2VyaWVzIGlzIHRoZSBmb2xsb3ctdXAgb2YgdGhl
IGRpc2N1c3Npb24gdGhhdCBKb2huIGFuZCBJIGhhZCBhIGZldw0KPiBtb250aHMgYWdvIGhlcmU6
DQo+DQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQU5EaE5DcXVKbjZiSDNLeEtmNjVC
V2lUWUxWcVNkOTg5Mi14dEZESEhxcXlycm9DTVFAbWFpbC5nbWFpbC5jb20vDQo+DQo+IFRoZSBp
bml0aWFsIHByb2JsZW0gd2Ugd2VyZSBkaXNjdXNzaW5nIHdhcyB0aGF0IEknbSBjdXJyZW50bHkg
d29ya2luZyBvbg0KPiBhIHBsYXRmb3JtIHdoaWNoIGhhcyBhIG1lbW9yeSBsYXlvdXQgd2l0aCBF
Q0MgZW5hYmxlZC4gSG93ZXZlciwgZW5hYmxpbmcNCj4gdGhlIEVDQyBoYXMgYSBudW1iZXIgb2Yg
ZHJhd2JhY2tzIG9uIHRoYXQgcGxhdGZvcm06IGxvd2VyIHBlcmZvcm1hbmNlLA0KPiBpbmNyZWFz
ZWQgbWVtb3J5IHVzYWdlLCBldGMuIFNvIGZvciB0aGluZ3MgbGlrZSBmcmFtZWJ1ZmZlcnMsIHRo
ZQ0KPiB0cmFkZS1vZmYgaXNuJ3QgZ3JlYXQgYW5kIHRodXMgdGhlcmUncyBhIG1lbW9yeSByZWdp
b24gd2l0aCBFQ0MgZGlzYWJsZWQNCj4gdG8gYWxsb2NhdGUgZnJvbSBmb3Igc3VjaCB1c2UgY2Fz
ZXMuDQo+DQo+IEFmdGVyIGEgc3VnZ2VzdGlvbiBmcm9tIEpvaG4sIEkgY2hvc2UgdG8gc3RhcnQg
dXNpbmcgaGVhcCBhbGxvY2F0aW9ucw0KPiBmbGFncyB0byBhbGxvdyBmb3IgdXNlcnNwYWNlIHRv
IGFzayBmb3IgYSBwYXJ0aWN1bGFyIEVDQyBzZXR1cC4gVGhpcyBpcw0KPiB0aGVuIGJhY2tlZCBi
eSBhIG5ldyBoZWFwIHR5cGUgdGhhdCBydW5zIGZyb20gcmVzZXJ2ZWQgbWVtb3J5IGNodW5rcw0K
PiBmbGFnZ2VkIGFzIHN1Y2gsIGFuZCB0aGUgZXhpc3RpbmcgRFQgcHJvcGVydGllcyB0byBzcGVj
aWZ5IHRoZSBFQ0MNCj4gcHJvcGVydGllcy4NCj4NCj4gV2UgY291bGQgYWxzbyBlYXNpbHkgZXh0
ZW5kIHRoaXMgbWVjaGFuaXNtIHRvIHN1cHBvcnQgbW9yZSBmbGFncywgb3INCj4gdGhyb3VnaCBh
IG5ldyBpb2N0bCB0byBkaXNjb3ZlciB3aGljaCBmbGFncyBhIGdpdmVuIGhlYXAgc3VwcG9ydHMu
DQoNCkhleSEgVGhhbmtzIGZvciBzZW5kaW5nIHRoaXMgYWxvbmchIEknbSBlYWdlciB0byBzZWUg
bW9yZSBoZWFwIHJlbGF0ZWQNCndvcmsgYmVpbmcgZG9uZSB1cHN0cmVhbS4NCg0KVGhlIG9ubHkg
dGhpbmcgdGhhdCBtYWtlcyBtZSBhIGJpdCBoZXNpdGFudCwgaXMgdGhlIGludHJvZHVjdGlvbiBv
Zg0KYWxsb2NhdGlvbiBmbGFncyAoYXMgb3Bwb3NlZCB0byBhIHVuaXF1ZWx5IHNwZWNpZmllZC9u
YW1lZCAiZWNjIg0KaGVhcCkuDQoNCldlIGRpZCB0YWxrIGFib3V0IHRoaXMgZWFybGllciwgYW5k
IG15IGVhcmxpZXIgcHJlc3MgdGhhdCBvbmx5IGlmIHRoZQ0KRUNDIGZsYWcgd2FzIGdlbmVyYWwg
ZW5vdWdoIHRvIGFwcGx5IHRvIHRoZSBtYWpvcml0eSBvZiBoZWFwcyB0aGVuIGl0DQptYWtlcyBz
ZW5zZSBhcyBhIGZsYWcsIGFuZCB5b3VyIHBhdGNoIGhlcmUgZG9lcyBhcHBseSBpdCB0byBhbGwg
dGhlDQpoZWFwcy4gU28gSSBkb24ndCBoYXZlIGFuIG9iamVjdGlvbi4NCg0KQnV0IGl0IG1ha2Vz
IG1lIGEgbGl0dGxlIG5lcnZvdXMgdG8gYWRkIGEgbmV3IGdlbmVyaWMgYWxsb2NhdGlvbiBmbGFn
DQpmb3IgYSBmZWF0dXJlIG1vc3QgaGFyZHdhcmUgZG9lc24ndCBzdXBwb3J0ICh5ZXQsIGF0IGxl
YXN0KS4gU28gaXQncw0KaGFyZCB0byB3ZWlnaCBob3cgY29tbW9uIHRoZSBhY3R1YWwgdXNhZ2Ug
d2lsbCBiZSBhY3Jvc3MgYWxsIHRoZQ0KaGVhcHMuDQoNCkkgYXBvbG9naXplIGFzIG15IHdvcnJ5
IGlzIG1vc3RseSBib3JuIG91dCBvZiBzZWVpbmcgdmVuZG9ycyByZWFsbHkNCnB1c2ggb3BhcXVl
IGZlYXR1cmUgZmxhZ3MgaW4gdGhlaXIgb2xkIGlvbiBoZWFwcywgc28gaW4gcHJvdmlkaW5nIGEN
CmZsYWdzIGFyZ3VtZW50LCBpdCB3YXMgbW9zdGx5IGludGVuZGVkIGFzIGFuIGVzY2FwZSBoYXRj
aCBmb3INCm9idmlvdXNseSBjb21tb24gYXR0cmlidXRlcy4gU28gaGF2aW5nIHRoZSBmaXJzdCBi
ZSBzb21ldGhpbmcgdGhhdA0Kc2VlbXMgcmVhc29uYWJsZSwgYnV0IGlzbid0IGFjdHVhbGx5IHRo
YXQgY29tbW9uIG1ha2VzIG1lIGZyZXQgc29tZS4NCg0KU28gYWdhaW4sIG5vdCBhbiBvYmplY3Rp
b24sIGp1c3Qgc29tZXRoaW5nIGZvciBmb2xrcyB0byBzdGV3IG9uIHRvDQptYWtlIHN1cmUgdGhp
cyBpcyByZWFsbHkgdGhlIHJpZ2h0IGFwcHJvYWNoLg0KDQpBbm90aGVyIHRoaW5nIHRvIGRpc2N1
c3MsIHRoYXQgSSBkaWRuJ3Qgc2VlIGluIHlvdXIgbWFpbDogRG8gd2UgaGF2ZQ0KYW4gb3Blbi1z
b3VyY2UgdXNlciBvZiB0aGlzIG5ldyBmbGFnPw0KDQp0aGFua3MNCi1qb2huDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
