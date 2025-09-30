Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CACCBAB95D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 07:55:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DF77454E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 05:55:11 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 0E7EB447E1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 05:55:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ZB0fMYa9;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=krzk@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7697162754
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 05:55:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D516C19424
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 05:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759211707;
	bh=xjANxMJTM9LPC3RWuEeyXQhzfMnAjgHK8NXmc9aojnI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ZB0fMYa9XLkbh6rVUDgMHx3eQeX6PR4zSoPKI8u9xbuliqw9mfG4vwkZ3vND3le/Q
	 JPQrWYdQUO6pxbODiHiLSkfo/nJLphrgwsstttU/by2x23vwH3kT6S396YvdyOhsVB
	 AGVq2hZIajauw2YLR/W5NS9h5SfuUFqEkDUte8AakA9H1YkVpK7KD+/Qhqj+CSMPDX
	 botGEtmtgW2kJrZLIhdPE9QJ/8oR6wIQp70d8BfB/FqU0tLY4nu96ob6hl/nkxp3Iv
	 ZYPixFUDAaHATPyDWhq9Wx00NSCGQVkAwxGKvoJsiWHUYRlJhojrlM3Iyc+znkCn9W
	 mL7tGx1KTXr5w==
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b551b040930so3694409a12.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 22:55:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWvyIc7PImRLo77LUztINcZKDfARC4ytUdnVe3lIHfGp6pjEUmLjvlCFzK2zGcUnqZwGmI8zCt+4KA34VYc@lists.linaro.org
X-Gm-Message-State: AOJu0YwST2hHTlg1FHnxuuYQ/RLiegJewU1rnPoifhgrIMWHnqe1urXS
	lNvOo1y6fkaNQ0hW8Ms4h/Usr5HP0m6r9HutOatexdZhToxnzoZz7xxSifEugfE5jj8ReLK6R8K
	nYioBTi4EvRoMDyaGK13GUB2ayPVYp9k=
X-Google-Smtp-Source: AGHT+IGmdGRI0LMi5UqhtfOWw2y8t3L5Y8DIOORexgZS1OILavNgX8DdiClZ3me4wlwwJibUM+KIj1389jiCcZaA8L4=
X-Received: by 2002:a17:902:d2c1:b0:261:cb35:5a0e with SMTP id
 d9443c01a7336-27ed4a74481mr236897635ad.57.1759211706568; Mon, 29 Sep 2025
 22:55:06 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20250930035551epcas5p4ee7cb5af08eadb2f5ed6e5eaa06a60a9@epcas5p4.samsung.com>
 <20250930040348.3702923-1-h.dewangan@samsung.com> <20250930040348.3702923-9-h.dewangan@samsung.com>
In-Reply-To: <20250930040348.3702923-9-h.dewangan@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 30 Sep 2025 14:54:54 +0900
X-Gmail-Original-Message-ID: <CAJKOXPecLREbEDM4yfM=WD-EFfuBqPDXNZceATLeWQRj0X_w7w@mail.gmail.com>
X-Gm-Features: AS18NWA-eQpZ7RgNI6Y84_mjkYb4V1iHJZQyw43DMe2SjRnOaTW2ugj0GBT0nqU
Message-ID: <CAJKOXPecLREbEDM4yfM=WD-EFfuBqPDXNZceATLeWQRj0X_w7w@mail.gmail.com>
To: Himanshu Dewangan <h.dewangan@samsung.com>
X-Rspamd-Queue-Id: 0E7EB447E1
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.47 / 15.00];
	BAYES_HAM(-2.97)[99.86%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[19];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AXDSOGCEFTR7Z3J7YDGF6RKQSULIJNTO
X-Message-ID-Hash: AXDSOGCEFTR7Z3J7YDGF6RKQSULIJNTO
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, alim.akhtar@samsung.com, manjun@samsung.com, nagaraju.s@samsung.com, ih0206.lee@samsung.com, jehyung.lee@samsung.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?q?Re=3A_=5BPATCH_08/29=5D_media=3A_mfc=3A_Add_Exynos=E2=80=91MFC_driver_probe_support?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AXDSOGCEFTR7Z3J7YDGF6RKQSULIJNTO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAzMCBTZXB0IDIwMjUgYXQgMTI6NTYsIEhpbWFuc2h1IERld2FuZ2FuIDxoLmRld2Fu
Z2FuQHNhbXN1bmcuY29tPiB3cm90ZToNCj4NCj4gRnJvbTogTmFnYXJhanUgU2lkZGluZW5pIDxu
YWdhcmFqdS5zQHNhbXN1bmcuY29tPg0KPg0KPiBJbnRyb2R1Y2UgYSBuZXcgS2NvbmZpZyBlbnRy
eSBWSURFT19FWFlOT1NfTUZDIGZvciB0aGUgU2Ftc3VuZw0KPiBFeHlub3MgTUZDIGRyaXZlciB0
aGF0IHN1cHBvcnRzIGZpcm13YXJlIHZlcnNpb27igK8xMyBhbmQgbGF0ZXIuDQo+IEV4dGVuZCB0
aGUgdG9w4oCRbGV2ZWwgU2Ftc3VuZyBwbGF0Zm9ybSBLY29uZmlnIHRvIGRpc2FibGUgdGhlIGxl
Z2FjeQ0KPiBTNVDigJFNRkMgZHJpdmVyIHdoZW4gaXRzIGZpcm13YXJlIHZlcnNpb24gaXMgPuKA
r3YxMiBhbmQgdG8gc2VsZWN0IHRoZQ0KPiBuZXcgRXh5bm9z4oCRTUZDIGRyaXZlciBvbmx5IHdo
ZW4gVklERU9fU0FNU1VOR19TNVBfTUZDIGlzIG5vdCBlbmFibGVkLg0KPg0KPiBBZGQgZXh5bm9z
LW1mYyBLY29uZmlnIGFuZCBNYWtlZmlsZSBmb3IgcHJvYmUgZnVuY3Rpb25hbGl0eSBhbmQgY3Jl
YXRpb24NCj4gb2YgZGVjb2RlciBhbmQgZW5jb2RlciBkZXZpY2UgZmlsZXMgYnkgcmVnaXN0ZXJp
bmcgdGhlIGRyaXZlciBvYmplY3QNCj4gZXh5bm9zX21mYy5vIGFuZCBvdGhlciByZWxldmFudCBz
b3VyY2UgZmlsZXMuDQo+DQo+IFByb3ZpZGUgaGVhZGVyIGZpbGVzIG1mY19jb3JlX29wcy5oIGFu
ZCBtZmNfcm0uaCBjb250YWluaW5nIGNvcmUNCj4gICBvcGVyYXRpb24gcHJvdG90eXBlcywgcmVz
b3VyY2XigJFtYW5hZ2VyIGhlbHBlcnMsDQo+ICAgYW5kIGNvcmXigJFzZWxlY3Rpb24gdXRpbGl0
aWVzLg0KPg0KPiBBZGQgYSBjb25maWd1cmFibGUgb3B0aW9uIE1GQ19VU0VfQ09SRURVTVAgdG8g
ZW5hYmxlIGNvcmXigJFkdW1wDQo+IHN1cHBvcnQgZm9yIGRlYnVnZ2luZyBNRkMgZXJyb3JzLg0K
Pg0KPiBUaGVzZSBjaGFuZ2VzIGJyaW5nIHN1cHBvcnQgZm9yIG5ld2VyIEV4eW5vc+KAkWJhc2Vk
IE1GQyBoYXJkd2FyZSwNCj4gY2xlYW5seSBzZXBhcmF0ZSBpdCBmcm9tIHRoZSBsZWdhY3kgUzVQ
4oCRTUZDIGRyaXZlciwgYW5kIGxheSB0aGUNCj4gZ3JvdW5kd29yayBmb3IgZnV0dXJlIGZlYXR1
cmUgZGV2ZWxvcG1lbnQgYW5kIGRlYnVnZ2luZy4NCj4NCg0KDQpObywgTkFLLiBFeGlzdGluZyBk
cml2ZXIgaXMgd2VsbCB0ZXN0ZWQgYW5kIGFscmVhZHkgdXNlZCBvbiBuZXdlc3QNCkV4eW5vcyBT
b0MsIHNvIGFsbCB0aGlzIG5ldyBkcml2ZXIgaXMgZXhhY3RseSBob3cgeW91IHNob3VsZCBub3Qg
d29yaw0KaW4gdXBzdHJlYW0uIFlvdSBuZWVkIHRvIGludGVncmF0ZSBpbnRvIGV4aXN0aW5nIGRy
aXZlci4NCg0KU2Ftc3VuZyByZWNlaXZlZCB0aGlzIHJldmlldyBtdWx0aXBsZSB0aW1lcyBhbHJl
YWR5Lg0KQmVzdCByZWdhcmRzLA0KS3J6eXN6dG9mDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
