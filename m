Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BC6BED37D
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Oct 2025 18:08:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECDDE3F6BF
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Oct 2025 16:08:47 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 565973F6BF
	for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Oct 2025 16:03:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Jg50WVq2;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.41 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b3e234fcd4bso489417966b.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Oct 2025 09:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760803406; x=1761408206; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3PDE1i70uMuyHnvAFVWfjyIRl/K/1UfDOKuhRPGumqU=;
        b=Jg50WVq23ixGuJc+4OuxG5F7In5YKYHcx0xkNR7/htZSBtbjVQoXOAM+WVrUxpR0RY
         XKKK7BNbxbMnWFwcDu+sXSnCyrmoKMOenOOM0GrqoCG/I7L32NxJbGj5lLkyxLqj4LaR
         qh+Uf6esseIrYRk5/7rQGJx2q8V78OG2JRHkdZgp1Jcc7+DA1F3cYjiauGkZLZVitwkj
         JdjD61uZqPGCb/s6vSWOfodU3uDajcXWbG6rqPrxRL/q5e/24whbqNm6IhMMRxDQZHgH
         /uvD7Xfz9pVsT2fDLGba9HvmbjsWoy5zaLtTp6aCtG8fdU7u8OK45G52CYOTwVsYdfrB
         /f3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760803406; x=1761408206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3PDE1i70uMuyHnvAFVWfjyIRl/K/1UfDOKuhRPGumqU=;
        b=GbqW2WL40HjNrAvM+TPClxiNnzmdjGVYgpHGWYdNyi2vXr3Y3qu9tDdeRyrlFko/3R
         MMp2kTBaCw8rHS4xHOj6niGfou2OznW3dfYHwAows/LfJvr/TJw1CPOxIyin8n4CNi2O
         +cdo96Sa7P3iYTmszATt9rqR8GzDfhF82vKRQEK6irb/KNVxCUZSwk0ukZAI3ZmOdM4n
         pjjtfHIGnRKpPNHUVJpV8AUYvM0DU80bQRa7mx9iVL0EnmJo1No4RfKC+fv98fDWKToy
         rg6YZzNFU4QrV9plB3sBFVD9FWIcDa5PWZItzCTsjfGAv2N7vp2WBhbcPlRTaA1qdkqX
         Yd+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUtZBip+RXpJ5cEUp0oVC7lGU46T+8p0jJqLixOFhDk1tna+hUHcqC6a2q0c5NSUzorsRvvM6BNRlEv/k/1@lists.linaro.org
X-Gm-Message-State: AOJu0Yxi+FuZWgVs+asC+PjMhzgoeK/WFIEo9vMzDBoWgJZcdCXz8LFR
	ZfHE9OGfDoIsUr94M0I0cYyFbMU38jXNLo31q62ziOsGN0d9CLUIt5tHENY+0NSqA1tDaDFdXCG
	NRn/H58zQ3rlWR9vzpB5gu1EpZG+ZRsGH85Tz4cgrqbEw
X-Gm-Gg: ASbGncv1Rkqrmvxv/uSNIQkm95lNh/ZBZKSJwCBZisZ2YbpiB7CdKSq7H5FrPeoSSkf
	6krDOfsjgX03Vzakg4YNTj9z7VNRycRbd1uBFdbVOPN3xZG5OtjX6WVLiuwEMHSYU15FEn6In7H
	xl0dwhmmw62Nfee5OF9dahbewRMDCvxSWjZp+i8RIkV89fekbepKgCB4j3Pis/ZChc0b2MRxmoY
	QQmR5+KQmxO94eDPL9v2RC5NjoudJba49+lrRSirm06ovw/VcwzyfBgXJ7x94mDvSqxTNNrX84o
	sn4C4E3AComWtZiEZYV0YkJyb6k=
X-Google-Smtp-Source: AGHT+IHexk19IgNk6IuP2jV+2x2wF7f0unp4c1GwwYyOBf/8w9heBdr+ysi7d7B9dpzKsMkgpYC1PUK3YyRIdsL9bbA=
X-Received: by 2002:a17:907:97d4:b0:b2a:10a3:7113 with SMTP id
 a640c23a62f3a-b64725722f3mr807862966b.29.1760803406106; Sat, 18 Oct 2025
 09:03:26 -0700 (PDT)
MIME-Version: 1.0
References: <20251013-dma-buf-ecc-heap-v8-0-04ce150ea3d9@kernel.org> <CAO_48GGD8sCoQt_qWKqcbg6v7Cyi5U9QsxsvNOcqfkLRqHS7_w@mail.gmail.com>
In-Reply-To: <CAO_48GGD8sCoQt_qWKqcbg6v7Cyi5U9QsxsvNOcqfkLRqHS7_w@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Sat, 18 Oct 2025 21:33:14 +0530
X-Gm-Features: AS18NWCxIWZfRS3hG4C_yzteaWS7C2gP5_aCiLwTRjHCdW6sGbeW-DvFPRdxwEc
Message-ID: <CAO_48GEXC0FDkeRN57e5Yc=4WCwjh=9pDpZXjowZzEaPPsAd-w@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 565973F6BF
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.41:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.218.41:from];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: KOUAKQKPDHLFN3ZSFBMZ6DCEQ7L7MAJS
X-Message-ID-Hash: KOUAKQKPDHLFN3ZSFBMZ6DCEQ7L7MAJS
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 0/5] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KOUAKQKPDHLFN3ZSFBMZ6DCEQ7L7MAJS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAxNSBPY3QgMjAyNSBhdCAxMzo1MywgU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxA
bGluYXJvLm9yZz4gd3JvdGU6DQo+DQo+IEhpIE1heGltZSwNCj4NCj4gT24gTW9uLCAxMyBPY3Qg
MjAyNSBhdCAxNDowNSwgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiB3cm90ZToN
Cj4gPg0KPiA+IEhpLA0KPiA+DQo+ID4gSGVyZSdzIGFub3RoZXIgYXR0ZW1wdCBhdCBzdXBwb3J0
aW5nIHVzZXItc3BhY2UgYWxsb2NhdGlvbnMgZnJvbSBhDQo+ID4gc3BlY2lmaWMgY2FydmVkLW91
dCByZXNlcnZlZCBtZW1vcnkgcmVnaW9uLg0KPg0KPg0KPiBUaGFuayB5b3UgZm9yIHRoZSBzZXJp
ZXMgLSBJIHRoaW5rIGl0IGxvb2tzIHByZXR0eSBkZWNlbnQsIGFuZCB3aXRoDQo+IE1hcmVrJ3Mg
QWNrZWQtYnkgZm9yIHRoZSBjbWEgcGF0Y2ggWzFdLCBJJ20gaW5jbGluZWQgdG8gbWVyZ2UgaXQu
DQo+DQo+IEknbGwgd2FpdCB0aWxsIHRvZGF5IGV2ZW5pbmcsIGluIGNhc2UgdGhlcmUgYXJlIGFu
eSBtb3JlIGNvbW1lbnRzLCBhbmQNCj4gdGhlbiBnbyBhaGVhZCBhbmQgbWVyZ2UgaXQuDQoNCg0K
VGhhbmsgeW91OyBpdCdzIG1lcmdlZCB0byBkcm0tbWlzYy1uZXh0IG5vdy4NCj4NCj4NCj4gQmVz
dCwNCj4gU3VtaXQuDQo+DQo+ID4NCj4gPiBUaGUgaW5pdGlhbCBwcm9ibGVtIHdlIHdlcmUgZGlz
Y3Vzc2luZyB3YXMgdGhhdCBJJ20gY3VycmVudGx5IHdvcmtpbmcgb24NCj4gPiBhIHBsYXRmb3Jt
IHdoaWNoIGhhcyBhIG1lbW9yeSBsYXlvdXQgd2l0aCBFQ0MgZW5hYmxlZC4gSG93ZXZlciwgZW5h
YmxpbmcNCj4gPiB0aGUgRUNDIGhhcyBhIG51bWJlciBvZiBkcmF3YmFja3Mgb24gdGhhdCBwbGF0
Zm9ybTogbG93ZXIgcGVyZm9ybWFuY2UsDQo+ID4gaW5jcmVhc2VkIG1lbW9yeSB1c2FnZSwgZXRj
LiBTbyBmb3IgdGhpbmdzIGxpa2UgZnJhbWVidWZmZXJzLCB0aGUNCj4gPiB0cmFkZS1vZmYgaXNu
J3QgZ3JlYXQgYW5kIHRodXMgdGhlcmUncyBhIG1lbW9yeSByZWdpb24gd2l0aCBFQ0MgZGlzYWJs
ZWQNCj4gPiB0byBhbGxvY2F0ZSBmcm9tIGZvciBzdWNoIHVzZSBjYXNlcy4NCj4gPg0KPiA+IEFm
dGVyIGEgc3VnZ2VzdGlvbiBmcm9tIEpvaG4sIEkgY2hvc2UgdG8gZmlyc3Qgc3RhcnQgdXNpbmcg
aGVhcA0KPiA+IGFsbG9jYXRpb25zIGZsYWdzIHRvIGFsbG93IGZvciB1c2Vyc3BhY2UgdG8gYXNr
IGZvciBhIHBhcnRpY3VsYXIgRUNDDQo+ID4gc2V0dXAuIFRoaXMgaXMgdGhlbiBiYWNrZWQgYnkg
YSBuZXcgaGVhcCB0eXBlIHRoYXQgcnVucyBmcm9tIHJlc2VydmVkDQo+ID4gbWVtb3J5IGNodW5r
cyBmbGFnZ2VkIGFzIHN1Y2gsIGFuZCB0aGUgZXhpc3RpbmcgRFQgcHJvcGVydGllcyB0byBzcGVj
aWZ5DQo+ID4gdGhlIEVDQyBwcm9wZXJ0aWVzLg0KPiA+DQo+ID4gQWZ0ZXIgZnVydGhlciBkaXNj
dXNzaW9uLCBpdCB3YXMgY29uc2lkZXJlZCB0aGF0IGZsYWdzIHdlcmUgbm90IHRoZQ0KPiA+IHJp
Z2h0IHNvbHV0aW9uLCBhbmQgcmVseWluZyBvbiB0aGUgbmFtZXMgb2YgdGhlIGhlYXBzIHdvdWxk
IGJlIGVub3VnaCB0bw0KPiA+IGxldCB1c2Vyc3BhY2Uga25vdyB0aGUga2luZCBvZiBidWZmZXIg
aXQgZGVhbHMgd2l0aC4NCj4gPg0KPiA+IFRodXMsIGV2ZW4gdGhvdWdoIHRoZSB1QVBJIHBhcnQg
b2YgaXQgaGFkIGJlZW4gZHJvcHBlZCBpbiB0aGlzIHNlY29uZA0KPiA+IHZlcnNpb24sIHdlIHN0
aWxsIG5lZWRlZCBhIGRyaXZlciB0byBjcmVhdGUgaGVhcHMgb3V0IG9mIGNhcnZlZC1vdXQgbWVt
b3J5DQo+ID4gcmVnaW9ucy4gSW4gYWRkaXRpb24gdG8gdGhlIG9yaWdpbmFsIHVzZWNhc2UsIGEg
c2ltaWxhciBkcml2ZXIgY2FuIGJlDQo+ID4gZm91bmQgaW4gQlNQcyBmcm9tIG1vc3QgdmVuZG9y
cywgc28gSSBiZWxpZXZlIGl0IHdvdWxkIGJlIGEgdXNlZnVsDQo+ID4gYWRkaXRpb24gdG8gdGhl
IGtlcm5lbC4NCj4gPg0KPiA+IFNvbWUgZXh0cmEgZGlzY3Vzc2lvbiB3aXRoIFJvYiBIZXJyaW5n
IFsxXSBjYW1lIHRvIHRoZSBjb25jbHVzaW9uIHRoYXQNCj4gPiBzb21lIHNwZWNpZmljIGNvbXBh
dGlibGUgZm9yIHRoaXMgaXMgbm90IGdyZWF0IGVpdGhlciwgYW5kIGFzIHN1Y2ggYW4NCj4gPiBu
ZXcgZHJpdmVyIHByb2JhYmx5IGlzbid0IGNhbGxlZCBmb3IgZWl0aGVyLg0KPiA+DQo+ID4gU29t
ZSBvdGhlciBkaXNjdXNzaW9ucyB3ZSBoYWQgd2l0aCBKb2huIFsyXSBhbHNvIGRyb3BwZWQgc29t
ZSBoaW50cyB0aGF0DQo+ID4gbXVsdGlwbGUgQ01BIGhlYXBzIG1pZ2h0IGJlIGEgZ29vZCBpZGVh
LCBhbmQgc29tZSB2ZW5kb3JzIHNlZW0gdG8gZG8NCj4gPiB0aGF0IHRvby4NCj4gPg0KPiA+IFNv
IGhlcmUncyBhbm90aGVyIGF0dGVtcHQgdGhhdCBkb2Vzbid0IGFmZmVjdCB0aGUgZGV2aWNlIHRy
ZWUgYXQgYWxsIGFuZA0KPiA+IHdpbGwganVzdCBjcmVhdGUgYSBoZWFwIGZvciBldmVyeSBDTUEg
cmVzZXJ2ZWQgbWVtb3J5IHJlZ2lvbi4NCj4gPg0KPiA+IEl0IGFsc28gZmFsbHMgbmljZWx5IGlu
dG8gdGhlIGN1cnJlbnQgcGxhbiB3ZSBoYXZlIHRvIHN1cHBvcnQgY2dyb3VwcyBpbg0KPiA+IERS
TS9LTVMgYW5kIHY0bDIsIHdoaWNoIGlzIGFuIGFkZGl0aW9uYWwgYmVuZWZpdC4NCj4gPg0KPiA+
IExldCBtZSBrbm93IHdoYXQgeW91IHRoaW5rLA0KPiA+IE1heGltZQ0KPiA+DQo+ID4gMTogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNzA3LWNvYmFsdC1kaW5nby1vZi1zZXJlbml0
eS1kYmY5MmNAaG91YXQvDQo+ID4gMjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL0NBTkRo
TkNyb2U2WkJ0Tl9vPWM3MWt6RkZhV0stZkY1ckNkbnI5UDVoMXNnUE9XU0dTd0BtYWlsLmdtYWls
LmNvbS8NCj4gPg0KPiA+IExldCBtZSBrbm93IHdoYXQgeW91IHRoaW5rLA0KPiA+IE1heGltZQ0K
PiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3Jn
Pg0KPiA+IC0tLQ0KPiA+IENoYW5nZXMgaW4gdjg6DQo+ID4gLSBSZWJhc2VkIG9uIHRvcCBvZiA2
LjE4LXJjMQ0KPiA+IC0gQWRkZWQgVEogUi1iDQo+ID4gLSBMaW5rIHRvIHY3OiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9yLzIwMjUwNzIxLWRtYS1idWYtZWNjLWhlYXAtdjctMC0wMzE4MzZlMWE5
NDJAa2VybmVsLm9yZw0KPiA+DQo+ID4gQ2hhbmdlcyBpbiB2NzoNCj4gPiAtIEludmVydCB0aGUg
bG9naWMgYW5kIHJlZ2lzdGVyIENNQSBoZWFwIGZyb20gdGhlIHJlc2VydmVkIG1lbW9yeSAvDQo+
ID4gICBkbWEgY29udGlndW91cyBjb2RlLCBpbnN0ZWFkIG9mIGl0ZXJhdGluZyBvdmVyIHRoZW0g
ZnJvbSB0aGUgQ01BIGhlYXAuDQo+ID4gLSBMaW5rIHRvIHY2OiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzIwMjUwNzA5LWRtYS1idWYtZWNjLWhlYXAtdjYtMC1kYWM5YmY4MGYzNWRAa2VybmVs
Lm9yZw0KPiA+DQo+ID4gQ2hhbmdlcyBpbiB2NjoNCj4gPiAtIERyb3AgdGhlIG5ldyBkcml2ZXIg
YW5kIGFsbG9jYXRlIGEgQ01BIGhlYXAgZm9yIGVhY2ggcmVnaW9uIG5vdw0KPiA+IC0gRHJvcHBl
ZCB0aGUgYmluZGluZw0KPiA+IC0gUmViYXNlZCBvbiA2LjE2LXJjNQ0KPiA+IC0gTGluayB0byB2
NTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDYxNy1kbWEtYnVmLWVjYy1oZWFwLXY1
LTAtMGFiZGM1ODYzYTRmQGtlcm5lbC5vcmcNCj4gPg0KPiA+IENoYW5nZXMgaW4gdjU6DQo+ID4g
LSBSZWJhc2VkIG9uIDYuMTYtcmMyDQo+ID4gLSBTd2l0Y2ggZnJvbSBwcm9wZXJ0eSB0byBkZWRp
Y2F0ZWQgYmluZGluZw0KPiA+IC0gTGluayB0byB2NDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ci8yMDI1MDUyMC1kbWEtYnVmLWVjYy1oZWFwLXY0LTEtYmQyZTFmMWJiNDJjQGtlcm5lbC5vcmcN
Cj4gPg0KPiA+IENoYW5nZXMgaW4gdjQ6DQo+ID4gLSBSZWJhc2VkIG9uIDYuMTUtcmM3DQo+ID4g
LSBNYXAgYnVmZmVycyBvbmx5IHdoZW4gbWFwIGlzIGFjdHVhbGx5IGNhbGxlZCwgbm90IGF0IGFs
bG9jYXRpb24gdGltZQ0KPiA+IC0gRGVhbCB3aXRoIHJlc3RyaWN0ZWQtZG1hLXBvb2wgYW5kIHNo
YXJlZC1kbWEtcG9vbA0KPiA+IC0gUmV3b3JkIEtjb25maWcgb3B0aW9ucw0KPiA+IC0gUHJvcGVy
bHkgcmVwb3J0IGRtYV9tYXBfc2d0YWJsZSBmYWlsdXJlcw0KPiA+IC0gTGluayB0byB2MzogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDQwNy1kbWEtYnVmLWVjYy1oZWFwLXYzLTAtOTdj
ZGQzNmE1ZjI5QGtlcm5lbC5vcmcNCj4gPg0KPiA+IENoYW5nZXMgaW4gdjM6DQo+ID4gLSBSZXdv
cmtlZCBnbG9iYWwgdmFyaWFibGUgcGF0Y2gNCj4gPiAtIExpbmsgdG8gdjI6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3IvMjAyNTA0MDEtZG1hLWJ1Zi1lY2MtaGVhcC12Mi0wLTA0M2ZkMDA2YTFh
ZkBrZXJuZWwub3JnDQo+ID4NCj4gPiBDaGFuZ2VzIGluIHYyOg0KPiA+IC0gQWRkIHZtYXAvdnVu
bWFwIG9wZXJhdGlvbnMNCj4gPiAtIERyb3AgRUNDIGZsYWdzIHVhcGkNCj4gPiAtIFJlYmFzZSBv
biB0b3Agb2YgNi4xNA0KPiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ci8yMDI0MDUxNS1kbWEtYnVmLWVjYy1oZWFwLXYxLTAtNTRjYmJkMDQ5NTExQGtlcm5lbC5vcmcN
Cj4gPg0KPiA+IC0tLQ0KPiA+IE1heGltZSBSaXBhcmQgKDUpOg0KPiA+ICAgICAgIGRvYzogZG1h
LWJ1ZjogTGlzdCB0aGUgaGVhcHMgYnkgbmFtZQ0KPiA+ICAgICAgIGRtYS1idWY6IGhlYXBzOiBj
bWE6IFJlZ2lzdGVyIGxpc3Qgb2YgQ01BIHJlZ2lvbnMgYXQgYm9vdA0KPiA+ICAgICAgIGRtYTog
Y29udGlndW91czogUmVnaXN0ZXIgcmV1c2FibGUgQ01BIHJlZ2lvbnMgYXQgYm9vdA0KPiA+ICAg
ICAgIGRtYTogY29udGlndW91czogUmVzZXJ2ZSBkZWZhdWx0IENNQSBoZWFwDQo+ID4gICAgICAg
ZG1hLWJ1ZjogaGVhcHM6IGNtYTogQ3JlYXRlIENNQSBoZWFwIGZvciBlYWNoIENNQSByZXNlcnZl
ZCByZWdpb24NCj4gPg0KPiA+ICBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1o
ZWFwcy5yc3QgfCAyNCArKysrKysrKy0tLS0tLQ0KPiA+ICBNQUlOVEFJTkVSUyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgMSArDQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9LY29uZmlnICAgICAgICAgICAgICAgICB8IDEwIC0tLS0tLQ0KPiA+ICBkcml2ZXJzL2RtYS1i
dWYvaGVhcHMvY21hX2hlYXAuYyAgICAgICAgICAgICAgfCA0NyArKysrKysrKysrKysrKysrKy0t
LS0tLS0tLS0NCj4gPiAgaW5jbHVkZS9saW51eC9kbWEtYnVmL2hlYXBzL2NtYS5oICAgICAgICAg
ICAgIHwgMTYgKysrKysrKysrDQo+ID4gIGtlcm5lbC9kbWEvY29udGlndW91cy5jICAgICAgICAg
ICAgICAgICAgICAgICB8IDExICsrKysrKysNCj4gPiAgNiBmaWxlcyBjaGFuZ2VkLCA3MiBpbnNl
cnRpb25zKCspLCAzNyBkZWxldGlvbnMoLSkNCj4gPiAtLS0NCj4gPiBiYXNlLWNvbW1pdDogNDc2
MzMwOTlhNjcyZmM3YmZlNjA0ZWY0NTRlNGYxMTZlMmM5NTRiMQ0KPiA+IGNoYW5nZS1pZDogMjAy
NDA1MTUtZG1hLWJ1Zi1lY2MtaGVhcC0yOGEzMTFkMmM5NGUNCj4gPiBwcmVyZXF1aXNpdGUtbWVz
c2FnZS1pZDogPDIwMjUwNjEwMTMxMjMxLjE3MjQ2MjctMS1qa2FuZ2FzQHJlZGhhdC5jb20+DQo+
ID4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBiYzQ0YmU1OTY4ZmViMTg3ZjJiYzFiODA3NGFmNzIw
OTQ2MmIxOGU3DQo+ID4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBmMDJhOTFiNzIzZTVlYzAxZmJm
ZWRmM2MzOTA1MjE4YjQzZDQzMmRhDQo+ID4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBlOTQ0ZDBh
M2UyMmYyY2RmNGQzYjM5MDZlNTYwM2FmOTM0Njk2ZGViDQo+ID4NCj4gPiBCZXN0IHJlZ2FyZHMs
DQo+ID4gLS0NCj4gPiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+ID4NCj4N
Cj4NCj4gLS0NCj4gVGhhbmtzIGFuZCByZWdhcmRzLA0KPg0KPiBTdW1pdCBTZW13YWwgKGhlIC8g
aGltKQ0KPiBTZW5pb3IgVGVjaCBMZWFkIC0gQW5kcm9pZCwgUGxhdGZvcm1zIGFuZCBWaXJ0dWFs
aXNhdGlvbg0KPiBMaW5hcm8ub3JnIOKUgiBBcm0gU29sdXRpb25zIGF0IExpZ2h0IFNwZWVkDQoN
Cg0KDQotLSANClRoYW5rcyBhbmQgcmVnYXJkcywNCg0KU3VtaXQgU2Vtd2FsIChoZSAvIGhpbSkN
ClNlbmlvciBUZWNoIExlYWQgLSBBbmRyb2lkLCBQbGF0Zm9ybXMgYW5kIFZpcnR1YWxpc2F0aW9u
DQpMaW5hcm8ub3JnIOKUgiBBcm0gU29sdXRpb25zIGF0IExpZ2h0IFNwZWVkDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
