Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CF3943757
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 22:46:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90B6D40E10
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 20:46:42 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 5504540B1C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2024 20:46:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=MQ43YOYn;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.128.42) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4280ef642fbso5982255e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2024 13:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1722458785; x=1723063585; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZxpiuYMhfG8wroCEpsj+T0XsF8n6WcrGB7EkeYVEIFg=;
        b=MQ43YOYnVP/opjz17gsuUzNiNXxH7YS6AqB5EeQ7jSfr4q0eIFFzuC47LHZGNEMQWU
         tDvZasCe1SDsN4oFXuDMur39KUSIy/xepuG2IVmtReif9XUgqhd0PeXGvkOzzHPoq1Qs
         waMQhy4eWxQFYBh3SV3FYbaC+Syy0b2QfU3WI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722458785; x=1723063585;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZxpiuYMhfG8wroCEpsj+T0XsF8n6WcrGB7EkeYVEIFg=;
        b=mBgY3QcXksfJY6++WhSWfeGMvoEpUzXZfe0yV9pXEnyEBqcu2/R9ZGaITyCYedeOtn
         eQ/ugwXoeZ8YEfU1UrmBbqFf7gzAOtv3C+cpvaQEoPBKLYkTVXT5kJSABJfz3+0uNeso
         uw8FyrygQ7mWl83v8QDcdCtgnf0jNbeucS+Qe/tE0RpwrUEg5zwCwPiY4Qihqi6n239H
         pZJtjtztb+kW4Xvjjt3pDw/DqvlMo+6z1FU2QiR71j4coP/Y8iU9hRIn9pWrPV++US0C
         UyC4FZqQoRXjuoXSrDAHWFXoMGJhGWLG+QEcJMzyog2A9+SQuFwhwHzYBzcVWOIBjcNC
         F4sA==
X-Forwarded-Encrypted: i=1; AJvYcCVrGbjpmCcjckFI8yNwDoGRXWctuUEhqleSiXHIdSoP8/XB/KZ7cxR7JoM0qk0a7yyUYZVwu7nNL377LhtvCk6WNkfE5AYVCeJaS246TaI=
X-Gm-Message-State: AOJu0Yz5/Of2bf5WE5G7/FzEOBH7MtNy5yYqB9PlK5qKBy+knOh7NLtT
	ISqtWLX1bgWt8hr6ynesUJImsK2AChiaMVvbTXYHPexFrPA6W/q/0z4nhMdm+lY=
X-Google-Smtp-Source: AGHT+IEOfnwTGBUJMCvgdzsVYm/9gkwgL+/zq/em2Ac2MZaEU7lsjUilDMlqzOjNzanNWiAy/HCT3A==
X-Received: by 2002:a05:600c:458e:b0:426:6358:7c5d with SMTP id 5b1f17b1804b1-428b4ae9a29mr2485615e9.4.1722458785050;
        Wed, 31 Jul 2024 13:46:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282b8a246asm33360225e9.3.2024.07.31.13.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 13:46:24 -0700 (PDT)
Date: Wed, 31 Jul 2024 22:46:22 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Huan Yang <link@vivo.com>
Message-ID: <Zqqing7M2notp6Ou@phenom.ffwll.local>
Mail-Followup-To: Huan Yang <link@vivo.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	opensource.kernel@vivo.com
References: <20240730075755.10941-1-link@vivo.com>
 <Zqiqv7fomIp1IPS_@phenom.ffwll.local>
 <25cf34bd-b11f-4097-87b5-39e6b4a27d85@vivo.com>
 <37b07e69-df85-45fc-888d-54cb7c4be97a@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <37b07e69-df85-45fc-888d-54cb7c4be97a@vivo.com>
X-Operating-System: Linux phenom 6.9.10-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5504540B1C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.19 / 15.00];
	BAYES_HAM(-2.89)[99.55%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.42:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[ffwll.ch:dkim,ffwll.ch:email,ffwll.ch:url];
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
Message-ID-Hash: 5RDOQJH6ZWSCSWCYOOYZWMW4WBEU3PTV
X-Message-ID-Hash: 5RDOQJH6ZWSCSWCYOOYZWMW4WBEU3PTV
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/5] Introduce DMA_HEAP_ALLOC_AND_READ_FILE heap flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5RDOQJH6ZWSCSWCYOOYZWMW4WBEU3PTV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdWwgMzAsIDIwMjQgYXQgMDg6MDQ6MDRQTSArMDgwMCwgSHVhbiBZYW5nIHdyb3Rl
Og0KPiANCj4g5ZyoIDIwMjQvNy8zMCAxNzowNSwgSHVhbiBZYW5nIOWGmemBkzoNCj4gPiANCj4g
PiDlnKggMjAyNC83LzMwIDE2OjU2LCBEYW5pZWwgVmV0dGVyIOWGmemBkzoNCj4gPiA+IFs/Pz8/
Pz8/Pz8gZGFuaWVsLnZldHRlckBmZndsbC5jaCA/Pz8/Pz8/Pz8NCj4gPiA+IGh0dHBzOi8vYWth
Lm1zL0xlYXJuQWJvdXRTZW5kZXJJZGVudGlmaWNhdGlvbj8/Pz8/Pz8/Pz8/Pz9dDQo+ID4gPiAN
Cj4gPiA+IE9uIFR1ZSwgSnVsIDMwLCAyMDI0IGF0IDAzOjU3OjQ0UE0gKzA4MDAsIEh1YW4gWWFu
ZyB3cm90ZToNCj4gPiA+ID4gVURNQS1CVUYgc3RlcDoNCj4gPiA+ID4gwqDCoCAxLiBtZW1mZF9j
cmVhdGUNCj4gPiA+ID4gwqDCoCAyLiBvcGVuIGZpbGUoYnVmZmVyL2RpcmVjdCkNCj4gPiA+ID4g
wqDCoCAzLiB1ZG1hYnVmIGNyZWF0ZQ0KPiA+ID4gPiDCoMKgIDQuIG1tYXAgbWVtZmQNCj4gPiA+
ID4gwqDCoCA1LiByZWFkIGZpbGUgaW50byBtZW1mZCB2YWRkcg0KPiA+ID4gWWVhaCB0aGlzIGlz
IHJlYWxseSBzbG93IGFuZCB0aGUgd29yc3Qgd2F5IHRvIGRvIGl0LiBZb3UgYWJzb2x1dGVseSB3
YW50DQo+ID4gPiB0byBzdGFydCBfYWxsXyB0aGUgaW8gYmVmb3JlIHlvdSBzdGFydCBjcmVhdGlu
ZyB0aGUgZG1hLWJ1ZiwgaWRlYWxseQ0KPiA+ID4gd2l0aA0KPiA+ID4gZXZlcnl0aGluZyBydW5u
aW5nIGluIHBhcmFsbGVsLiBCdXQganVzdCBzdGFydGluZyB0aGUgZGlyZWN0IEkvTyB3aXRoDQo+
ID4gPiBhc3luYyBhbmQgdGhlbiBjcmVhdGluZyB0aGUgdW1kYWJ1ZiBzaG91bGQgYmUgYSBsb3Qg
ZmFzdGVyIGFuZCBhdm9pZA0KPiA+IFRoYXQncyBncmVhdGUswqAgTGV0IG1lIHJlcGhyYXNlIHRo
YXQsIGFuZCBwbGVhc2UgY29ycmVjdCBtZSBpZiBJJ20gd3JvbmcuDQo+ID4gDQo+ID4gVURNQS1C
VUYgc3RlcDoNCj4gPiDCoCAxLiBtZW1mZF9jcmVhdGUNCj4gPiDCoCAyLiBtbWFwIG1lbWZkDQo+
ID4gwqAgMy4gb3BlbiBmaWxlKGJ1ZmZlci9kaXJlY3QpDQo+ID4gwqAgNC4gc3RhcnQgdGhyZWFk
IHRvIGFzeW5jIHJlYWQNCj4gPiDCoCAzLiB1ZG1hYnVmIGNyZWF0ZQ0KPiA+IA0KPiA+IFdpdGgg
dGhpcywgY2FuIGltcHJvdmUNCj4gDQo+IEkganVzdCB0ZXN0IHdpdGggaXQuIFN0ZXAgaXM6DQo+
IA0KPiBVRE1BLUJVRiBzdGVwOg0KPiDCoCAxLiBtZW1mZF9jcmVhdGUNCj4gwqAgMi4gbW1hcCBt
ZW1mZA0KPiDCoCAzLiBvcGVuIGZpbGUoYnVmZmVyL2RpcmVjdCkNCj4gwqAgNC4gc3RhcnQgdGhy
ZWFkIHRvIGFzeW5jIHJlYWQNCj4gwqAgNS4gdWRtYWJ1ZiBjcmVhdGUNCj4gDQo+IMKgIDYgLiBq
b2luIHdhaXQNCj4gDQo+IDNHIGZpbGUgcmVhZCBhbGwgc3RlcCBjb3N0IDEsNTI3LDEwMyw0MzFu
cywgaXQncyBncmVhdGUuDQoNCk9rIHRoYXQncyBhbG1vc3QgdGhlIHRocm91Z2hwdXQgb2YgeW91
ciBwYXRjaCBzZXQsIHdoaWNoIEkgdGhpbmsgaXMgY2xvc2UNCmVub3VnaC4gVGhlIHJlbWFpbmlu
ZyBkaWZmZXJlbmNlIGlzIHByb2JhYmx5IGp1c3QgdGhlIG1tYXAgb3ZlcmhlYWQsIG5vdA0Kc3Vy
ZSB3aGV0aGVyL2hvdyB3ZSBjYW4gZG8gZGlyZWN0IGkvbyB0byBhbiBmZCBkaXJlY3RseSAuLi4g
aW4gcHJpbmNpcGxlDQppdCdzIHBvc3NpYmxlIGZvciBhbnkgZmlsZSB0aGF0IHVzZXMgdGhlIHN0
YW5kYXJkIHBhZ2VjYWNoZS4NCi1TaW1hDQotLSANCkRhbmllbCBWZXR0ZXINClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
