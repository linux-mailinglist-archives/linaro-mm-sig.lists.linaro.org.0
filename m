Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D90F90EB4F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 14:42:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44F3144F55
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 12:42:30 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 39C5B4400D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 12:42:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=E49rx5b4;
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-421eab59723so47206915e9.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 05:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718800946; x=1719405746; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SByv/3h9r3a4Qn4WiJyJL8zDWTb94P7sc74/rI4gJdE=;
        b=E49rx5b46gQfWq0VCYuHy5yRZ/J//B9GP0KUuMFXPQ20mx1ztLLnm3tfohZMBvxMzQ
         4rC6GX0RbvZPLht3VaZFGPeUZez9PGLvlqQTWbxVPugx/IsJkEFQCrilpwHyeIrQ4409
         i0hvpQ2qQ19y7YzxPq+Z661iSrccTsprhVnGR1CD/BJgPpTOHn5KBtcpDGm/CXWsL+Jo
         SlNWEJDsbyFql4qq6SL51ueU2d1z8XXr+YkBWPdePqFrHNcLSy7KM+Dx/0g/m4JbIeXL
         RHCs0Tj91+Bb6+AeG10e7Rt5qNn2Xn9/O3UJWu3HbTbw6lnyL/6jrO5OWn3iHroz0pdM
         8clA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718800946; x=1719405746;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SByv/3h9r3a4Qn4WiJyJL8zDWTb94P7sc74/rI4gJdE=;
        b=HhxBO5JGIah8Iat4bo742hkx7zS0b+Uy7yfhCp5bUvCACwt1IMVdKcyFlFy72ceN0z
         lzwnhftwhXLRsUz9vkX/C/UBK7zcbat9zYmHiubaf49w7X2rodZNI6DUoUMGXNa6ZRzy
         DwCnvUQnkGirbCUZSgQoWtS9FmHI4F51Ms9rdDax3ZxA3coXdzc75Wy8GIKA/kWRW7mD
         YV1Oqw7pCDNBPH7/jEg0WLXnla57G4A0OecozejUCUf5AjjvNEkUazyBaKb9Hg7f1R5X
         57pAye7QhMJaJCns9dClPcZsP+CS0XzViGNmXvLfWzI8Y70LWKi+SK1GrAWuB1RmAwzE
         oU+g==
X-Forwarded-Encrypted: i=1; AJvYcCVLC2GWk6PwCmXC/WYH6OcQpktr8337Q/vdGDFrP4aWwpepzMOZ0VQ5Gf77PdVHFOs3mavg6W2WjBsxeq/45wfLprsFR2N9XeXZAFFvBpg=
X-Gm-Message-State: AOJu0YxeU9uXWhPSs4RdrSH9J4sMISD3folZlFfAj0WbvzGYnw5gYyD0
	5Zjg43vZYxctddRaQVT00+d1NgonU4urjUBTyZ8nk9jtiWVSOUGi
X-Google-Smtp-Source: AGHT+IF/Ojl1lCzIwbb45P/jSm86hTqAzckOlwd+zvudCih8xPEeyV/X1b+GBHx7mkaxSTjUHPDwzQ==
X-Received: by 2002:a5d:5259:0:b0:35f:1f13:9638 with SMTP id ffacd0b85a97d-36317898472mr1843020f8f.28.1718800945924;
        Wed, 19 Jun 2024 05:42:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:35f9:9001:40df:88bb:5090:7ab6? ([2001:a61:35f9:9001:40df:88bb:5090:7ab6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36075104b8bsm17125682f8f.105.2024.06.19.05.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 05:42:25 -0700 (PDT)
Message-ID: <412eb0f294b4bdef69b0d988e8f1c8a36c29d22e.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Paul Cercueil <paul@crapouillou.net>, Markus Elfring
 <Markus.Elfring@web.de>,  lkp@intel.com, Nuno =?ISO-8859-1?Q?S=E1?=
 <nuno.sa@analog.com>,  linux-iio@vger.kernel.org,
 dmaengine@vger.kernel.org,  linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  linaro-mm-sig@lists.linaro.org, Christian
 =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal
 <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
Date: Wed, 19 Jun 2024 14:42:24 +0200
In-Reply-To: <15edbedcac80961ec9b7834041e54143657cd48b.camel@crapouillou.net>
References: <202406191014.9JAzwRV6-lkp@intel.com>
	 <a4dd1d73-5af3-4d3d-8c0f-92dc439fa119@web.de>
	 <d452ecc4fc703a1f98aa4f243c6ded7fbfe54b0e.camel@crapouillou.net>
	 <cbcfb64a-e5c2-41a7-8847-227d4f6872de@web.de>
	 <e948cd137da8e4f97bfbf7ef68a5450476aeee0c.camel@crapouillou.net>
	 <41fa9904-28a8-46fa-bf2a-014875409b83@web.de>
	 <15edbedcac80961ec9b7834041e54143657cd48b.camel@crapouillou.net>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 39C5B4400D
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[crapouillou.net,web.de,intel.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,kernel.org,metafoo.de,linaro.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Z7F4PNFK73D4EOWMMBXA6HEBUZGQACH2
X-Message-ID-Hash: Z7F4PNFK73D4EOWMMBXA6HEBUZGQACH2
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z7F4PNFK73D4EOWMMBXA6HEBUZGQACH2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDI0LTA2LTE5IGF0IDE0OjIxICswMjAwLCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0K
PiBMZSBtZXJjcmVkaSAxOSBqdWluIDIwMjQgw6AgMTM6NTYgKzAyMDAsIE1hcmt1cyBFbGZyaW5n
IGEgw6ljcml0wqA6DQo+ID4g4oCmDQo+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1paW8vMjE5YWJjNDNiNGZkZDRhMTNiMzA3ZWQyZWZhYTBlNjg2OWU2OGUzZi5jYW1lbEBnbWFp
bC5jb20vVC8jZWVmZDM2MDA2OWM0MjYxYWVjOTYyMWZhZmRlMzA5MjQ3MDY1NzFjOTQNCj4gPiA+
IA0KPiA+ID4gKGFuZCByZXNwb25zZXMgYmVsb3cpDQo+ID4gPiANCj4gPiA+IEl0J3MgbW9yZSBu
dWFuY2VkIHRoYW4gSSByZW1lbWJlcmVkLg0KPiA+IOKApg0KPiA+IA0KPiA+IA0KPiA+ID4gPiAq
IFdpbGwgdGhlIGRlc2lyZSBncm93IGZvciBmdXJ0aGVyIGNvbGxhdGVyYWwgZXZvbHV0aW9uIGFj
Y29yZGluZw0KPiA+ID4gPiB0bw0KPiA+ID4gPiDCoCBhZmZlY3RlZCBzb2Z0d2FyZSBjb21wb25l
bnRzPw0KPiA+ID4gDQo+ID4gPiBOb3Qgc3VyZSB3aGF0IHlvdSBtZWFuIGJ5IHRoYXQuDQo+ID4g
DQo+ID4gQWR2YW5jZWQgcHJvZ3JhbW1pbmcgaW50ZXJmYWNlcyB3ZXJlIGFkZGVkIGEgd2hpbGUg
YWdvLg0KPiA+IA0KPiA+IEV4YW1wbGU6DQo+ID4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20v
bGludXgvdjYuMTAtcmM0L3NvdXJjZS9pbmNsdWRlL2xpbnV4L2NsZWFudXAuaCNMOA0KPiA+IA0K
PiA+IENvcnJlc3BvbmRpbmcgYXR0ZW1wdHMgZm9yIGluY3JlYXNpbmcgQVBJIHVzYWdlIG5lZWQg
dG8gYWRhcHQgdG8NCj4gPiByZW1haW5pbmcgY2hhbmdlIHJlbHVjdGFuY2UsDQo+ID4gZG9uJ3Qg
dGhleT8NCj4gDQo+IFN1cmUsIEkgZ3Vlc3MuDQo+IA0KPiBCdXQgdGhhdCBkb2VzIG5vdCBjaGFu
Z2UgdGhlIGZhY3QgdGhhdCBJIGNhbm5vdCB1c2UgY2xlYW51cC5oIG1hZ2ljIGluDQo+IHRoaXMg
cGF0Y2hzZXQsIHlldCwgYXMgdGhlIHJlcXVpcmVkIGNoYW5nZXMgd291bGQgaGF2ZSB0byBiZSBk
b25lIGluIGENCj4gc2VwYXJhdGUgb25lLg0KPiANCj4gDQpOb3QgdG8gc3BlYWsgb24gdGhlIGFk
ZGVkIGNodXJuIGluIGRvaW5nIHRoYXQgbm93LiBUaGlzIGlzIGFscmVhZHkgdjExIGFuZA0KY29t
cGxpY2F0ZWQgZW5vdWdoIGZvciB1cyB0byBhZGQgYW5vdGhlciBkZXBlbmRlbmN5Lg0KDQpNb3Jl
b3ZlciwgeWVzLCBjbGVhbnVwIHN0dWZmIGlzIHZlcnkgbmljZSBidXQgaWYgc29tZSBpbnRlcmZh
Y2UvQVBJIGRvZXMgbm90IHN1cHBvcnQNCml0LCBpdCdzIG5vdCB1cCB0byB0aGUgZGV2ZWxvcGVy
IHVzaW5nIHRoYXQgaW50ZXJmYWNlL0FQSSBvbiBzb21lIG90aGVyIHBhdGNoIHNlcmllcw0KdG8g
YWRkIHN1cHBvcnQgZm9yIGl0Lg0KDQotIE51bm8gU8OhDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
