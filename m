Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCD4928BCE
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Jul 2024 17:35:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7757E43F47
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Jul 2024 15:35:39 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 7812941107
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jul 2024 15:35:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=fs9o3CIr;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.128.48) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-424f2b7385bso1943665e9.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jul 2024 08:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1720193735; x=1720798535; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YKIOErnN4ZSBK93fEaGuNPtZhO0OBRfZiH5pNgGd0zQ=;
        b=fs9o3CIrb3dYjR2xpuAeLUzzH0Lj9MNabSGxdQyW1FXwRBtCrxQZbCJnH8KN741cVs
         SX/yTCK8+xgv3ZRusx4tNIGY5tEKjaYdqv2bUxXQBnSru+KmYL8qZQWnmddKxHslxY/C
         jClFteNelQzutxIk7keavLDoiIpNm3qDqQ4yA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720193735; x=1720798535;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YKIOErnN4ZSBK93fEaGuNPtZhO0OBRfZiH5pNgGd0zQ=;
        b=UG7eiPVuhUQNPZX9sVaNfZSJnnN/j+x1Ql64di0VEBLYSmKsDT4wJanSKNrWV/snRh
         QrZHQr6SYDZqwuHm0vVJ1oRYaCvyAELP+6bvlmE7YtLemJfPV5FFHmlxw9OEeddoZH4Y
         4ROw3I+XK8AOgwlhX8MK+KyX/YppunETY7qmwUnPdAvJwCPZvzC40PfiSboLy+pzo7Hh
         sR48X8XYT/KZ+1cd/FCJsntVX2BQfa/Tn68DFCfbz19Pk2f4+ZFEGGjDgGj9TdXPWW4r
         po4777TNNuBc6S4MQGBIPtPtWkiD/E9/VmUA7CnfHkUrROdKRfXE/EIiG3ClDWlq4Y3j
         drOw==
X-Forwarded-Encrypted: i=1; AJvYcCWX/8jgFf3b9gI0NUKjPQe/tOty1KDuObyqC8TeYpnbB23rRdh9WgeXj/F+Mw5JMpTdjpwYyAKH4Sd6CoesIfuFX1T2hQqLYUR4giHlZdA=
X-Gm-Message-State: AOJu0YybbWuBHaQSgpOn7BRrfXJp8aCGduMzXl/9HhYI1souOKuL3Zpr
	HQXj9XqWYVPK+DTsWjsWGaTsnRbHOCgjkayBoiT+lXH9+Fi4KvzniQ0W6TdKOLU=
X-Google-Smtp-Source: AGHT+IGsJ1mkZ0D80/UjIJ9jqd/HQtwk88TIn27ewYuZuyXXRnv9JvlWXptYv3VuFI8J6TfR4dnNdg==
X-Received: by 2002:a05:600c:1c9f:b0:425:7ac6:96f7 with SMTP id 5b1f17b1804b1-4264a35297dmr36017775e9.0.1720193735231;
        Fri, 05 Jul 2024 08:35:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a2ca492sm67724735e9.34.2024.07.05.08.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 08:35:34 -0700 (PDT)
Date: Fri, 5 Jul 2024 17:35:32 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Thierry Reding <thierry.reding@gmail.com>
Message-ID: <ZogSxHFPt8SpOa0w@phenom.ffwll.local>
Mail-Followup-To: Thierry Reding <thierry.reding@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	John Stultz <jstultz@google.com>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Mattijs Korpershoek <mkorpershoek@baylibre.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
 <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com>
 <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
 <CANDhNCo5hSC-sLwdkBi3e-Ja-MzdqcGGbn-4G3XNYwCzZUwscw@mail.gmail.com>
 <ZkyOOwpM57HIiO3v@phenom.ffwll.local>
 <qy7aczeu6kumv5utemoevi7omp5ryq55zmgzxh5hrz5orf2osp@wypg66awof4n>
 <20240628-resilient-resolute-rook-0fc531@houat>
 <3e37rhrcqogix5obsu2gq7jar7bcoamx4bbd376az5z3zdkwvm@jstirwdl5efm>
 <20240704-therapeutic-maroon-coucal-f61a63@houat>
 <wapv4gl2se34tq3isycb7bui5xi3x6kxjqtyz24qhjipnkbuqu@sv4w2crksuq5>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <wapv4gl2se34tq3isycb7bui5xi3x6kxjqtyz24qhjipnkbuqu@sv4w2crksuq5>
X-Operating-System: Linux phenom 6.9.7-amd64 
X-Rspamd-Queue-Id: 7812941107
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OI737ZIV4YWOKMVHRVRDOGKX2ZGGIROI
X-Message-ID-Hash: OI737ZIV4YWOKMVHRVRDOGKX2ZGGIROI
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maxime Ripard <mripard@kernel.org>, John Stultz <jstultz@google.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OI737ZIV4YWOKMVHRVRDOGKX2ZGGIROI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SnVzdCBmaWd1cmVkIEknbGwganVtcCBpbiBvbiBvbmUgZGV0YWlsIGhlcmUuDQoNCk9uIEZyaSwg
SnVsIDA1LCAyMDI0IGF0IDA0OjMxOjM0UE0gKzAyMDAsIFRoaWVycnkgUmVkaW5nIHdyb3RlOg0K
PiBPbiBUaHUsIEp1bCAwNCwgMjAyNCBhdCAwMjoyNDo0OVBNIEdNVCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToNCj4gPiBPbiBGcmksIEp1biAyOCwgMjAyNCBhdCAwNDo0MjozNVBNIEdNVCwgVGhpZXJy
eSBSZWRpbmcgd3JvdGU6DQo+ID4gPiBPbiBGcmksIEp1biAyOCwgMjAyNCBhdCAwMzowODo0NlBN
IEdNVCwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4gPiA+ID4gSGksDQo+ID4gPiA+IA0KPiA+ID4g
PiBPbiBGcmksIEp1biAyOCwgMjAyNCBhdCAwMToyOToxN1BNIEdNVCwgVGhpZXJyeSBSZWRpbmcg
d3JvdGU6DQo+ID4gPiA+ID4gT24gVHVlLCBNYXkgMjEsIDIwMjQgYXQgMDI6MDY6MTlQTSBHTVQs
IERhbmllbCBWZXR0ZXIgd3JvdGU6DQo+ID4gPiA+ID4gPiBPbiBUaHUsIE1heSAxNiwgMjAyNCBh
dCAwOTo1MTozNUFNIC0wNzAwLCBKb2huIFN0dWx0eiB3cm90ZToNCj4gPiA+ID4gPiA+ID4gT24g
VGh1LCBNYXkgMTYsIDIwMjQgYXQgMzo1NuKAr0FNIERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZnds
bC5jaD4gd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gT24gV2VkLCBNYXkgMTUsIDIwMjQgYXQgMTE6
NDI6NThBTSAtMDcwMCwgSm9obiBTdHVsdHogd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gPiBCdXQg
aXQgbWFrZXMgbWUgYSBsaXR0bGUgbmVydm91cyB0byBhZGQgYSBuZXcgZ2VuZXJpYyBhbGxvY2F0
aW9uIGZsYWcNCj4gPiA+ID4gPiA+ID4gPiA+IGZvciBhIGZlYXR1cmUgbW9zdCBoYXJkd2FyZSBk
b2Vzbid0IHN1cHBvcnQgKHlldCwgYXQgbGVhc3QpLiBTbyBpdCdzDQo+ID4gPiA+ID4gPiA+ID4g
PiBoYXJkIHRvIHdlaWdoIGhvdyBjb21tb24gdGhlIGFjdHVhbCB1c2FnZSB3aWxsIGJlIGFjcm9z
cyBhbGwgdGhlDQo+ID4gPiA+ID4gPiA+ID4gPiBoZWFwcy4NCj4gPiA+ID4gPiA+ID4gPiA+DQo+
ID4gPiA+ID4gPiA+ID4gPiBJIGFwb2xvZ2l6ZSBhcyBteSB3b3JyeSBpcyBtb3N0bHkgYm9ybiBv
dXQgb2Ygc2VlaW5nIHZlbmRvcnMgcmVhbGx5DQo+ID4gPiA+ID4gPiA+ID4gPiBwdXNoIG9wYXF1
ZSBmZWF0dXJlIGZsYWdzIGluIHRoZWlyIG9sZCBpb24gaGVhcHMsIHNvIGluIHByb3ZpZGluZyBh
DQo+ID4gPiA+ID4gPiA+ID4gPiBmbGFncyBhcmd1bWVudCwgaXQgd2FzIG1vc3RseSBpbnRlbmRl
ZCBhcyBhbiBlc2NhcGUgaGF0Y2ggZm9yDQo+ID4gPiA+ID4gPiA+ID4gPiBvYnZpb3VzbHkgY29t
bW9uIGF0dHJpYnV0ZXMuIFNvIGhhdmluZyB0aGUgZmlyc3QgYmUgc29tZXRoaW5nIHRoYXQNCj4g
PiA+ID4gPiA+ID4gPiA+IHNlZW1zIHJlYXNvbmFibGUsIGJ1dCBpc24ndCBhY3R1YWxseSB0aGF0
IGNvbW1vbiBtYWtlcyBtZSBmcmV0IHNvbWUuDQo+ID4gPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+
ID4gPiA+ID4gU28gYWdhaW4sIG5vdCBhbiBvYmplY3Rpb24sIGp1c3Qgc29tZXRoaW5nIGZvciBm
b2xrcyB0byBzdGV3IG9uIHRvDQo+ID4gPiA+ID4gPiA+ID4gPiBtYWtlIHN1cmUgdGhpcyBpcyBy
ZWFsbHkgdGhlIHJpZ2h0IGFwcHJvYWNoLg0KPiA+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+
ID4gQW5vdGhlciBnb29kIHJlYXNvbiB0byBnbyB3aXRoIGZ1bGwgaGVhcCBuYW1lcyBpbnN0ZWFk
IG9mIG9wYXF1ZSBmbGFncyBvbg0KPiA+ID4gPiA+ID4gPiA+IGV4aXN0aW5nIGhlYXBzIGlzIHRo
YXQgd2l0aCB0aGUgZm9ybWVyIHdlIGNhbiB1c2Ugc3ltbGlua3MgaW4gc3lzZnMgdG8NCj4gPiA+
ID4gPiA+ID4gPiBzcGVjaWZ5IGhlYXBzLCB3aXRoIHRoZSBsYXR0ZXIgd2UgbmVlZCBhIG5ldyBp
ZGVhLiBXZSBoYXZlbid0IHlldCBnb3R0ZW4NCj4gPiA+ID4gPiA+ID4gPiBhcm91bmQgdG8gaW1w
bGVtZW50IHRoaXMgYW55d2hlcmUsIGJ1dCBpdCdzIGJlZW4gaW4gdGhlIGRtYS1idWYvaGVhcCB0
b2RvDQo+ID4gPiA+ID4gPiA+ID4gc2luY2UgZm9yZXZlciwgYW5kIEkgbGlrZSBpdCBhcyBhIGRl
c2lnbiBhcHByb2FjaC4gU28gd291bGQgYmUgYSBnb29kIGlkZWENCj4gPiA+ID4gPiA+ID4gPiB0
byBub3QgdG9zcyBpdC4gV2l0aCB0aGF0IGRpc3BsYXkgd291bGQgaGF2ZSBzeW1saW5rcyB0byBj
bWEtZWNjIGFuZCBjbWEsDQo+ID4gPiA+ID4gPiA+ID4gYW5kIHJlbmRlcmluZyBtYXliZSBjbWEt
ZWNjLCBzaG1lbSwgY21hIGhlYXBzIChpbiBwcmlvcml0eSBvcmRlcikgZm9yIGENCj4gPiA+ID4g
PiA+ID4gPiBTb0Mgd2hlcmUgdGhlIGRpc3BsYXkgbmVlZHMgY29udGlnIG1lbW9yeSBmb3Igc2Nh
bm91dC4NCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IFNvIGluZGVlZCB0aGF0IGlzIGEg
Z29vZCBwb2ludCB0byBrZWVwIGluIG1pbmQsIGJ1dCBJIGFsc28gdGhpbmsgaXQNCj4gPiA+ID4g
PiA+ID4gbWlnaHQgcmUtaW5mb3JjZSB0aGUgY2hvaWNlIG9mIGhhdmluZyBFQ0MgYXMgYSBmbGFn
IGhlcmUuDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBTaW5jZSBteSB1bmRlcnN0YW5k
aW5nIG9mIHRoZSBzeXNmcyBzeW1saW5rcyB0byBoZWFwcyBpZGVhIGlzIGFib3V0DQo+ID4gPiA+
ID4gPiA+IGJlaW5nIGFibGUgdG8gZmlndXJlIG91dCBhIGNvbW1vbiBoZWFwIGZyb20gYSBjb2xs
ZWN0aW9uIG9mIGRldmljZXMsDQo+ID4gPiA+ID4gPiA+IGl0J3MgcmVhbGx5IGFib3V0IHRoZSBh
YmlsaXR5IGZvciB0aGUgZHJpdmVyIHRvIGFjY2VzcyB0aGUgdHlwZSBvZg0KPiA+ID4gPiA+ID4g
PiBtZW1vcnkuIElmIEVDQyBpcyBqdXN0IGFuIGF0dHJpYnV0ZSBvZiB0aGUgdHlwZSBvZiBtZW1v
cnkgKGFzIGluIHRoaXMNCj4gPiA+ID4gPiA+ID4gcGF0Y2ggc2VyaWVzKSwgaXQgYmVpbmcgb24g
b3Igb2ZmIHdvbid0IG5lY2Vzc2FyaWx5IGFmZmVjdA0KPiA+ID4gPiA+ID4gPiBjb21wYXRpYmls
aXR5IG9mIHRoZSBidWZmZXIgd2l0aCB0aGUgZGV2aWNlLiAgU2ltaWxhcmx5ICJ1bmNhY2hlZCIN
Cj4gPiA+ID4gPiA+ID4gc2VlbXMgbW9yZSBvZiBhbiBhdHRyaWJ1dGUgb2YgbWVtb3J5IHR5cGUg
YW5kIG5vdCBhIHR5cGUgaXRzZWxmLg0KPiA+ID4gPiA+ID4gPiBIYXJkd2FyZSB0aGF0IGNhbiBh
Y2Nlc3Mgbm9uLWNvbnRpZ3VvdXMgInN5c3RlbSIgYnVmZmVycyBjYW4gYWNjZXNzDQo+ID4gPiA+
ID4gPiA+IHVuY2FjaGVkIHN5c3RlbSBidWZmZXJzLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
PiBZZWFoLCBidXQgaW4gZ3JhcGhpY3MgdGhlcmUncyBhIHdpZGUgYmFuZCB3aGVyZSAic2hpdCBw
ZXJmb3JtYW5jZSIgaXMNCj4gPiA+ID4gPiA+IGRlZmFjdG8gIm5vdCB1c2VhYmxlIChhcyBpbnRl
bmRlZCBhdCBsZWFzdCkiLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBTbyBpZiB3ZSBsaW1p
dCB0aGUgc3ltbGluayBpZGVhIHRvIGp1c3QgbWFraW5nIHN1cmUgemVyby1jb3B5IGFjY2VzcyBp
cw0KPiA+ID4gPiA+ID4gcG9zc2libGUsIHRoZW4gd2UgbWlnaHQgbm90IGFjdHVhbGx5IHNvbHZl
IHRoZSByZWFsIHdvcmxkIHByb2JsZW0gd2UgbmVlZA0KPiA+ID4gPiA+ID4gdG8gc29sdmUuIEFu
ZCBzbyB0aGUgc3ltbGlua3MgYmVjb21lIHNvbWV3aGF0IHVzZWxlc3MsIGFuZCB3ZSBuZWVkIHRv
DQo+ID4gPiA+ID4gPiBzb21ld2hlcmUgZW5jb2RlIHdoaWNoIGZsYWdzIHlvdSBuZWVkIHRvIHVz
ZSB3aXRoIGVhY2ggc3ltbGluay4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gQnV0IEkgYWxz
byBzZWUgdGhlIGFyZ3VtZW50IHRoYXQgdGhlcmUncyBhIGJpdCBhIGNvbWJpbmF0b3JpYWwgZXhw
bG9zaW9uDQo+ID4gPiA+ID4gPiBwb3NzaWJsZS4gU28gSSBndWVzcyB0aGUgcXVlc3Rpb24gaXMg
d2hlcmUgd2Ugd2FudCB0byBoYW5kbGUgaXQgLi4uDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gU29y
cnkgZm9yIGp1bXBpbmcgaW50byB0aGlzIGRpc2N1c3Npb24gc28gbGF0ZS4gQnV0IGFyZSB3ZSBy
ZWFsbHkNCj4gPiA+ID4gPiBjb25jZXJuZWQgYWJvdXQgdGhpcyBjb21iaW5hdG9yaWFsIGV4cGxv
c2lvbiBpbiBwcmFjdGljZT8gSXQgbWF5IGJlDQo+ID4gPiA+ID4gdGhlb3JldGljYWxseSBwb3Nz
aWJsZSB0byBjcmVhdGUgYW55IGNvbWJpbmF0aW9uIG9mIHRoZXNlLCBidXQgZG8gd2UNCj4gPiA+
ID4gPiBleHBlY3QgbW9yZSB0aGFuIGEgY291cGxlIG9mIGhlYXBzIHRvIGV4aXN0IGluIGFueSBn
aXZlbiBzeXN0ZW0/DQo+ID4gPiA+IA0KPiA+ID4gPiBJIGRvbid0IHdvcnJ5IHRvbyBtdWNoIGFi
b3V0IHRoZSBudW1iZXIgb2YgaGVhcHMgYXZhaWxhYmxlIGluIGEgZ2l2ZW4NCj4gPiA+ID4gc3lz
dGVtLCBpdCB3b3VsZCBpbmRlZWQgYmUgZmFpcmx5IGxvdy4NCj4gPiA+ID4gDQo+ID4gPiA+IE15
IGNvbmNlcm4gaXMgYWJvdXQgdGhlIHNlbWFudGljcyBjb21iaW5hdG9yaWFsIGV4cGxvc2lvbi4g
U28gZmFyLCB0aGUNCj4gPiA+ID4gbmFtZSBoYXMgY2FycmllZCB3aGF0IHNlbWFudGljcyB3ZSB3
ZXJlIHN1cHBvc2VkIHRvIGdldCBmcm9tIHRoZSBidWZmZXINCj4gPiA+ID4gd2UgYWxsb2NhdGUg
ZnJvbSB0aGF0IGhlYXAuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGUgbW9yZSB2YXJpYXRpb25zIGFu
ZCBjb25jZXB0cyB3ZSdsbCBoYXZlLCB0aGUgbW9yZSBoZWFwIG5hbWVzIHdlJ2xsDQo+ID4gPiA+
IG5lZWQsIGFuZCB3aXRoIGNvbmZ1c2luZyBuYW1lcyBzaW5jZSB3ZSB3b3VsZG4ndCBiZSBhYmxl
IHRvIGNoYW5nZSB0aGUNCj4gPiA+ID4gbmFtZXMgb2YgdGhlIGhlYXBzIHdlIGFscmVhZHkgaGF2
ZS4NCj4gPiA+IA0KPiA+ID4gV2hhdCBJIHdhcyB0cnlpbmcgdG8gc2F5IGlzIHRoYXQgbm9uZSBv
ZiB0aGlzIG1hdHRlcnMgaWYgd2UgbWFrZSB0aGVzZQ0KPiA+ID4gbmFtZXMgb3BhcXVlLiBJZiB0
aGVzZSBuYW1lcyBhcmUgY29udGV4dHVhbCBmb3IgdGhlIGdpdmVuIHN5c3RlbSBpdA0KPiA+ID4g
ZG9lc24ndCBtYXR0ZXIgd2hhdCB0aGUgZXhhY3QgY2FwYWJpbGl0aWVzIGFyZS4gSXQgb25seSBt
YXR0ZXJzIHRoYXQNCj4gPiA+IHRoZWlyIHB1cnBvc2UgaXMga25vd24gYW5kIHRoYXQncyB3aGF0
IGFwcGxpY2F0aW9ucyB3aWxsIGJlIGludGVyZXN0ZWQNCj4gPiA+IGluLg0KPiA+IA0KPiA+IElm
IHRoZSBuYW1lcyBhcmUgb3BhcXVlLCBhbmQgd2UgZG9uJ3QgcHVibGlzaCB3aGF0IHRoZSBleGFj
dA0KPiA+IGNhcGFiaWxpdGllcyBhcmUsIGhvdyBjYW4gYW4gYXBwbGljYXRpb24gZmlndXJlIG91
dCB3aGljaCBoZWFwIHRvIHVzZSBpbg0KPiA+IHRoZSBmaXJzdCBwbGFjZT8NCj4gDQo+IFRoaXMg
d291bGQgbmVlZCB0byBiZSBiYXNlZCBvbiBjb252ZW50aW9ucy4gVGhlIGlkZWEgaXMgdG8gc3Rh
bmRhcmRpemUNCj4gb24gYSBzZXQgb2YgbmFtZXMgZm9yIHNwZWNpZmljLCB3ZWxsLWtub3duIHVz
ZS1jYXNlcy4NCj4gDQo+ID4gPiA+ID4gV291bGQgaXQgcGVyaGFwcyBtYWtlIG1vcmUgc2Vuc2Ug
dG8gbGV0IGEgcGxhdGZvcm0gb3ZlcnJpZGUgdGhlIGhlYXANCj4gPiA+ID4gPiBuYW1lIHRvIG1h
a2UgaXQgbW9yZSBlYXNpbHkgaWRlbnRpZmlhYmxlPyBNYXliZSB0aGlzIGlzIGEgbmFpdmUNCj4g
PiA+ID4gPiBhc3N1bXB0aW9uLCBidXQgYXJlbid0IHVzZXJzcGFjZSBhcHBsaWNhdGlvbnMgYW5k
IGRyaXZlcnMgbm90IHByaW1hcmlseQ0KPiA+ID4gPiA+IGludGVyZXN0ZWQgaW4gdGhlICJ0eXBl
IiBvZiBoZWFwIHJhdGhlciB0aGFuIHdoYXRldmVyIHNwZWNpZmljIGZsYWdzDQo+ID4gPiA+ID4g
aGF2ZSBiZWVuIHNldCBmb3IgaXQ/DQo+ID4gPiA+IA0KPiA+ID4gPiBJIGd1ZXNzIGl0IGRlcGVu
ZHMgb24gd2hhdCB5b3UgY2FsbCB0aGUgdHlwZSBvZiBhIGhlYXAuIFdoZXJlIHdlDQo+ID4gPiA+
IGFsbG9jYXRlIHRoZSBtZW1vcnkgZnJvbSwgc3VyZSwgYW4gYXBwbGljYXRpb24gd29uJ3QgY2Fy
ZSBhYm91dCB0aGF0Lg0KPiA+ID4gPiBIb3cgdGhlIGJ1ZmZlciBiZWhhdmVzIG9uIHRoZSBvdGhl
ciBlbmQgaXMgZGVmaW5pdGVseSBzb21ldGhpbmcNCj4gPiA+ID4gYXBwbGljYXRpb25zIGFyZSBn
b2luZyB0byBiZSBpbnRlcmVzdGVkIGluIHRob3VnaC4NCj4gPiA+IA0KPiA+ID4gTW9zdCBvZiB0
aGVzZSBoZWFwcyB3aWxsIGJlIHZlcnkgc3BlY2lmaWMsIEkgd291bGQgYXNzdW1lLg0KPiA+IA0K
PiA+IFdlIGRvbid0IGhhdmUgYW55IHNwZWNpZmljIGhlYXAgdXBzdHJlYW0gYXQgdGhlIG1vbWVu
dCwgb25seSBnZW5lcmljDQo+ID4gb25lcy4NCj4gDQo+IEJ1dCB3ZSdyZSB0cnlpbmcgdG8gYWRk
IG1vcmUgc3BlY2lmaWMgb25lcywgcmlnaHQ/DQo+IA0KPiA+ID4gRm9yIGV4YW1wbGUgYSBoZWFw
IHRoYXQgaXMgbWVhbnQgdG8gYmUgcHJvdGVjdGVkIGZvciBwcm90ZWN0ZWQgdmlkZW8NCj4gPiA+
IGRlY29kaW5nIGlzIGJvdGggZ29pbmcgdG8gYmUgY3JlYXRlZCBpbiBzdWNoIGEgd2F5IGFzIHRv
IGFsbG93IHRoYXQNCj4gPiA+IHVzZS1jYXNlIChpLmUuIGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSBm
b3IgaXQgdG8gYmUgdW5jYWNoZWQsIGZvcg0KPiA+ID4gZXhhbXBsZSkgYW5kIGl0J3MgYWxzbyBu
b3QgZ29pbmcgdG8gYmUgdXNlZnVsIGZvciBhbnkgb3RoZXIgdXNlLWNhc2UNCj4gPiA+IChpLmUu
IHRoZXJlJ3Mgbm8gcmVhc29uIHRvIHVzZSB0aGF0IGhlYXAgZm9yIEdQVSBqb2JzIG9yIG5ldHdv
cmtpbmcsDQo+ID4gPiBvciB3aGF0ZXZlcikuDQo+ID4gDQo+ID4gUmlnaHQuIEJ1dCBhbHNvLCBs
aWJjYW1lcmEgaGFzIHN0YXJ0ZWQgdG8gdXNlIGRtYS1oZWFwcyB0byBhbGxvY2F0ZQ0KPiA+IGRt
YS1jYXBhYmxlIGJ1ZmZlcnMgYW5kIGRvIHNvZnR3YXJlIHByb2Nlc3Npbmcgb24gaXQgYmVmb3Jl
IHNlbmRpbmcgaXQNCj4gPiB0byBzb21lIGhhcmR3YXJlIGNvbnRyb2xsZXIuDQo+ID4gDQo+ID4g
Q2FjaGVzIGFyZSBjcml0aWNhbCBoZXJlLCBhbmQgZ2V0dGluZyBhIG5vbi1jYWNoZWFibGUgYnVm
ZmVyIHdvdWxkIGJlDQo+ID4gYSBjbGVhciByZWdyZXNzaW9uLg0KPiANCj4gSSB1bmRlcnN0YW5k
IHRoYXQuIE15IHBvaW50IGlzIHRoYXQgbWF5YmUgd2Ugc2hvdWxkbid0IHRyeSB0byBkZXNpZ24g
YQ0KPiBjb21wbGV4IG1lY2hhbmlzbSB0aGF0IGFsbG93cyBmdWxsIGRpc2NvdmVyYWJpbGl0eSBv
ZiBldmVyeXRoaW5nIHRoYXQgYQ0KPiBoZWFwIHN1cHBvcnRzIG9yIGlzIGNhcGFibGUgb2YuIElu
c3RlYWQgaWYgdGhlIGNhbWVyYSBoYXMgc3BlY2lmaWMNCj4gcmVxdWlyZW1lbnRzLCBpdCBjb3Vs
ZCBsb29rIGZvciBhIGhlYXAgbmFtZWQgImNhbWVyYSIuIE9yIGlmIGl0IGNhbg0KPiBzaGFyZSBh
IGhlYXAgd2l0aCBvdGhlciBtdWx0aW1lZGlhIGRldmljZXMsIG1heWJlIGNhbGwgdGhlIGhlYXAN
Cj4gIm11bHRpbWVkaWEiLg0KPiANCj4gVGhlIGlkZWEgaXMgdGhhdCBoZWFwcyBmb3IgdGhlc2Ug
dXNlLWNhc2VzIGFyZSBxdWl0ZSBzcGVjaWZpYywgc28geW91DQo+IHdvdWxkIGxpa2VseSBub3Qg
ZmluZCBhbiBhcmJpdHJhcnkgbnVtYmVyIG9mIHByb2Nlc3NlcyB0cnkgdG8gdXNlIHRoZQ0KPiBz
YW1lIGhlYXAuDQoNClllYWggdGhlIGlkZWEgdG8gc29ydCB0aGlzIG91dCB3YXMgdG8gaGF2ZSBz
eW1saW5rcyBpbiBzeXNmcyBmcm9tIHRoZQ0KZGV2aWNlIHRvIGVhY2ggaGVhcC4gV2UgY291bGQg
dGhlbiBoYXZlIHByaW9yaXRpZXMgZm9yIGVhY2ggc3VjaCBsaW5rLCBzbw0KdGhhdCBhcHBsaWNh
dGlvbnMgY2FuIHBpY2sgdGhlICJiZXN0IiBoZWFwIHRoYXQgd2lsbCB3b3JrIHdpdGggYWxsDQpk
ZXZpY2VzLiBPciBhbHNvIHNwZWNpYWwgbGlua3MgZm9yIHNwZWNpYWwgdXNlLWNhc2VzLCBsaWtl
IGZvciBhDQpkaXNwbGF5K3JlbmRlciBkcm0gZGV2aWNlIHlvdSBtaWdodCB3YW50IHRvIGhhdmUg
c2VwYXJhdGUgbGlua3MgZm9yIHRoZQ0KZGlzcGxheSBhbmQgdGhlIHJlbmRlci1vbmx5IHVzZS1j
YXNlLg0KDQpJIHRoaW5rIHRyeWluZyB0byBlbmNvZGUgdGhpcyBhbGwgaW50byB0aGUgbmFtZSBv
ZiBhIGhlYXAgd2l0aG91dCBsaW5raW5nDQppdCB0byB0aGUgZGV2aWNlIGlzIG5vdCBnb2luZyB0
byB3b3JrIHdlbGwgaW4gZ2VuZXJhbC4NCg0KV2Ugc3RpbGwgaGF2ZSB0aGF0IGVudGlyZSAibWFr
ZSBzeXNmcyBzeW1saW5rcyB3b3JrIGZvciBkbWEtYnVmIGhlYXBzIiBvbg0Kb3VyIHRvZG9zLCBh
bmQgdGhhdCBpZGVhIGlzIGFsbW9zdCBhcyBvbGQgYXMgZG1hLWJ1ZiBpdHNlbGYgOi0vDQotU2lt
YQ0KLS0gDQpEYW5pZWwgVmV0dGVyDQpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRp
b24NCmh0dHA6Ly9ibG9nLmZmd2xsLmNoDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
