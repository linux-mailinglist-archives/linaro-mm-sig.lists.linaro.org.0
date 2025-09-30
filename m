Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E460BABA09
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 08:01:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF475448A4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 06:01:56 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C0D5F4423B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 06:01:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XLxhi1Cv;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=krzk@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 282684873B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 06:01:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C82CAC2BCB2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759212113;
	bh=tZFFRFKg0PUHDS6qSpNivs8Es7wMQjxESPTNTDMPml0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=XLxhi1CvzOKNDGiOPSiJnKK0WeN6K0SSaPz1FVlANT+wEp0VU5yXdizG65L3VNObk
	 8lbHU0vEXEjlJykluoK3Y2eWmxkO3keifks3tg6+iQustVWM2sgySl3y4YnwrEZajz
	 KxNNn19DFc/RfVgL9shJsK6MpsDGZLt7KJgJtuRqVObY9d/yIQ4z0BMtdv2Aozi0B1
	 2Y8S6HMkqLJXyi8ENAICuobWEUv6TYvLiWtszTCA09VtWNgAX1sgejIjsQ8hKvyYWh
	 +Z2+AEq1TTwSyyAnwIoIdepLBVKVLZSLORs8z1vnOBZ1X/6z9bHTUaUo+vq4wlubyx
	 PMr+luFX95Wbw==
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b58445361e8so2105636a12.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 23:01:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWtL6trVuj/569rMi9znkMIW9z7EBpDBGknMvWkVMZ9bYhH4FH6HV9IqkFL2PYQ0FV49QWHJNLe6CliYX3X@lists.linaro.org
X-Gm-Message-State: AOJu0YzrP9tAZMtHfkUPvmzgwdVJZXUSAOeb+NP7HZcPRLoDCsVO56hB
	5EaagEkhva8n0+q66AaW6CQOacY7gGF99tNXmZ23HuU+clW1CYH3YfvdUqFBXrYZvMhGBzby2OZ
	hPJ1Q+6m8f4pan8wTVxSpZZOfATSq6NY=
X-Google-Smtp-Source: AGHT+IErIwwKQvXadjo8YStieZUDut9jWiBGKRpZXkgYC3IZFhh1kNcaf5JtiD61ISPp+z4nkDRXWDsI/3DHVQYxgZE=
X-Received: by 2002:a17:902:f647:b0:269:aba9:ffd7 with SMTP id
 d9443c01a7336-28d1713873fmr34808755ad.25.1759212113208; Mon, 29 Sep 2025
 23:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20250930035521epcas5p428367b20b9498eb8862d17f4bb75f663@epcas5p4.samsung.com>
 <20250930040348.3702923-1-h.dewangan@samsung.com> <20250930040348.3702923-2-h.dewangan@samsung.com>
In-Reply-To: <20250930040348.3702923-2-h.dewangan@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 30 Sep 2025 15:01:41 +0900
X-Gmail-Original-Message-ID: <CAJKOXPcpybYa4hvVohkRVv5WaRv3ydK-BY4i3i5WA5fD07osoA@mail.gmail.com>
X-Gm-Features: AS18NWDDL4MOuOFlHqi4tRhQ26U6NLLMNyO6K7Q2H3O7rRfBNx3jEQQzLl1jkIs
Message-ID: <CAJKOXPcpybYa4hvVohkRVv5WaRv3ydK-BY4i3i5WA5fD07osoA@mail.gmail.com>
To: Himanshu Dewangan <h.dewangan@samsung.com>
X-Rspamd-Queue-Id: C0D5F4423B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DMOO25OFVWF36ZXYHV7IDXJP753T434P
X-Message-ID-Hash: DMOO25OFVWF36ZXYHV7IDXJP753T434P
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, alim.akhtar@samsung.com, manjun@samsung.com, nagaraju.s@samsung.com, ih0206.lee@samsung.com, jehyung.lee@samsung.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/29] dt-bindings: media: mfc: Add Exynos MFC devicetree binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DMOO25OFVWF36ZXYHV7IDXJP753T434P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAzMCBTZXB0IDIwMjUgYXQgMTI6NTUsIEhpbWFuc2h1IERld2FuZ2FuIDxoLmRld2Fu
Z2FuQHNhbXN1bmcuY29tPiB3cm90ZToNCj4NCj4gRnJvbTogTmFnYXJhanUgU2lkZGluZW5pIDxu
YWdhcmFqdS5zQHNhbXN1bmcuY29tPg0KPg0KPiBJbnRyb2R1Y2UgYSBuZXcgRFQgYmluZGluZyBm
aWxlIGZvciBleHlub3MtbWZjDQo+DQo+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9zYW1zdW5nLGV4eW5vcy1tZmMueWFtbA0KPiB3aGljaCBkZXNjcmliZXMgdGhlIEV4
eW5vcyBNdWx0aeKAkUZvcm1hdCBDb2RlYyAoTUZDKSBJUC4gIFRoZSBzY2hlbWENCj4gY292ZXJz
IHRoZSBjb3JlIG5vZGUgcHJvcGVydGllcywgcmVxdWlyZWQgZmllbGRzLCBhbmQgcHJvdmlkZXMg
YW4NCj4gZXhhbXBsZSBzbmlwcGV0Lg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBIaW1hbnNodSBEZXdh
bmdhbiA8aC5kZXdhbmdhbkBzYW1zdW5nLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTmFnYXJhanUg
U2lkZGluZW5pIDxuYWdhcmFqdS5zQHNhbXN1bmcuY29tPg0KPiAtLS0NCj4gIC4uLi9iaW5kaW5n
cy9tZWRpYS9zYW1zdW5nLGV4eW5vcy1tZmMueWFtbCAgICB8IDc3ICsrKysrKysrKysrKysrKysr
KysNCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEw
ICsrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA4NyBpbnNlcnRpb25zKCspDQo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3NhbXN1bmcs
ZXh5bm9zLW1mYy55YW1sDQo+DQo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWVkaWEvc2Ftc3VuZyxleHlub3MtbWZjLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc2Ftc3VuZyxleHlub3MtbWZjLnlhbWwNCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi5mYmVkOTg3ZmI5Y2YNCj4g
LS0tIC9kZXYvbnVsbA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bWVkaWEvc2Ftc3VuZyxleHlub3MtbWZjLnlhbWwNCj4gQEAgLTAsMCArMSw3NyBAQA0KPiArIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZQ0KPiAr
JVlBTUwgMS4yDQo+ICstLS0NCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMv
bWVkaWEvc2Ftc3VuZyxleHlub3MtbWZjLnlhbWwjDQo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMNCj4gKw0KPiArdGl0bGU6IFNhbXN1bmcg
RXh5bm9zIE11bHRpIEZvcm1hdCBDb2RlYyAoTUZDKQ0KPiArDQo+ICttYWludGFpbmVyczoNCj4g
KyAgLSBOYWdhcmFqdSBTaWRkaW5lbmkgPG5hZ2FyYWp1LnNAc2Ftc3VuZy5jb20+DQo+ICsgIC0g
SGltYW5zaHUgRGV3YW5nYW4gPGguZGV3YW5nYW5Ac2Ftc3VuZy5jb20+DQo+ICsNCj4gK2Rlc2Ny
aXB0aW9uOg0KPiArICBNdWx0aSBGb3JtYXQgQ29kZWMgKE1GQykgaXMgdGhlIElQIHByZXNlbnQg
aW4gU2Ftc3VuZyBTb0NzIHdoaWNoDQo+ICsgIHN1cHBvcnRzIGhpZ2ggcmVzb2x1dGlvbiBkZWNv
ZGluZyBhbmQgZW5jb2RpbmcgZnVuY3Rpb25hbGl0aWVzLg0KPiArDQo+ICtwcm9wZXJ0aWVzOg0K
PiArICBjb21wYXRpYmxlOg0KPiArICAgIG9uZU9mOg0KPiArICAgICAgLSBlbnVtOg0KPiArICAg
ICAgICAgIC0gc2Ftc3VuZyxleHlub3MtbWZjICAgICAgICAgICAgIyBFeHlub3M5MjANCj4gKyAg
ICAgICAgICAtIHNhbXN1bmcsbWZjX2NvcmUwX21lbSAgICAgICAgICMgUmVzZXJ2ZWQgTWVtb3J5
DQo+ICsgICAgICAgICAgLSBzYW1zdW5nLG1mY19jb3JlMV9tZW0gICAgICAgICAjIFJlc2VydmVk
IE1lbW9yeQ0KDQoNCk5BSw0KDQpUaGVzZSBiaW5kaW5ncyBkdXBsaWNhdGUgZXhpc3Rpbmcgb25l
cywgZG8gbm90IGZvbGxvdyBhbnkgZXhpc3RpbmcNCnN0YW5kYXJkcyAod3JvbmcgY29tcGF0aWJs
ZSkgYW5kIGFyZSB3cml0dGVuIGNvbXBsZXRlbHkgZGlmZmVyZW50IHRoYW4NCmFueSBvdGhlciBi
aW5kaW5nLCB3aGljaCBtZWFucyB5b3UgcHJvYmFibHkgY3JlYXRlZCBiaWcgQUkgc2xvcC4NCg0K
SSdtIG5vdCBnb2luZyB0byByZXZpZXcgdGhpcywgaXQncyBxdWFsaXR5IGlzIGp1c3QgYmV5b25k
IGJhc2ljDQpzdGFuZGFyZHMuIFNlbmRpbmcgc29tZXRoaW5nIGxpa2UgdGhpcyBmcm9tIFNhbXN1
bmcgbWVhbnMgeW91IGRvIG5vdA0KcmVzcGVjdCBvdXIgdGltZS4gWW91IG5lZWQgdG8gc3RheSBm
cm9tIHNjcmF0Y2ggYW5kIHJlYWQgZXhpc3RpbmcNCmRvY3VtZW50YXRpb24gYW5kIGV4aXN0aW5n
IGJpbmRpbmdzDQoNCkknbGwgYmUgb3JnYW5pemluZyBhIG1pbmkgbWVldGluZyB3aXRoIFNhbXN1
bmcgb24gMTN0aCBPY3QgaW4gU2VvdWwsDQpmZWVsIGZyZWUgdG8gam9pbiBpZiB5b3UgYXJlIGFy
b3VuZC4gSSBjYW4gZXhwbGFpbiB0aGVuIG1vcmUgd2h5DQp3YXN0aW5nIG91ciB0aW1lIGlzIG1h
a2luZyBtZSB2ZXJ5IGdydW1weS4NCg0KQmVzdCByZWdhcmRzLA0KS3J6eXN6dG9mDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
