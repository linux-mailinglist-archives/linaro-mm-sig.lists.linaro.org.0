Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5FE933F5A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jul 2024 17:15:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A8FE42535
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jul 2024 15:15:15 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by lists.linaro.org (Postfix) with ESMTPS id 059064251F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jul 2024 15:15:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Z6RUmhXL;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.208.181) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ee9174c5c0so8372191fa.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jul 2024 08:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1721229310; x=1721834110; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q9HrtX7c96O18IuuXuteBar9YTu3ZWt4dVPqAERO/8M=;
        b=Z6RUmhXLXZRIGoT8HqTiNQN3t0FQnapvMITP+g6Ju5OUENh3CrYfDzkUvplLMsDL9N
         HN0OJvh2h/n6/chPA9pXFQokMYicGJ680Lzpyidwin5t+28IAKUA2J9ChcrdStabBEwz
         hBtX7GSBLDQakw/Pr6gWCokEoGgGOdYCNZFUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721229310; x=1721834110;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9HrtX7c96O18IuuXuteBar9YTu3ZWt4dVPqAERO/8M=;
        b=Clt3reF6gpLbf0YaVwunCwViCSQYguNaFY+Srzt/sR5JtCrod6bSaF43EBOJHAk3gQ
         MQF2qW2pbYc6J4BcL1NdjI+d1C7dzqAkJkF/LZfl7B2t2Fvbib1i2q/DxGRwkcj0SH67
         iGECncdw45cReJplDMZhjSq47DGN1GZtIQL8qIlcTCfe9YzdywR/3CAimTfioovzrcYm
         VEMcsgraHGi+mRdB5OaV/eBIpDTmBZbmMAbfSrF9YcmY2hqux5mZRlRdX6fVdCcBNViC
         9uhA2zDJZdWWoQ6wJlVo+vabp62APDX4zl5N4sXVvrlqw56WczQqXGH8YIwn2jx74vn3
         Ncbw==
X-Forwarded-Encrypted: i=1; AJvYcCWb2yJcQGV28nrwSKA0bNfz3LjppzWGe5XXXXNG1mPoGLq1s3JveBNgo8VuKAJt+X5vMHuXe1fwt1fEAUdOuHmvezlKrt6F2M5aASjEezo=
X-Gm-Message-State: AOJu0YwAi5zixprJ8KKuWVVl3eQv8eJwxD0btYYFp8YpqdTdP4k9BfTs
	Cezafq/SYweoxCTtgOn4DDuESjtwkRsInPUieun6z7IIM3gGk67d44Ed8LgMM0E=
X-Google-Smtp-Source: AGHT+IHMVqpdhwo8cN+q4abV2zZH6SbwUgRNWI5ZHWTuC/QWxkMk42eGNyxkoYfkbRzeOsg/EyRl2Q==
X-Received: by 2002:a05:651c:b1e:b0:2ee:84a1:9be4 with SMTP id 38308e7fff4ca-2eefd06e80amr10752411fa.2.1721229309619;
        Wed, 17 Jul 2024 08:15:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680daccbddsm11974603f8f.64.2024.07.17.08.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 08:15:09 -0700 (PDT)
Date: Wed, 17 Jul 2024 17:15:07 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Huan Yang <link@vivo.com>
Message-ID: <Zpff-8LmqK5AD-a8@phenom.ffwll.local>
Mail-Followup-To: Huan Yang <link@vivo.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
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
 <b18ad853-90e4-4ad7-b621-2ca8a8111708@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b18ad853-90e4-4ad7-b621-2ca8a8111708@vivo.com>
X-Operating-System: Linux phenom 6.9.7-amd64 
X-Rspamd-Queue-Id: 059064251F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.181:from];
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
Message-ID-Hash: LOC64PDJIASMA46C3Z7R2G2LIPFPE7ZK
X-Message-ID-Hash: LOC64PDJIASMA46C3Z7R2G2LIPFPE7ZK
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: heaps: DMA_HEAP_IOCTL_ALLOC_READ_FILE framework
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LOC64PDJIASMA46C3Z7R2G2LIPFPE7ZK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdWwgMTYsIDIwMjQgYXQgMDY6MTQ6NDhQTSArMDgwMCwgSHVhbiBZYW5nIHdyb3Rl
Og0KPiANCj4g5ZyoIDIwMjQvNy8xNiAxNzozMSwgRGFuaWVsIFZldHRlciDlhpnpgZM6DQo+ID4g
W+S9oOmAmuW4uOS4jeS8muaUtuWIsOadpeiHqiBkYW5pZWwudmV0dGVyQGZmd2xsLmNoIOeahOeU
teWtkOmCruS7tuOAguivt+iuv+mXriBodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVySWRl
bnRpZmljYXRpb27vvIzku6Xkuobop6Pov5nkuIDngrnkuLrku4DkuYjlvojph43opoFdDQo+ID4g
DQo+ID4gT24gVHVlLCBKdWwgMTYsIDIwMjQgYXQgMTA6NDg6NDBBTSArMDgwMCwgSHVhbiBZYW5n
IHdyb3RlOg0KPiA+ID4gSSBqdXN0IHJlc2VhcmNoIHRoZSB1ZG1hYnVmLCBQbGVhc2UgY29ycmVj
dCBtZSBpZiBJJ20gd3JvbmcuDQo+ID4gPiANCj4gPiA+IOWcqCAyMDI0LzcvMTUgMjA6MzIsIENo
cmlzdGlhbiBLw7ZuaWcg5YaZ6YGTOg0KPiA+ID4gPiBBbSAxNS4wNy4yNCB1bSAxMToxMSBzY2hy
aWViIERhbmllbCBWZXR0ZXI6DQo+ID4gPiA+ID4gT24gVGh1LCBKdWwgMTEsIDIwMjQgYXQgMTE6
MDA6MDJBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPiA+ID4gPiA+IEFtIDEx
LjA3LjI0IHVtIDA5OjQyIHNjaHJpZWIgSHVhbiBZYW5nOg0KPiA+ID4gPiA+ID4gPiBTb21lIHVz
ZXIgbWF5IG5lZWQgbG9hZCBmaWxlIGludG8gZG1hLWJ1ZiwgY3VycmVudA0KPiA+ID4gPiA+ID4g
PiB3YXkgaXM6DQo+ID4gPiA+ID4gPiA+ICAgICAgMS4gYWxsb2NhdGUgYSBkbWEtYnVmLCBnZXQg
ZG1hLWJ1ZiBmZA0KPiA+ID4gPiA+ID4gPiAgICAgIDIuIG1tYXAgZG1hLWJ1ZiBmZCBpbnRvIHZh
ZGRyDQo+ID4gPiA+ID4gPiA+ICAgICAgMy4gcmVhZChmaWxlX2ZkLCB2YWRkciwgZnN6KQ0KPiA+
ID4gPiA+ID4gPiBUaGlzIGlzIHRvbyBoZWF2eSBpZiBmc3ogcmVhY2hlZCB0byBHQi4NCj4gPiA+
ID4gPiA+IFlvdSBuZWVkIHRvIGRlc2NyaWJlIGEgYml0IG1vcmUgd2h5IHRoYXQgaXMgdG8gaGVh
dnkuIEkgY2FuIG9ubHkNCj4gPiA+ID4gPiA+IGFzc3VtZSB5b3UNCj4gPiA+ID4gPiA+IG5lZWQg
dG8gc2F2ZSBtZW1vcnkgYmFuZHdpZHRoIGFuZCBhdm9pZCB0aGUgZXh0cmEgY29weSB3aXRoIHRo
ZSBDUFUuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gVGhpcyBwYXRjaCBpbXBsZW1lbnQg
YSBmZWF0dXJlIGNhbGxlZCBETUFfSEVBUF9JT0NUTF9BTExPQ19SRUFEX0ZJTEUuDQo+ID4gPiA+
ID4gPiA+IFVzZXIgbmVlZCB0byBvZmZlciBhIGZpbGVfZmQgd2hpY2ggeW91IHdhbnQgdG8gbG9h
ZCBpbnRvDQo+ID4gPiA+ID4gPiA+IGRtYS1idWYsIHRoZW4sDQo+ID4gPiA+ID4gPiA+IGl0IHBy
b21pc2UgaWYgeW91IGdvdCBhIGRtYS1idWYgZmQsIGl0IHdpbGwgY29udGFpbnMgdGhlIGZpbGUg
Y29udGVudC4NCj4gPiA+ID4gPiA+IEludGVyZXN0aW5nIGlkZWEsIHRoYXQgaGFzIGF0IGxlYXN0
IG1vcmUgcG90ZW50aWFsIHRoYW4gdHJ5aW5nDQo+ID4gPiA+ID4gPiB0byBlbmFibGUNCj4gPiA+
ID4gPiA+IGRpcmVjdCBJL08gb24gbW1hcCgpZWQgRE1BLWJ1ZnMuDQo+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+IFRoZSBhcHByb2FjaCB3aXRoIHRoZSBuZXcgSU9DVEwgbWlnaHQgbm90IHdvcmsg
YmVjYXVzZSBpdCBpcyBhIHZlcnkNCj4gPiA+ID4gPiA+IHNwZWNpYWxpemVkIHVzZSBjYXNlLg0K
PiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBCdXQgSUlSQyB0aGVyZSB3YXMgYSBjb3B5X2ZpbGVf
cmFuZ2UgY2FsbGJhY2sgaW4gdGhlIGZpbGVfb3BlcmF0aW9ucw0KPiA+ID4gPiA+ID4gc3RydWN0
dXJlIHlvdSBjb3VsZCB1c2UgZm9yIHRoYXQuIEknbSBqdXN0IG5vdCBzdXJlIHdoZW4gYW5kIGhv
dw0KPiA+ID4gPiA+ID4gdGhhdCdzIHVzZWQNCj4gPiA+ID4gPiA+IHdpdGggdGhlIGNvcHlfZmls
ZV9yYW5nZSgpIHN5c3RlbSBjYWxsLg0KPiA+ID4gPiA+IEknbSBub3Qgc3VyZSBhbnkgb2YgdGhv
c2UgaGVscCwgYmVjYXVzZSBpbnRlcm5hbGx5IHRoZXkncmUgYWxsIHN0aWxsDQo+ID4gPiA+ID4g
YmFzZWQNCj4gPiA+ID4gPiBvbiBzdHJ1Y3QgcGFnZSAob3IgbWF5YmUgaW4gdGhlIGZ1dHVyZSBv
biBmb2xpb3MpLiBBbmQgdGhhdCdzIHRoZSB0aGluZw0KPiA+ID4gPiA+IGRtYS1idWYgY2FuJ3Qg
Z2l2ZSB5b3UsIGF0IGxlYXN0IHdpdGhvdXQgcGVha2luZyBiZWhpbmQgdGhlIGN1cnRhaW4uDQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gSSB0aGluayBhbiBlbnRpcmVseSBkaWZmZXJlbnQgb3B0aW9u
IHdvdWxkIGJlIG1hbGxvYyt1ZG1hYnVmLiBUaGF0DQo+ID4gPiA+ID4gZXNzZW50aWFsbHkgaGFu
ZGxlcyB0aGUgaW1wZW5kZW5jZS1taXNtYXRjaCBiZXR3ZWVuIGRpcmVjdCBJL08gYW5kDQo+ID4g
PiA+ID4gZG1hLWJ1Zg0KPiA+ID4gPiA+IG9uIHRoZSBkbWEtYnVmIHNpZGUuIFRoZSBkb3duc2lk
ZSBpcyB0aGF0IGl0J2xsIG1ha2UgdGhlIHBlcm1hbmVudGx5DQo+ID4gPiA+ID4gcGlubmVkIG1l
bW9yeSBhY2NvdW50aW5nIGFuZCB0cmFja2luZyBpc3N1ZXMgZXZlbiBtb3JlIGFwcGFyZW50LCBi
dXQgSQ0KPiA+ID4gPiA+IGd1ZXNzIGV2ZW50dWFsbHkgd2UgZG8gbmVlZCB0byBzb3J0IHRoYXQg
b25lIG91dC4NCj4gPiA+ID4gT2gsIHZlcnkgZ29vZCBpZGVhIQ0KPiA+ID4gPiBKdXN0IG9uZSBt
aW5vciBjb3JyZWN0aW9uOiBpdCdzIG5vdCBtYWxsb2MrdWRtYWJ1ZiwgYnV0IHJhdGhlcg0KPiA+
ID4gPiBjcmVhdGVfbWVtZmQoKSt1ZG1hYnVmLg0KPiA+IEhtIHJpZ2h0LCBpdCdzIGNyZWF0ZV9t
ZW1mZCgpICsgbW1hcChtZW1mZCkgKyB1ZG1hYnVmDQo+ID4gDQo+ID4gPiA+IEFuZCB5b3UgbmVl
ZCB0byBjb21wbGV0ZSB5b3VyIGRpcmVjdCBJL08gYmVmb3JlIGNyZWF0aW5nIHRoZSB1ZG1hYnVm
DQo+ID4gPiA+IHNpbmNlIHRoYXQgcmVmZXJlbmNlIHdpbGwgcHJldmVudCBkaXJlY3QgSS9PIGZy
b20gd29ya2luZy4NCj4gPiA+IHVkbWFidWYgd2lsbCBwaW4gYWxsIHBhZ2VzLCBzbywgaWYgcmV0
dXJuZWQgZmQsIGNhbid0IHRyaWdnZXIgZGlyZWN0IEkvTw0KPiA+ID4gKHNhbWUgYXMgZG1hYnVm
KS4gU28sIG11c3QgY29tcGxldGUgcmVhZCBiZWZvcmUgcGluIGl0Lg0KPiA+IFdoeSBkb2VzIHBp
bm5pbmcgcHJldmVudCBkaXJlY3QgSS9PPyBJIGhhdmVuJ3QgdGVzdGVkLCBidXQgSSdkIGV4cGVj
dCB0aGUNCj4gPiByZG1hIGZvbGtzIHdvdWxkIGJlIHJlYWxseSBhbm5veWVkIGlmIHRoYXQncyB0
aGUgY2FzZSAuLi4NCj4gPiANCj4gPiA+IEJ1dCBjdXJyZW50IHdheSBpcyB1c2UgYG1lbWZkX3Bp
bl9mb2xpb3NgIHRvIGJvb3N0IGFsbG9jIGFuZCBwaW4sIHNvIG1heWJlDQo+ID4gPiBuZWVkIHN1
aXQgaXQuDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gSSBjdXJyZW50bHkgZG91YnQgdGhhdCB0aGUg
dWRtYWJ1ZiBzb2x1dGlvbiBpcyBzdWl0YWJsZSBmb3Igb3VyDQo+ID4gPiBnaWdhYnl0ZS1sZXZl
bCByZWFkIG9wZXJhdGlvbnMuDQo+ID4gPiANCj4gPiA+IDEuIFRoZSBjdXJyZW50IG1tYXAgb3Bl
cmF0aW9uIHVzZXMgZmF1bHRpbmcsIHNvIGZyZXF1ZW50IHBhZ2UgZmF1bHRzIHdpbGwgYmUNCj4g
PiA+IHRyaWdnZXJlZCBkdXJpbmcgcmVhZHMsIHJlc3VsdGluZyBpbiBhIGxvdCBvZiBjb250ZXh0
IHN3aXRjaGluZyBvdmVyaGVhZC4NCj4gPiA+IA0KPiA+ID4gMi4gY3VycmVudCB1ZG1hYnVmIHNp
emUgbGltaXQgaXMgNjRNQiwgZXZlbiBjYW4gY2hhbmdlLCBtYXliZSBub3QgZ29vZCB0bw0KPiA+
ID4gdXNlIGluIGxhcmdlIHNpemU/DQo+ID4gWWVhaCB0aGF0J3MganVzdCBhIGZpZ2xlYWYgc28g
d2UgZG9uJ3QgaGF2ZSB0byBib3RoZXIgYWJvdXQgdGhlIGFjY291bnRpbmcNCj4gPiBpc3N1ZS4N
Cj4gPiANCj4gPiA+IDMuIFRoZSBtaWdyYXRpb24gYW5kIGFkYXB0YXRpb24gb2YgdGhlIGRyaXZl
ciBpcyBhbHNvIGEgY2hhbGxlbmdlLCBhbmQNCj4gPiA+IGN1cnJlbnRseSwgd2UgYXJlIHVuYWJs
ZSB0byBjb250cm9sIGl0Lg0KPiA+IFdoeSBkb2VzIGEgdWRtYWJ1ZiBmZCBub3Qgd29yayBpbnN0
ZWFkIG9mIGFueSBvdGhlciBkbWFidWYgZmQ/IFRoYXQNCj4gPiBzaG91bGRuJ3QgbWF0dGVyIGZv
ciB0aGUgY29uc3VtaW5nIGRyaXZlciAuLi4NCj4gDQo+IEhtbSwgb3VyIHByb2R1Y3Rpb24ncyBk
cml2ZXIgcHJvdmlkZXIgYnkgb3RoZXIgb2VtLiBJIHNlZSBtYW55IG9mIHRoZXkNCj4gaW1wbGVt
ZW50DQo+IA0KPiB0aGVpciBvd24gZG1hX2J1Zl9vcHMuwqAgVGhlc2UgbWF5IG5vdCBiZSBnZW5l
cmljIGFuZCBtYXkgcmVxdWlyZSB0aGVtIHRvDQo+IHJlaW1wbGVtZW50Lg0KDQpZZWFoLCBmb3Ig
ZXhwb3J0aW5nIGEgYnVmZmVyIG9iamVjdCBhbGxvY2F0ZWQgYnkgdGhhdCBkcml2ZXIuIEJ1dCBh
bnkNCmNvbXBldGVudCBnbGVzL3ZrIHN0YWNrIGFsc28gc3VwcG9ydHMgaW1wb3J0aW5nIGRtYS1i
dWYsIGFuZCB0aGF0IHNob3VsZA0Kd29yayB3aXRoIHVkbWFidWYgZXhhY3RseSB0aGUgc2FtZSB3
YXkgYXMgd2l0aCBhIGRtYS1idWYgYWxsb2NhdGVkIGZyb20NCnRoZSBzeXN0ZW0gaGVhcC4NCg0K
PiA+ID4gUGVyaGFwcyBpbXBsZW1lbnRpbmcgYGNvcHlfZmlsZV9yYW5nZWAgd291bGQgYmUgbW9y
ZSBzdWl0YWJsZSBmb3IgdXMuDQo+ID4gU2VlIG15IG90aGVyIG1haWwsIGZ1bmRhbWVudGFsbHkg
dGhlc2UgYWxsIHJlbHkgb24gc3RydWN0IHBhZ2UgYmVpbmcNCj4gPiBwcmVzZW50LCBhbmQgZG1h
LWJ1ZiBkb2Vzbid0IGdpdmUgeW91IHRoYXQuIFdoaWNoIG1lYW5zIHlvdSBuZWVkIHRvIGdvDQo+
ID4gYmVsb3cgdGhlIGRtYS1idWYgYWJzdHJhY3Rpb24uIEFuZCB1ZG1hYnVmIGlzIHByZXR0eSBt
dWNoIHRoZSB0aGluZyBmb3INCj4gPiB0aGF0LCBiZWNhdXNlIGl0IHdyYXBzIG5vcm1hbCBzdHJ1
Y3QgcGFnZSBtZW1vcnkgaW50byBhIGRtYWJ1Zi4NCj4gWWVzLCB1ZG1hYnVmIGdpdmUgdGhpcywg
SSBhbSB2ZXJ5IGludGVyZXN0ZWQgaW4gd2hldGhlciB0aGUgcGFnZSBwcm92aWRlZCBieQ0KPiB1
ZG1hYnVmIGNhbiB0cmlnZ2VyIGRpcmVjdCBJL08uDQo+IA0KPiBTbywgSSdsbCBnaXZlIGEgdGVz
dCBhbmQgcmVwb3J0IHNvb24uDQo+ID4gDQo+ID4gQW5kIGNvcHlfZmlsZV9yYW5nZSBvbiB0aGUg
dW5kZXJseWluZyBtZW1mZCBtaWdodCBhbHJlYWR5IHdvcmssIEkgaGF2ZW4ndA0KPiA+IGNoZWNr
ZWQgdGhvdWdoLg0KPiANCj4gSSBoYXZlIGRvdWJ0cy4NCj4gDQo+IEkgcmVjZW50bHkgdGVzdGVk
IGFuZCBmb3VuZCB0aGF0IEkgbmVlZCB0byBtb2RpZnkgbWFueSBwbGFjZXMgaW4NCj4gdmZzX2Nv
cHlfZmlsZV9yYW5nZSBpbiBvcmRlciB0byBydW4gdGhlIGNvcHkgZmlsZSByYW5nZSB3aXRoIERN
QV9CVUYgZmQuKEkNCj4gaGF2ZSBtYW5hZ2VkIHRvIGdldCBpdCB3b3JraW5nLA0KDQpJJ20gdGFs
a2luZyBhYm91dCBtZW1mZCwgbm90IGRtYS1idWYgaGVyZS4gSSB0aGluayBjb3B5X2ZpbGVfcmFu
Z2UgdG8NCmRtYS1idWYgaXMgYXMgYXJjaGl0ZWN0dXJhbGx5IHVuc291bmQgYXMgYWxsb3dpbmcg
T19ESVJFQ1Qgb24gdGhlIGRtYS1idWYNCm1tYXAuDQoNCkNoZWVycywgU2ltYQ0KDQo+IGJ1dCBJ
IGRvbid0IHRoaW5rIHRoZSBpbXBsZW1lbnRhdGlvbiBpcyBnb29kIGVub3VnaCwgc28gSSBjYW4n
dCBwcm92aWRlIHRoZQ0KPiBzb3VyY2UgY29kZS4pDQo+IA0KPiBNYXliZSBtZW1mZCBjYW4gd29y
ayBvciBub3QsIGxldCdzIGdpdmUgaXQgYSB0ZXN0LjopDQo+IA0KPiBBbnl3YXksIGl0J3MgYSBn
b29kIGlkZWEgdG9vLiBJIGN1cnJlbnRseSBuZWVkIHRvIGZvY3VzIG9uIHdoZXRoZXIgaXQgY2Fu
IGJlDQo+IGFjaGlldmVkLCBhcyB3ZWxsIGFzIHRoZSBwZXJmb3JtYW5jZSBjb21wYXJpc29uLg0K
PiANCj4gPiANCj4gPiBDaGVlcnMsIFNpbWENCj4gPiAtLQ0KPiA+IERhbmllbCBWZXR0ZXINCj4g
PiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24NCj4gPiBodHRwOi8vYmxvZy5m
ZndsbC5jaC8NCg0KLS0gDQpEYW5pZWwgVmV0dGVyDQpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24NCmh0dHA6Ly9ibG9nLmZmd2xsLmNoDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
