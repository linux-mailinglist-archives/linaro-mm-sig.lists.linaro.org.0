Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EC3929CD5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jul 2024 09:14:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A731E40D2C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jul 2024 07:14:19 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id C6F143F392
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jul 2024 07:14:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=dBgwBMMw;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4266b1f1b21so2711955e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Jul 2024 00:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720422856; x=1721027656; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vcpZKxffh1BIPbGttr7eH91nbmnE8KOM65bYeiW3Qyg=;
        b=dBgwBMMwxTQ5TGvzvNNFQwOKLkRzvnaE+4LgfiWtdyp6aj+Nl+K+nKmqjfcX2qKECe
         2oacn5m2/wW3lNvWvkaIwT/IiySnYdKNhAFynUqV4jZJmMA/oHDSK5hpbKIltuFhzLxz
         HiKl54l5t23us2rYWX2yx8l2LO2/d/fHWblcU7wSiJ03VcAoXziRuSmRtRFswA7FukLD
         3DrY8D3PRrktK7vfD7vmCRkcQ1mb/HW6XPOj2TYqWIHCr6DWet1KEUd7oNc94fJpx4Kx
         OJvVAqhHqW80+QhRfR/sIXEbFmB0CWFmgCTRIMR0xv1/jA5dGIxGRl+w0Tp8n+ftRjrF
         4llQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720422856; x=1721027656;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vcpZKxffh1BIPbGttr7eH91nbmnE8KOM65bYeiW3Qyg=;
        b=YLe5gBCzzt8VQzThYjwli4VStQ4O8M+zTndHezjZ8jG4U8WoWzp853GAYv9znxRc+t
         CUvh1kIHEBz42yHY7P56v70HJ/lROcMdWN0mn5rPJFtvNbjAo2W3SXhJ0EJ5GN/ueA9+
         Zla1MhzR3lFxThJG1lMxolF7wlw9+K2jIvTgyde7QoZ4aVNHBWGcogYc3cc58S/zgXqw
         ynVEYoRCdBw6jiPcVIAkojj/FcgCKNvM0/hHCBApy0HWiGWlOIiaDVpvG8AsRKfpdBWb
         TpYhPZf6No685s0Gt6F3pNzp57VG600slgeQoJkLwT7VtE6mW2BBbOmlphkfU12UVsZt
         R7TQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5LWkqIAMY5EakG7/czKHn/XB8gzOdb3scO8T9r7cd2jCmg5SmI/qpy6dVjBJ63eu23qHZc6JWOI9VniBxby6FxEzq7J+/3zxQNZLZAhs=
X-Gm-Message-State: AOJu0Yxi5JnhWvXj1ZaCT+Lw8C92/S7taPPAXQoTut6nD1Us7EwUT4of
	rA4MRjoE04smitB2dW+s5T6DNCo6QN4Qvrwr7fKHxRCA0BmGYZuB
X-Google-Smtp-Source: AGHT+IE7rimd7KEtTYGAglzE1thSHNWtvzIpA30fmoas+DNLkSTy3PEkmPXIgmyCB2YCS+utG0lcoA==
X-Received: by 2002:a05:600c:20c:b0:426:65bf:5cc2 with SMTP id 5b1f17b1804b1-42665bf5d8bmr23951935e9.1.1720422855227;
        Mon, 08 Jul 2024 00:14:15 -0700 (PDT)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a2519a4sm151263255e9.35.2024.07.08.00.14.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jul 2024 00:14:14 -0700 (PDT)
Message-ID: <41859b82-fe75-451a-9e13-fec254bdaad5@gmail.com>
Date: Mon, 8 Jul 2024 09:14:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Thierry Reding <thierry.reding@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, John Stultz <jstultz@google.com>,
 Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier"
 <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>,
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
 <ZogSxHFPt8SpOa0w@phenom.ffwll.local>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <ZogSxHFPt8SpOa0w@phenom.ffwll.local>
X-Rspamd-Queue-Id: C6F143F392
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,linaro.org,collabora.com,arm.com,amd.com,baylibre.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: T64O5BHJZYHH5SUBUIZ6LAPYJVHMMNWE
X-Message-ID-Hash: T64O5BHJZYHH5SUBUIZ6LAPYJVHMMNWE
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T64O5BHJZYHH5SUBUIZ6LAPYJVHMMNWE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMDcuMjQgdW0gMTc6MzUgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBKdXN0IGZpZ3Vy
ZWQgSSdsbCBqdW1wIGluIG9uIG9uZSBkZXRhaWwgaGVyZS4NCj4NCj4gT24gRnJpLCBKdWwgMDUs
IDIwMjQgYXQgMDQ6MzE6MzRQTSArMDIwMCwgVGhpZXJyeSBSZWRpbmcgd3JvdGU6DQo+PiBPbiBU
aHUsIEp1bCAwNCwgMjAyNCBhdCAwMjoyNDo0OVBNIEdNVCwgTWF4aW1lIFJpcGFyZCB3cm90ZToN
Cj4+PiBPbiBGcmksIEp1biAyOCwgMjAyNCBhdCAwNDo0MjozNVBNIEdNVCwgVGhpZXJyeSBSZWRp
bmcgd3JvdGU6DQo+Pj4+IE9uIEZyaSwgSnVuIDI4LCAyMDI0IGF0IDAzOjA4OjQ2UE0gR01ULCBN
YXhpbWUgUmlwYXJkIHdyb3RlOg0KPj4+Pj4gSGksDQo+Pj4+Pg0KPj4+Pj4gT24gRnJpLCBKdW4g
MjgsIDIwMjQgYXQgMDE6Mjk6MTdQTSBHTVQsIFRoaWVycnkgUmVkaW5nIHdyb3RlOg0KPj4+Pj4+
IE9uIFR1ZSwgTWF5IDIxLCAyMDI0IGF0IDAyOjA2OjE5UE0gR01ULCBEYW5pZWwgVmV0dGVyIHdy
b3RlOg0KPj4+Pj4+PiBPbiBUaHUsIE1heSAxNiwgMjAyNCBhdCAwOTo1MTozNUFNIC0wNzAwLCBK
b2huIFN0dWx0eiB3cm90ZToNCj4+Pj4+Pj4+IE9uIFRodSwgTWF5IDE2LCAyMDI0IGF0IDM6NTbi
gK9BTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOg0KPj4+Pj4+Pj4+IE9u
IFdlZCwgTWF5IDE1LCAyMDI0IGF0IDExOjQyOjU4QU0gLTA3MDAsIEpvaG4gU3R1bHR6IHdyb3Rl
Og0KPj4+Pj4+Pj4+PiBCdXQgaXQgbWFrZXMgbWUgYSBsaXR0bGUgbmVydm91cyB0byBhZGQgYSBu
ZXcgZ2VuZXJpYyBhbGxvY2F0aW9uIGZsYWcNCj4+Pj4+Pj4+Pj4gZm9yIGEgZmVhdHVyZSBtb3N0
IGhhcmR3YXJlIGRvZXNuJ3Qgc3VwcG9ydCAoeWV0LCBhdCBsZWFzdCkuIFNvIGl0J3MNCj4+Pj4+
Pj4+Pj4gaGFyZCB0byB3ZWlnaCBob3cgY29tbW9uIHRoZSBhY3R1YWwgdXNhZ2Ugd2lsbCBiZSBh
Y3Jvc3MgYWxsIHRoZQ0KPj4+Pj4+Pj4+PiBoZWFwcy4NCj4+Pj4+Pj4+Pj4NCj4+Pj4+Pj4+Pj4g
SSBhcG9sb2dpemUgYXMgbXkgd29ycnkgaXMgbW9zdGx5IGJvcm4gb3V0IG9mIHNlZWluZyB2ZW5k
b3JzIHJlYWxseQ0KPj4+Pj4+Pj4+PiBwdXNoIG9wYXF1ZSBmZWF0dXJlIGZsYWdzIGluIHRoZWly
IG9sZCBpb24gaGVhcHMsIHNvIGluIHByb3ZpZGluZyBhDQo+Pj4+Pj4+Pj4+IGZsYWdzIGFyZ3Vt
ZW50LCBpdCB3YXMgbW9zdGx5IGludGVuZGVkIGFzIGFuIGVzY2FwZSBoYXRjaCBmb3INCj4+Pj4+
Pj4+Pj4gb2J2aW91c2x5IGNvbW1vbiBhdHRyaWJ1dGVzLiBTbyBoYXZpbmcgdGhlIGZpcnN0IGJl
IHNvbWV0aGluZyB0aGF0DQo+Pj4+Pj4+Pj4+IHNlZW1zIHJlYXNvbmFibGUsIGJ1dCBpc24ndCBh
Y3R1YWxseSB0aGF0IGNvbW1vbiBtYWtlcyBtZSBmcmV0IHNvbWUuDQo+Pj4+Pj4+Pj4+DQo+Pj4+
Pj4+Pj4+IFNvIGFnYWluLCBub3QgYW4gb2JqZWN0aW9uLCBqdXN0IHNvbWV0aGluZyBmb3IgZm9s
a3MgdG8gc3RldyBvbiB0bw0KPj4+Pj4+Pj4+PiBtYWtlIHN1cmUgdGhpcyBpcyByZWFsbHkgdGhl
IHJpZ2h0IGFwcHJvYWNoLg0KPj4+Pj4+Pj4+IEFub3RoZXIgZ29vZCByZWFzb24gdG8gZ28gd2l0
aCBmdWxsIGhlYXAgbmFtZXMgaW5zdGVhZCBvZiBvcGFxdWUgZmxhZ3Mgb24NCj4+Pj4+Pj4+PiBl
eGlzdGluZyBoZWFwcyBpcyB0aGF0IHdpdGggdGhlIGZvcm1lciB3ZSBjYW4gdXNlIHN5bWxpbmtz
IGluIHN5c2ZzIHRvDQo+Pj4+Pj4+Pj4gc3BlY2lmeSBoZWFwcywgd2l0aCB0aGUgbGF0dGVyIHdl
IG5lZWQgYSBuZXcgaWRlYS4gV2UgaGF2ZW4ndCB5ZXQgZ290dGVuDQo+Pj4+Pj4+Pj4gYXJvdW5k
IHRvIGltcGxlbWVudCB0aGlzIGFueXdoZXJlLCBidXQgaXQncyBiZWVuIGluIHRoZSBkbWEtYnVm
L2hlYXAgdG9kbw0KPj4+Pj4+Pj4+IHNpbmNlIGZvcmV2ZXIsIGFuZCBJIGxpa2UgaXQgYXMgYSBk
ZXNpZ24gYXBwcm9hY2guIFNvIHdvdWxkIGJlIGEgZ29vZCBpZGVhDQo+Pj4+Pj4+Pj4gdG8gbm90
IHRvc3MgaXQuIFdpdGggdGhhdCBkaXNwbGF5IHdvdWxkIGhhdmUgc3ltbGlua3MgdG8gY21hLWVj
YyBhbmQgY21hLA0KPj4+Pj4+Pj4+IGFuZCByZW5kZXJpbmcgbWF5YmUgY21hLWVjYywgc2htZW0s
IGNtYSBoZWFwcyAoaW4gcHJpb3JpdHkgb3JkZXIpIGZvciBhDQo+Pj4+Pj4+Pj4gU29DIHdoZXJl
IHRoZSBkaXNwbGF5IG5lZWRzIGNvbnRpZyBtZW1vcnkgZm9yIHNjYW5vdXQuDQo+Pj4+Pj4+PiBT
byBpbmRlZWQgdGhhdCBpcyBhIGdvb2QgcG9pbnQgdG8ga2VlcCBpbiBtaW5kLCBidXQgSSBhbHNv
IHRoaW5rIGl0DQo+Pj4+Pj4+PiBtaWdodCByZS1pbmZvcmNlIHRoZSBjaG9pY2Ugb2YgaGF2aW5n
IEVDQyBhcyBhIGZsYWcgaGVyZS4NCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiBTaW5jZSBteSB1bmRlcnN0
YW5kaW5nIG9mIHRoZSBzeXNmcyBzeW1saW5rcyB0byBoZWFwcyBpZGVhIGlzIGFib3V0DQo+Pj4+
Pj4+PiBiZWluZyBhYmxlIHRvIGZpZ3VyZSBvdXQgYSBjb21tb24gaGVhcCBmcm9tIGEgY29sbGVj
dGlvbiBvZiBkZXZpY2VzLA0KPj4+Pj4+Pj4gaXQncyByZWFsbHkgYWJvdXQgdGhlIGFiaWxpdHkg
Zm9yIHRoZSBkcml2ZXIgdG8gYWNjZXNzIHRoZSB0eXBlIG9mDQo+Pj4+Pj4+PiBtZW1vcnkuIElm
IEVDQyBpcyBqdXN0IGFuIGF0dHJpYnV0ZSBvZiB0aGUgdHlwZSBvZiBtZW1vcnkgKGFzIGluIHRo
aXMNCj4+Pj4+Pj4+IHBhdGNoIHNlcmllcyksIGl0IGJlaW5nIG9uIG9yIG9mZiB3b24ndCBuZWNl
c3NhcmlseSBhZmZlY3QNCj4+Pj4+Pj4+IGNvbXBhdGliaWxpdHkgb2YgdGhlIGJ1ZmZlciB3aXRo
IHRoZSBkZXZpY2UuICBTaW1pbGFybHkgInVuY2FjaGVkIg0KPj4+Pj4+Pj4gc2VlbXMgbW9yZSBv
ZiBhbiBhdHRyaWJ1dGUgb2YgbWVtb3J5IHR5cGUgYW5kIG5vdCBhIHR5cGUgaXRzZWxmLg0KPj4+
Pj4+Pj4gSGFyZHdhcmUgdGhhdCBjYW4gYWNjZXNzIG5vbi1jb250aWd1b3VzICJzeXN0ZW0iIGJ1
ZmZlcnMgY2FuIGFjY2Vzcw0KPj4+Pj4+Pj4gdW5jYWNoZWQgc3lzdGVtIGJ1ZmZlcnMuDQo+Pj4+
Pj4+IFllYWgsIGJ1dCBpbiBncmFwaGljcyB0aGVyZSdzIGEgd2lkZSBiYW5kIHdoZXJlICJzaGl0
IHBlcmZvcm1hbmNlIiBpcw0KPj4+Pj4+PiBkZWZhY3RvICJub3QgdXNlYWJsZSAoYXMgaW50ZW5k
ZWQgYXQgbGVhc3QpIi4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gU28gaWYgd2UgbGltaXQgdGhlIHN5bWxp
bmsgaWRlYSB0byBqdXN0IG1ha2luZyBzdXJlIHplcm8tY29weSBhY2Nlc3MgaXMNCj4+Pj4+Pj4g
cG9zc2libGUsIHRoZW4gd2UgbWlnaHQgbm90IGFjdHVhbGx5IHNvbHZlIHRoZSByZWFsIHdvcmxk
IHByb2JsZW0gd2UgbmVlZA0KPj4+Pj4+PiB0byBzb2x2ZS4gQW5kIHNvIHRoZSBzeW1saW5rcyBi
ZWNvbWUgc29tZXdoYXQgdXNlbGVzcywgYW5kIHdlIG5lZWQgdG8NCj4+Pj4+Pj4gc29tZXdoZXJl
IGVuY29kZSB3aGljaCBmbGFncyB5b3UgbmVlZCB0byB1c2Ugd2l0aCBlYWNoIHN5bWxpbmsuDQo+
Pj4+Pj4+DQo+Pj4+Pj4+IEJ1dCBJIGFsc28gc2VlIHRoZSBhcmd1bWVudCB0aGF0IHRoZXJlJ3Mg
YSBiaXQgYSBjb21iaW5hdG9yaWFsIGV4cGxvc2lvbg0KPj4+Pj4+PiBwb3NzaWJsZS4gU28gSSBn
dWVzcyB0aGUgcXVlc3Rpb24gaXMgd2hlcmUgd2Ugd2FudCB0byBoYW5kbGUgaXQgLi4uDQo+Pj4+
Pj4gU29ycnkgZm9yIGp1bXBpbmcgaW50byB0aGlzIGRpc2N1c3Npb24gc28gbGF0ZS4gQnV0IGFy
ZSB3ZSByZWFsbHkNCj4+Pj4+PiBjb25jZXJuZWQgYWJvdXQgdGhpcyBjb21iaW5hdG9yaWFsIGV4
cGxvc2lvbiBpbiBwcmFjdGljZT8gSXQgbWF5IGJlDQo+Pj4+Pj4gdGhlb3JldGljYWxseSBwb3Nz
aWJsZSB0byBjcmVhdGUgYW55IGNvbWJpbmF0aW9uIG9mIHRoZXNlLCBidXQgZG8gd2UNCj4+Pj4+
PiBleHBlY3QgbW9yZSB0aGFuIGEgY291cGxlIG9mIGhlYXBzIHRvIGV4aXN0IGluIGFueSBnaXZl
biBzeXN0ZW0/DQo+Pj4+PiBJIGRvbid0IHdvcnJ5IHRvbyBtdWNoIGFib3V0IHRoZSBudW1iZXIg
b2YgaGVhcHMgYXZhaWxhYmxlIGluIGEgZ2l2ZW4NCj4+Pj4+IHN5c3RlbSwgaXQgd291bGQgaW5k
ZWVkIGJlIGZhaXJseSBsb3cuDQo+Pj4+Pg0KPj4+Pj4gTXkgY29uY2VybiBpcyBhYm91dCB0aGUg
c2VtYW50aWNzIGNvbWJpbmF0b3JpYWwgZXhwbG9zaW9uLiBTbyBmYXIsIHRoZQ0KPj4+Pj4gbmFt
ZSBoYXMgY2FycmllZCB3aGF0IHNlbWFudGljcyB3ZSB3ZXJlIHN1cHBvc2VkIHRvIGdldCBmcm9t
IHRoZSBidWZmZXINCj4+Pj4+IHdlIGFsbG9jYXRlIGZyb20gdGhhdCBoZWFwLg0KPj4+Pj4NCj4+
Pj4+IFRoZSBtb3JlIHZhcmlhdGlvbnMgYW5kIGNvbmNlcHRzIHdlJ2xsIGhhdmUsIHRoZSBtb3Jl
IGhlYXAgbmFtZXMgd2UnbGwNCj4+Pj4+IG5lZWQsIGFuZCB3aXRoIGNvbmZ1c2luZyBuYW1lcyBz
aW5jZSB3ZSB3b3VsZG4ndCBiZSBhYmxlIHRvIGNoYW5nZSB0aGUNCj4+Pj4+IG5hbWVzIG9mIHRo
ZSBoZWFwcyB3ZSBhbHJlYWR5IGhhdmUuDQo+Pj4+IFdoYXQgSSB3YXMgdHJ5aW5nIHRvIHNheSBp
cyB0aGF0IG5vbmUgb2YgdGhpcyBtYXR0ZXJzIGlmIHdlIG1ha2UgdGhlc2UNCj4+Pj4gbmFtZXMg
b3BhcXVlLiBJZiB0aGVzZSBuYW1lcyBhcmUgY29udGV4dHVhbCBmb3IgdGhlIGdpdmVuIHN5c3Rl
bSBpdA0KPj4+PiBkb2Vzbid0IG1hdHRlciB3aGF0IHRoZSBleGFjdCBjYXBhYmlsaXRpZXMgYXJl
LiBJdCBvbmx5IG1hdHRlcnMgdGhhdA0KPj4+PiB0aGVpciBwdXJwb3NlIGlzIGtub3duIGFuZCB0
aGF0J3Mgd2hhdCBhcHBsaWNhdGlvbnMgd2lsbCBiZSBpbnRlcmVzdGVkDQo+Pj4+IGluLg0KPj4+
IElmIHRoZSBuYW1lcyBhcmUgb3BhcXVlLCBhbmQgd2UgZG9uJ3QgcHVibGlzaCB3aGF0IHRoZSBl
eGFjdA0KPj4+IGNhcGFiaWxpdGllcyBhcmUsIGhvdyBjYW4gYW4gYXBwbGljYXRpb24gZmlndXJl
IG91dCB3aGljaCBoZWFwIHRvIHVzZSBpbg0KPj4+IHRoZSBmaXJzdCBwbGFjZT8NCj4+IFRoaXMg
d291bGQgbmVlZCB0byBiZSBiYXNlZCBvbiBjb252ZW50aW9ucy4gVGhlIGlkZWEgaXMgdG8gc3Rh
bmRhcmRpemUNCj4+IG9uIGEgc2V0IG9mIG5hbWVzIGZvciBzcGVjaWZpYywgd2VsbC1rbm93biB1
c2UtY2FzZXMuDQo+Pg0KPj4+Pj4+IFdvdWxkIGl0IHBlcmhhcHMgbWFrZSBtb3JlIHNlbnNlIHRv
IGxldCBhIHBsYXRmb3JtIG92ZXJyaWRlIHRoZSBoZWFwDQo+Pj4+Pj4gbmFtZSB0byBtYWtlIGl0
IG1vcmUgZWFzaWx5IGlkZW50aWZpYWJsZT8gTWF5YmUgdGhpcyBpcyBhIG5haXZlDQo+Pj4+Pj4g
YXNzdW1wdGlvbiwgYnV0IGFyZW4ndCB1c2Vyc3BhY2UgYXBwbGljYXRpb25zIGFuZCBkcml2ZXJz
IG5vdCBwcmltYXJpbHkNCj4+Pj4+PiBpbnRlcmVzdGVkIGluIHRoZSAidHlwZSIgb2YgaGVhcCBy
YXRoZXIgdGhhbiB3aGF0ZXZlciBzcGVjaWZpYyBmbGFncw0KPj4+Pj4+IGhhdmUgYmVlbiBzZXQg
Zm9yIGl0Pw0KPj4+Pj4gSSBndWVzcyBpdCBkZXBlbmRzIG9uIHdoYXQgeW91IGNhbGwgdGhlIHR5
cGUgb2YgYSBoZWFwLiBXaGVyZSB3ZQ0KPj4+Pj4gYWxsb2NhdGUgdGhlIG1lbW9yeSBmcm9tLCBz
dXJlLCBhbiBhcHBsaWNhdGlvbiB3b24ndCBjYXJlIGFib3V0IHRoYXQuDQo+Pj4+PiBIb3cgdGhl
IGJ1ZmZlciBiZWhhdmVzIG9uIHRoZSBvdGhlciBlbmQgaXMgZGVmaW5pdGVseSBzb21ldGhpbmcN
Cj4+Pj4+IGFwcGxpY2F0aW9ucyBhcmUgZ29pbmcgdG8gYmUgaW50ZXJlc3RlZCBpbiB0aG91Z2gu
DQo+Pj4+IE1vc3Qgb2YgdGhlc2UgaGVhcHMgd2lsbCBiZSB2ZXJ5IHNwZWNpZmljLCBJIHdvdWxk
IGFzc3VtZS4NCj4+PiBXZSBkb24ndCBoYXZlIGFueSBzcGVjaWZpYyBoZWFwIHVwc3RyZWFtIGF0
IHRoZSBtb21lbnQsIG9ubHkgZ2VuZXJpYw0KPj4+IG9uZXMuDQo+PiBCdXQgd2UncmUgdHJ5aW5n
IHRvIGFkZCBtb3JlIHNwZWNpZmljIG9uZXMsIHJpZ2h0Pw0KPj4NCj4+Pj4gRm9yIGV4YW1wbGUg
YSBoZWFwIHRoYXQgaXMgbWVhbnQgdG8gYmUgcHJvdGVjdGVkIGZvciBwcm90ZWN0ZWQgdmlkZW8N
Cj4+Pj4gZGVjb2RpbmcgaXMgYm90aCBnb2luZyB0byBiZSBjcmVhdGVkIGluIHN1Y2ggYSB3YXkg
YXMgdG8gYWxsb3cgdGhhdA0KPj4+PiB1c2UtY2FzZSAoaS5lLiBpdCBkb2Vzbid0IG1ha2Ugc2Vu
c2UgZm9yIGl0IHRvIGJlIHVuY2FjaGVkLCBmb3INCj4+Pj4gZXhhbXBsZSkgYW5kIGl0J3MgYWxz
byBub3QgZ29pbmcgdG8gYmUgdXNlZnVsIGZvciBhbnkgb3RoZXIgdXNlLWNhc2UNCj4+Pj4gKGku
ZS4gdGhlcmUncyBubyByZWFzb24gdG8gdXNlIHRoYXQgaGVhcCBmb3IgR1BVIGpvYnMgb3IgbmV0
d29ya2luZywNCj4+Pj4gb3Igd2hhdGV2ZXIpLg0KPj4+IFJpZ2h0LiBCdXQgYWxzbywgbGliY2Ft
ZXJhIGhhcyBzdGFydGVkIHRvIHVzZSBkbWEtaGVhcHMgdG8gYWxsb2NhdGUNCj4+PiBkbWEtY2Fw
YWJsZSBidWZmZXJzIGFuZCBkbyBzb2Z0d2FyZSBwcm9jZXNzaW5nIG9uIGl0IGJlZm9yZSBzZW5k
aW5nIGl0DQo+Pj4gdG8gc29tZSBoYXJkd2FyZSBjb250cm9sbGVyLg0KPj4+DQo+Pj4gQ2FjaGVz
IGFyZSBjcml0aWNhbCBoZXJlLCBhbmQgZ2V0dGluZyBhIG5vbi1jYWNoZWFibGUgYnVmZmVyIHdv
dWxkIGJlDQo+Pj4gYSBjbGVhciByZWdyZXNzaW9uLg0KPj4gSSB1bmRlcnN0YW5kIHRoYXQuIE15
IHBvaW50IGlzIHRoYXQgbWF5YmUgd2Ugc2hvdWxkbid0IHRyeSB0byBkZXNpZ24gYQ0KPj4gY29t
cGxleCBtZWNoYW5pc20gdGhhdCBhbGxvd3MgZnVsbCBkaXNjb3ZlcmFiaWxpdHkgb2YgZXZlcnl0
aGluZyB0aGF0IGENCj4+IGhlYXAgc3VwcG9ydHMgb3IgaXMgY2FwYWJsZSBvZi4gSW5zdGVhZCBp
ZiB0aGUgY2FtZXJhIGhhcyBzcGVjaWZpYw0KPj4gcmVxdWlyZW1lbnRzLCBpdCBjb3VsZCBsb29r
IGZvciBhIGhlYXAgbmFtZWQgImNhbWVyYSIuIE9yIGlmIGl0IGNhbg0KPj4gc2hhcmUgYSBoZWFw
IHdpdGggb3RoZXIgbXVsdGltZWRpYSBkZXZpY2VzLCBtYXliZSBjYWxsIHRoZSBoZWFwDQo+PiAi
bXVsdGltZWRpYSIuDQo+Pg0KPj4gVGhlIGlkZWEgaXMgdGhhdCBoZWFwcyBmb3IgdGhlc2UgdXNl
LWNhc2VzIGFyZSBxdWl0ZSBzcGVjaWZpYywgc28geW91DQo+PiB3b3VsZCBsaWtlbHkgbm90IGZp
bmQgYW4gYXJiaXRyYXJ5IG51bWJlciBvZiBwcm9jZXNzZXMgdHJ5IHRvIHVzZSB0aGUNCj4+IHNh
bWUgaGVhcC4NCj4gWWVhaCB0aGUgaWRlYSB0byBzb3J0IHRoaXMgb3V0IHdhcyB0byBoYXZlIHN5
bWxpbmtzIGluIHN5c2ZzIGZyb20gdGhlDQo+IGRldmljZSB0byBlYWNoIGhlYXAuIFdlIGNvdWxk
IHRoZW4gaGF2ZSBwcmlvcml0aWVzIGZvciBlYWNoIHN1Y2ggbGluaywgc28NCj4gdGhhdCBhcHBs
aWNhdGlvbnMgY2FuIHBpY2sgdGhlICJiZXN0IiBoZWFwIHRoYXQgd2lsbCB3b3JrIHdpdGggYWxs
DQo+IGRldmljZXMuIE9yIGFsc28gc3BlY2lhbCBsaW5rcyBmb3Igc3BlY2lhbCB1c2UtY2FzZXMs
IGxpa2UgZm9yIGENCj4gZGlzcGxheStyZW5kZXIgZHJtIGRldmljZSB5b3UgbWlnaHQgd2FudCB0
byBoYXZlIHNlcGFyYXRlIGxpbmtzIGZvciB0aGUNCj4gZGlzcGxheSBhbmQgdGhlIHJlbmRlci1v
bmx5IHVzZS1jYXNlLg0KPg0KPiBJIHRoaW5rIHRyeWluZyB0byBlbmNvZGUgdGhpcyBhbGwgaW50
byB0aGUgbmFtZSBvZiBhIGhlYXAgd2l0aG91dCBsaW5raW5nDQo+IGl0IHRvIHRoZSBkZXZpY2Ug
aXMgbm90IGdvaW5nIHRvIHdvcmsgd2VsbCBpbiBnZW5lcmFsLg0KPg0KPiBXZSBzdGlsbCBoYXZl
IHRoYXQgZW50aXJlICJtYWtlIHN5c2ZzIHN5bWxpbmtzIHdvcmsgZm9yIGRtYS1idWYgaGVhcHMi
IG9uDQo+IG91ciB0b2RvcywgYW5kIHRoYXQgaWRlYSBpcyBhbG1vc3QgYXMgb2xkIGFzIGRtYS1i
dWYgaXRzZWxmIDotLw0KDQpJIHN0aWxsIGhhdmUgdGhlIGRyYWZ0IHBhdGNoZXMgZm9yIHRoYXQg
bHlpbmcgYXJvdW5kIG9uIG15IGhhcmRkaXNrIA0Kc29tZXdoZXJlIHdpdGggemVybyB0aW1lIHRv
IGxvb2sgaW50byBpdC4NCg0KSWYgYW55Ym9keSB3YW50cyB0byBwaWNrIGl0IHVwIGZlZWwgZnJl
ZSB0byBwaW5nIG1lLCBidXQgYmUgYXdhcmUgdGhhdCANCnlvdSBuZWVkIHRvIHdyaXRlIG1vcmUg
ZG9jdW1lbnRhdGlvbiB0aGFuIGNvZGUuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gLVNp
bWENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
