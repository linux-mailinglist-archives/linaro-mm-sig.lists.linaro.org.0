Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 464E479AAD0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 20:29:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3376F3EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 18:29:33 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id A49683EAAA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 18:29:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=yoGJveN9;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4009fdc224dso14365e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 11:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1694456967; x=1695061767; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVbKwjvYsKayRQfQqnfoMhqs1+0fnsR+3Q13ar61kcQ=;
        b=yoGJveN9sdwFMzDAsAJMhzLhXhJIwpibcHKL+GrAKGGilfH913ynaB8rcNlHPmBxdS
         ltXotYQTQ2JPKa+YUk3QBqB4ArJmauzoUucb9jNI7XHfZ4rkWtYJRLdfAGeasrvGYUMx
         3DfNFLgZmRWdSMpt/WG8mLRmF2TQ8w+Uqimt9b5XL/eiZ5o23PjNmAHuLrqemUsJYpMz
         ujOvP1nPsoUg9v8/PEgsK1kEdWVtlCbMqHDQMTN3tBpMw64cQSzDU/LL4tqZfUg+UhjQ
         +SwUpH9mkaco8fq0iXw6L018Xu5J8tBdrSrdjaO10P2KI135OGUzOt7I/EJ8+nIGep3v
         9NEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694456967; x=1695061767;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sVbKwjvYsKayRQfQqnfoMhqs1+0fnsR+3Q13ar61kcQ=;
        b=aKdFNCP755nf2+n5p36OKekMF8MwSg2afacBvl6mMhaFqmAOZFqhk79w781bxbVEWn
         gtw9G3m5jlmQAFI2qc1i0H1los5gHBx7kDjB82bT0mBduY3UKLYLHTaYsXVkN3C4r8k/
         tEOVEBlNQZ5WNzJFnIxqGVk/OBn91XYErNeAkfsAwWA6hN9+QowWXsrYD6ZXM9gzc2NJ
         Lepp42cDluLhBNTn3olbRN3pkqhiRq3PrF9ezmXzQE6V4y7TafV9KBktopv3ZKqtGzLu
         zGug7bzVUaFoBqCyPTqW2nQaBL26VBiGoJWORSQ1t17Xe14egLan7Q4lG8rufg7hzFme
         cNUw==
X-Gm-Message-State: AOJu0Ywc7oJedtLy2NulkacbDJ8Ohae4aDrAP/F8w5ET4fGkaxFnfKi3
	Kq8I11C4/tvgmAYYC5e/WwYeSGyyEX4dvyp/gIqK
X-Google-Smtp-Source: AGHT+IEip61urvwgkKVc4TSjTz4WJ07S5AZ9xWSZrK/2bf3DpFU4C+CemgJRrVeWgKwkbH4wpHkmoqEHFh/enFx67/Q=
X-Received: by 2002:a05:600c:5122:b0:400:c6de:6a20 with SMTP id
 o34-20020a05600c512200b00400c6de6a20mr18298wms.3.1694456967402; Mon, 11 Sep
 2023 11:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230911023038.30649-1-yong.wu@mediatek.com> <20230911023038.30649-4-yong.wu@mediatek.com>
 <803846bc-fd1d-d2ec-2855-456af22c82f8@amd.com>
In-Reply-To: <803846bc-fd1d-d2ec-2855-456af22c82f8@amd.com>
From: John Stultz <jstultz@google.com>
Date: Mon, 11 Sep 2023 11:29:15 -0700
Message-ID: <CANDhNCrQyiFZ+8DnG0iyKBXC0H1698K1a9d2AxOq4whDsZBn+Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: A49683EAAA
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.46:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CQMFDYWOXIBJ27GQC5KSRVQLNBKGST54
X-Message-ID-Hash: CQMFDYWOXIBJ27GQC5KSRVQLNBKGST54
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dma-heap: Provide accessors so that in-kernel drivers can allocate dmabufs from specific heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CQMFDYWOXIBJ27GQC5KSRVQLNBKGST54/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMTEsIDIwMjMgYXQgMzoxNOKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiBBbSAxMS4wOS4yMyB1bSAwNDozMCBzY2hy
aWViIFlvbmcgV3U6DQo+ID4gRnJvbTogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4N
Cj4gPg0KPiA+IFRoaXMgYWxsb3dzIGRyaXZlcnMgd2hvIGRvbid0IHdhbnQgdG8gY3JlYXRlIHRo
ZWlyIG93bg0KPiA+IERNQS1CVUYgZXhwb3J0ZXIgdG8gYmUgYWJsZSB0byBhbGxvY2F0ZSBETUEt
QlVGcyBkaXJlY3RseQ0KPiA+IGZyb20gZXhpc3RpbmcgRE1BLUJVRiBIZWFwcy4NCj4gPg0KPiA+
IFRoZXJlIGlzIHNvbWUgY29uY2VybiB0aGF0IHRoZSBwcmVtaXNlIG9mIERNQS1CVUYgaGVhcHMg
aXMNCj4gPiB0aGF0IHVzZXJsYW5kIGtub3dzIGJldHRlciBhYm91dCB3aGF0IHR5cGUgb2YgaGVh
cCBtZW1vcnkNCj4gPiBpcyBuZWVkZWQgZm9yIGEgcGlwZWxpbmUsIHNvIGl0IHdvdWxkIGxpa2Vs
eSBiZSBiZXN0IGZvcg0KPiA+IGRyaXZlcnMgdG8gaW1wb3J0IGFuZCBmaWxsIERNQS1CVUZzIGFs
bG9jYXRlZCBieSB1c2VybGFuZA0KPiA+IGluc3RlYWQgb2YgYWxsb2NhdGluZyBvbmUgdGhlbXNl
bHZlcywgYnV0IHRoaXMgaXMgc3RpbGwNCj4gPiB1cCBmb3IgZGViYXRlLg0KPg0KPiBUaGUgbWFp
biBkZXNpZ24gZ29hbCBvZiBoYXZpbmcgRE1BLWhlYXBzIGluIHRoZSBmaXJzdCBwbGFjZSBpcyB0
byBhdm9pZA0KPiBwZXIgZHJpdmVyIGFsbG9jYXRpb24gYW5kIHRoaXMgaXMgbm90IG5lY2Vzc2Fy
eSBiZWNhdXNlIHVzZXJsYW5kIGtub3cNCj4gYmV0dGVyIHdoYXQgdHlwZSBvZiBtZW1vcnkgaXQg
d2FudHMuDQo+DQo+IFRoZSBiYWNrZ3JvdW5kIGlzIHJhdGhlciB0aGF0IHdlIGdlbmVyYWxseSB3
YW50IHRvIGRlY291cGxlIGFsbG9jYXRpb24NCj4gZnJvbSBoYXZpbmcgYSBkZXZpY2UgZHJpdmVy
IGNvbm5lY3Rpb24gc28gdGhhdCB3ZSBoYXZlIGJldHRlciBjaGFuY2UNCj4gdGhhdCBtdWx0aXBs
ZSBkZXZpY2VzIGNhbiB3b3JrIHdpdGggdGhlIHNhbWUgbWVtb3J5Lg0KDQpZZXAsIHZlcnkgbXVj
aCBhZ3JlZWQsIGFuZCB0aGlzIGlzIHdoYXQgdGhlIGNvbW1lbnQgYWJvdmUgaXMgdHJ5aW5nIHRv
IGRlc2NyaWJlLg0KDQpJZGVhbGx5IHVzZXItYWxsb2NhdGVkIGJ1ZmZlcnMgd291bGQgYmUgdXNl
ZCB0byBlbnN1cmUgZHJpdmVyJ3MgZG9uJ3QNCmNyZWF0ZSBidWZmZXJzIHdpdGggY29uc3RyYWlu
dHMgdGhhdCBsaW1pdCB3aGljaCBkZXZpY2VzIHRoZSBidWZmZXJzDQptaWdodCBsYXRlciBiZSBz
aGFyZWQgd2l0aC4NCg0KSG93ZXZlciwgdGhpcyBwYXRjaCB3YXMgY3JlYXRlZCBhcyBhIGhvbGQt
b3ZlciBmcm9tIHRoZSBvbGQgSU9OIGxvZ2ljDQp0byBoZWxwIHZlbmRvcnMgdHJhbnNpdGlvbiB0
byBkbWFidWYgaGVhcHMsIGFzIHZlbmRvcnMgaGFkIHNpdHVhdGlvbnMNCndoZXJlIHRoZXkgc3Rp
bGwgd2FudGVkIHRvIGV4cG9ydCBkbWFidWZzIHRoYXQgd2VyZSBub3QgdG8gYmUNCmdlbmVyYWxs
eSBzaGFyZWQgYW5kIGZvbGtzIHdhbnRlZCB0byBhdm9pZCBkdXBsaWNhdGlvbiBvZiBsb2dpYw0K
YWxyZWFkeSBpbiBleGlzdGluZyBoZWFwcy4gIEF0IHRoZSB0aW1lLCBJIG5ldmVyIHB1c2hlZCBp
dCB1cHN0cmVhbSBhcw0KdGhlcmUgd2VyZSBubyB1cHN0cmVhbSB1c2Vycy4gIEJ1dCBJIHRoaW5r
IGlmIHRoZXJlIGlzIG5vdyBhIHBvdGVudGlhbA0KdXBzdHJlYW0gdXNlciwgaXQncyB3b3J0aCBo
YXZpbmcgdGhlIGRpc2N1c3Npb24gdG8gYmV0dGVyIHVuZGVyc3RhbmQNCnRoZSBuZWVkLg0KDQpT
byBJIHRoaW5rIHRoaXMgcGF0Y2ggaXMgYSBsaXR0bGUgY29uZnVzaW5nIGluIHRoaXMgc2VyaWVz
LCBhcyBJIGRvbid0DQpzZWUgbXVjaCBvZiBpdCBhY3R1YWxseSBiZWluZyB1c2VkIGhlcmUgKHRo
b3VnaCBmb3JnaXZlIG1lIGlmIEknbQ0KbWlzc2luZyBpdCkuDQoNCkluc3RlYWQsIEl0IHNlZW1z
IGl0IGdldCB1c2VkIGluIGEgc2VwYXJhdGUgcGF0Y2ggc2VyaWVzIGhlcmU6DQogIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDkxMTEyNTkzNi4xMDY0OC0xLXl1bmZlaS5kb25nQG1l
ZGlhdGVrLmNvbS8NCg0KWW9uZywgSSBhcHByZWNpYXRlIHlvdSBzZW5kaW5nIHRoaXMgb3V0ISBC
dXQgbWF5YmUgaWYgdGhlIHNlY3VyZSBoZWFwDQpzdWJtaXNzaW9uIGRvZXNuJ3QgZGVwZW5kIG9u
IHRoaXMgZnVuY3Rpb25hbGl0eSwgSSBtaWdodCBzdWdnZXN0DQptb3ZpbmcgdGhpcyBwYXRjaCAo
b3IgYXQgbGVhc3QgdGhlIG1ham9yaXR5IG9mIGl0KSB0byBiZSBwYXJ0IG9mIHRoZQ0KdmNvZGVj
IHNlcmllcyBpbnN0ZWFkPyAgVGhhdCB3YXkgcmV2aWV3ZXJzIHdpbGwgaGF2ZSBtb3JlIGNvbnRl
eHQgZm9yDQpob3cgdGhlIGNvZGUgYmVpbmcgYWRkZWQgaXMgdXNlZD8NCg0KdGhhbmtzDQotam9o
bg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
