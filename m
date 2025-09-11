Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3335DB53841
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 17:52:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 479C744A58
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 15:52:52 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 6D9EF44209
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 15:52:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Q4bAW8Gh;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45dd9d72f61so103175e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 08:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1757605959; x=1758210759; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=foMaJCpT5aQB0DVDGayrfvczYmTKtjYQaxnfqBcxeQk=;
        b=Q4bAW8Gh0GRAtXV589VMUb4T2gOpYJqKY7l60i1Hlll2v357yuQmXUB0LZp+aXJkue
         OrbuJgPUHZR9iC2/iuTbHWSsFaY32bGfFZrZn/qKg5lKb3oV9KxTrHNbupzePx7Amr5d
         S9mhzxXkxlKNELlxjcCH4gb6mxPjlEj09qOkchUXIuY9I35nyr20HsfkE1Y8+vXIbWhU
         MNBDOyyXn7EkJVR1lUTwvsFqI6jAI+NasePiSKtsUNnuKIRsmiS/IS9JSLs8Vb84eZ9B
         VJV7dcM4Oj5u8rNRljvUIqVFH7k6X1Lw0VnsIz6Kbval4fyXmL082KR7iJUwC9GW9KVi
         FiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757605959; x=1758210759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=foMaJCpT5aQB0DVDGayrfvczYmTKtjYQaxnfqBcxeQk=;
        b=SEaCIUEvTQjg4/y6W6e78RQQEE0nrBmMq7hTXbvyYpcoZtGfXW8NvhboRdLdJJUNia
         lgmYOzVbMzR6E6yDim/38cys8cBoRQ7tXCxwz1Enjqtce5o4WVjnOBwnYHbjjssr/tfc
         PBdgM21qRTqc+jZpgDgX1ZEVVADaozkfYq75Dm7ItLQM5uJp7XnGKAIafVlQLvLq/CIp
         zuJmAHm4HiJLjeDVCTEGPpzFDBTOFcEogvzFnOnF8fdUOUvtmD74Do28kROF3+fpO4JO
         IhyQ0jjq2dPzHlSYtTfTXBS6wALLxBw+UKTn/gfXEKnPtLJbRdg2NfoKWAI382+lNfd6
         VJkg==
X-Forwarded-Encrypted: i=1; AJvYcCUoWWX2yX0Ln0B4hNxQ4hUaFnqOilOoKuzQ+UPWm+sKtyJJFIlT01iVgdcwyGBq4aCUqnHeGj97BBbhh80E@lists.linaro.org
X-Gm-Message-State: AOJu0YwAzUEC+qNh92guRXgpQbvBmv4T94v5O+QJ4ieygRvKq+JSS1ST
	k+ULI6XocwIbJWNP3XSx6FdLXKhaU3TAA6nP6KOk7myQXWFJSguHDrX32XjjTowtRZIiSa7mc9D
	HyuZGmsY8BrAV6tGjxLRZPdUySTUQ3UnmZiLtreWA
X-Gm-Gg: ASbGncvONG3zr3sBShSBoEuwQU6zlTdjvDSnKxl8u0+KM2ojWa4GbNLZr9DyKRgYbv+
	aMrIb/fPcbNLZsAV3Bp6ZJLoJMZ+8nZyK8bn/IBx7lPFpjcSPn1K3Yxw+Vpw/uheaPs7g8tW6ng
	+VHEExhMM/c4f1GytufVcB2R1VaKn42pCKEvcJTx/dhKyFErqN6BXlgxZj2OmNqZxo/ueucdtbb
	gzkBRBlNZS52tanWMFR7uv/FtDGkQojShgYV376Oh0=
X-Google-Smtp-Source: AGHT+IFPtXGS3xfleXOqxUh4NB8MIkaUyVVSq3pObyoX2WKiKcEimPgaW/wvhaqmwPl3cn8wFgGAwaPg27+INgq99jg=
X-Received: by 2002:a05:600c:4193:b0:45c:b621:9199 with SMTP id
 5b1f17b1804b1-45df821ead8mr2846075e9.7.1757605959182; Thu, 11 Sep 2025
 08:52:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250721-dma-buf-ecc-heap-v7-0-031836e1a942@kernel.org>
 <20250826-vagabond-catfish-of-courtesy-cbfa76@houat> <20250910-vigorous-attractive-gorilla-af6fec@houat>
 <CABdmKX29ftpNro+d=Ce6JGoMaG0UQeBbzL7DXiBkGkC0nwacTQ@mail.gmail.com> <20250911-didactic-authentic-cockle-e6d5fc@houat>
In-Reply-To: <20250911-didactic-authentic-cockle-e6d5fc@houat>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 11 Sep 2025 08:52:27 -0700
X-Gm-Features: AS18NWAeBqzBQ72YMefW3bpdVUuxd7DtaUCa6fSUYA3My40EoN0I9-kxEb7x3sc
Message-ID: <CABdmKX1RhwgHb1EizSHUE0PHnxgXib7C8=ZWuVeCi6QetQgGSw@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6D9EF44209
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: BCSXWLRJOYI3QWEYUESF5ZDRBW2SXJBJ
X-Message-ID-Hash: BCSXWLRJOYI3QWEYUESF5ZDRBW2SXJBJ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Jonathan Corbet <corbet@lwn.net>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/5] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BCSXWLRJOYI3QWEYUESF5ZDRBW2SXJBJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBTZXAgMTEsIDIwMjUgYXQgMTI6MDHigK9BTSBNYXhpbWUgUmlwYXJkIDxtcmlwYXJk
QGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBIaSBUSiwNCj4NCj4gT24gV2VkLCBTZXAgMTAsIDIw
MjUgYXQgMDE6NDQ6NDVQTSAtMDcwMCwgVC5KLiBNZXJjaWVyIHdyb3RlOg0KPiA+IE9uIFdlZCwg
U2VwIDEwLCAyMDI1IGF0IDEyOjMz4oCvQU0gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwu
b3JnPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiBUdWUsIEF1ZyAyNiwgMjAyNSBhdCAwOTozNjow
M0FNICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0KPiA+ID4gPiBIaSwNCj4gPiA+ID4NCj4g
PiA+ID4gT24gTW9uLCBKdWwgMjEsIDIwMjUgYXQgMDE6MTc6MjlQTSArMDIwMCwgTWF4aW1lIFJp
cGFyZCB3cm90ZToNCj4gPiA+ID4gPiBIZXJlJ3MgYW5vdGhlciBhdHRlbXB0IGF0IHN1cHBvcnRp
bmcgdXNlci1zcGFjZSBhbGxvY2F0aW9ucyBmcm9tIGENCj4gPiA+ID4gPiBzcGVjaWZpYyBjYXJ2
ZWQtb3V0IHJlc2VydmVkIG1lbW9yeSByZWdpb24uDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBUaGUg
aW5pdGlhbCBwcm9ibGVtIHdlIHdlcmUgZGlzY3Vzc2luZyB3YXMgdGhhdCBJJ20gY3VycmVudGx5
IHdvcmtpbmcgb24NCj4gPiA+ID4gPiBhIHBsYXRmb3JtIHdoaWNoIGhhcyBhIG1lbW9yeSBsYXlv
dXQgd2l0aCBFQ0MgZW5hYmxlZC4gSG93ZXZlciwgZW5hYmxpbmcNCj4gPiA+ID4gPiB0aGUgRUND
IGhhcyBhIG51bWJlciBvZiBkcmF3YmFja3Mgb24gdGhhdCBwbGF0Zm9ybTogbG93ZXIgcGVyZm9y
bWFuY2UsDQo+ID4gPiA+ID4gaW5jcmVhc2VkIG1lbW9yeSB1c2FnZSwgZXRjLiBTbyBmb3IgdGhp
bmdzIGxpa2UgZnJhbWVidWZmZXJzLCB0aGUNCj4gPiA+ID4gPiB0cmFkZS1vZmYgaXNuJ3QgZ3Jl
YXQgYW5kIHRodXMgdGhlcmUncyBhIG1lbW9yeSByZWdpb24gd2l0aCBFQ0MgZGlzYWJsZWQNCj4g
PiA+ID4gPiB0byBhbGxvY2F0ZSBmcm9tIGZvciBzdWNoIHVzZSBjYXNlcy4NCj4gPiA+ID4gPg0K
PiA+ID4gPiA+IEFmdGVyIGEgc3VnZ2VzdGlvbiBmcm9tIEpvaG4sIEkgY2hvc2UgdG8gZmlyc3Qg
c3RhcnQgdXNpbmcgaGVhcA0KPiA+ID4gPiA+IGFsbG9jYXRpb25zIGZsYWdzIHRvIGFsbG93IGZv
ciB1c2Vyc3BhY2UgdG8gYXNrIGZvciBhIHBhcnRpY3VsYXIgRUNDDQo+ID4gPiA+ID4gc2V0dXAu
IFRoaXMgaXMgdGhlbiBiYWNrZWQgYnkgYSBuZXcgaGVhcCB0eXBlIHRoYXQgcnVucyBmcm9tIHJl
c2VydmVkDQo+ID4gPiA+ID4gbWVtb3J5IGNodW5rcyBmbGFnZ2VkIGFzIHN1Y2gsIGFuZCB0aGUg
ZXhpc3RpbmcgRFQgcHJvcGVydGllcyB0byBzcGVjaWZ5DQo+ID4gPiA+ID4gdGhlIEVDQyBwcm9w
ZXJ0aWVzLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gQWZ0ZXIgZnVydGhlciBkaXNjdXNzaW9uLCBp
dCB3YXMgY29uc2lkZXJlZCB0aGF0IGZsYWdzIHdlcmUgbm90IHRoZQ0KPiA+ID4gPiA+IHJpZ2h0
IHNvbHV0aW9uLCBhbmQgcmVseWluZyBvbiB0aGUgbmFtZXMgb2YgdGhlIGhlYXBzIHdvdWxkIGJl
IGVub3VnaCB0bw0KPiA+ID4gPiA+IGxldCB1c2Vyc3BhY2Uga25vdyB0aGUga2luZCBvZiBidWZm
ZXIgaXQgZGVhbHMgd2l0aC4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFRodXMsIGV2ZW4gdGhvdWdo
IHRoZSB1QVBJIHBhcnQgb2YgaXQgaGFkIGJlZW4gZHJvcHBlZCBpbiB0aGlzIHNlY29uZA0KPiA+
ID4gPiA+IHZlcnNpb24sIHdlIHN0aWxsIG5lZWRlZCBhIGRyaXZlciB0byBjcmVhdGUgaGVhcHMg
b3V0IG9mIGNhcnZlZC1vdXQgbWVtb3J5DQo+ID4gPiA+ID4gcmVnaW9ucy4gSW4gYWRkaXRpb24g
dG8gdGhlIG9yaWdpbmFsIHVzZWNhc2UsIGEgc2ltaWxhciBkcml2ZXIgY2FuIGJlDQo+ID4gPiA+
ID4gZm91bmQgaW4gQlNQcyBmcm9tIG1vc3QgdmVuZG9ycywgc28gSSBiZWxpZXZlIGl0IHdvdWxk
IGJlIGEgdXNlZnVsDQo+ID4gPiA+ID4gYWRkaXRpb24gdG8gdGhlIGtlcm5lbC4NCj4gPiA+ID4g
Pg0KPiA+ID4gPiA+IFNvbWUgZXh0cmEgZGlzY3Vzc2lvbiB3aXRoIFJvYiBIZXJyaW5nIFsxXSBj
YW1lIHRvIHRoZSBjb25jbHVzaW9uIHRoYXQNCj4gPiA+ID4gPiBzb21lIHNwZWNpZmljIGNvbXBh
dGlibGUgZm9yIHRoaXMgaXMgbm90IGdyZWF0IGVpdGhlciwgYW5kIGFzIHN1Y2ggYW4NCj4gPiA+
ID4gPiBuZXcgZHJpdmVyIHByb2JhYmx5IGlzbid0IGNhbGxlZCBmb3IgZWl0aGVyLg0KPiA+ID4g
PiA+DQo+ID4gPiA+ID4gU29tZSBvdGhlciBkaXNjdXNzaW9ucyB3ZSBoYWQgd2l0aCBKb2huIFsy
XSBhbHNvIGRyb3BwZWQgc29tZSBoaW50cyB0aGF0DQo+ID4gPiA+ID4gbXVsdGlwbGUgQ01BIGhl
YXBzIG1pZ2h0IGJlIGEgZ29vZCBpZGVhLCBhbmQgc29tZSB2ZW5kb3JzIHNlZW0gdG8gZG8NCj4g
PiA+ID4gPiB0aGF0IHRvby4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFNvIGhlcmUncyBhbm90aGVy
IGF0dGVtcHQgdGhhdCBkb2Vzbid0IGFmZmVjdCB0aGUgZGV2aWNlIHRyZWUgYXQgYWxsIGFuZA0K
PiA+ID4gPiA+IHdpbGwganVzdCBjcmVhdGUgYSBoZWFwIGZvciBldmVyeSBDTUEgcmVzZXJ2ZWQg
bWVtb3J5IHJlZ2lvbi4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IEl0IGFsc28gZmFsbHMgbmljZWx5
IGludG8gdGhlIGN1cnJlbnQgcGxhbiB3ZSBoYXZlIHRvIHN1cHBvcnQgY2dyb3VwcyBpbg0KPiA+
ID4gPiA+IERSTS9LTVMgYW5kIHY0bDIsIHdoaWNoIGlzIGFuIGFkZGl0aW9uYWwgYmVuZWZpdC4N
Cj4gPiA+ID4gPg0KPiA+ID4gPiA+IExldCBtZSBrbm93IHdoYXQgeW91IHRoaW5rLA0KPiA+ID4g
PiA+IE1heGltZQ0KPiA+ID4gPg0KPiA+ID4gPiBBbnkgY2hhbmNlIHdlIGNhbiBnZXQgdGhpcyBt
ZXJnZWQ/DQo+ID4gPg0KPiA+ID4gR3V5cywgY2FuIHdlIG1vdmUgZm9yd2FyZCBvbiB0aGlzPw0K
PiA+ID4NCj4gPiA+IE1heGltZQ0KPiA+DQo+ID4gSGkgTWF4aW1lLA0KPiA+DQo+ID4gU29ycnkg
SSd2ZSBiZWVuIE1JQSB0aGUgbGFzdCBjb3VwbGUgb2YgbW9udGhzLg0KPiA+DQo+ID4gVGhlIGRv
Y3MgZm9yIHRoZSAicmV1c2FibGUiIHByb3BlcnR5IHNheSwgImRldmljZSBkcml2ZXIocykgb3du
aW5nIHRoZQ0KPiA+IHJlZ2lvbiBuZWVkIHRvIGJlIGFibGUgdG8gcmVjbGFpbSBpdCBiYWNrIiwg
YnV0IGhvdyBjYW4gYSBkcml2ZXINCj4gPiByZWNsYWltIG1lbW9yeSBiYWNraW5nIGEgZG1hYnVm
LCBzaW5jZSBwYWdlcyBhbGxvY2F0ZWQgZm9yIGEgZG1hYnVmDQo+ID4gYXJlbid0IG5lY2Vzc2Fy
aWx5IG1vdmFibGUuIENvdWxkbid0IGEgdXNlciBhbGxvY2F0ZSBhbGwgb2YgaXQsIGFuZA0KPiA+
IHJlZnVzZSB0byBjbG9zZSB0aG9zZSBkbWFidWZzPw0KPg0KPiBJIGd1ZXNzLCBidXQgaG93IGlz
IHRoYXQgYW55IGRpZmZlcmVudCB0aGFuIHdoYXQgd2UncmUgZG9pbmcgb24gdGhlDQo+IGRlZmF1
bHQgYWxsb2NhdG9yIGFscmVhZHk/DQoNClllYWggZmFpciwgaXQncyBub3QuIEknbSB0aGlua2lu
ZyB0aGF0IG1ha2VzIGRldGVybWluaW5nIGEgc2l6ZSBmb3IgYQ0KcmV1c2FibGUgZHJpdmVyLXNw
ZWNpZmllZCByZWdpb24gdGhhdCdzIGFsd2F5cyBleHBvc2VkIHRvIHVzZXJzcGFjZSBhDQpiaXQg
ZnV6enkuIFRoZSByZXF1aXJlbWVudHMgZm9yIHRoZSBkcml2ZXIgY2FuIHByb2JhYmx5IGJlIGtu
b3duLCBidXQNCmZvciBwb3RlbnRpYWxseSB1bnJlbGF0ZWQgYWxsb2NhdGlvbnMgZnJvbSB1c2Vy
c3BhY2U/IFRoZSBkZWZhdWx0DQpvd25lcnNoaXAgLyBmaWxlIHBlcm1pc3Npb25zIGZvciB0aGUg
aGVhcCB3b3VsZCBoYXZlIHRvIGJlIGNoYW5nZWQgdG8NCmFsbG93IHRob3NlIG5vbi1yZWNsYWlt
YWJsZSBhbGxvY2F0aW9ucywgc28gbWF5YmUgdGhhdCdzIGVub3VnaCBvZiBhbg0Kb3B0LWluIGZv
ciBzdWNoIHJlZ2lvbnMuDQoNCj4gSXQgYWxzbyBoYXMgdG8gYmUgcmV1c2FibGUsIGFuZCB3aWxs
IG5vdCBiZSBhYmxlIHRvIHJlY2xhaW0gYW55IG1lbW9yeQ0KPiBhbGxvY2F0ZWQgdGhyb3VnaCB0
aGUgaGVhcC4NCj4NCj4gPiBJIGJhY2twb3J0ZWQgdGhpcyB0byA2LjYgYW5kIHJhbiBpdCBvbiBh
IFBpeGVsLiBXaGlsZSB0aGVyZSBhcmUNCj4gPiBhbHJlYWR5IHNpbWlsYXIgb3V0LW9mLXRyZWUg
ZG1hYnVmIGhlYXAgZHJpdmVycyB0aGF0IGV4cG9zZSBoZWFwcyBmb3INCj4gPiB0aGVzZSByZXNl
cnZlZCByZWdpb25zLCB0aGV5IGRvIG1vcmUgdGhhbiBqdXN0IGNtYV9hbGxvYyAobXVsdGlwbGUN
Cj4gPiBmbGF2b3JzIG9mIGJ1ZmZlciBzZWN1cmluZywgdXNlIGNhc2Ugc3BlY2lmaWMgYWxpZ25t
ZW50IGFuZCBwYWRkaW5nLA0KPiA+IGFuZCBzbGlnaHRseSBkaWZmZXJlbnQgYWxsb2NhdGlvbiBz
dHJhdGVnaWVzKSBzbyBJIGRvbid0IHRoaW5rIHRoaXMNCj4gPiBzZXJpZXMgd291bGQgYWxsb3cg
dXMgdG8gY29tcGxldGVseSBkcm9wIHRoZSBjdXN0b20gaGVhcCBjb2RlLCBidXQNCj4gPiBpdCdz
IGEgbmljZSBzdGFydC4NCj4NCj4gVGhhbmtzIGZvciB0ZXN0aW5nLCBhbmQgSSB0b3RhbGx5IGV4
cGVjdCBtb3JlIGhlYXBzIGNvbWluZyBmb3IgdGhpbmdzDQo+IGxpa2UgcHJvdGVjdGVkIG1lbW9y
eSwgYnV0IGl0IHNob3VsZCBpbmRlZWQgcmVkdWNlIHRoZSBudW1iZXIgb2YgaGVhcA0KPiBkcml2
ZXJzIG5lZWRlZCBnb2luZyBmb3J3YXJkLg0KPg0KPiA+IERvZXMgdGhlIGNncm91cCBwYXJ0IGNv
bWUgaW4gYmVjYXVzZSB0aGUgcGxhbiBpcyB0byBhZGQgY2hhcmdpbmcgaW4NCj4gPiBjbWFfaGVh
cC5jPw0KPg0KPiBZZXMsIGFuZCB0aGUgc3lzdGVtIGhlYXAgYXMgd2VsbC4NCj4NCj4gTWF4aW1l
DQoNClRoYW5rcywNCg0KUmV2aWV3ZWQtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2ds
ZS5jb20+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
