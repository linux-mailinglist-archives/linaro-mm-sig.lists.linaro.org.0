Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E3D9AD8F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 02:26:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5170A44122
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 00:26:46 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by lists.linaro.org (Postfix) with ESMTPS id EEF0040A8E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 00:26:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=I7TtCS+K;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.173 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4608dddaa35so76091cf.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Oct 2024 17:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729729599; x=1730334399; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0t1/W3VOoKzRco/3jb/6PzML2qkeqAFFQKJfPMJh0zQ=;
        b=I7TtCS+Kvgb2r2tIE68YbsX+xNhEDbqCJJx9bNMup1w3TGNn0/8YxxHG7tBkiCN8/q
         muCwJ/1O3nzKfbM7GfjRovZSQuYxAQDzgcM9bHOijyaAyHN8OP2kDDoxUAkcSVw/9ws9
         3KwUMFkcpgKlgszdIA7vOaW0QfHSNdVXVitaoVxFUyCvtcaWxYSjx4bJSdOKggFP+YHa
         cyaUg4/LhtcQmLDOQFB7tjlD6f06LEiVd4vOAa/FI+8iWsO96Kjpms3hyyOuMlCUsOxY
         mxlSCfSJIgK8i96BfWfZp9d0mTQc1QOfKep+Cs1OzIyjX7fA/Z1ho0fFF+y3Dv1JuReu
         E/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729729599; x=1730334399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0t1/W3VOoKzRco/3jb/6PzML2qkeqAFFQKJfPMJh0zQ=;
        b=eheP+eHR6TrTLoIPyVGcscpk960+4QJ0LvZyH8Ubth07hcvkSF1vyaUegRBgpN/y2m
         fGx2reT8IJnGsEUGPqiGt1MTwWQVb/q1z+cmME9D9EaSNFmj4NopQ73Ao66VeGZHajLB
         o/k9IpeMIuAYLCvRgRv/rLqvsplqJ5yN5kHoa+oBipmnXeF3cJKn9pGUJc/S7odDY7uQ
         Oq4IWx4TGfXwIznCaCgmbXr8F0J9tQik1EErzpXm5A3hEKUZyzhLd01RvGksJbQMGcKZ
         ap52Y1hZzi1sEtg4tM8/14aTPN3UyTeye3t6cxOgTifuu5Uha45Kj1P4yIG9E2nsb78g
         9ONg==
X-Forwarded-Encrypted: i=1; AJvYcCXSxV33ndLxt3do6souluLONb3P6g+6uXISThP1ruQDTlkPMVsZvqyk+z5QwxuzHfc1D7kYSboOVLnN+kIw@lists.linaro.org
X-Gm-Message-State: AOJu0Yz9OL37wiWs7auhPGpIZRhgY5sIyqQ7PZc6xhfIlpHpWF3sFBA6
	hyqAhfiAdH1y4vbvshCyrfAzZDJErEc8pkiQJ46382mC8GXyqnQ7zdHwUyfG9qW/B6L1rWLkYnn
	eV0kW2sMW7T/j3m43nrL7Sx2aYv/bvUfC6IQj
X-Google-Smtp-Source: AGHT+IEQrVkBml7UI0Uw4ZtwGBqVXrIo5cxee2Oexbu2tWb028MtGoy/IcXDifMTYHr92UFgH6qTtnfUiTeu1uraXWU=
X-Received: by 2002:a05:622a:256:b0:45c:9eab:cce0 with SMTP id
 d75a77b69052e-46124382133mr802111cf.15.1729729599106; Wed, 23 Oct 2024
 17:26:39 -0700 (PDT)
MIME-Version: 1.0
References: <20240930144057.453751-1-mripard@kernel.org> <CABdmKX3=h57Jcphiq2Ekseg=j_ay8frmFgyHKWb04b4J5f2T5w@mail.gmail.com>
 <20241021-defiant-unicorn-of-authority-b23277@houat>
In-Reply-To: <20241021-defiant-unicorn-of-authority-b23277@houat>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 23 Oct 2024 17:26:26 -0700
Message-ID: <CABdmKX2LFz7t_k9EB25HpC7EacA343Eh6D46in2fLeUHcBFvLQ@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Result: default: False [-5.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.160.173:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.173:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EEF0040A8E
X-Spamd-Bar: -----
Message-ID-Hash: OGOXCA4PDCNEO6J65F3C6TESNLLB2HHV
X-Message-ID-Hash: OGOXCA4PDCNEO6J65F3C6TESNLLB2HHV
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] Documentation: dma-buf: heaps: Add heap name definitions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OGOXCA4PDCNEO6J65F3C6TESNLLB2HHV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBPY3QgMjEsIDIwMjQgYXQgOTozMOKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IEhpIFRKLA0KPg0KPiBUaGFua3MgZm9yIHlvdXIgcmV2
aWV3DQo+DQo+IE9uIFR1ZSwgT2N0IDAxLCAyMDI0IGF0IDExOjAzOjQxUE0gKzAyMDAsIFQuSi4g
TWVyY2llciB3cm90ZToNCj4gPiBPbiBNb24sIFNlcCAzMCwgMjAyNCBhdCA0OjQx4oCvUE0gTWF4
aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBGb2xs
b3dpbmcgYSByZWNlbnQgZGlzY3Vzc2lvbiBhdCBsYXN0IFBsdW1iZXJzLCBKb2huIFN0dWx0eiwg
U3VtaXQNCj4gPiA+IFNld2FsLCBUSiBNZXJjaWVyIGFuZCBJIGNhbWUgdG8gYW4gYWdyZWVtZW50
IHRoYXQgd2Ugc2hvdWxkIGRvY3VtZW50DQo+ID4gPiB3aGF0IHRoZSBkbWEtYnVmIGhlYXBzIG5h
bWVzIGFyZSBleHBlY3RlZCB0byBiZSwgYW5kIHdoYXQgdGhlIGJ1ZmZlcnMNCj4gPiA+IGF0dHJp
YnV0ZXMgeW91J2xsIGdldCBzaG91bGQgYmUgZG9jdW1lbnRlZC4NCj4gPiA+DQo+ID4gPiBMZXQn
cyBjcmVhdGUgdGhhdCBkb2MgdG8gbWFrZSBzdXJlIHRob3NlIGF0dHJpYnV0ZXMgYW5kIG5hbWVz
IGFyZQ0KPiA+ID4gZ3VhcmFudGVlZCBnb2luZyBmb3J3YXJkLg0KPiA+DQo+ID4gSGV5LCB0aGFu
a3MgZm9yIHNlbmRpbmcgdGhpcyENCj4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJp
cGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KPiA+ID4NCj4gPiA+IC0tLQ0KPiA+ID4NCj4gPiA+
IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0Pg0KPiA+ID4gVG86IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+ID4gPiBDYzogQmVuamFtaW4gR2FpZ25h
cmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+DQo+ID4gPiBDYzogQnJpYW4gU3Rh
cmtleSA8QnJpYW4uU3RhcmtleUBhcm0uY29tPg0KPiA+ID4gQ2M6IEpvaG4gU3R1bHR6IDxqc3R1
bHR6QGdvb2dsZS5jb20+DQo+ID4gPiBDYzogIlQuSi4gTWVyY2llciIgPHRqbWVyY2llckBnb29n
bGUuY29tPg0KPiA+ID4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KPiA+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+
IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gPiA+IENjOiBsaW51eC1tZWRp
YUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiA+IENjOiBsaW51eC1kb2NAdmdlci5rZXJuZWwub3JnDQo+
ID4gPiAtLS0NCj4gPiA+ICBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1oZWFw
cy5yc3QgfCA3MSArKysrKysrKysrKysrKysrKysrDQo+ID4gPiAgRG9jdW1lbnRhdGlvbi91c2Vy
c3BhY2UtYXBpL2luZGV4LnJzdCAgICAgICAgIHwgIDEgKw0KPiA+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgNzIgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0
aW9uL3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1oZWFwcy5yc3QNCj4gPiA+DQo+ID4gPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2RtYS1idWYtaGVhcHMucnN0IGIvRG9j
dW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2RtYS1idWYtaGVhcHMucnN0DQo+ID4gPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NA0KPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4wMDQzNjIyN2I1NDINCj4g
PiA+IC0tLSAvZGV2L251bGwNCj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFw
aS9kbWEtYnVmLWhlYXBzLnJzdA0KPiA+ID4gQEAgLTAsMCArMSw3MSBAQA0KPiA+ID4gKy4uIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ID4gPiArDQo+ID4gPiArPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09DQo+ID4gPiArQWxsb2NhdGluZyBkbWEtYnVmIHVzaW5nIGhl
YXBzDQo+ID4gPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+ID4gPiArDQo+ID4g
PiArRG1hLWJ1ZiBIZWFwcyBhcmUgYSB3YXkgZm9yIHVzZXJzcGFjZSB0byBhbGxvY2F0ZSBkbWEt
YnVmIG9iamVjdHMuIFRoZXkgYXJlDQo+ID4gPiArdHlwaWNhbGx5IHVzZWQgdG8gYWxsb2NhdGUg
YnVmZmVycyBmcm9tIGEgc3BlY2lmaWMgYWxsb2NhdGlvbiBwb29sLCBvciB0byBzaGFyZQ0KPiA+
ID4gK2J1ZmZlcnMgYWNyb3NzIGZyYW1ld29ya3MuDQo+ID4gPiArDQo+ID4gPiArSGVhcHMNCj4g
PiA+ICs9PT09PQ0KPiA+ID4gKw0KPiA+ID4gK0EgaGVhcCByZXByZXNlbnQgYSBzcGVjaWZpYyBh
bGxvY2F0b3IuIFRoZSBMaW51eCBrZXJuZWwgY3VycmVudGx5IHN1cHBvcnRzIHRoZQ0KPiA+DQo+
ID4gInJlcHJlc2VudHMiDQo+ID4NCj4gPiA+ICtmb2xsb3dpbmcgaGVhcHM6DQo+ID4gPiArDQo+
ID4gPiArIC0gVGhlIGBgc3lzdGVtYGAgaGVhcCBhbGxvY2F0ZXMgdmlydHVhbGx5IGNvbnRpZ3Vv
dXMsIGNhY2hlYWJsZSwgYnVmZmVycw0KPiA+DQo+ID4gVmlydHVhbGx5IGNvbnRpZ3VvdXMgc291
bmRzIGEgbGl0dGxlIHdlaXJkIHRvIG1lIGhlcmUuIFN1cmUsIHRoYXQncw0KPiA+IHdoYXQgdXNl
cnNwYWNlIHdpbGwgZ2V0IHdoZW4gaXQgbWFwcyB0aGUgYnVmZmVyIChhbmQgSSBndWVzcyB0aGlz
ICppcyoNCj4gPiBVQVBJIGRvY3VtZW50YXRpb24gYWZ0ZXIgYWxsKSwgYnV0IEknbSBub3Qgc3Vy
ZSBpdCdzIGNvcnJlY3QgdG8gc2F5DQo+ID4gdGhhdCdzIGEgcHJvcGVydHkgb2YgdGhlIGJ1ZmZl
ciBpdHNlbGY/IFdoYXQgaWYgd2UgaW52ZXJ0IHRoaXMgYW5kDQo+ID4gaW5zdGVhZCBzYXkgdGhh
dCB0aGVyZSBpcyBOTyBndWFyYW50ZWUgdGhhdCB0aGUgbWVtb3J5IGZvciB0aGUgYnVmZmVyOg0K
PiA+ICAtIGlzIHBoeXNpY2FsbHkgY29udGlndW91cw0KPiA+ICAtIGhhcyBhbnkgcGFydGljdWxh
ciBhbGlnbm1lbnQgKGdyZWF0ZXIgdGhhbiBwYWdlIGFsaWduZWQpDQo+ID4gIC0gaGFzIGFueSBw
YXJ0aWN1bGFyIHBhZ2Ugc2l6ZSAobGFyZ2Ugb3JkZXIgYWxsb2NhdGlvbnMgYXJlIGF0dGVtcHRl
ZA0KPiA+IGZpcnN0LCBidXQgbm90IGd1YXJhbnRlZWQgb3IgZXZlbiBsaWtlbHkgb24gc29tZSBz
eXN0ZW1zKQ0KPiA+ICAtIGhhcyBib3VuZHMgb24gcGh5c2ljYWwgYWRkcmVzc2VzDQo+ID4NCj4g
PiBNYXliZSB0aGF0IGlzIHRvbyBtdWNoIGRldGFpbCBoZXJlLi4uDQo+DQo+IFllYWgsIEkgZG9u
J3Qga25vdy4NCj4NCj4gSXQncyBnZXR0aW5nIHBoaWxvc29waGljYWwsIGJ1dCBJIGd1ZXNzIHRo
ZXJlJ3MgYW4gaW5maW5pdGUgbnVtYmVyIG9mDQo+IGd1YXJhbnRlZXMgd2Ugd291bGRuJ3QgcHJv
dmlkZS4gSXQgc2VlbXMgZWFzaWVyIGZvciBtZSB0byBtYWludGFpbiBhDQo+IGxpc3Qgb2YgdGhl
IHRoaW5ncyBhIGJ1ZmZlciBpcy9oYXMgcmF0aGVyIHRoYW4gdGhlIG9wcG9zaXRlLg0KPg0KPiBC
dXQgbWF5YmUgd2UgY2FuIHJlcGhyYXNlIHZpcnR1YWxseSBjb250aWd1b3VzIGlmIGl0J3Mgd2Vp
cmQgdG8geW91Pw0KDQpZb3UncmUgcmlnaHQsIEknbSBiZWluZyB0b28gcGlja3kgaGVyZS4gVmly
dHVhbGx5IGNvbnRpZ3VvdXMgaXMgYXMNCnJlYXNvbmFibGUgYXMgYW55dGhpbmcgZWxzZSBJIGNh
biBjb21lIHVwIHdpdGguDQoNCj4gPiA+ICsNCj4gPiA+ICsgLSBUaGUgYGByZXNlcnZlZGBgIGhl
YXAgYWxsb2NhdGVzIHBoeXNpY2FsbHkgY29udGlndW91cywgY2FjaGVhYmxlLCBidWZmZXJzLg0K
PiA+ID4gKyAgIERlcGVuZGluZyBvbiB0aGUgcGxhdGZvcm0sIGl0IG1pZ2h0IGJlIGNhbGxlZCBk
aWZmZXJlbnRseToNCj4gPiA+ICsNCj4gPiA+ICsgICAgLSBBY2VyIEljb25pYSBUYWIgQTUwMDog
YGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIEFsbHdpbm5lciBzdW40aSwgc3VuNWkgYW5kIHN1
bjdpIGZhbWlsaWVzOiBgYGRlZmF1bHQtcG9vbGBgDQo+ID4gPiArICAgIC0gQW1sb2dpYyBBMTog
YGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIEFtbG9naWMgRzEyQS9HMTJCL1NNMTogYGBsaW51
eCxjbWFgYA0KPiA+ID4gKyAgICAtIEFtbG9naWMgR1hCQi9HWEw6IGBgbGludXgsY21hYGANCj4g
PiA+ICsgICAgLSBBU1VTIEVlZVBhZCBUcmFuc2Zvcm1lciBURjEwMTogYGBsaW51eCxjbWFgYA0K
PiA+ID4gKyAgICAtIEFTVVMgR29vZ2xlIE5leHVzIDcgKFByb2plY3QgQmFjaCAvIE1FMzcwVEcp
IEUxNTY1OiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gQVNVUyBHb29nbGUgTmV4dXMgNyAo
UHJvamVjdCBOYWthc2kgLyBNRTM3MFQpIEUxNTY1OiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAg
IC0gQVNVUyBHb29nbGUgTmV4dXMgNyAoUHJvamVjdCBOYWthc2kgLyBNRTM3MFQpIFBNMjY5OiBg
YGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gQXN1cyBUcmFuc2Zvcm1lciBJbmZpbml0eSBURjcw
MFQ6IGBgbGludXgsY21hYGANCj4gPiA+ICsgICAgLSBBc3VzIFRyYW5zZm9ybWVyIFBhZCAzRyBU
RjMwMFRHOiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gQXN1cyBUcmFuc2Zvcm1lciBQYWQg
VEYzMDBUOiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gQXN1cyBUcmFuc2Zvcm1lciBQYWQg
VEY3MDFUOiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gQXN1cyBUcmFuc2Zvcm1lciBQcmlt
ZSBURjIwMTogYGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIEFTVVMgVml2b2Jvb2sgUyAxNTog
YGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIENhZGVuY2UgS0M3MDU6IGBgbGludXgsY21hYGAN
Cj4gPiA+ICsgICAgLSBEaWdpIEludGVybmF0aW9uYWwgQ29ubmVjdENvcmUgNlVMOiBgYGxpbnV4
LGNtYWBgDQo+ID4gPiArICAgIC0gRnJlZXNjYWxlIGkuTVg4RFhMIEVWSzogYGBsaW51eCxjbWFg
YA0KPiA+ID4gKyAgICAtIEZyZWVzY2FsZSBUUU1hOFh4OiBgYGxpbnV4LGNtYWBgDQo+ID4gPiAr
ICAgIC0gSGlzaWxpY29uIEhpa2V5OiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gTGVub3Zv
IFRoaW5rUGFkIFQxNHMgR2VuIDY6IGBgbGludXgsY21hYGANCj4gPiA+ICsgICAgLSBMZW5vdm8g
VGhpbmtQYWQgWDEzczogYGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIExlbm92byBZb2dhIFNs
aW0gN3g6IGBgbGludXgsY21hYGANCj4gPiA+ICsgICAgLSBMRyBPcHRpbXVzIDRYIEhEIFA4ODA6
IGBgbGludXgsY21hYGANCj4gPiA+ICsgICAgLSBMRyBPcHRpbXVzIFZ1IFA4OTU6IGBgbGludXgs
Y21hYGANCj4gPiA+ICsgICAgLSBMb29uZ3NvbiAyazA1MDAsIDJrMTAwMCBhbmQgMmsyMDAwOiBg
YGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gTWljcm9zb2Z0IFJvbXVsdXM6IGBgbGludXgsY21h
YGANCj4gPiA+ICsgICAgLSBOWFAgaS5NWDhVTFAgRVZLOiBgYGxpbnV4LGNtYWBgDQo+ID4gPiAr
ICAgIC0gTlhQIGkuTVg5MyA5eDkgUVNCOiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gTlhQ
IGkuTVg5MyAxMVgxMSBFVks6IGBgbGludXgsY21hYGANCj4gPiA+ICsgICAgLSBOWFAgaS5NWDkz
IDE0WDE0IEVWSzogYGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIE5YUCBpLk1YOTUgMTlYMTkg
RVZLOiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gT3V5YSBHYW1lIENvbnNvbGU6IGBgbGlu
dXgsY21hYGANCj4gPiA+ICsgICAgLSBQZWdhdHJvbiBDaGFnYWxsOiBgYGxpbnV4LGNtYWBgDQo+
ID4gPiArICAgIC0gUEhZVEVDIHBoeUNPUkUtQU02MkEgU09NOiBgYGxpbnV4LGNtYWBgDQo+ID4g
PiArICAgIC0gUEhZVEVDIHBoeUNPUkUtaS5NWDkzIFNPTTogYGBsaW51eCxjbWFgYA0KPiA+ID4g
KyAgICAtIFF1YWxjb21tIFNDODI4MFhQIENSRDogYGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAt
IFF1YWxjb21tIFgxRTgwMTAwIENSRDogYGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIFF1YWxj
b21tIFgxRTgwMTAwIFFDUDogYGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIFJhc3BiZXJyeVBp
OiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gVGV4YXMgSW5zdHJ1bWVudHMgQU02MnggU0sg
Ym9hcmQgZmFtaWx5OiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gVGV4YXMgSW5zdHJ1bWVu
dHMgQU02MkE3IFNLOiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gVG9yYWRleCBBcGFsaXMg
aU1YODogYGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIFRRLVN5c3RlbXMgaS5NWDhNTSBUUU1h
OE14TUw6IGBgbGludXgsY21hYGANCj4gPiA+ICsgICAgLSBUUS1TeXN0ZW1zIGkuTVg4TU4gVFFN
YThNeE5MOiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gVFEtU3lzdGVtcyBpLk1YOE1QbHVz
IFRRTWE4TVB4TDogYGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIFRRLVN5c3RlbXMgaS5NWDhN
USBUUU1hOE1ROiBgYGxpbnV4LGNtYWBgDQo+ID4gPiArICAgIC0gVFEtU3lzdGVtcyBpLk1YOTMg
VFFNYTkzeHhMQS9UUU1hOTN4eENBIFNPTTogYGBsaW51eCxjbWFgYA0KPiA+ID4gKyAgICAtIFRR
LVN5c3RlbXMgTUJBNlVMeCBCYXNlYm9hcmQ6IGBgbGludXgsY21hYGANCj4gPiA+ICsNCj4gPg0K
PiA+IFRoaXMgcGFydCBMR1RNLiBNaWdodCBiZSB3b3J0aCBpdCB0byBkb2N1bWVudCB0aGF0IGEg
Q01BIHJlZ2lvbiBtdXN0DQo+ID4gYmUgc3BlY2lmaWVkIG9uIHRoZSBrZXJuZWwgY29tbWFuZCBs
aW5lLiBPdGhlcndpc2UgdGhpcyBoZWFwIHdvbid0DQo+ID4gc2hvdyB1cCBhdCBydW50aW1lIGJ5
IG9ubHkgZW5hYmxpbmcgdGhlIGtlcm5lbCBjb25maWdzIG5lY2Vzc2FyeSB0bw0KPiA+IGJ1aWxk
IGl0Lg0KPg0KPiBSZWFsbHk/IE15IHVuZGVyc3RhbmRpbmcgd2FzIHRoYXQgeW91IG5lZWQgYSBk
ZWZhdWx0IENNQSByZWdpb24sIHdoaWNoDQo+IGhhcHBlbnMgZWl0aGVyIGlmIHlvdSBoYXZlIGNt
YT0gb24gdGhlIGtlcm5lbCBjb21tYW5kIGxpbmUsIGEgZGVmYXVsdA0KPiBDTUEgcG9vbCBpbiB0
aGUgRFQsIG9yIGlmIENNQV9TSVpFX01CWVRFUyBpc24ndCBzZXQgdG8gMD8NCg0KT2sgeWVzLCB0
aGVzZSB0b28uIDopDQo+DQo+IE1heGltZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
