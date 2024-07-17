Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B2C933F7F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jul 2024 17:23:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3161B4251D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jul 2024 15:23:29 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by lists.linaro.org (Postfix) with ESMTPS id 227654251A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jul 2024 15:23:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Tlj2fd5C;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.208.180) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ee92e3a4efso7019851fa.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jul 2024 08:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1721229804; x=1721834604; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k8FiZ3Q3HqoLocenTRjlmRJv2b/Y73q4whh/GunuTuQ=;
        b=Tlj2fd5CagQ8yopH848yn22ooMAyBtsQi460fSMQ3VDO7JoJ7qU2gDO8qdrLOIzzmp
         91nFIv5yppHMGwWwPbzBqFM/Lm8/AprC8O5BovriuPbUIUkujPwU0kIPGtUyk6sAT7c1
         7hGbsr+mEfq30Z+0PAt8v472VnmHcUpbhz98I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721229804; x=1721834604;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k8FiZ3Q3HqoLocenTRjlmRJv2b/Y73q4whh/GunuTuQ=;
        b=uX2t1l8Ef9Ey9Jjoe1uJPhYtKrwMv2bG7WoM1w9rgQfJ1CTJlmMpuIEQoFsEzIrUL3
         nu8ByGyrCjZF66ORNZgyLEkxSlTQu5qQ+oiLAzjgmISSqwvib+ah2JIMkO5vWGY9gPFQ
         mKK+V55UE3DEY8XK330hIK5UYT5jHR0erNauuBJP3xqwnkv2m1bTtIDlIYSUDkBq6Dna
         PGrZYpG09Q9lLQVpTESUr+1Ni9i5MG8i9pRATXJl1K3s7g34say94JfhHl6Ees0aJLXX
         TNpWXHqSRaP8BLHjnsiWYuGMRANV0HOITSfiyaCKDix/5pv0BX3ZRlIsbEYXGjXxP1it
         xnvg==
X-Forwarded-Encrypted: i=1; AJvYcCXiFC24ptIuMM0zandriBzLX1hBtjsMMO12NX1N3fsBR5h1dIqb4zXtuF3UwI/TWWucJuftDga9bB4PVVSvXxSsWbUcW7AtU3c9cHdvwv0=
X-Gm-Message-State: AOJu0YwCni6HniYDQh18xSc0GQ9+YbzjKfHb7sVbPdOKF2zDby/7B25N
	kng5XzwRN68iIq0yLwofMoDRkxXi30BF5ZTs2p2C1gXrD59kqqqBgYKkv4G6t8g=
X-Google-Smtp-Source: AGHT+IFlciore1y+UQYW9Y0jJvuXHRLOrrsV/Ezh+JQR+RR7GejszYwFg+tRXO6qV2PyKO3GaAOQcA==
X-Received: by 2002:a2e:a552:0:b0:2ee:e196:1486 with SMTP id 38308e7fff4ca-2eefd139261mr10209451fa.4.1721229803749;
        Wed, 17 Jul 2024 08:23:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680dabf539sm12004669f8f.47.2024.07.17.08.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 08:23:23 -0700 (PDT)
Date: Wed, 17 Jul 2024 17:23:21 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <Zpfh6VoBWwjteRUR@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Huan Yang <link@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
References: <20240711074221.459589-1-link@vivo.com>
 <20240711074221.459589-2-link@vivo.com>
 <5ccbe705-883c-4651-9e66-6b452c414c74@amd.com>
 <ZpTnzkdolpEwFbtu@phenom.ffwll.local>
 <99364176-a7f0-4a17-8889-75ff92d5694e@amd.com>
 <06713006-c5ce-4773-a1b3-ca3bea56ee45@vivo.com>
 <ZpY-CfcDdEhzWpxN@phenom.ffwll.local>
 <d3ad46ea-df7f-4402-b48a-349e957f198b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3ad46ea-df7f-4402-b48a-349e957f198b@amd.com>
X-Operating-System: Linux phenom 6.9.7-amd64 
X-Rspamd-Queue-Id: 227654251A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.180:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2LJJJ6WVGMA3QBBTC2URWIBHHIKJBC4C
X-Message-ID-Hash: 2LJJJ6WVGMA3QBBTC2URWIBHHIKJBC4C
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Huan Yang <link@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: heaps: DMA_HEAP_IOCTL_ALLOC_READ_FILE framework
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2LJJJ6WVGMA3QBBTC2URWIBHHIKJBC4C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdWwgMTYsIDIwMjQgYXQgMDI6MDc6MjBQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gQW0gMTYuMDcuMjQgdW0gMTE6MzEgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0K
PiA+IE9uIFR1ZSwgSnVsIDE2LCAyMDI0IGF0IDEwOjQ4OjQwQU0gKzA4MDAsIEh1YW4gWWFuZyB3
cm90ZToNCj4gPiA+IEkganVzdCByZXNlYXJjaCB0aGUgdWRtYWJ1ZiwgUGxlYXNlIGNvcnJlY3Qg
bWUgaWYgSSdtIHdyb25nLg0KPiA+ID4gDQo+ID4gPiDlnKggMjAyNC83LzE1IDIwOjMyLCBDaHJp
c3RpYW4gS8O2bmlnIOWGmemBkzoNCj4gPiA+ID4gQW0gMTUuMDcuMjQgdW0gMTE6MTEgc2Nocmll
YiBEYW5pZWwgVmV0dGVyOg0KPiA+ID4gPiA+IE9uIFRodSwgSnVsIDExLCAyMDI0IGF0IDExOjAw
OjAyQU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gPiA+ID4gPiBBbSAxMS4w
Ny4yNCB1bSAwOTo0MiBzY2hyaWViIEh1YW4gWWFuZzoNCj4gPiA+ID4gPiA+ID4gU29tZSB1c2Vy
IG1heSBuZWVkIGxvYWQgZmlsZSBpbnRvIGRtYS1idWYsIGN1cnJlbnQNCj4gPiA+ID4gPiA+ID4g
d2F5IGlzOg0KPiA+ID4gPiA+ID4gPiAgwqDCoMKgIDEuIGFsbG9jYXRlIGEgZG1hLWJ1ZiwgZ2V0
IGRtYS1idWYgZmQNCj4gPiA+ID4gPiA+ID4gIMKgwqDCoCAyLiBtbWFwIGRtYS1idWYgZmQgaW50
byB2YWRkcg0KPiA+ID4gPiA+ID4gPiAgwqDCoMKgIDMuIHJlYWQoZmlsZV9mZCwgdmFkZHIsIGZz
eikNCj4gPiA+ID4gPiA+ID4gVGhpcyBpcyB0b28gaGVhdnkgaWYgZnN6IHJlYWNoZWQgdG8gR0Iu
DQo+ID4gPiA+ID4gPiBZb3UgbmVlZCB0byBkZXNjcmliZSBhIGJpdCBtb3JlIHdoeSB0aGF0IGlz
IHRvIGhlYXZ5LiBJIGNhbiBvbmx5DQo+ID4gPiA+ID4gPiBhc3N1bWUgeW91DQo+ID4gPiA+ID4g
PiBuZWVkIHRvIHNhdmUgbWVtb3J5IGJhbmR3aWR0aCBhbmQgYXZvaWQgdGhlIGV4dHJhIGNvcHkg
d2l0aCB0aGUgQ1BVLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IFRoaXMgcGF0Y2ggaW1w
bGVtZW50IGEgZmVhdHVyZSBjYWxsZWQgRE1BX0hFQVBfSU9DVExfQUxMT0NfUkVBRF9GSUxFLg0K
PiA+ID4gPiA+ID4gPiBVc2VyIG5lZWQgdG8gb2ZmZXIgYSBmaWxlX2ZkIHdoaWNoIHlvdSB3YW50
IHRvIGxvYWQgaW50bw0KPiA+ID4gPiA+ID4gPiBkbWEtYnVmLCB0aGVuLA0KPiA+ID4gPiA+ID4g
PiBpdCBwcm9taXNlIGlmIHlvdSBnb3QgYSBkbWEtYnVmIGZkLCBpdCB3aWxsIGNvbnRhaW5zIHRo
ZSBmaWxlIGNvbnRlbnQuDQo+ID4gPiA+ID4gPiBJbnRlcmVzdGluZyBpZGVhLCB0aGF0IGhhcyBh
dCBsZWFzdCBtb3JlIHBvdGVudGlhbCB0aGFuIHRyeWluZw0KPiA+ID4gPiA+ID4gdG8gZW5hYmxl
DQo+ID4gPiA+ID4gPiBkaXJlY3QgSS9PIG9uIG1tYXAoKWVkIERNQS1idWZzLg0KPiA+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gPiBUaGUgYXBwcm9hY2ggd2l0aCB0aGUgbmV3IElPQ1RMIG1pZ2h0IG5v
dCB3b3JrIGJlY2F1c2UgaXQgaXMgYSB2ZXJ5DQo+ID4gPiA+ID4gPiBzcGVjaWFsaXplZCB1c2Ug
Y2FzZS4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gQnV0IElJUkMgdGhlcmUgd2FzIGEgY29w
eV9maWxlX3JhbmdlIGNhbGxiYWNrIGluIHRoZSBmaWxlX29wZXJhdGlvbnMNCj4gPiA+ID4gPiA+
IHN0cnVjdHVyZSB5b3UgY291bGQgdXNlIGZvciB0aGF0LiBJJ20ganVzdCBub3Qgc3VyZSB3aGVu
IGFuZCBob3cNCj4gPiA+ID4gPiA+IHRoYXQncyB1c2VkDQo+ID4gPiA+ID4gPiB3aXRoIHRoZSBj
b3B5X2ZpbGVfcmFuZ2UoKSBzeXN0ZW0gY2FsbC4NCj4gPiA+ID4gPiBJJ20gbm90IHN1cmUgYW55
IG9mIHRob3NlIGhlbHAsIGJlY2F1c2UgaW50ZXJuYWxseSB0aGV5J3JlIGFsbCBzdGlsbA0KPiA+
ID4gPiA+IGJhc2VkDQo+ID4gPiA+ID4gb24gc3RydWN0IHBhZ2UgKG9yIG1heWJlIGluIHRoZSBm
dXR1cmUgb24gZm9saW9zKS4gQW5kIHRoYXQncyB0aGUgdGhpbmcNCj4gPiA+ID4gPiBkbWEtYnVm
IGNhbid0IGdpdmUgeW91LCBhdCBsZWFzdCB3aXRob3V0IHBlYWtpbmcgYmVoaW5kIHRoZSBjdXJ0
YWluLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEkgdGhpbmsgYW4gZW50aXJlbHkgZGlmZmVyZW50
IG9wdGlvbiB3b3VsZCBiZSBtYWxsb2MrdWRtYWJ1Zi4gVGhhdA0KPiA+ID4gPiA+IGVzc2VudGlh
bGx5IGhhbmRsZXMgdGhlIGltcGVuZGVuY2UtbWlzbWF0Y2ggYmV0d2VlbiBkaXJlY3QgSS9PIGFu
ZA0KPiA+ID4gPiA+IGRtYS1idWYNCj4gPiA+ID4gPiBvbiB0aGUgZG1hLWJ1ZiBzaWRlLiBUaGUg
ZG93bnNpZGUgaXMgdGhhdCBpdCdsbCBtYWtlIHRoZSBwZXJtYW5lbnRseQ0KPiA+ID4gPiA+IHBp
bm5lZCBtZW1vcnkgYWNjb3VudGluZyBhbmQgdHJhY2tpbmcgaXNzdWVzIGV2ZW4gbW9yZSBhcHBh
cmVudCwgYnV0IEkNCj4gPiA+ID4gPiBndWVzcyBldmVudHVhbGx5IHdlIGRvIG5lZWQgdG8gc29y
dCB0aGF0IG9uZSBvdXQuDQo+ID4gPiA+IE9oLCB2ZXJ5IGdvb2QgaWRlYSENCj4gPiA+ID4gSnVz
dCBvbmUgbWlub3IgY29ycmVjdGlvbjogaXQncyBub3QgbWFsbG9jK3VkbWFidWYsIGJ1dCByYXRo
ZXINCj4gPiA+ID4gY3JlYXRlX21lbWZkKCkrdWRtYWJ1Zi4NCj4gPiBIbSByaWdodCwgaXQncyBj
cmVhdGVfbWVtZmQoKSArIG1tYXAobWVtZmQpICsgdWRtYWJ1Zg0KPiA+IA0KPiA+ID4gPiBBbmQg
eW91IG5lZWQgdG8gY29tcGxldGUgeW91ciBkaXJlY3QgSS9PIGJlZm9yZSBjcmVhdGluZyB0aGUg
dWRtYWJ1Zg0KPiA+ID4gPiBzaW5jZSB0aGF0IHJlZmVyZW5jZSB3aWxsIHByZXZlbnQgZGlyZWN0
IEkvTyBmcm9tIHdvcmtpbmcuDQo+ID4gPiB1ZG1hYnVmIHdpbGwgcGluIGFsbCBwYWdlcywgc28s
IGlmIHJldHVybmVkIGZkLCBjYW4ndCB0cmlnZ2VyIGRpcmVjdCBJL08NCj4gPiA+IChzYW1lIGFz
IGRtYWJ1ZikuIFNvLCBtdXN0IGNvbXBsZXRlIHJlYWQgYmVmb3JlIHBpbiBpdC4NCj4gPiBXaHkg
ZG9lcyBwaW5uaW5nIHByZXZlbnQgZGlyZWN0IEkvTz8gSSBoYXZlbid0IHRlc3RlZCwgYnV0IEkn
ZCBleHBlY3QgdGhlDQo+ID4gcmRtYSBmb2xrcyB3b3VsZCBiZSByZWFsbHkgYW5ub3llZCBpZiB0
aGF0J3MgdGhlIGNhc2UgLi4uDQo+IA0KPiBQaW5uaW5nIChvciByYXRoZXIgdGFraW5nIGFub3Ro
ZXIgcGFnZSByZWZlcmVuY2UpIHByZXZlbnRzIHdyaXRlcyBmcm9tIHVzaW5nDQo+IGRpcmVjdCBJ
L08gYmVjYXVzZSB3cml0ZXMgdHJ5IHRvIGZpbmQgYWxsIHJlZmVyZW5jZXMgYW5kIG1ha2UgdGhl
bSByZWFkIG9ubHkNCj4gc28gdGhhdCBub2JvZHkgbW9kaWZpZXMgdGhlIGNvbnRlbnQgd2hpbGUg
dGhlIHdyaXRlIGlzIGRvbmUuDQoNCldoZXJlIGRvIHlvdSBzZWUgdGhhdCBoYXBwZW4/IFRoYXQn
cyBjb3VudGVyIHRvIG15IHVuZGVyc3RhZGluZyBvZiB3aGF0DQpwaW5fdXNlcl9wYWdlKCkgZG9l
cywgd2hpY2ggaXMgd2hhdCBkaXJlY3QgSS9PIHVzZXMgLi4uDQoNCj4gQXMgZmFyIGFzIEkga25v
dyB0aGUgc2FtZSBhcHByb2FjaCBpcyB1c2VkIGZvciBOVU1BIG1pZ3JhdGlvbiBhbmQgcmVwbGFj
aW5nDQo+IHNtYWxsIHBhZ2VzIHdpdGggYmlnIG9uZXMgaW4gVEhQLiBCdXQgZm9yIHRoZSByZWFk
IGNhc2UgaGVyZSBpdCBzaG91bGQgc3RpbGwNCj4gd29yay4NCg0KWWVhaCBlbGV2YXRlZCByZWZj
b3VudCBicmVha3MgbWlncmF0aW9uLCBidXQgdGhhdCdzIGVudGlyZWx5IGRpZmZlcmVudA0KZnJv
bSB0aGUgZGlyZWN0IEkvTyB1c2UtY2FzZS4gQ291bnQgbWUgc29tZXdoYXQgY29uZnVzZWQuDQot
U2ltYQ0KLS0gDQpEYW5pZWwgVmV0dGVyDQpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9y
YXRpb24NCmh0dHA6Ly9ibG9nLmZmd2xsLmNoDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
