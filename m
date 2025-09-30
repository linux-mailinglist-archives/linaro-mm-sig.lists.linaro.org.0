Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 72841BAEBA4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Oct 2025 01:06:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A88B45F42
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 23:06:17 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 8573144980
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 23:06:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TLMYUycy;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=krzk@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2D69A60324
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 23:06:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D08EAC116C6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 23:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759273573;
	bh=mFz+L72B9DjiruUWCPt3+uUkwCHLqPB81lzn9f7L9es=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=TLMYUycydyqqjUP15CWlEFWzraN18TkKIePRecxtCkCy1V5Q6/cfOULx67IJAdEQY
	 EFNXsgnj/eXNVpwvz/ZXK8sN2Kv+2EroVbxbQTHggT3RrnWzpqW/+Z+m7tk7o9dfFo
	 sEq6s7AbWNouIEML4E8VJ1WTkAEhu3E135shP2Vr1R/buR2pnuVKgi3JwzjqUc5Wm0
	 DWzbQKPLIcspHPUxfkQnFXFz1R8Rm8sSnElOO/CFIwGkfzxfOMPgGpPyR3P6DpgPBJ
	 o2/bpIo5eTMgdzFUbE3ysoaO3uOcJaWiK5lanpjA19JNzBPG/nwdL23imNUc9InoM5
	 H64dZ454YRRPw==
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7811fa91774so3917389b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 16:06:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVGmb/l+aIrVouDnrihZyD66DTleguYlSflZp30ji1AwgvVrZvw6pL7Ex/vM5/r/QnLWjS22FMOVL6sEX7Q@lists.linaro.org
X-Gm-Message-State: AOJu0YyCX//vplSmeeiwYi8UHi9l9MCVpilp5HPCmwi/juaixTTdUBge
	tAcTwISnz6RmSrF3bEXp49Cp4APlFd5xdGRcGuXoGROiMDaTvqauoF5+MmhyutNOSEDeuNcgfQM
	/C2RhXLbXn5uzLkIhL5PkM2OhGqPuTRI=
X-Google-Smtp-Source: AGHT+IEtVABxEKyxN7a+U3Kp2sBw7bT8AmKlK9sbcU4p8q7V3u9HMuNYcQ/g3mBtE/Xshs31HBFf6QR4rED4d0MupEk=
X-Received: by 2002:a17:903:4b48:b0:275:2aac:fef8 with SMTP id
 d9443c01a7336-28e7f33067fmr14927905ad.38.1759273573411; Tue, 30 Sep 2025
 16:06:13 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20250930035551epcas5p4ee7cb5af08eadb2f5ed6e5eaa06a60a9@epcas5p4.samsung.com>
 <20250930040348.3702923-1-h.dewangan@samsung.com> <20250930040348.3702923-9-h.dewangan@samsung.com>
 <CAJKOXPecLREbEDM4yfM=WD-EFfuBqPDXNZceATLeWQRj0X_w7w@mail.gmail.com>
 <75d06769-4896-4095-9969-03a517705196@samsung.com> <CAJKOXPe0kGFoUxOGupwD_rSshTBVFhH3184xOH=NquSGn2QxcQ@mail.gmail.com>
In-Reply-To: <CAJKOXPe0kGFoUxOGupwD_rSshTBVFhH3184xOH=NquSGn2QxcQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 1 Oct 2025 08:06:01 +0900
X-Gmail-Original-Message-ID: <CAJKOXPchnA2k4sghuSBxA4h=CKJEQU0=09F+AAxPxA-rBpUW_g@mail.gmail.com>
X-Gm-Features: AS18NWB-7qq3WRSu2_4sN54O9Pq__ESSuLB-fBN1o7du1U_PSVDKaJXEOusJU-4
Message-ID: <CAJKOXPchnA2k4sghuSBxA4h=CKJEQU0=09F+AAxPxA-rBpUW_g@mail.gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-Rspamd-Queue-Id: 8573144980
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	TAGGED_RCPT(0.00)[dt];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VE7NSXQHLVN5K24NXUMX2OJ3NH3JVCMR
X-Message-ID-Hash: VE7NSXQHLVN5K24NXUMX2OJ3NH3JVCMR
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Himanshu Dewangan <h.dewangan@samsung.com>, mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, alim.akhtar@samsung.com, manjun@samsung.com, nagaraju.s@samsung.com, ih0206.lee@samsung.com, jehyung.lee@samsung.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?q?Re=3A_=5BPATCH_08/29=5D_media=3A_mfc=3A_Add_Exynos=E2=80=91MFC_driver_probe_support?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VE7NSXQHLVN5K24NXUMX2OJ3NH3JVCMR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAxIE9jdCAyMDI1IGF0IDA3OjU5LCBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtl
cm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIDEgT2N0IDIwMjUgYXQgMDA6NDYsIE1hcmVr
IFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBI
aSBLcnp5c3p0b2YsDQo+ID4NCj4gPiBPbiAzMC4wOS4yMDI1IDA3OjU0LCBLcnp5c3p0b2YgS296
bG93c2tpIHdyb3RlOg0KPiA+ID4gT24gVHVlLCAzMCBTZXB0IDIwMjUgYXQgMTI6NTYsIEhpbWFu
c2h1IERld2FuZ2FuIDxoLmRld2FuZ2FuQHNhbXN1bmcuY29tPiB3cm90ZToNCj4gPiA+PiBGcm9t
OiBOYWdhcmFqdSBTaWRkaW5lbmkgPG5hZ2FyYWp1LnNAc2Ftc3VuZy5jb20+DQo+ID4gPj4NCj4g
PiA+PiBJbnRyb2R1Y2UgYSBuZXcgS2NvbmZpZyBlbnRyeSBWSURFT19FWFlOT1NfTUZDIGZvciB0
aGUgU2Ftc3VuZw0KPiA+ID4+IEV4eW5vcyBNRkMgZHJpdmVyIHRoYXQgc3VwcG9ydHMgZmlybXdh
cmUgdmVyc2lvbuKArzEzIGFuZCBsYXRlci4NCj4gPiA+PiBFeHRlbmQgdGhlIHRvcOKAkWxldmVs
IFNhbXN1bmcgcGxhdGZvcm0gS2NvbmZpZyB0byBkaXNhYmxlIHRoZSBsZWdhY3kNCj4gPiA+PiBT
NVDigJFNRkMgZHJpdmVyIHdoZW4gaXRzIGZpcm13YXJlIHZlcnNpb24gaXMgPuKAr3YxMiBhbmQg
dG8gc2VsZWN0IHRoZQ0KPiA+ID4+IG5ldyBFeHlub3PigJFNRkMgZHJpdmVyIG9ubHkgd2hlbiBW
SURFT19TQU1TVU5HX1M1UF9NRkMgaXMgbm90IGVuYWJsZWQuDQo+ID4gPj4NCj4gPiA+PiBBZGQg
ZXh5bm9zLW1mYyBLY29uZmlnIGFuZCBNYWtlZmlsZSBmb3IgcHJvYmUgZnVuY3Rpb25hbGl0eSBh
bmQgY3JlYXRpb24NCj4gPiA+PiBvZiBkZWNvZGVyIGFuZCBlbmNvZGVyIGRldmljZSBmaWxlcyBi
eSByZWdpc3RlcmluZyB0aGUgZHJpdmVyIG9iamVjdA0KPiA+ID4+IGV4eW5vc19tZmMubyBhbmQg
b3RoZXIgcmVsZXZhbnQgc291cmNlIGZpbGVzLg0KPiA+ID4+DQo+ID4gPj4gUHJvdmlkZSBoZWFk
ZXIgZmlsZXMgbWZjX2NvcmVfb3BzLmggYW5kIG1mY19ybS5oIGNvbnRhaW5pbmcgY29yZQ0KPiA+
ID4+ICAgIG9wZXJhdGlvbiBwcm90b3R5cGVzLCByZXNvdXJjZeKAkW1hbmFnZXIgaGVscGVycywN
Cj4gPiA+PiAgICBhbmQgY29yZeKAkXNlbGVjdGlvbiB1dGlsaXRpZXMuDQo+ID4gPj4NCj4gPiA+
PiBBZGQgYSBjb25maWd1cmFibGUgb3B0aW9uIE1GQ19VU0VfQ09SRURVTVAgdG8gZW5hYmxlIGNv
cmXigJFkdW1wDQo+ID4gPj4gc3VwcG9ydCBmb3IgZGVidWdnaW5nIE1GQyBlcnJvcnMuDQo+ID4g
Pj4NCj4gPiA+PiBUaGVzZSBjaGFuZ2VzIGJyaW5nIHN1cHBvcnQgZm9yIG5ld2VyIEV4eW5vc+KA
kWJhc2VkIE1GQyBoYXJkd2FyZSwNCj4gPiA+PiBjbGVhbmx5IHNlcGFyYXRlIGl0IGZyb20gdGhl
IGxlZ2FjeSBTNVDigJFNRkMgZHJpdmVyLCBhbmQgbGF5IHRoZQ0KPiA+ID4+IGdyb3VuZHdvcmsg
Zm9yIGZ1dHVyZSBmZWF0dXJlIGRldmVsb3BtZW50IGFuZCBkZWJ1Z2dpbmcuDQo+ID4gPj4NCj4g
PiA+IE5vLCBOQUsuIEV4aXN0aW5nIGRyaXZlciBpcyB3ZWxsIHRlc3RlZCBhbmQgYWxyZWFkeSB1
c2VkIG9uIG5ld2VzdA0KPiA+ID4gRXh5bm9zIFNvQywgc28gYWxsIHRoaXMgbmV3IGRyaXZlciBp
cyBleGFjdGx5IGhvdyB5b3Ugc2hvdWxkIG5vdCB3b3JrDQo+ID4gPiBpbiB1cHN0cmVhbS4gWW91
IG5lZWQgdG8gaW50ZWdyYXRlIGludG8gZXhpc3RpbmcgZHJpdmVyLg0KPiA+ID4NCj4gPiA+IFNh
bXN1bmcgcmVjZWl2ZWQgdGhpcyByZXZpZXcgbXVsdGlwbGUgdGltZXMgYWxyZWFkeS4NCj4gPg0K
PiA+IFBsZWFzZSBkb24ndCBiZSBzbyBjYXRlZ29yaWNhbC4gVGhlIE1GQyBoYXJkd2FyZSBldm9s
dmVkIHF1aXRlIGEgYml0DQo+ID4gZnJvbSB0aGUgYW5jaWVudCB0aW1lcyBvZiBTNVBWMjEwIFNv
Qywgd2hlbiBzNXAtbWZjIGRyaXZlciB3YXMgZGVzaWduZWQuDQo+ID4gVGhlIGZlYXR1cmUgbGlz
dCBvZiB0aGUgbmV3IGhhcmR3YXJlIGhhcmRseSBtYXRjaGVzIHRob3NlIGFuZCBJIHJlYWxseQ0K
PiA+IGRvbid0IHNlZSB0aGUgcmVhc29uIGZvciBmb3JjaW5nIHN1cHBvcnQgZm9yIHNvIGRpZmZl
cmVudCBoYXJkd2FyZSBpbiBhDQo+ID4gc2luZ2xlIGRyaXZlci4gU29tZXRpbWVzIGl0IGlzIGVh
c2llciBqdXN0IHRvIGhhdmUgMiBzZXBhcmF0ZSBkcml2ZXJzIGlmDQo+ID4gdGhlIGNvbW1vbiBw
YXJ0IGlzIGp1c3QgdGhlIGFjcm9ueW0gaW4gdGhlIGhhcmR3YXJlIGJsb2NrIG5hbWUuLi4NCj4g
Pg0KPg0KPiBJIGtub3cgaXQgaXMgZWFzaWVyIGZvciBTYW1zdW5nIHRvIHdyaXRlIG5ldyBkcml2
ZXIsIGJ1dCB0aGlzIHNob3VsZA0KPiBhbnN3ZXIgdG8gLSB3aHkgdGhlIG1haW50YWluZXJzIGFu
ZCB0aGUgY29tbXVuaXR5IHdvdWxkIGxpa2UgdG8NCj4gbWFpbnRhaW4gdHdvIGRyaXZlcnMuIFN1
cmUsIG1ha2UgYSBjYXNlIHdoeSB3ZSB3b3VsZCBsaWtlIHRvIHRha2UgdGhpcw0KPiBjb2RlLg0K
Pg0KPiBUaGUgZWFzaWVzdCBhcmd1bWVudCBoZXJlIHdoeSB3ZSB3b3VsZG4ndCBpczogbmV3IHZl
bmRvciBkb3duc3RyZWFtDQo+IGNvZGUgbWVhbnMgcmVwbGljYXRpbmcgYWxsIGtub3duIGlzc3Vl
cywgb2xkIGNvZGluZyBzdHlsZSwgZXZlcnl0aGluZw0KPiB3aGljaCB3ZSBhbHJlYWR5IGZpeGVk
IGFuZCBjaGFuZ2VkLg0KDQpBbmQgMTUgc2Vjb25kIGxvb2sgYXQgb25lIG9mIHRoZSBwYXRjaGVz
IGFscmVhZHkgY29uZmlybWVkIHRoaXM6DQpyZXBsaWNhdGluZyBkb3duc3RyZWFtIGlzc3VlIC0g
dW5kb2N1bWVudGVkIERUIEFCSSBub3QgZm9sbG93aW5nDQpjdXJyZW50IHN0eWxlLCBjb2RlIHJl
bHlpbmcgb24gc29tZSBvdGhlciBkb3duc3RyZWFtIGRyaXZlcnMuIDE1DQpzZWNvbmRzIHdhcyBl
bm91Z2ggdG8gZmluZCBpdC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
