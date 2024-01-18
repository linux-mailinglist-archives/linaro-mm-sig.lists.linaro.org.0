Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D7E8320A7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 21:58:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F3B743EFB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 20:58:17 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 0250D3F52E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 20:57:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=B3oaxRpV;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.46) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-55369c59708so5699a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 12:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1705611475; x=1706216275; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vG2d4C5q3VAnujQnY/vfroPdU2IS/AysqJ++FSIJIio=;
        b=B3oaxRpVQmm9aWzHZ77NI/lzhrfMaipPOVYtKM9UIKwoHS091Y26T3iE9/r73WFnU/
         fTkQM4+riAMd1KL1RiO7RzvZrYWvhJKiBLExRhNs85+UW2L81J7cIRsqnVqWYRMM/7F9
         LT7ApUJHClA9hrgblc2VFpGbrDYMzvJo1pSK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705611475; x=1706216275;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vG2d4C5q3VAnujQnY/vfroPdU2IS/AysqJ++FSIJIio=;
        b=cVaWccFUw3Grat4wOdgru4xJFl9+Irn07cMqFymC79q/fWW8373t6LgTDpxU24l75F
         MX2/V2OippKZ7U3jc5KArQyIqQO8s8CqCq290LIC5b9y4y9I9UmIcy1DQovdJ4eLr3yh
         fVuRWLZPgjcm1V+2BjwIC2uf3YkifzsOTuKAIDC/Rge+5D7yHmY4QSIQrsIoITZIZ703
         YxG/ux8z/X8tIJ1BT008ctn743p8GUgfEfVwh0c+p4jpwJUPwbQoBnvxj37dCSWATVcW
         GMIeB1fPRMa4HGf3x1/1Gn+1i8yYBwxotpkOg/Qs19Ru700MiR7ksDtYF1WS9Pjz8yUr
         75/w==
X-Gm-Message-State: AOJu0YzG4OYWQf5OCbAE6S6+NYzmO+gW/ctkqZvJJNFdjdqjvZgKPCrv
	+ZlMuzb4lLOgFK3OUGha5xyUwvoawyIAu4784wthp30vZDrqcdgENnrVoOWIeIU=
X-Google-Smtp-Source: AGHT+IFYmE5E+AxibG3l6XMG9L3qmRanwGu4ICGZmkOTqqqlW7iV75YmqX3x6L0EdKpKJSK42kFhYg==
X-Received: by 2002:aa7:dad4:0:b0:559:87b5:9692 with SMTP id x20-20020aa7dad4000000b0055987b59692mr276297eds.2.1705611474838;
        Thu, 18 Jan 2024 12:57:54 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id o9-20020a056402444900b00559dd0a5146sm2509754edb.44.2024.01.18.12.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 12:57:54 -0800 (PST)
Date: Thu, 18 Jan 2024 21:57:52 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <ZamQ0LAX2B6qaK6g@phenom.ffwll.local>
Mail-Followup-To: "T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	Sandeep Patil <sspatil@android.com>,
	Laura Abbott <labbott@redhat.com>, android-mm@google.com,
	minchan@google.com, John Stultz <john.stultz@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20240117181141.286383-1-tjmercier@google.com>
 <20a68f86-27f0-48f4-a066-7dcf0092858e@amd.com>
 <Zak6iW8lktml7f2H@phenom.ffwll.local>
 <CABdmKX10zz6bk4VVDgsosJbA8_7WOxuCnkyYFiL1FPwtZ-C+WQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABdmKX10zz6bk4VVDgsosJbA8_7WOxuCnkyYFiL1FPwtZ-C+WQ@mail.gmail.com>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	URIBL_BLOCKED(0.00)[ffwll.ch:dkim,ffwll.ch:email,ffwll.ch:url,mail-ed1-f46.google.com:rdns,mail-ed1-f46.google.com:helo];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0250D3F52E
X-Spamd-Bar: -------
Message-ID-Hash: RQAXJX4I35EURO5FUGOWPKLBIMVJ5XGL
X-Message-ID-Hash: RQAXJX4I35EURO5FUGOWPKLBIMVJ5XGL
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Sandeep Patil <sspatil@android.com>, Laura Abbott <labbott@redhat.com>, android-mm@google.com, minchan@google.com, John Stultz <john.stultz@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, daniel@ffwll.ch
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Don't track CMA dma-buf pages under RssFile
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RQAXJX4I35EURO5FUGOWPKLBIMVJ5XGL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKYW4gMTgsIDIwMjQgYXQgMDg6NTc6MTZBTSAtMDgwMCwgVC5KLiBNZXJjaWVyIHdy
b3RlOg0KPiBPbiBUaHUsIEphbiAxOCwgMjAyNCBhdCA2OjQ54oCvQU0gRGFuaWVsIFZldHRlciA8
ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToNCj4gPg0KPiA+IE9uIFRodSwgSmFuIDE4LCAyMDI0IGF0
IDExOjAyOjIyQU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gPiBBbSAxNy4w
MS4yNCB1bSAxOToxMSBzY2hyaWViIFQuSi4gTWVyY2llcjoNCj4gPiA+ID4gRE1BIGJ1ZmZlcnMg
YWxsb2NhdGVkIGZyb20gdGhlIENNQSBkbWEtYnVmIGhlYXAgZ2V0IGNvdW50ZWQgdW5kZXINCj4g
PiA+ID4gUnNzRmlsZSBmb3IgcHJvY2Vzc2VzIHRoYXQgbWFwIHRoZW0gYW5kIHRyaWdnZXIgcGFn
ZSBmYXVsdHMuIEluDQo+ID4gPiA+IGFkZGl0aW9uIHRvIHRoZSBpbmNvcnJlY3QgYWNjb3VudGlu
ZyByZXBvcnRlZCB0byB1c2Vyc3BhY2UsIHJlY2xhaW0NCj4gPiA+ID4gYmVoYXZpb3Igd2FzIGlu
Zmx1ZW5jZWQgYnkgdGhlIE1NX0ZJTEVQQUdFUyBjb3VudGVyIHVudGlsIGxpbnV4IDYuOCwgYnV0
DQo+ID4gPiA+IHRoaXMgbWVtb3J5IGlzIG5vdCByZWNsYWltYWJsZS4gWzFdIENoYW5nZSB0aGUg
Q01BIGRtYS1idWYgaGVhcCB0byBzZXQNCj4gPiA+ID4gVk1fUEZOTUFQIG9uIHRoZSBWTUEgc28g
TU0gZG9lcyBub3QgcG9rZSBhdCB0aGUgbWVtb3J5IG1hbmFnZWQgYnkgdGhpcw0KPiA+ID4gPiBk
bWEtYnVmIGhlYXAsIGFuZCB1c2Ugdm1mX2luc2VydF9wZm4gdG8gY29ycmVjdCB0aGUgUlNTIGFj
Y291bnRpbmcuDQo+ID4gPiA+DQo+ID4gPiA+IFRoZSBzeXN0ZW0gZG1hLWJ1ZiBoZWFwIGRvZXMg
bm90IHN1ZmZlciBmcm9tIHRoaXMgaXNzdWUgc2luY2UNCj4gPiA+ID4gcmVtYXBfcGZuX3Jhbmdl
IGlzIHVzZWQgZHVyaW5nIHRoZSBtbWFwIG9mIHRoZSBidWZmZXIsIHdoaWNoIGFsc28gc2V0cw0K
PiA+ID4gPiBWTV9QRk5NQVAgb24gdGhlIFZNQS4NCj4gPiA+DQo+ID4gPiBNaG0sIG5vdCBhbiBp
c3N1ZSB3aXRoIHRoaXMgcGF0Y2ggYnV0IERhbmllbCB3YW50ZWQgdG8gYWRkIGEgY2hlY2sgZm9y
DQo+ID4gPiBWTV9QRk5NQVAgdG8gZG1hX2J1Zl9tbWFwKCkgd2hpY2ggd291bGQgaGF2ZSBub3Rl
ZCB0aGlzIGVhcmxpZXIuDQo+ID4gPg0KPiA+ID4gSSBkb24ndCBmdWxseSByZW1lbWJlciB0aGUg
ZGlzY3Vzc2lvbiBidXQgZm9yIHNvbWUgcmVhc29uIHRoYXQgd2FzIG5ldmVyDQo+ID4gPiBjb21t
aXR0ZWQuIFdlIHNob3VsZCBwcm9iYWJseSB0cnkgdGhhdCBhZ2Fpbi4NCj4gPg0KPiA+IElpcmMg
dGhlIGlzc3VlIGlzIHRoYXQgZG1hX21tYXAgaXMgbm90IGd1YXJhbnRlZWQgdG8gZ2l2ZSB5b3Ug
YSBWTV9TUEVDSUFMDQo+ID4gbWFwcGluZywgYXQgbGVhc3Qgb24gYWJzb2x1dGVseSBhbGwgYXJj
aGl0ZWN0dXJlcy4gVGhhdCdzIHdoeSBJIGRlZmFjdG8NCj4gPiBkcm9wcGVkIHRoYXQgaWRlYSwg
YnV0IGl0IHdvdWxkIGluZGVlZCBiZSByZWFsbHkgZ3JlYXQgaWYgd2UgY291bGQNCj4gPiByZXN1
cnJlY3QgaXQuDQo+IA0KPiBJIGFjdHVhbGx5IGhhZCBpdCBpbiBteSBoZWFkIHRoYXQgaXQgd2Fz
IGEgQlVHX09OIGNoZWNrIGZvciBWTV9QRk5NQVANCj4gaW4gZG1hX2J1Zl9tbWFwIGFuZCBpdCB3
YXMgbWVyZ2VkLCBzbyBJIHdhcyBzdXJwcmlzZWQgdG8gZGlzY292ZXIgdGhhdA0KPiBpdCB3YXNu
J3Qgc2V0IGZvciB0aGVzZSBDTUEgYnVmZmVycy4NCj4gDQo+ID4gTWF5YmUgZm9yIHg4NiBvbmx5
PyBPciB4ODYrYXJtdjgsIEknbSBob25lc3RseSBub3Qgc3VyZSBhbnltb3JlIHdoaWNoDQo+ID4g
ZXhhY3QgY2FzZXMgZW5kZWQgdXAgd2l0aCBhIFZNX05PUk1BTCBtYXBwaW5nIC4uLiBXb3VsZCBu
ZWVkIGEgcGlsZSBvZg0KPiA+IGRpZ2dpbmcuDQo+IA0KPiBMb29raW5nIGJhY2sgYXQgdGhlIHBh
dGNoLCB0aGUgQ0kgZW1haWwgYXQgdGhlIGVuZCBvZiB0aGUgdGhyZWFkIGxpc3RzDQo+IGEgYnVu
Y2ggb2Ygbm93LWJyb2tlbiBsaW5rcyB0byBETUVTRy1XQVJOIHRlc3QgZmFpbHVyZXMgSSBhc3N1
bWUNCj4gcG9pbnRlZCBhdCBhIGxhcmdlIGNodW5rIG9mIHRoZW0uDQo+IA0KPiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvMTY2OTE5NzUwMTczLjE1NTc1LjI4NjQ3MzY5ODA3MzUzNDY3MzBA
ZW1lcmlsLmZyZWVkZXNrdG9wLm9yZy8NCg0KSSB0aG91Z2h0IHRoZXJlIHdhcyBhIG1vcmUgcmVj
ZW50IHN1Ym1pc3Npb24sIHdoZXJlIEkgYXQgbGVhc3QgZml4ZWQgdGhlDQp2YXJpb3VzIGZhbGxv
dXQgaW4gZ2VtIGNvZGUuIEJ1dCBtYXliZSBJIG9ubHkgZHJlYW1lZCAuLi4NCg0KQWxzbyBJIGRp
ZCB0aGUgY29kZSBncmVwcGluZyBhZ2FpbiwgYW5kIGF0IGxlYXN0IGlvbW11X2RtYV9tbWFwKCkg
aW4NCmRyaXZlcnMvaW9tbXUvZG1hLWlvbW11LmMgYW5kIGFybV9pb21tdV9tbWFwX2F0dHJzKCkg
Zm9yIGFybSB1c2UNCnZtX21hcF9wYWdlcyBpbiBjZXJ0YWluIGNhc2VzLCB3aGljaCBpcyBfbm90
XyBWTV9QRk5NQVAuDQoNCk1lYW5zIHJlYWxseSBubyBjYXNlcyB3aGVyZSBJIHRoaW5rIHdlIGNh
biBhc3N1bWUgd2UnbGwgYWx3YXlzIGdldA0KVk1fUEZOTUFQLCBhbmQgdW5mb3J0dW5hdGVseSB3
ZSBuZWVkIFZNX1BGTk1BUCBvciBWTV9JTyB0byBwcmV2ZW50DQpnZXRfdXNlcl9wYWdlcyBhbmQg
c2ltaWxhciBiYWQgdGhpbmdzIGZyb20gaGFwcGVuaW5nIHRvIGRtYS1idWYgbW1hcHMuDQoNClNv
IHN0aWxsIG5vIGx1Y2sgOi0vDQotU2ltYQ0KDQoNCj4gDQo+ID4gPg0KPiA+ID4gPiBbMV1odHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51
eC5naXQvY29tbWl0L21tL3Ztc2Nhbi5jP2lkPWZiNDZlMjJhOWUzODYzZTA4YWVmODgxNWRmOWYx
N2QwZjRiOWFlZGUNCj4gPiA+ID4NCj4gPiA+ID4gRml4ZXM6IGI2MTYxNGVjMzE4YSAoImRtYS1i
dWY6IGhlYXBzOiBBZGQgQ01BIGhlYXAgdG8gZG1hYnVmIGhlYXBzIikNCj4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogVC5KLiBNZXJjaWVyPHRqbWVyY2llckBnb29nbGUuY29tPg0KPiA+ID4NCj4gPiA+
IEFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+
IA0KPiBUaGFua3MgQ2hyaXN0aWFuLg0KDQotLSANCkRhbmllbCBWZXR0ZXINClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
