Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8DCA7F1FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Apr 2025 03:04:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C583462D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Apr 2025 01:04:00 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 9B3FF45F93
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Apr 2025 01:03:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=bHI1bMTY;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cfe808908so28585e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 07 Apr 2025 18:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744074223; x=1744679023; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N3NyAZWcqvz7fu/dk5KWmiijuV2cjTsspWnmvoi+M4g=;
        b=bHI1bMTY3jDvynBPRB1zpFpi70GZwAHAuaepTFx0cC/FwGAulQi1QBTXUFe4g/jI9R
         n/GVC6AhEKZCMSVsNgZcLyLcVl6JGbF9sl6fDAYEXAiSyFbLDKffcxnnypiHWlZ5OLV3
         pyka2MUDmkTnyzYvnZrW8pjMOmYMtxtrDrq7jCQlfh3FVuyH886puTbg2Pr04Zx5GSe8
         VIefvn5BlKEx46Aq6E/cBGQK9XKes3JnxoN17py+FBkQJr1a2/b/7WOBdMjkmHoyOmx/
         AlGRVa6hYHHNHuA7hk/RuPFN+L1PtbZ7zwPfIYXJaQvRTwFznmK5vceHc4lo5z8BS+3E
         kKLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744074223; x=1744679023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N3NyAZWcqvz7fu/dk5KWmiijuV2cjTsspWnmvoi+M4g=;
        b=qCaqKy83OA0Q1y9qHc5ML8J8mSASS4enIe75QJiU7Tdp8zC+35tYV1YdIG6pO+00gT
         ZO6EgY6EZk6j6IMnpCpGjjdU/zDGheS+S/+A21mXcJSqcLcp9emGITXi1j8Qw1JLluda
         mx+nzYCkjN1+TRWT1mm82xZdjxiMSegAhGISFdLLwUaC4uI2bLV5E4l9H4vFBzY2pBRN
         vs8IJ4b49GQIY4acyyKi9KQmraboSL87TDZ5qwjqgA4j+05jhJpCgIjxM5bXdOtq7L4O
         r8E+XDCo4JwVTvFoSkK3malSuTS1MZv4WjKEXb8Rk9jDe9vbTMUAfI8ioKwkhG8+VPXD
         suGw==
X-Forwarded-Encrypted: i=1; AJvYcCU49eUxv8XF8i6J/RUGkuYk/QhZO4f7d8fTmEPsGdO8PvOZdINFNgghsG/ee8RqDRpSbKGQf9z7dRSwUsdm@lists.linaro.org
X-Gm-Message-State: AOJu0YwaIEOMnVVj18qFQ2KlMAudLzIftlJDiK65j5iPY575ljTVVCJD
	V/zfh9iBaPi9xHhf424gf12mbp1x5NnX0wzjbOgWha5vsJlUQlGkkIPVvf52wIfJ03YaAFJf0OU
	bdKy6K3KEFJT8UhmH/GEmimpAmlAOhCeXf3It
X-Gm-Gg: ASbGnct53H93dfx1UFkYvksEuU4sfyPr0KcGGuRni/7WetHZQ+VZZwlmmvPH9BuJfaU
	8ngzvqvdEb/lT6m5gE7RMqB+OHj/m69RFmaVcFYXrArKyrDoUvK6hyrGDGCyi/3WvfA8kluZQlM
	HUhzTF0CacvWKrCjddu/TQOAPo
X-Google-Smtp-Source: AGHT+IF8E+QG4m0isufZWPae8BywR8gPWm5THfralNVOJXPV/1TEOznb4Z/yFAFdMwZHDPMGruIUYT3jCRKLIcIGr/w=
X-Received: by 2002:a05:600c:512a:b0:439:961d:fc7d with SMTP id
 5b1f17b1804b1-43f108d2f14mr622335e9.6.1744074223271; Mon, 07 Apr 2025
 18:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <f5fdc666-dd72-4a4f-9270-b539a3179382@amd.com> <20250310-eccentric-wonderful-puffin-ddbb26@houat>
 <CAPM=9tzkLXOz=-3eujUbbjMHunR+_5JZ4oQaqNmbrWWF9WZJ0w@mail.gmail.com>
 <e08f10da-b0cd-444b-8e0b-11009b05b161@amd.com> <CAPM=9twgFt43OKqUY0TNopTmibnR_d891xmV=wFM91n604NUCw@mail.gmail.com>
 <5ed87c80-6fe3-4f8c-bb98-ca07f1db8c34@amd.com> <20250403-quick-salamander-of-charisma-cab289@houat>
 <202c3a58-97a3-489c-b3f2-b1fd2735bd19@amd.com> <CABdmKX2LhrcyDM0r1tytt2vKLuCLGsxZaGHgN+u1hUmEMXuGtw@mail.gmail.com>
 <86a12909-4d40-46ec-95cc-539c346914e4@amd.com>
In-Reply-To: <86a12909-4d40-46ec-95cc-539c346914e4@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 7 Apr 2025 18:03:31 -0700
X-Gm-Features: ATxdqUG1XcwuvWGPoKuoToYV-NskQlGn2cxAGlcz7gx_QBU2p615RFpmzdS5pyY
Message-ID: <CABdmKX1B9OS0GK51nx0NjYs3E_1UVwCDvmiZOA3UhFjDeZcuxg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 9B3FF45F93
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linux-foundation.org,samsung.com,arm.com,linaro.org,collabora.com,google.com,linux.intel.com,suse.de,ffwll.ch,chromium.org,redhat.com,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.128.46:from];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.46:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.128.46:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HOZYZQ2RRVSYOVWO2KEUEXIH634FV7ZI
X-Message-ID-Hash: HOZYZQ2RRVSYOVWO2KEUEXIH634FV7ZI
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ben Woodard <woodard@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HOZYZQ2RRVSYOVWO2KEUEXIH634FV7ZI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBcHIgNywgMjAyNSBhdCA0OjQ24oCvQU0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMDUuMDQuMjUgdW0gMDM6NTcgc2No
cmllYiBULkouIE1lcmNpZXI6DQo+ID4gT24gRnJpLCBBcHIgNCwgMjAyNSBhdCAxOjQ34oCvQU0g
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPj4g
SGkgTWF4aW1lLA0KPiA+Pg0KPiA+PiBBbSAwMy4wNC4yNSB1bSAxNzo0NyBzY2hyaWViIE1heGlt
ZSBSaXBhcmQ6DQo+ID4+PiBPbiBUaHUsIEFwciAwMywgMjAyNSBhdCAwOTozOTo1MkFNICswMjAw
LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+Pj4+PiBGb3IgdGhlIFVNQSBHUFUgY2FzZSB3
aGVyZSB0aGVyZSBpcyBubyBkZXZpY2UgbWVtb3J5IG9yIGV2aWN0aW9uDQo+ID4+Pj4+IHByb2Js
ZW0sIHBlcmhhcHMgYSBjb25maWd1cmFibGUgb3B0aW9uIHRvIGp1c3Qgc2F5IGFjY291bnQgbWVt
b3J5IGluDQo+ID4+Pj4+IG1lbWNnIGZvciBhbGwgYWxsb2NhdGlvbnMgZG9uZSBieSB0aGlzIHBy
b2Nlc3MsIGFuZCBzdGF0ZSB5ZXMgeW91IGNhbg0KPiA+Pj4+PiB3b3JrIGFyb3VuZCBpdCB3aXRo
IGFsbG9jYXRpb24gc2VydmVycyBvciB3aGF0ZXZlciBidXQgdGhlIGJlaGF2aW91cg0KPiA+Pj4+
PiBmb3Igd2VsbCBiZWhhdmVkIHRoaW5ncyBpcyBhdCBsZWFzdCBzb21ld2hhdCBkZWZpbmVkLg0K
PiA+Pj4+IFdlIGNhbiBoYXZlIHRoYXQgYXMgYSB3b3JrYXJvdW5kLCBidXQgSSB0aGluayB3ZSBz
aG91bGQgYXBwcm9hY2ggdGhhdA0KPiA+Pj4+IGRpZmZlcmVudGx5Lg0KPiA+Pj4+DQo+ID4+Pj4g
V2l0aCB1cGNvbWluZyBDWEwgZXZlbiBjb2hlcmVudCBkZXZpY2UgbWVtb3J5IGlzIGV4cG9zZWQg
dG8gdGhlIGNvcmUNCj4gPj4+PiBPUyBhcyBOVU1BIG1lbW9yeSB3aXRoIGp1c3QgYSBoaWdoIGxh
dGVuY3kuDQo+ID4+Pj4NCj4gPj4+PiBTbyBib3RoIGluIHRoZSBDWEwgYW5kIFVNQSBjYXNlIGl0
IGFjdHVhbGx5IGRvZXNuJ3QgbWFrZSBzZW5zZSB0bw0KPiA+Pj4+IGFsbG9jYXRlIHRoZSBtZW1v
cnkgdGhyb3VnaCB0aGUgZHJpdmVyIGludGVyZmFjZXMgYW55IG1vcmUuIFdpdGgNCj4gPj4+PiBB
TURHUFUgZm9yIGV4YW1wbGUgd2UgYXJlIGp1c3QgcmVwbGljYXRpbmcgbWJpbmQoKS9tYWR2aXNl
KCkgd2l0aGluDQo+ID4+Pj4gdGhlIGRyaXZlci4NCj4gPj4+Pg0KPiA+Pj4+IEluc3RlYWQgd2hh
dCB0aGUgRFJNIHN1YnN5c3RlbSBzaG91bGQgYWltIGZvciBpcyB0byBhbGxvY2F0ZSBtZW1vcnkN
Cj4gPj4+PiB1c2luZyB0aGUgbm9ybWFsIGNvcmUgT1MgZnVuY3Rpb25hbGl0eSBhbmQgdGhlbiBp
bXBvcnQgaXQgaW50byB0aGUNCj4gPj4+PiBkcml2ZXIuDQo+ID4+Pj4NCj4gPj4+PiBBTUQsIE5W
aWRpYSBhbmQgSW50ZWwgaGF2ZSBITU0gd29ya2luZyBmb3IgcXVpdGUgYSB3aGlsZSBub3cgYnV0
IGl0DQo+ID4+Pj4gaGFzIHNvbWUgbGltaXRhdGlvbnMsIGVzcGVjaWFsbHkgb24gdGhlIHBlcmZv
cm1hbmNlIHNpZGUuDQo+ID4+Pj4NCj4gPj4+PiBTbyBmb3IgQU1ER1BVIHdlIGFyZSBjdXJyZW50
bHkgZXZhbHVhdGluZyB1ZG1hYnVmIGFzIGFsdGVybmF0aXZlLiBUaGF0DQo+ID4+Pj4gc2VlbXMg
dG8gYmUgd29ya2luZyBmaW5lIHdpdGggZGlmZmVyZW50IE5VTUEgbm9kZXMsIGlzIHBlcmZlY3Rs
eSBtZW1jZw0KPiA+Pj4+IGFjY291bnRlZCBhbmQgZ2l2ZXMgeW91IGEgRE1BLWJ1ZiB3aGljaCBj
YW4gYmUgaW1wb3J0ZWQgZXZlcnl3aGVyZS4NCj4gPj4+Pg0KPiA+Pj4+IFRoZSBvbmx5IHNob3cg
c3RvcHBlciBtaWdodCBiZSB0aGUgYWxsb2NhdGlvbiBwZXJmb3JtYW5jZSwgYnV0IGV2ZW4gaWYN
Cj4gPj4+PiB0aGF0J3MgdGhlIGNhc2UgSSB0aGluayB0aGUgb25nb2luZyBmb2xpbyB3b3JrIHdp
bGwgcHJvcGVybHkgcmVzb2x2ZQ0KPiA+Pj4+IHRoYXQuDQo+ID4+PiBJIG1lYW4sIG5vLCB0aGUg
c2hvd3N0b3BwZXIgdG8gdGhhdCBpcyB0aGF0IHVzaW5nIHVkbWFidWYgaGFzIHRoZQ0KPiA+Pj4g
YXNzdW1wdGlvbiB0aGF0IHlvdSBoYXZlIGFuIElPTU1VIGZvciBldmVyeSBkZXZpY2UgZG9pbmcg
RE1BLCB3aGljaCBpcw0KPiA+Pj4gYWJzb2x1dGVseSBub3QgdHJ1ZSBvbiAheDg2IHBsYXRmb3Jt
cy4NCj4gPj4+DQo+ID4+PiBJdCBtaWdodCBiZSB0cnVlIGZvciBhbGwgR1BVcywgYnV0IGl0IGNl
cnRhaW5seSBpc24ndCBmb3IgZGlzcGxheQ0KPiA+Pj4gY29udHJvbGxlcnMsIGFuZCBpdCdzIG5v
dCBlaXRoZXIgZm9yIGNvZGVjcywgSVNQcywgYW5kIGNhbWVyYXMuDQo+ID4+Pg0KPiA+Pj4gQW5k
IHRoZW4gdGhlcmUncyB0aGUgb3RoZXIgYXNzdW1wdGlvbiB0aGF0IGFsbCBtZW1vcnkgaXMgdW5k
ZXIgdGhlDQo+ID4+PiBtZW1vcnkgYWxsb2NhdG9yIGNvbnRyb2wsIHdoaWNoIGlzbid0IHRoZSBj
YXNlIG9uIG1vc3QgcmVjZW50IHBsYXRmb3Jtcw0KPiA+Pj4gZWl0aGVyLg0KPiA+Pj4NCj4gPj4+
IFdlICpuZWVkKiB0byB0YWtlIENNQSBpbnRvIGFjY291bnQgdGhlcmUsIGFsbCB0aGUgY2FydmVk
LW91dCwgZGV2aWNlDQo+ID4+PiBzcGVjaWZpYyBtZW1vcnkgcmVnaW9ucywgYW5kIHRoZSBtZW1v
cnkgcmVnaW9ucyB0aGF0IGFyZW4ndCBldmVuIHVuZGVyDQo+ID4+PiBMaW51eCBzdXBlcnZpc2lv
biBsaWtlIHByb3RlY3RlZCBtZW1vcnkgdGhhdCBpcyB0eXBpY2FsbHkgaGFuZGxlZCBieSB0aGUN
Cj4gPj4+IGZpcm13YXJlIGFuZCBhbGwgeW91IGdldCBpcyBhIGRtYS1idWYuDQo+ID4+Pg0KPiA+
Pj4gU2F5aW5nIHRoYXQgaXQncyBob3cgeW91IHdhbnQgdG8gd29ya2Fyb3VuZCBpdCBvbiBBTUQg
aXMgYWJzb2x1dGVseQ0KPiA+Pj4gZmluZSwgYnV0IERSTSBhcyBhIHdob2xlIHNob3VsZCBjZXJ0
YWlubHkgbm90IGFpbSBmb3IgdGhhdCwgYmVjYXVzZSBpdA0KPiA+Pj4gY2FuJ3QuDQo+ID4+IEEg
YnVuY2ggb2YgZ29vZCBwb2ludHMgeW91IGJyaW5nIHVwIGhlcmUgYnV0IGl0IHNvdW5kcyBsaWtl
IHlvdSBtaXN1bmRlcnN0b29kIG1lIGEgYml0Lg0KPiA+Pg0KPiA+PiBJJ20gY2VydGFpbmx5ICpu
b3QqIHNheWluZyB0aGF0IHdlIHNob3VsZCBwdXNoIGZvciB1ZG1hYnVmIGZvciBldmVyeXRoaW5n
LCB0aGF0IGlzIGNsZWFybHkgdXNlIGNhc2Ugc3BlY2lmaWMuDQo+ID4+DQo+ID4+IEZvciB1c2Ug
Y2FzZXMgbGlrZSBDTUEgb3IgcHJvdGVjdGVkIGNhcnZlLW91dCB0aGUgcXVlc3Rpb24gd2hhdCB0
byBkbyBkb2Vzbid0IGV2ZW4gYXJpc2UgaW4gdGhlIGZpcnN0IHBsYWNlLg0KPiA+Pg0KPiA+PiBX
aGVuIHlvdSBoYXZlIENNQSB3aGljaCBkeW5hbWljYWxseSBzdGVhbHMgbWVtb3J5IGZyb20gdGhl
IGNvcmUgT1MgdGhlbiBvZiBjb3Vyc2UgaXQgc2hvdWxkIGJlIGFjY291bnRlZCB0byBtZW1jZy4N
Cj4gPj4NCj4gPj4gV2hlbiB5b3UgaGF2ZSBjYXJ2ZS1vdXQgd2hpY2ggdGhlIGNvcmUgT1MgbWVt
b3J5IG1hbmFnZW1lbnQgZG9lc24ndCBldmVuIGtub3cgYWJvdXQgdGhlbiBpdCBzaG91bGQgY2Vy
dGFpbmx5IGJlIGhhbmRsZWQgYnkgZG1lbS4NCj4gPj4NCj4gPj4gVGhlIHByb2JsZW1hdGljIHVz
ZSBjYXNlcyBhcmUgdGhlIG9uZSB3aGVyZSBhIGJ1ZmZlciBjYW4gc29tZXRpbWVzIGJlIGJhY2tl
ZCBieSBzeXN0ZW0gbWVtb3J5IGFuZCBzb21ldGltZSBieSBzb21ldGhpbmcgc3BlY2lhbC4gRm9y
IHRoaXMgd2UgZG9uJ3QgaGF2ZSBhIGdvb2QgYXBwcm9hY2ggd2hhdCB0byBkbyBzaW5jZSBldmVy
eSBhcHByb2FjaCBzZWVtcyB0byBoYXZlIGEgZHJhdyBiYWNrIGZvciBzb21lIHVzZSBjYXNlLg0K
PiA+IFRoaXMgcmVtaW5kcyBtZSBvZiBtZW1vcnkubWVtc3cgaW4gY2dyb3VwIHYxLCB3aGVyZSBi
b3RoIHJlc2lkZW50IGFuZA0KPiA+IHN3YXBwZWQgbWVtb3J5IHNob3cgdXAgdW5kZXIgdGhlIHNh
bWUgbWVtY2cgY291bnRlci4gSW4gdGhpcyBkbWVtDQo+ID4gc2NlbmFyaW8gaXQncyBzaW1pbGFy
IGJ1dCBhY3Jvc3MgdHdvIGRpZmZlcmVudCBjZ3JvdXAgY29udHJvbGxlcnMNCj4gPiBpbnN0ZWFk
IG9mIHR3byBkaWZmZXJlbnQgdHlwZXMgb2Ygc3lzdGVtIG1lbW9yeSB1bmRlciB0aGUgc2FtZQ0K
PiA+IGNvbnRyb2xsZXIuDQo+DQo+IFllYWgsIG5haWxlZCBpdC4gRXhhY3RseSB0aGF0IHdhcyBv
bmUgb2YgdGhlIHBvdGVudGlhbCBzb2x1dGlvbnMgSSBoYWQgaW4gbWluZCBhcyB3ZWxsLg0KPg0K
PiBJdCdzIGp1c3QgdGhhdCBJIGFiYW5kb25lZCB0aGF0IGlkZWEgd2hlbiBJIHJlYWxpemVkIHRo
YXQgaXQgYWN0dWFsbHkgd291bGRuJ3QgaGVscC4NCj4NCj4gRm9yIGV4YW1wbGUgaW1hZ2luZSB5
b3UgaGF2ZSA4R2lCIHN5c3RlbSBhbmQgOEdpQiBsb2NhbCBtZW1vcnkuIFNvIHlvdSBzZXQgeW91
ciBjZ3JvdXAgbGltaXQgdG8gMTJHaUIuIEJ1dCB3aGVuIGFuIGFwcGxpY2F0aW9uIHRyaWVzIHRv
IHVzZSBmdWxsIDEyR2lCIGFzIHN5c3RlbSBpbnN0ZWFkIG9mIGEgY29tYmluYXRpb24gb2YgdGhl
IHR3byB5b3Ugc3RpbGwgcnVuIGludG8gdGhlIE9PTSBraWxsZXIuDQoNCll1cCB0byBzb2x2ZSB0
aGlzIHdpdGgga2VybmVsIGVuZm9yY2VtZW50LCB3ZSB3b3VsZCBuZWVkIGEgY291bnRlcg0KdGhh
dCBpbmNsdWRlcyBib3RoIHR5cGVzLiBUaGVuIHdoYXQgaWYgdGhhdCBzeXN0ZW0gbWVtb3J5IGNh
biBiZQ0Kc3dhcHBlZCBhbmQgZXhjZWVkcyBhIHN3YXAtb25seSBjb3VudGVyLiBZZXQgYW5vdGhl
ciBjb3VudGVyPyAoZG1lbSwNCmRtZW0rc3lzdGVtLCBkbWVtK3N5c3RlbStzd2FwKSA6XA0KDQo+
ID4gbWVtc3cgZG9lc24ndCBleGlzdCBpbiB2MiwgYW5kIHVzZXJzIGFyZSBhc2tpbmcgZm9yIGl0
IGJhY2suIFsxXSBJDQo+ID4gdGVuZCB0byBhZ3JlZSB0aGF0IGEgY29tYmluZWQgY291bnRlciBp
cyB1c2VmdWwgYXMgSSBkb24ndCBzZWUgYSBncmVhdA0KPiA+IHdheSB0byBhcHBseSBtZWFuaW5n
ZnVsIGxpbWl0cyB0byBpbmRpdmlkdWFsIGNvdW50ZXJzIChvciBpbmRpdmlkdWFsDQo+ID4gY29u
dHJvbGxlciBsaW1pdHMgaW4gdGhlIGRtZW0rbWVtY2cgY2FzZSkgd2hlbiBtdWx0aXBsZSBjZ3Jv
dXBzIGFyZQ0KPiA+IGludm9sdmVkIGFuZCBldmljdGlvbiBjYW4gY2F1c2UgbWVtb3J5IHRvIGJl
IHRyYW5zZmVycmVkIGZyb20gb25lDQo+ID4gcGxhY2UgdG8gYW5vdGhlci4gU29ycnkgSSdtIG5v
dCByZWFsbHkgb2ZmZXJpbmcgYSBzb2x1dGlvbiB0byB0aGlzLA0KPiA+IGJ1dCBJIGZlZWwgbGlr
ZSBvbmx5IHRyYW5zZmVycmluZyB0aGUgY2hhcmdlIGJldHdlZW4gY2dyb3VwcyBpcyBhDQo+ID4g
cGFydGlhbCBzb2x1dGlvbiBzaW5jZSB0aGUgZW5mb3JjZW1lbnQgYnkgdGhlIGtlcm5lbCBpcyBp
bmRlcGVuZGVudA0KPiA+IGZvciBlYWNoIGNvbnRyb2xsZXIuIFNvIHllYWggYXMgRGF2ZSBhbmQg
U2ltYSBzYWlkIGZvciBhY2NvdW50aW5nIEkNCj4gPiBndWVzcyBpdCB3b3JrcywgYW5kIG1heWJl
IHRoYXQncyBnb29kIGVub3VnaCBpZiB5b3UgaGF2ZSB1c2Vyc3BhY2UNCj4gPiBlbmZvcmNlbWVu
dCB0aGF0J3Mgc21hcnQgZW5vdWdoIHRvIGxvb2sgaW4gYWxsIHRoZSBkaWZmZXJlbnQgcGxhY2Vz
Lg0KPiA+IEJ1dCB0aGVuIHRoZXJlIGFyZSB0aGUgZm9sa3MgYXNraW5nIGZvciBrZXJuZWwgZW5m
b3JjZW1lbnQuIE1heWJlIGp1c3QNCj4gPiBhY2NvdW50aW5nIGFzIGJlc3Qgd2UgY2FuIGlzIGEg
Z29vZCBwbGFjZSB0byBzdGFydD8NCj4NCj4gU28gd2Ugd291bGQgYWNjb3VudCB0byBtZW1jZywg
YnV0IGRvbid0IGFwcGx5IGl0J3MgbGltaXRzPw0KDQpJIHdhcyB0aGlua2luZyBqdXN0IGRvIHRo
ZSBhY2NvdW50aW5nIGluZGVwZW5kZW50bHkgZm9yIGVhY2ggcmVzb3VyY2UNCmFuZCBub3QgcmVs
eSBvbiB0aGUga2VybmVsIGZvciBlbmZvcmNlbWVudCBvZiBjb21iaW5hdGlvbnMgb2YNCnJlc291
cmNlcyBhY3Jvc3MgY29udHJvbGxlcnMuIChUaGUgc3RhdHVzIHF1by4pIFRoYXQgc2hvdWxkbid0
IGFmZmVjdA0KaG93IG1lbWNnIGVuZm9yY2VzIGxpbWl0cy4NCg0KSWYgd2UgY291bGQgY29tcG9z
ZSBhICJzeW50aGV0aWMiIGNvdW50ZXIgZmlsZSBpbiBjZ3JvdXBmcyBhdCBydW50aW1lDQp0aGF0
IGNvbWJpbmVzIG11bHRpcGxlIGFyYml0cmFyeSBleGlzdGluZyBjb3VudGVycyBJIHRoaW5rIHRo
YXQnZCBoZWxwDQphZGRyZXNzIHRoZSBlbmZvcmNlbWVudCBzaWRlLiBJdCdkIGFsc28gY29udmVu
aWVudGx5IHNvbHZlIHRoZSBtZW1zdw0KcHJvYmxlbSBpbiB2MiBzaW5jZSB5b3UgY291bGQgY29t
YmluZSBtZW1vcnkuY3VycmVudCBhbmQNCm1lbW9yeS5zd2FwLmN1cnJlbnQgaW50byBzb21ldGhp
bmcgbGlrZSBtZW1zdy5jdXJyZW50IGFuZCBzZXQgYQ0KbWVtc3cubWF4LCBhbmQgb25seSB1c2Vy
cyB3aG8gY2FyZSBhYm91dCB0aGF0IGNvbWJpbmF0aW9uIHdvdWxkIHBheQ0KdGhlIG92ZXJoZWFk
IGZvciBpdC4NCg0KPiBNaG0sIHRoYXQncyBhIGtpbmQgb2YgaW50ZXJlc3RpbmcgaWRlYS4gSXQg
YXQgbGVhc3QgcGFydGlhbGx5IHNvbHZlcyB0aGUgcHJvYmxlbS4NCj4NCj4gUmVnYXJkcywNCj4g
Q2hyaXN0aWFuLg0KPg0KPiA+DQo+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDI1MDMxOTA2NDE0OC43NzQ0MDYtNS1qaW5neGlhbmd6ZW5nLmNhc0BnbWFpbC5jb20vDQo+DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
