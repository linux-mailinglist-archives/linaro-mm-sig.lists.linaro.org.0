Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1D1B5229F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Sep 2025 22:45:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4612C45D77
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Sep 2025 20:45:07 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 57D15454DC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Sep 2025 20:44:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="BTT1NPl/";
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.44 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45ddca76f22so6125e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Sep 2025 13:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1757537098; x=1758141898; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdj+uOiXuiIXzM1Vn3fcDOOxGOrxrCVtY7jUVpK65ZI=;
        b=BTT1NPl/jkGyFbHjPZaIpVaNqwDteIaHuaWfOn3+BBPGxOB6D/TI5MwtvKUx1oAdD6
         WHbOcRhnnL98sVNuxpdAcLV6DYDKnC9nci+93a+mjwkokQkpcCePA5NxgLFCxlyFxcQl
         /QXwPIvul3wFjn5UhApoboGKxOEErpx3lfCcsCuE5/ygbrMZBXY3g2JkS0XiZ558DqN4
         TeSDcXRq7GaH3MaXRxHjJN15ruuvy2y6QD7LoEtIjEdeTBTvJnNRV0AFgc9lqZU5hgoP
         FOr8pnOmEYfQDwnKZravSrh0cux4jPAqT/JpCk723c0+XmcqFTEebCVww/IXuXr/m3CX
         8p+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757537098; x=1758141898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdj+uOiXuiIXzM1Vn3fcDOOxGOrxrCVtY7jUVpK65ZI=;
        b=e1vvTS7ORQGaZiUR5T3igALH9pqoQZvD9v61jB8EYwq+b2g9WjoneNdSjFoeK8B2vO
         +L2xND2ibA1p3PIEo066x/EVG/35VT3wfSKg1bLHkuk2MbQK6TxVNi/JEvVk7dnBo6CS
         VMdurklU+16AcZ1mJYcmdqyXxC9IYMx+N10jJ1S373Z5f3AArITTwo3Lp7fTLgvekeDW
         RL6JqdTm/ibET4oqQQRe7/+qgfsI8N1Jpng/X/t+xoL6NOJsN6vmqNnx4pD2WLX4bchn
         wVv89zbXhCQgA3e84nV8MfkZyDuFjXMTgp3fluj0Io927TXNBeov7aRxlZDpoqWOJAdu
         Tnag==
X-Forwarded-Encrypted: i=1; AJvYcCVgyKp5wHN1xmVBdYhAEbpVuQkWwDuakr+kgAR8eklCjsDNJx/LMqcvDHWYMS7OyJlIwP4PD0ajtP4DIyi9@lists.linaro.org
X-Gm-Message-State: AOJu0Yzc1a0DM8oba5aSAUOFHFZq9EVzFBu2zwigIsH/nkM6ZtuC0/vo
	unYmU0RUJz5R8zr5z7SSHeVl8AUFMO5smMd5ZZTpeAJeLhT5JO8OiCPHjt575QSt1pFa1K+s3kR
	pYkagnVa/AIuXlRKlzt6YsvTQ+tTkCrRJ0MKJkvJ/
X-Gm-Gg: ASbGnctL6umDssQQli2SAQDj2nlyxqJoh4oEhmz96QsB5eIlQ9bgTjweOLi1KTKMZ1X
	RV7QobrDcRZDEta3oEo8nkfAEToGz5JmfOxnzRnRAKfQeZH6d6Sru4qzIVSo4sIrPqxo76/fjqa
	D5SGyUWi+UoWbFrdWEs539AjVLfaWtePLAaILnEM76Ao5eT87OoCxzwiLEDC5fXaD6Bv1+Ff0aF
	xXol3Agt7OhvYnxUu3KK+c9KJE84MVFxRpcDCO1LZ4izhNrOdLh7E4=
X-Google-Smtp-Source: AGHT+IF/Fz2Y5nk02badGqITxY1/tzo4lRqGZ2Zao4nfkcXFZyjJgtYYuI6B/Fj3L639UAHyqOxbIJ21cF9JPLUpaI8=
X-Received: by 2002:a05:600c:1502:b0:45b:7d8f:4bd4 with SMTP id
 5b1f17b1804b1-45df74f81cemr1873365e9.4.1757537098041; Wed, 10 Sep 2025
 13:44:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250721-dma-buf-ecc-heap-v7-0-031836e1a942@kernel.org>
 <20250826-vagabond-catfish-of-courtesy-cbfa76@houat> <20250910-vigorous-attractive-gorilla-af6fec@houat>
In-Reply-To: <20250910-vigorous-attractive-gorilla-af6fec@houat>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 10 Sep 2025 13:44:45 -0700
X-Gm-Features: AS18NWDgBu3edPeSCZERO8HncQFGrRuZvzuC8yXw-tqKPcuIWCidg2bFxSYLb0U
Message-ID: <CABdmKX29ftpNro+d=Ce6JGoMaG0UQeBbzL7DXiBkGkC0nwacTQ@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 57D15454DC
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: BMOVHP72DRD2OA33AVWLTUFRJJS2FAGK
X-Message-ID-Hash: BMOVHP72DRD2OA33AVWLTUFRJJS2FAGK
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Jonathan Corbet <corbet@lwn.net>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/5] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BMOVHP72DRD2OA33AVWLTUFRJJS2FAGK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgMTAsIDIwMjUgYXQgMTI6MzPigK9BTSBNYXhpbWUgUmlwYXJkIDxtcmlwYXJk
QGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIEF1ZyAyNiwgMjAyNSBhdCAwOTozNjow
M0FNICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0KPiA+IEhpLA0KPiA+DQo+ID4gT24gTW9u
LCBKdWwgMjEsIDIwMjUgYXQgMDE6MTc6MjlQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToN
Cj4gPiA+IEhlcmUncyBhbm90aGVyIGF0dGVtcHQgYXQgc3VwcG9ydGluZyB1c2VyLXNwYWNlIGFs
bG9jYXRpb25zIGZyb20gYQ0KPiA+ID4gc3BlY2lmaWMgY2FydmVkLW91dCByZXNlcnZlZCBtZW1v
cnkgcmVnaW9uLg0KPiA+ID4NCj4gPiA+IFRoZSBpbml0aWFsIHByb2JsZW0gd2Ugd2VyZSBkaXNj
dXNzaW5nIHdhcyB0aGF0IEknbSBjdXJyZW50bHkgd29ya2luZyBvbg0KPiA+ID4gYSBwbGF0Zm9y
bSB3aGljaCBoYXMgYSBtZW1vcnkgbGF5b3V0IHdpdGggRUNDIGVuYWJsZWQuIEhvd2V2ZXIsIGVu
YWJsaW5nDQo+ID4gPiB0aGUgRUNDIGhhcyBhIG51bWJlciBvZiBkcmF3YmFja3Mgb24gdGhhdCBw
bGF0Zm9ybTogbG93ZXIgcGVyZm9ybWFuY2UsDQo+ID4gPiBpbmNyZWFzZWQgbWVtb3J5IHVzYWdl
LCBldGMuIFNvIGZvciB0aGluZ3MgbGlrZSBmcmFtZWJ1ZmZlcnMsIHRoZQ0KPiA+ID4gdHJhZGUt
b2ZmIGlzbid0IGdyZWF0IGFuZCB0aHVzIHRoZXJlJ3MgYSBtZW1vcnkgcmVnaW9uIHdpdGggRUND
IGRpc2FibGVkDQo+ID4gPiB0byBhbGxvY2F0ZSBmcm9tIGZvciBzdWNoIHVzZSBjYXNlcy4NCj4g
PiA+DQo+ID4gPiBBZnRlciBhIHN1Z2dlc3Rpb24gZnJvbSBKb2huLCBJIGNob3NlIHRvIGZpcnN0
IHN0YXJ0IHVzaW5nIGhlYXANCj4gPiA+IGFsbG9jYXRpb25zIGZsYWdzIHRvIGFsbG93IGZvciB1
c2Vyc3BhY2UgdG8gYXNrIGZvciBhIHBhcnRpY3VsYXIgRUNDDQo+ID4gPiBzZXR1cC4gVGhpcyBp
cyB0aGVuIGJhY2tlZCBieSBhIG5ldyBoZWFwIHR5cGUgdGhhdCBydW5zIGZyb20gcmVzZXJ2ZWQN
Cj4gPiA+IG1lbW9yeSBjaHVua3MgZmxhZ2dlZCBhcyBzdWNoLCBhbmQgdGhlIGV4aXN0aW5nIERU
IHByb3BlcnRpZXMgdG8gc3BlY2lmeQ0KPiA+ID4gdGhlIEVDQyBwcm9wZXJ0aWVzLg0KPiA+ID4N
Cj4gPiA+IEFmdGVyIGZ1cnRoZXIgZGlzY3Vzc2lvbiwgaXQgd2FzIGNvbnNpZGVyZWQgdGhhdCBm
bGFncyB3ZXJlIG5vdCB0aGUNCj4gPiA+IHJpZ2h0IHNvbHV0aW9uLCBhbmQgcmVseWluZyBvbiB0
aGUgbmFtZXMgb2YgdGhlIGhlYXBzIHdvdWxkIGJlIGVub3VnaCB0bw0KPiA+ID4gbGV0IHVzZXJz
cGFjZSBrbm93IHRoZSBraW5kIG9mIGJ1ZmZlciBpdCBkZWFscyB3aXRoLg0KPiA+ID4NCj4gPiA+
IFRodXMsIGV2ZW4gdGhvdWdoIHRoZSB1QVBJIHBhcnQgb2YgaXQgaGFkIGJlZW4gZHJvcHBlZCBp
biB0aGlzIHNlY29uZA0KPiA+ID4gdmVyc2lvbiwgd2Ugc3RpbGwgbmVlZGVkIGEgZHJpdmVyIHRv
IGNyZWF0ZSBoZWFwcyBvdXQgb2YgY2FydmVkLW91dCBtZW1vcnkNCj4gPiA+IHJlZ2lvbnMuIElu
IGFkZGl0aW9uIHRvIHRoZSBvcmlnaW5hbCB1c2VjYXNlLCBhIHNpbWlsYXIgZHJpdmVyIGNhbiBi
ZQ0KPiA+ID4gZm91bmQgaW4gQlNQcyBmcm9tIG1vc3QgdmVuZG9ycywgc28gSSBiZWxpZXZlIGl0
IHdvdWxkIGJlIGEgdXNlZnVsDQo+ID4gPiBhZGRpdGlvbiB0byB0aGUga2VybmVsLg0KPiA+ID4N
Cj4gPiA+IFNvbWUgZXh0cmEgZGlzY3Vzc2lvbiB3aXRoIFJvYiBIZXJyaW5nIFsxXSBjYW1lIHRv
IHRoZSBjb25jbHVzaW9uIHRoYXQNCj4gPiA+IHNvbWUgc3BlY2lmaWMgY29tcGF0aWJsZSBmb3Ig
dGhpcyBpcyBub3QgZ3JlYXQgZWl0aGVyLCBhbmQgYXMgc3VjaCBhbg0KPiA+ID4gbmV3IGRyaXZl
ciBwcm9iYWJseSBpc24ndCBjYWxsZWQgZm9yIGVpdGhlci4NCj4gPiA+DQo+ID4gPiBTb21lIG90
aGVyIGRpc2N1c3Npb25zIHdlIGhhZCB3aXRoIEpvaG4gWzJdIGFsc28gZHJvcHBlZCBzb21lIGhp
bnRzIHRoYXQNCj4gPiA+IG11bHRpcGxlIENNQSBoZWFwcyBtaWdodCBiZSBhIGdvb2QgaWRlYSwg
YW5kIHNvbWUgdmVuZG9ycyBzZWVtIHRvIGRvDQo+ID4gPiB0aGF0IHRvby4NCj4gPiA+DQo+ID4g
PiBTbyBoZXJlJ3MgYW5vdGhlciBhdHRlbXB0IHRoYXQgZG9lc24ndCBhZmZlY3QgdGhlIGRldmlj
ZSB0cmVlIGF0IGFsbCBhbmQNCj4gPiA+IHdpbGwganVzdCBjcmVhdGUgYSBoZWFwIGZvciBldmVy
eSBDTUEgcmVzZXJ2ZWQgbWVtb3J5IHJlZ2lvbi4NCj4gPiA+DQo+ID4gPiBJdCBhbHNvIGZhbGxz
IG5pY2VseSBpbnRvIHRoZSBjdXJyZW50IHBsYW4gd2UgaGF2ZSB0byBzdXBwb3J0IGNncm91cHMg
aW4NCj4gPiA+IERSTS9LTVMgYW5kIHY0bDIsIHdoaWNoIGlzIGFuIGFkZGl0aW9uYWwgYmVuZWZp
dC4NCj4gPiA+DQo+ID4gPiBMZXQgbWUga25vdyB3aGF0IHlvdSB0aGluaywNCj4gPiA+IE1heGlt
ZQ0KPiA+DQo+ID4gQW55IGNoYW5jZSB3ZSBjYW4gZ2V0IHRoaXMgbWVyZ2VkPw0KPg0KPiBHdXlz
LCBjYW4gd2UgbW92ZSBmb3J3YXJkIG9uIHRoaXM/DQo+DQo+IE1heGltZQ0KDQpIaSBNYXhpbWUs
DQoNClNvcnJ5IEkndmUgYmVlbiBNSUEgdGhlIGxhc3QgY291cGxlIG9mIG1vbnRocy4NCg0KVGhl
IGRvY3MgZm9yIHRoZSAicmV1c2FibGUiIHByb3BlcnR5IHNheSwgImRldmljZSBkcml2ZXIocykg
b3duaW5nIHRoZQ0KcmVnaW9uIG5lZWQgdG8gYmUgYWJsZSB0byByZWNsYWltIGl0IGJhY2siLCBi
dXQgaG93IGNhbiBhIGRyaXZlcg0KcmVjbGFpbSBtZW1vcnkgYmFja2luZyBhIGRtYWJ1Ziwgc2lu
Y2UgcGFnZXMgYWxsb2NhdGVkIGZvciBhIGRtYWJ1Zg0KYXJlbid0IG5lY2Vzc2FyaWx5IG1vdmFi
bGUuIENvdWxkbid0IGEgdXNlciBhbGxvY2F0ZSBhbGwgb2YgaXQsIGFuZA0KcmVmdXNlIHRvIGNs
b3NlIHRob3NlIGRtYWJ1ZnM/DQoNCkkgYmFja3BvcnRlZCB0aGlzIHRvIDYuNiBhbmQgcmFuIGl0
IG9uIGEgUGl4ZWwuIFdoaWxlIHRoZXJlIGFyZQ0KYWxyZWFkeSBzaW1pbGFyIG91dC1vZi10cmVl
IGRtYWJ1ZiBoZWFwIGRyaXZlcnMgdGhhdCBleHBvc2UgaGVhcHMgZm9yDQp0aGVzZSByZXNlcnZl
ZCByZWdpb25zLCB0aGV5IGRvIG1vcmUgdGhhbiBqdXN0IGNtYV9hbGxvYyAobXVsdGlwbGUNCmZs
YXZvcnMgb2YgYnVmZmVyIHNlY3VyaW5nLCB1c2UgY2FzZSBzcGVjaWZpYyBhbGlnbm1lbnQgYW5k
IHBhZGRpbmcsDQphbmQgc2xpZ2h0bHkgZGlmZmVyZW50IGFsbG9jYXRpb24gc3RyYXRlZ2llcykg
c28gSSBkb24ndCB0aGluayB0aGlzDQpzZXJpZXMgd291bGQgYWxsb3cgdXMgdG8gY29tcGxldGVs
eSBkcm9wIHRoZSBjdXN0b20gaGVhcCBjb2RlLCBidXQNCml0J3MgYSBuaWNlIHN0YXJ0LiBEb2Vz
IHRoZSBjZ3JvdXAgcGFydCBjb21lIGluIGJlY2F1c2UgdGhlIHBsYW4gaXMgdG8NCmFkZCBjaGFy
Z2luZyBpbiBjbWFfaGVhcC5jPw0KDQpUaGFua3MsDQpULkouDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
