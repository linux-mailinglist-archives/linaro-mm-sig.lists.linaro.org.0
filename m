Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FD4CC0916
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Dec 2025 03:08:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9FF73F953
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Dec 2025 02:08:26 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 08C6E3F820
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Dec 2025 02:08:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=YZngKDhn;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477a1c8cc47so22275e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 18:08:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1765850901; cv=none;
        d=google.com; s=arc-20240605;
        b=cKji54nSdLB/7bUCG/68DaN4qIBLSeT2orNPF623n3JTsYKtLkAm++tt3hZg5pbROi
         zYI8TW3b9ceMIyElUSY4dmRcXSJKFptVj0tylKNQ+uycv0GujNRoChTcerj6Sn90ay/7
         ZqX2hoV8m1YyeLqugml6SORoqxSzXIG87ofoPUud4paTlXs5R6WpW3eRNTn7w7PXGUSP
         kmcCru5AwqIeimFergEtbGRjp7YP3bvLXpa8hNpt33yA8cuQYipQ3Jn6qqGerIqeiAUV
         QM3xD3HHYLtz/JaA1+mUzlKA1fSXXVAq0xzyQnsD5/gtnLRdvQ9Ku3SXDDi93HEmgLpL
         NAzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=X5bsBULlMz6QGKo15fJSSkYOWsdYZVhr1CJojovu2xo=;
        fh=cUy2HG7pi2k48VuXFY06hnVyT9oLuyasoPJQZSyO6B4=;
        b=VCAcGhq6VRSISDBo2iX5ao6Iz6OhasG3ygErFCujjYkHLrfw9rsyhZTrJhugCpPjv8
         8BiGOalAWFe6D/ekHa6vUDXrEE5/c7mHYmK6WrzsNTnhMG6AOzzZNdZGTjsTlZqlIv1j
         DVcPxDbYol/23Nxl7sX+PeFFAGf1QG19tePkjCUAWP7fh7bhZRz1ZBetxrJO3kYHnaFC
         Van9UqISwJYI2NDy0pXiRZcRJRnB2GghKo1gynBXxOWZ5e4bsrXb/2JRtzoEu8ynNY7o
         fTnikk0Wph3WlTch+J9O/s9hVQ78zDEJYa6xymd9r3yyoeLC/hANTEeshqZIA01e7LEI
         ObRg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1765850901; x=1766455701; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X5bsBULlMz6QGKo15fJSSkYOWsdYZVhr1CJojovu2xo=;
        b=YZngKDhnLBYun+GWe2vDnZucL5GY2y2vJJKO5KutsPVWB9aIsrOCTU2p5A30PhElWN
         NouXg/VVNQgga+CwQy5foG9LZHlcBcm9kVW3fRIC+T9u62bUB0bBCLr2w4PkzSPvxEzk
         WxkFNj9eno5ILtjd2KN67ptLJimOFzMS0mETnPEh+0IzEyvf92wIz7YovFyxC4IClnX4
         3Fkuog46qhrO3deILmNLWreP7eIbb9XvM2Wg1zcH1opAu2wOlLKhm1d7jJWtLPVViSJi
         XdJPLFY8iJkV8FvsXseE8JRfHJWVlhVszp7kpgMubhGTze8MnGwb1USDqn6Ay4YZkyWC
         10bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765850901; x=1766455701;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X5bsBULlMz6QGKo15fJSSkYOWsdYZVhr1CJojovu2xo=;
        b=B2pWrhKjzEGiTnGrsqGQ3SEbpPaewxGqOz6LKJuaErqfbtH+Lp7uHLmvhrThlqqimw
         wsXC1B+o0S4sOmFM9N4OaH6TVaMsQRCLsh5ud1W1MJUmh6v+HG0q5AZVXC1+2x+Wjzvk
         BTpVoWy7k4XMlRxo6zOZ1YWA4NkY7CGVNhpGN4wVTU1jLgJbkGopmocGWz+bB0UKQFYF
         OUq86JH1Maz7YNCuybTU+ySnvyxSnLTDOa+RDOk1DM7qXDcxozee4DoC2zXJHTgUXOtj
         Rp2dHc0+zI9JRvJOOUx3weYiKJxpPRzD7+/hmn9ug46KI0tA2e1xDbpb7R3iU1SxKEH+
         ERMw==
X-Forwarded-Encrypted: i=1; AJvYcCWDlguvDBLitlZq2+Uo45+ZPtP/2X9AtiHo8IrlVy8UbeuQfu0rkt8t/iYnGLWMevlNi5JgUavf/LgcTuIW@lists.linaro.org
X-Gm-Message-State: AOJu0YwqYR1H2ubbN6HEPzlgzRvno7Xn+tK5hHGSN5n/VeTIQzL17i0H
	yWkg5VUMiHVltLTvh/ZTw/CY2p74pis/1f5q38sm9nDYr1uXxy2XvxaFztx5JqyVvDjDTLFGNPe
	F3sk41UPyvfzkgkPGCPXUwfm05V9lZktOmQUvYHZw
X-Gm-Gg: AY/fxX6MBJ7Tkz+mPV+ZA0Zgh6yPMMbk/U5oxLlX7Nnk4uDe00lcCgKukxBD4j9oV9S
	83CGWLZJbabXwiQAqiAah1vDg8x6/Ai9r2AR9Jql4oss14F7g0nSO941GyKh20hMZPgPhES1dQM
	y/GjefJPZtZKMx0kZSEw7Sg2qO4/PQqGTTjLVA9HPkbQFsOtxf9YquXVZPG+dxeUGw+lDYIM006
	j77z6S9wGwGgH899lq///JD2+dJ3kM84XruVKN4SGHQ1yrmlxATL6ckz9iceeXa3fj1cQaUab6O
	ogLXPhaRo0b2KUzCDbgk+B4a7jwM
X-Google-Smtp-Source: AGHT+IFy6wLOsC060mVmB9YoWUm0Z5j4XnF5LngURno1tGmqsHKnjp9hIaHtC1jrdIxRXLXpgf9/cJDauopceh8NjdU=
X-Received: by 2002:a05:600c:8a0d:10b0:477:779a:67fc with SMTP id
 5b1f17b1804b1-47bd797450emr116845e9.5.1765850900900; Mon, 15 Dec 2025
 18:08:20 -0800 (PST)
MIME-Version: 1.0
References: <20251211193106.755485-2-echanude@redhat.com> <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick> <07cdcce2-7724-4fe9-8032-258f6161e71d@amd.com>
 <20251215-garnet-cheetah-of-adventure-ca6fdc@penduick> <ef52d9e9-6abe-421a-98f8-f96353652e1e@amd.com>
In-Reply-To: <ef52d9e9-6abe-421a-98f8-f96353652e1e@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 16 Dec 2025 11:08:09 +0900
X-Gm-Features: AQt7F2ou8MoET7GIPVWKsZ-i26gYeKvHlpUnDll8hGkIZCEC5OR1rT4MBoIc71U
Message-ID: <CABdmKX1XE5dzB9go1AStRY4B5-TrFF4pvCR+JLxPeOahso+ePQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid,mail-wm1-f53.google.com:rdns,mail-wm1-f53.google.com:helo];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 08C6E3F820
X-Spamd-Bar: ----
Message-ID-Hash: VF6ZZ6J7UQBSNQV4KSZ52G55TS33TXWR
X-Message-ID-Hash: VF6ZZ6J7UQBSNQV4KSZ52G55TS33TXWR
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@redhat.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VF6ZZ6J7UQBSNQV4KSZ52G55TS33TXWR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgMTE6NTPigK9QTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gMTIvMTUvMjUgMTQ6NTksIE1h
eGltZSBSaXBhcmQgd3JvdGU6DQo+ID4gT24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgMDI6MzA6NDdQ
TSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPj4gT24gMTIvMTUvMjUgMTE6NTEs
IE1heGltZSBSaXBhcmQgd3JvdGU6DQo+ID4+PiBIaSBUSiwNCj4gPj4+DQo+ID4+PiBPbiBGcmks
IERlYyAxMiwgMjAyNSBhdCAwODoyNToxOUFNICswOTAwLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+
ID4+Pj4gT24gRnJpLCBEZWMgMTIsIDIwMjUgYXQgNDozMeKAr0FNIEVyaWMgQ2hhbnVkZXQgPGVj
aGFudWRlQHJlZGhhdC5jb20+IHdyb3RlOg0KPiA+Pj4+Pg0KPiA+Pj4+PiBUaGUgc3lzdGVtIGRt
YS1idWYgaGVhcCBsZXRzIHVzZXJzcGFjZSBhbGxvY2F0ZSBidWZmZXJzIGZyb20gdGhlIHBhZ2UN
Cj4gPj4+Pj4gYWxsb2NhdG9yLiBIb3dldmVyLCB0aGVzZSBhbGxvY2F0aW9ucyBhcmUgbm90IGFj
Y291bnRlZCBmb3IgaW4gbWVtY2csDQo+ID4+Pj4+IGFsbG93aW5nIHByb2Nlc3NlcyB0byBlc2Nh
cGUgbGltaXRzIHRoYXQgbWF5IGJlIGNvbmZpZ3VyZWQuDQo+ID4+Pj4+DQo+ID4+Pj4+IFBhc3Mg
dGhlIF9fR0ZQX0FDQ09VTlQgZm9yIG91ciBhbGxvY2F0aW9ucyB0byBhY2NvdW50IHRoZW0gaW50
byBtZW1jZy4NCj4gPj4+Pg0KPiA+Pj4+IFdlIGhhZCBhIGRpc2N1c3Npb24ganVzdCBsYXN0IG5p
Z2h0IGluIHRoZSBNTSB0cmFjayBhdCBMUEMgYWJvdXQgaG93DQo+ID4+Pj4gc2hhcmVkIG1lbW9y
eSBhY2NvdW50ZWQgaW4gbWVtY2cgaXMgcHJldHR5IGJyb2tlbi4gV2l0aG91dCBhIHdheSB0bw0K
PiA+Pj4+IGlkZW50aWZ5IChhbmQgcG9zc2libHkgdHJhbnNmZXIpIG93bmVyc2hpcCBvZiBhIHNo
YXJlZCBidWZmZXIsIHRoaXMNCj4gPj4+PiBtYWtlcyB0aGUgYWNjb3VudGluZyBvZiBzaGFyZWQg
bWVtb3J5LCBhbmQgem9tYmllIG1lbWNnIHByb2JsZW1zDQo+ID4+Pj4gd29yc2UuIDpcDQo+ID4+
Pg0KPiA+Pj4gQXJlIHRoZXJlIG5vdGVzIG9yIGEgcmVwb3J0IGZyb20gdGhhdCBkaXNjdXNzaW9u
IGFueXdoZXJlPw0KPiA+Pj4NCj4gPj4+IFRoZSB3YXkgSSBzZWUgaXQsIHRoZSBkbWEtYnVmIGhl
YXBzICp0cml2aWFsKiBjYXNlIGlzIG5vbi1leGlzdGVudCBhdA0KPiA+Pj4gdGhlIG1vbWVudCBh
bmQgdGhhdCdzIGRlZmluaXRlbHkgYnJva2VuLiBBbnkgYXBwbGljYXRpb24gY2FuIGJ5cGFzcyBp
dHMNCj4gPj4+IGNncm91cHMgbGltaXRzIHRyaXZpYWxseSwgYW5kIHRoYXQncyBhIHByZXR0eSBi
aWcgaG9sZSBpbiB0aGUgc3lzdGVtLg0KPiA+Pg0KPiA+PiBXZWxsLCB0aGF0IGlzIGp1c3QgdGhl
IHRpcCBvZiB0aGUgaWNlYmVyZy4NCj4gPj4NCj4gPj4gUHJldHR5IG11Y2ggYWxsIGRyaXZlciBp
bnRlcmZhY2VzIGRvZXNuJ3QgYWNjb3VudCB0byBtZW1jZyBhdCB0aGUNCj4gPj4gbW9tZW50LCBh
bGwgdGhlIHdheSBmcm9tIGFsc2EsIG92ZXIgR1BVcyAoYm90aCBUVE0gYW5kIFNITS1HRU0pIHRv
DQo+ID4+IFY0TDIuDQo+ID4NCj4gPiBZZXMsIEkga25vdywgYW5kIHN0ZXAgMSBvZiB0aGUgcGxh
biB3ZSBkaXNjdXNzZWQgZWFybGllciB0aGlzIHllYXIgaXMgdG8NCj4gPiBmaXggdGhlIGhlYXBz
Lg0KPiA+DQo+ID4+PiBUaGUgc2hhcmVkIG93bmVyc2hpcCBpcyBpbmRlZWQgYnJva2VuLCBidXQg
aXQncyBub3QgbW9yZSBvciBsZXNzIGJyb2tlbg0KPiA+Pj4gdGhhbiwgc2F5LCBtZW1mZCArIHVk
bWFidWYsIGFuZCBJJ20gc3VyZSBwbGVudHkgb2Ygb3RoZXJzLg0KPiA+Pj4NCj4gPj4+IFNvIHdl
IHJlYWxseSBpbXByb3ZlIHRoZSBjb21tb24gY2FzZSwgYnV0IG9ubHkgbWFrZSB0aGUgImFkdmFu
Y2VkIg0KPiA+Pj4gc2xpZ2h0bHkgbW9yZSBicm9rZW4gdGhhbiBpdCBhbHJlYWR5IGlzLg0KPiA+
Pj4NCj4gPj4+IFdvdWxkIHlvdSBkaXNhZ3JlZT8NCj4gPj4NCj4gPj4gSSBzdHJvbmdseSBkaXNh
Z3JlZS4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGVyZSBpcyBhIGh1Z2UgY2hhbmNlIHdlDQo+ID4+
IGJyZWFrIGV4aXN0aW5nIHVzZSBjYXNlcyB3aXRoIHRoYXQuDQo+ID4NCj4gPiBXaGljaCBvbmVz
PyBBbmQgd2hhdCBhYm91dCB0aGUgb25lcyB0aGF0IGFyZSBhbHJlYWR5IGJyb2tlbj8NCj4NCj4g
V2VsbCBldmVyeWJvZHkgdGhhdCBleHBlY3RzIHRoYXQgZHJpdmVyIHJlc291cmNlcyBhcmUgKm5v
dCogYWNjb3VudGVkIHRvIG1lbWNnLg0KPg0KPiA+PiBUaGVyZSBoYXMgYmVlbiBzb21lIHdvcmsg
b24gVFRNIGJ5IERhdmUgYnV0IEkgc3RpbGwgaGF2ZW4ndCBmb3VuZCB0aW1lDQo+ID4+IHRvIHdy
YXAgbXkgaGVhZCBhcm91bmQgYWxsIHBvc3NpYmxlIHNpZGUgZWZmZWN0cyBzdWNoIGEgY2hhbmdl
IGNhbg0KPiA+PiBoYXZlLg0KPiA+Pg0KPiA+PiBUaGUgZnVuZGFtZW50YWwgcHJvYmxlbSBpcyB0
aGF0IG5laXRoZXIgbWVtY2cgbm9yIHRoZSBjbGFzc2ljIHJlc291cmNlDQo+ID4+IHRyYWNraW5n
IChlLmcuIHRoZSBPT00ga2lsbGVyKSBoYXMgYSBnb29kIHVuZGVyc3RhbmRpbmcgb2Ygc2hhcmVk
DQo+ID4+IHJlc291cmNlcy4NCj4gPg0KPiA+IEFuZCB5ZXQgaGVhcCBhbGxvY2F0aW9ucyBkb24n
dCBuZWNlc3NhcmlseSBoYXZlIHRvIGJlIHNoYXJlZC4gQnV0IHRoZXkNCj4gPiBhbGwgaGF2ZSB0
byBiZSBhbGxvY2F0ZWQuDQo+ID4NCj4gPj4gRm9yIGV4YW1wbGUgeW91IGNhbiB1c2UgbWVtZmQg
dG8gYmFzaWNhbGx5IGtpbGwgYW55IHByb2Nlc3MgaW4gdGhlDQo+ID4+IHN5c3RlbSBiZWNhdXNl
IHRoZSBPT00ga2lsbGVyIGNhbid0IGlkZW50aWZ5IHRoZSBwcm9jZXNzIHdoaWNoIGhvbGRzDQo+
ID4+IHRoZSByZWZlcmVuY2UgdG8gdGhlIG1lbW9yeSBpbiBxdWVzdGlvbi4gQW5kIHRoYXQgaXMg
YSAqTVVDSCogYmlnZ2VyDQo+ID4+IHByb2JsZW0gdGhhbiBqdXN0IGluYWNjdXJhdGUgbWVtY2cg
YWNjb3VudGluZy4NCj4gPg0KPiA+IFdoZW4geW91IGZyYW1lIGl0IGxpa2UgdGhhdCwgc3VyZS4g
QWxzbywgeW91IGNhbiB1c2UgdGhlIHN5c3RlbSBoZWFwIHRvDQo+ID4gRG9TIGFueSBwcm9jZXNz
IGluIHRoZSBzeXN0ZW0uIEknbSBub3Qgc2F5aW5nIHRoYXQgd2hhdCB5b3UncmUgY29uY2VybmVk
DQo+ID4gYWJvdXQgaXNuJ3QgYW4gaXNzdWUsIGJ1dCBsZXQncyBub3QgYnJ1c2ggb2ZmIG90aGVy
IHBlb3BsZSBsZWdpdGltYXRlDQo+ID4gaXNzdWVzIGFzIHdlbGwuDQo+DQo+IENvbXBsZXRlbHkg
YWdyZWUsIGJ1dCB3ZSBzaG91bGQgcHJpb3JpdGl6ZS4NCj4NCj4gVGhhdCBkcml2ZXIgYWxsb2Nh
dGVkIG1lbW9yeSBpcyBub3QgbWVtY2cgYWNjb3VudGVkIGlzIGFjdHVhbGx5IHVBUEksIGUuZy4g
dGhhdCBpcyBub3Qgc29tZXRoaW5nIHdoaWNoIGNhbiBlYXNpbHkgY2hhbmdlLg0KPg0KPiBXaGls
ZSBmaXhpbmcgdGhlIE9PTSBraWxsZXIgbG9va3MgcGVyZmVjdGx5IGRvYWJsZSBhbmQgd2lsbCB0
aGVuIG1vc3QgbGlrZWx5IGFsc28gc2hvdyBhIGJldHRlciBwYXRoIGhvdyB0byBmaXggdGhlIG1l
bWNnIGFjY291bnRpbmcuDQoNCllvdSB0aGluayBzbz8gSSBjYW4gc2VlIGhvdyB0aGUgT09NIGtp
bGxlciBjb3VsZCBpZGVudGlmeSB0aGF0IGENCnByb2Nlc3MgaXMgdXNpbmcgYSBkbWFidWYgYW5k
IGluY2x1ZGUgdGhhdCBtZW1vcnkgdXNlIGZvciBpdHMgZGVjaXNpb24NCm1ha2luZywgYnV0IHRo
ZSBtZW1vcnkgZm9yIGl0IHdvbid0IGJlIHJlY2xhaW1lZCB1bmxlc3MgKmFsbCogdXNlcnMNCmdl
dCBraWxsZWQsIHdoaWNoIGlzbid0IGVhc2lseSBrbm93biByaWdodCBub3cuDQoNCj4gQ2hyaXN0
aWFuLg0KPg0KPiA+DQo+ID4gTWF4aW1lDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
