Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD0D8FB776
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jun 2024 17:34:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0F5C453CF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jun 2024 15:34:11 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id 4700F44826
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Jun 2024 15:34:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ZNWA4R3k;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42152bb7b81so73035e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Jun 2024 08:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1717515240; x=1718120040; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YPrZTWhMGfW1Op6H/y2W3cwWgY4x9WIkaqKqTA6XOsk=;
        b=ZNWA4R3kD43V40ZyvtK2Sg2YiGLsDXY3NCPz6HC//z++FVkcI//pmNAKVHpJo0pnuu
         8JwWJOx30zZl+Zq7YjOKngekgJ7CzU7nc0IoiiQrTzbSw+4kOIkaep2kZVR49tkcuvih
         2dHNhaH4H3ajSWyX5xZRA31idI3Djz/qpG6/JssuPkt7gvQf7TlJea1HXgjYm5nnfDHW
         zAXSP4YjC0AlB+nIawOn1Enir4KxuISwIJDFH0WwhzzxY6L1zONJjuFbmr+GgsAzHDZE
         NTigh7ZExp/Yee/yeSxz8UianfnS7NsQoHRVRZ4hNNsCsxBZm6GGDyf9w6NG4nZVrh/P
         ON9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717515240; x=1718120040;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YPrZTWhMGfW1Op6H/y2W3cwWgY4x9WIkaqKqTA6XOsk=;
        b=uc9peA4tKR3DDynZK0W5e2tNtTAwds/WKljagbhdHvqmCeXL5RDvmUUFjZWza+u3c6
         EGo4k860yfG1x1FVbnDSWv2HOtlFGd7V377gpXwOmDW+3vc1zwpRIlUFo5cbN9Oo0L+p
         Nys5AV/9g9Rdvb+06L8sUSGL0rCcUVyOUWIr9X76tDhHHax68POKjPArsxvB09GIz5+v
         zRU2kNyBrXO1T242hCXxH9yTZHw3qG/80QkgGZzv9VcBwE+2n8FD9V4wzsL364aaiTKK
         /jkkUslkuDeAaSm0fntZSbsKR6x56UVynFDxe75QQghJRUWceA1ZKcwIB7UNGpxV4aZ/
         z8hg==
X-Forwarded-Encrypted: i=1; AJvYcCW2m1ghEvC19DbBjTdKdZIBKsT9UTtzhokKiI4FJlwKa8m309r8Ly8g5ty78f2mXXehoNggrufJtQYpV4YesK435gsbIq9qvMEUg4/Cq3w=
X-Gm-Message-State: AOJu0YzxpiFGX1iD2C+CmIixagRRlsOQ2YgpLfSB5aTltM5pwyi1gmN8
	nBz5SLUpFr5MLy8N6tfTVvpwaFkr95GeGZkejjgQ4fABB4g9w/ySfR+aDoQL38BKaj3jCoBeWyX
	Jo4pHYL6zxrd3nsY4pZ/ioLUACeu/tjKxgHo=
X-Google-Smtp-Source: AGHT+IGgt6qVmKsMEINkAA4HYjs0uN2WeNDrPuAe6rAIuy/AuDyc36S0WKxfN4JyUkzqKUjfzg5pNUGXlPz9X67UZxY=
X-Received: by 2002:a7b:ca46:0:b0:41b:8715:1158 with SMTP id
 5b1f17b1804b1-4214947b20amr2777065e9.6.1717515240106; Tue, 04 Jun 2024
 08:34:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240603114008.16235-1-hailong.liu@oppo.com> <CANDhNCq50zPB+TS+_Oo0HY0aUuBAdik2KrC8eJRTygbis293sw@mail.gmail.com>
 <20240603172148.gb7txpg2ya43jyxn@oppo.com> <CANDhNCrwgce7G5_-4tNfgTHcdL12zt3JKBg=o3bHrzMmfFMctg@mail.gmail.com>
 <cff79c75-4c9c-46e0-a3ac-b9c0e8cad6f0@oppo.com>
In-Reply-To: <cff79c75-4c9c-46e0-a3ac-b9c0e8cad6f0@oppo.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 4 Jun 2024 08:33:47 -0700
Message-ID: <CANDhNCq1O9T6WxCpe9yNBycMu7U0SCVYBdW3R=J8jEqyqWYCiA@mail.gmail.com>
To: Hailong Liu <hailong.liu@oppo.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4700F44826
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.43:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,amd.com,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: YRUMAWQXQ2UIM5IQ7YFJXN6QGNP2BYKQ
X-Message-ID-Hash: YRUMAWQXQ2UIM5IQ7YFJXN6QGNP2BYKQ
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 21cnbao@gmail.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v1] dma-buf: heaps: move the verification of heap_flags to the corresponding heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YRUMAWQXQ2UIM5IQ7YFJXN6QGNP2BYKQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKdW4gMywgMjAyNCBhdCAxMTozMOKAr1BNIEhhaWxvbmcgTGl1IDxoYWlsb25nLmxp
dUBvcHBvLmNvbT4gd3JvdGU6DQo+IE9uIDYvNC8yMDI0IDI6MDYgQU0sIEpvaG4gU3R1bHR6IHdy
b3RlOg0KPiA+IE9uIE1vbiwgSnVuIDMsIDIwMjQgYXQgMTA6MjHigK9BTSBIYWlsb25nIExpdSA8
aGFpbG9uZy5saXVAb3Bwby5jb20+IHdyb3RlOg0KPiA+PiBXZSBub3cgYWltIHRvIGltcHJvdmUg
cHJpb3JpdHkgZG1hLWJ1ZiBhbGxvY2F0aW9uLiBDb25zaWRlciBhbmRyb2lkDQo+ID4+IGFuaW1h
dGlvbnMgc2NlbmU6DQo+ID4+DQo+ID4+IHdoZW4gZGV2aWNlIGlzIGluIGxvdyBtZW1vcnksIEFs
bG9jYXRpbmcgZG1hLWJ1ZiBhcyBhbmltYXRpb24NCj4gPj4gYnVmZmVycyBlbnRlciBkaXJlY3Rf
cmVjbGFpbWF0aW9uLCBsb25nZXIgYWxsb2NhdGlvbiB0aW1lIHJlc3VsdCBpbiBhDQo+ID4+IGxh
Z2d5IFVJLiBCdXQgaWYgd2Uga25vdyB0aGUgdXNhZ2Ugb2YgdGhlIGRtYS1idWYsIHdlIGNhbiB1
c2Ugc29tZQ0KPiA+PiBtZWNoYW5pc21zIHRvIGJvb3N0LCBlLmcuIGFuaW1hdGlvbi1tZW1vcnkt
cG9vbC4NCj4gPg0KPiA+IENhbiB5b3UgZ2VuZXJhbGl6ZSB0aGlzIGEgYml0IGZ1cnRoZXI/IFdo
ZW4gd291bGQgdXNlcmxhbmQga25vdyB0byB1c2UNCj4gPiB0aGlzIG5ldyBmbGFnPw0KPiA+IElm
IGl0IGlzIGF3YXJlLCB3b3VsZCBpdCBtYWtlIHNlbnNlIHRvIGp1c3QgdXNlIGEgc2VwYXJhdGUg
aGVhcCBuYW1lIGluc3RlYWQ/DQo+ID4NCj4gPiAoQWxzbzogVGhlc2Ugb3RoZXIgbWVjaGFuaXNt
cyB5b3UgbWVudGlvbiBzaG91bGQgcHJvYmFibHkgYWxzbyBiZQ0KPiA+IHN1Ym1pdHRlZCB1cHN0
cmVhbSwgaG93ZXZlciBmb3IgdXBzdHJlYW0gdGhlcmUncyBhbHNvIHRoZSByZXF1aXJlbWVudA0K
PiA+IHRoYXQgd2UgaGF2ZSBvcGVuIHVzZXJzIGFuZCBhcmUgbm90IGp1c3QgZW5hYmxpbmcgcHJv
cHJpZXRhcnkgYmxvYg0KPiA+IHVzZXJzcGFjZSwgd2hpY2ggbWFrZXMgYW55IGNoYW5nZXMgdG8g
ZG1hLWJ1ZiBoZWFwcyBmb3Igb3V0IG9mIHRyZWUNCj4gPiBjb2RlIHF1aXRlIGRpZmZpY3VsdCkN
Cj4gPg0KPiA+PiBIb3dldmVyLCBkbWEtYnVmIHVzYWdlIGlkZW50aWZpY2F0aW9uIGJlY29tZXMg
YSBjaGFsbGVuZ2UuIEEgcG90ZW50aWFsDQo+ID4+IHNvbHV0aW9uIGNvdWxkIGJlIGhlYXBfZmxh
Z3MuIHRoZSB1c2Ugb2YgaGVhcF9mbGFncyBzZWVtcyB1Z2x5IGFuZA0KPiA+PiBjb250cmFyeSB0
byB0aGUgaW50ZW5kZWQgZGVzaWduIGFzIHlvdSBzYWlkLCBIb3cgYWJvdWx0IGV4dGVuZGluZw0K
PiA+PiBkbWFfaGVhcF9hbGxvY2F0aW9uX2RhdGEgYXMgZm9sbG93cz8NCj4gPj4NCj4gPj4gc3Ry
dWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YSB7DQo+ID4+ICAgICAgICAgX191NjQgbGVuOw0K
PiA+PiAgICAgICAgIF9fdTMyIGZkOw0KPiA+PiAgICAgICAgIF9fdTMyIGZkX2ZsYWdzOw0KPiA+
PiAgICAgICAgIF9fdTY0IGhlYXBfZmxhZ3M7DQo+ID4+ICAgICAgICAgX191NjQgYnVmX2ZsYWdz
OiAvLyBidWYgdXNhZ2UNCj4gPj4gfTsNCj4gPg0KPiA+IFRoaXMgd291bGQgYWZmZWN0IHRoZSBB
QkkgKGZvcmNpbmcgYSBuZXcgaW9jdGwgbnVtYmVyKS4gIEFuZCBpdCdzDQo+ID4gdW5jbGVhciB3
aGF0IGZsYWdzIHlvdSBlbnZpc2lvbiBhcyBidWZmZXIgc3BlY2lmaWMgKHJhdGhlciB0aGFuIGhl
YXANCj4gPiBzcGVjaWZpYyBhcyB0aGlzIHBhdGNoIHN1Z2dlc3RlZCkuDQo+ID4NCj4gPiBJIHRo
aW5rIHdlIG5lZWQgbW9yZSBkZXRhaWxzIGFib3V0IHRoZSBzcGVjaWZpYyBwcm9ibGVtIHlvdSdy
ZSBzZWVpbmcNCj4gPiBhbmQgdHJ5aW5nIHRvIHJlc29sdmUuDQo+IFRoaXMgcGF0Y2ggbWFpbmx5
IGZvY3VzZXMgb24gb3B0aW1pemF0aW9uIGZvciBBbmRyb2lkIHNjZW5hcmlvcy4gTGV04oCZcw0K
PiBkaXNjdXNzIGl0IG9uIHRoZSBpc3N1ZSB3ZWJzaXRlLg0KPiBCdWc6IDM0NDUwMTUxMg0KDQpP
aywgd2UgY2FuIGRvIHRoYXQgaWYgeW91IG5lZWQuDQoNCkJ1dCBpZiB0aGlzIGlzIGV2ZXIgZ29p
bmcgdG8gZ28gdXBzdHJlYW0gKGFuZCBpdCdzIG1vcmUgYW5kIG1vcmUNCmltcG9ydGFudCB0aGF0
IHdlIG1pbmltaXplIG91dCBvZiB0cmVlIHRlY2huaWNhbCBkZWJ0KSwgY29udmVyc2F0aW9ucw0K
YWJvdXQgaG93IHRvIGdlbmVyYWxpemUgdGhpcyB3aWxsIG5lZWQgdG8gaGFwcGVuIG9uIHRoZSBs
aXN0Lg0KDQp0aGFua3MNCi1qb2huDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
