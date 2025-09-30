Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FA7BAEB7F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Oct 2025 00:59:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B2FE44980
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 22:59:22 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 410E644937
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 22:59:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=h9rHi+jt;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=krzk@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A94E644FDE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 22:59:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A152C2BC86
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 22:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759273159;
	bh=pZbH7LPZiV6YQRsuN23fRTyE9NZC7LXkXRPWHo3BLe8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=h9rHi+jt8NsmaTS0OJF+mP5P2Y0zeOkF8evYC2568+HLe7liiEH3Jahjstgmmo2Pg
	 nxd5G6ngtw3Xt8rbRgvDOHmR9sR5U5BceKMZjr9GRYRDBrqg7K4lE2OCr59GBhLGIG
	 fFe1LkCKT3ER/mvlpsjXzGuCD4JLgRUjrIZA9rH+fJLLLk9Gw4oE41rwfcE7wOgq46
	 YWMDVJ0iKNazX2s3s7tLrOE69GfYuG/pXM72MpkVgp5CVyIHbc8Jl1kl2+YA7qIKN/
	 N8uw+D5FCwCjaV7Mln/ro2DtvL7SQ5XeMH75hSlCOGjx+NF8fWEbXox7zn4+csg818
	 b+sZaEDB3bxwQ==
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-27c369f8986so63156485ad.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 15:59:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXbP5atn+TzrqjhzRD/sm8V2WI8T182l6NSL2mSZnxELsMeHBMyCpsR2V+TyQH+8DgQgac4xJFGHLz8oAj7@lists.linaro.org
X-Gm-Message-State: AOJu0YwtfupJ2hVRcGRQQ6KiZTSmGK7DPLn2rT1H7ThWDTUPMroM5M7w
	fesuQzjdgpXYbd6QDRRWsfLNHQG7lZdk/Y6oYr5EO+TgSH06DE1S0TSqcUvFlzUQu3Svj8h20K6
	SDDhXoEJUtggEdGRNIufrXChNsVbh1wo=
X-Google-Smtp-Source: AGHT+IEjOJY+T/R5p0HUNzDJbvMSExqfd4Zm4zKN7PDOWoXwQsAkRMa1cPIdhvK5mllhEGX7uEeioJja0ynGdTlQ21Y=
X-Received: by 2002:a17:902:dad2:b0:269:8c12:909a with SMTP id
 d9443c01a7336-28e7f31167dmr15520695ad.31.1759273158970; Tue, 30 Sep 2025
 15:59:18 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20250930035551epcas5p4ee7cb5af08eadb2f5ed6e5eaa06a60a9@epcas5p4.samsung.com>
 <20250930040348.3702923-1-h.dewangan@samsung.com> <20250930040348.3702923-9-h.dewangan@samsung.com>
 <CAJKOXPecLREbEDM4yfM=WD-EFfuBqPDXNZceATLeWQRj0X_w7w@mail.gmail.com> <75d06769-4896-4095-9969-03a517705196@samsung.com>
In-Reply-To: <75d06769-4896-4095-9969-03a517705196@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 1 Oct 2025 07:59:07 +0900
X-Gmail-Original-Message-ID: <CAJKOXPe0kGFoUxOGupwD_rSshTBVFhH3184xOH=NquSGn2QxcQ@mail.gmail.com>
X-Gm-Features: AS18NWAOxLyorh9QMzb_rAtOLuensrQj-n9XXTXgykqSdy5eNYjdJBLoFkIMVc8
Message-ID: <CAJKOXPe0kGFoUxOGupwD_rSshTBVFhH3184xOH=NquSGn2QxcQ@mail.gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-Rspamd-Queue-Id: 410E644937
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DSYFMT7TZTAX74Y4QZKYPOJADZCLDIER
X-Message-ID-Hash: DSYFMT7TZTAX74Y4QZKYPOJADZCLDIER
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Himanshu Dewangan <h.dewangan@samsung.com>, mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, alim.akhtar@samsung.com, manjun@samsung.com, nagaraju.s@samsung.com, ih0206.lee@samsung.com, jehyung.lee@samsung.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?q?Re=3A_=5BPATCH_08/29=5D_media=3A_mfc=3A_Add_Exynos=E2=80=91MFC_driver_probe_support?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DSYFMT7TZTAX74Y4QZKYPOJADZCLDIER/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAxIE9jdCAyMDI1IGF0IDAwOjQ2LCBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20+IHdyb3RlOg0KPg0KPiBIaSBLcnp5c3p0b2YsDQo+DQo+IE9uIDMwLjA5
LjIwMjUgMDc6NTQsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6DQo+ID4gT24gVHVlLCAzMCBT
ZXB0IDIwMjUgYXQgMTI6NTYsIEhpbWFuc2h1IERld2FuZ2FuIDxoLmRld2FuZ2FuQHNhbXN1bmcu
Y29tPiB3cm90ZToNCj4gPj4gRnJvbTogTmFnYXJhanUgU2lkZGluZW5pIDxuYWdhcmFqdS5zQHNh
bXN1bmcuY29tPg0KPiA+Pg0KPiA+PiBJbnRyb2R1Y2UgYSBuZXcgS2NvbmZpZyBlbnRyeSBWSURF
T19FWFlOT1NfTUZDIGZvciB0aGUgU2Ftc3VuZw0KPiA+PiBFeHlub3MgTUZDIGRyaXZlciB0aGF0
IHN1cHBvcnRzIGZpcm13YXJlIHZlcnNpb27igK8xMyBhbmQgbGF0ZXIuDQo+ID4+IEV4dGVuZCB0
aGUgdG9w4oCRbGV2ZWwgU2Ftc3VuZyBwbGF0Zm9ybSBLY29uZmlnIHRvIGRpc2FibGUgdGhlIGxl
Z2FjeQ0KPiA+PiBTNVDigJFNRkMgZHJpdmVyIHdoZW4gaXRzIGZpcm13YXJlIHZlcnNpb24gaXMg
PuKAr3YxMiBhbmQgdG8gc2VsZWN0IHRoZQ0KPiA+PiBuZXcgRXh5bm9z4oCRTUZDIGRyaXZlciBv
bmx5IHdoZW4gVklERU9fU0FNU1VOR19TNVBfTUZDIGlzIG5vdCBlbmFibGVkLg0KPiA+Pg0KPiA+
PiBBZGQgZXh5bm9zLW1mYyBLY29uZmlnIGFuZCBNYWtlZmlsZSBmb3IgcHJvYmUgZnVuY3Rpb25h
bGl0eSBhbmQgY3JlYXRpb24NCj4gPj4gb2YgZGVjb2RlciBhbmQgZW5jb2RlciBkZXZpY2UgZmls
ZXMgYnkgcmVnaXN0ZXJpbmcgdGhlIGRyaXZlciBvYmplY3QNCj4gPj4gZXh5bm9zX21mYy5vIGFu
ZCBvdGhlciByZWxldmFudCBzb3VyY2UgZmlsZXMuDQo+ID4+DQo+ID4+IFByb3ZpZGUgaGVhZGVy
IGZpbGVzIG1mY19jb3JlX29wcy5oIGFuZCBtZmNfcm0uaCBjb250YWluaW5nIGNvcmUNCj4gPj4g
ICAgb3BlcmF0aW9uIHByb3RvdHlwZXMsIHJlc291cmNl4oCRbWFuYWdlciBoZWxwZXJzLA0KPiA+
PiAgICBhbmQgY29yZeKAkXNlbGVjdGlvbiB1dGlsaXRpZXMuDQo+ID4+DQo+ID4+IEFkZCBhIGNv
bmZpZ3VyYWJsZSBvcHRpb24gTUZDX1VTRV9DT1JFRFVNUCB0byBlbmFibGUgY29yZeKAkWR1bXAN
Cj4gPj4gc3VwcG9ydCBmb3IgZGVidWdnaW5nIE1GQyBlcnJvcnMuDQo+ID4+DQo+ID4+IFRoZXNl
IGNoYW5nZXMgYnJpbmcgc3VwcG9ydCBmb3IgbmV3ZXIgRXh5bm9z4oCRYmFzZWQgTUZDIGhhcmR3
YXJlLA0KPiA+PiBjbGVhbmx5IHNlcGFyYXRlIGl0IGZyb20gdGhlIGxlZ2FjeSBTNVDigJFNRkMg
ZHJpdmVyLCBhbmQgbGF5IHRoZQ0KPiA+PiBncm91bmR3b3JrIGZvciBmdXR1cmUgZmVhdHVyZSBk
ZXZlbG9wbWVudCBhbmQgZGVidWdnaW5nLg0KPiA+Pg0KPiA+IE5vLCBOQUsuIEV4aXN0aW5nIGRy
aXZlciBpcyB3ZWxsIHRlc3RlZCBhbmQgYWxyZWFkeSB1c2VkIG9uIG5ld2VzdA0KPiA+IEV4eW5v
cyBTb0MsIHNvIGFsbCB0aGlzIG5ldyBkcml2ZXIgaXMgZXhhY3RseSBob3cgeW91IHNob3VsZCBu
b3Qgd29yaw0KPiA+IGluIHVwc3RyZWFtLiBZb3UgbmVlZCB0byBpbnRlZ3JhdGUgaW50byBleGlz
dGluZyBkcml2ZXIuDQo+ID4NCj4gPiBTYW1zdW5nIHJlY2VpdmVkIHRoaXMgcmV2aWV3IG11bHRp
cGxlIHRpbWVzIGFscmVhZHkuDQo+DQo+IFBsZWFzZSBkb24ndCBiZSBzbyBjYXRlZ29yaWNhbC4g
VGhlIE1GQyBoYXJkd2FyZSBldm9sdmVkIHF1aXRlIGEgYml0DQo+IGZyb20gdGhlIGFuY2llbnQg
dGltZXMgb2YgUzVQVjIxMCBTb0MsIHdoZW4gczVwLW1mYyBkcml2ZXIgd2FzIGRlc2lnbmVkLg0K
PiBUaGUgZmVhdHVyZSBsaXN0IG9mIHRoZSBuZXcgaGFyZHdhcmUgaGFyZGx5IG1hdGNoZXMgdGhv
c2UgYW5kIEkgcmVhbGx5DQo+IGRvbid0IHNlZSB0aGUgcmVhc29uIGZvciBmb3JjaW5nIHN1cHBv
cnQgZm9yIHNvIGRpZmZlcmVudCBoYXJkd2FyZSBpbiBhDQo+IHNpbmdsZSBkcml2ZXIuIFNvbWV0
aW1lcyBpdCBpcyBlYXNpZXIganVzdCB0byBoYXZlIDIgc2VwYXJhdGUgZHJpdmVycyBpZg0KPiB0
aGUgY29tbW9uIHBhcnQgaXMganVzdCB0aGUgYWNyb255bSBpbiB0aGUgaGFyZHdhcmUgYmxvY2sg
bmFtZS4uLg0KPg0KDQpJIGtub3cgaXQgaXMgZWFzaWVyIGZvciBTYW1zdW5nIHRvIHdyaXRlIG5l
dyBkcml2ZXIsIGJ1dCB0aGlzIHNob3VsZA0KYW5zd2VyIHRvIC0gd2h5IHRoZSBtYWludGFpbmVy
cyBhbmQgdGhlIGNvbW11bml0eSB3b3VsZCBsaWtlIHRvDQptYWludGFpbiB0d28gZHJpdmVycy4g
U3VyZSwgbWFrZSBhIGNhc2Ugd2h5IHdlIHdvdWxkIGxpa2UgdG8gdGFrZSB0aGlzDQpjb2RlLg0K
DQpUaGUgZWFzaWVzdCBhcmd1bWVudCBoZXJlIHdoeSB3ZSB3b3VsZG4ndCBpczogbmV3IHZlbmRv
ciBkb3duc3RyZWFtDQpjb2RlIG1lYW5zIHJlcGxpY2F0aW5nIGFsbCBrbm93biBpc3N1ZXMsIG9s
ZCBjb2Rpbmcgc3R5bGUsIGV2ZXJ5dGhpbmcNCndoaWNoIHdlIGFscmVhZHkgZml4ZWQgYW5kIGNo
YW5nZWQuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
