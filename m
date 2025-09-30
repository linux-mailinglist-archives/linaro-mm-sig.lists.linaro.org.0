Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF86EBADF5E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 17:46:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C527E44B14
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 15:46:17 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id EDF07447E0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 15:46:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=GEmo2aaV;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250930154613euoutp0284381aec18bd4d7f936fcd41cd189c4b~qGfuk244p2320623206euoutp024
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 15:46:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250930154613euoutp0284381aec18bd4d7f936fcd41cd189c4b~qGfuk244p2320623206euoutp024
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759247173;
	bh=iCpr5TzyOFeRuqU82QBgsAybOuX0sXWBwEO+eHNweII=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=GEmo2aaV3Fhb+h0H+OL88S5Un3zCHcz7kvEcOruc4TmXpXvHdpKjLwI7cEBp7asMO
	 muCNuGSqnMlJSRFBKwmUe+kxce/c8fhUiZy+mBT4fvst9i7T4SLjLU0Jge/xzV09V9
	 trHRBO20Um+o+53qS3gt/u6DVrintZBeymx0x8lo=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250930154612eucas1p2cf5b43435487dc8e6b19b60d1a3801ef~qGft4sFWT2800928009eucas1p2c;
	Tue, 30 Sep 2025 15:46:12 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250930154610eusmtip1200c7ebad2fc47c80d082b3f7ac27ab7~qGfryC8yB2715127151eusmtip1T;
	Tue, 30 Sep 2025 15:46:09 +0000 (GMT)
Message-ID: <75d06769-4896-4095-9969-03a517705196@samsung.com>
Date: Tue, 30 Sep 2025 17:46:09 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Krzysztof Kozlowski <krzk@kernel.org>, Himanshu Dewangan
	<h.dewangan@samsung.com>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <CAJKOXPecLREbEDM4yfM=WD-EFfuBqPDXNZceATLeWQRj0X_w7w@mail.gmail.com>
X-CMS-MailID: 20250930154612eucas1p2cf5b43435487dc8e6b19b60d1a3801ef
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250930035551epcas5p4ee7cb5af08eadb2f5ed6e5eaa06a60a9
X-EPHeader: CA
X-CMS-RootMailID: 20250930035551epcas5p4ee7cb5af08eadb2f5ed6e5eaa06a60a9
References: <CGME20250930035551epcas5p4ee7cb5af08eadb2f5ed6e5eaa06a60a9@epcas5p4.samsung.com>
	<20250930040348.3702923-1-h.dewangan@samsung.com>
	<20250930040348.3702923-9-h.dewangan@samsung.com>
	<CAJKOXPecLREbEDM4yfM=WD-EFfuBqPDXNZceATLeWQRj0X_w7w@mail.gmail.com>
X-Rspamd-Queue-Id: EDF07447E0
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.43 / 15.00];
	BAYES_HAM(-2.84)[99.30%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.12:from];
	XM_UA_NO_VERSION(0.01)[];
	DWL_DNSWL_BLOCKED(0.00)[samsung.com:dkim];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[210.118.77.12:from,203.254.199.221:received];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[samsung.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SBJQJPWYW5ZBL6C2Q3ANIJRZ6RDZD6SE
X-Message-ID-Hash: SBJQJPWYW5ZBL6C2Q3ANIJRZ6RDZD6SE
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, alim.akhtar@samsung.com, manjun@samsung.com, nagaraju.s@samsung.com, ih0206.lee@samsung.com, jehyung.lee@samsung.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?q?Re=3A_=5BPATCH_08/29=5D_media=3A_mfc=3A_Add_Exynos=E2=80=91MFC_driver_probe_support?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SBJQJPWYW5ZBL6C2Q3ANIJRZ6RDZD6SE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

SGkgS3J6eXN6dG9mLA0KDQpPbiAzMC4wOS4yMDI1IDA3OjU0LCBLcnp5c3p0b2YgS296bG93c2tp
IHdyb3RlOg0KPiBPbiBUdWUsIDMwIFNlcHQgMjAyNSBhdCAxMjo1NiwgSGltYW5zaHUgRGV3YW5n
YW4gPGguZGV3YW5nYW5Ac2Ftc3VuZy5jb20+IHdyb3RlOg0KPj4gRnJvbTogTmFnYXJhanUgU2lk
ZGluZW5pIDxuYWdhcmFqdS5zQHNhbXN1bmcuY29tPg0KPj4NCj4+IEludHJvZHVjZSBhIG5ldyBL
Y29uZmlnIGVudHJ5IFZJREVPX0VYWU5PU19NRkMgZm9yIHRoZSBTYW1zdW5nDQo+PiBFeHlub3Mg
TUZDIGRyaXZlciB0aGF0IHN1cHBvcnRzIGZpcm13YXJlIHZlcnNpb27igK8xMyBhbmQgbGF0ZXIu
DQo+PiBFeHRlbmQgdGhlIHRvcOKAkWxldmVsIFNhbXN1bmcgcGxhdGZvcm0gS2NvbmZpZyB0byBk
aXNhYmxlIHRoZSBsZWdhY3kNCj4+IFM1UOKAkU1GQyBkcml2ZXIgd2hlbiBpdHMgZmlybXdhcmUg
dmVyc2lvbiBpcyA+4oCvdjEyIGFuZCB0byBzZWxlY3QgdGhlDQo+PiBuZXcgRXh5bm9z4oCRTUZD
IGRyaXZlciBvbmx5IHdoZW4gVklERU9fU0FNU1VOR19TNVBfTUZDIGlzIG5vdCBlbmFibGVkLg0K
Pj4NCj4+IEFkZCBleHlub3MtbWZjIEtjb25maWcgYW5kIE1ha2VmaWxlIGZvciBwcm9iZSBmdW5j
dGlvbmFsaXR5IGFuZCBjcmVhdGlvbg0KPj4gb2YgZGVjb2RlciBhbmQgZW5jb2RlciBkZXZpY2Ug
ZmlsZXMgYnkgcmVnaXN0ZXJpbmcgdGhlIGRyaXZlciBvYmplY3QNCj4+IGV4eW5vc19tZmMubyBh
bmQgb3RoZXIgcmVsZXZhbnQgc291cmNlIGZpbGVzLg0KPj4NCj4+IFByb3ZpZGUgaGVhZGVyIGZp
bGVzIG1mY19jb3JlX29wcy5oIGFuZCBtZmNfcm0uaCBjb250YWluaW5nIGNvcmUNCj4+ICAgIG9w
ZXJhdGlvbiBwcm90b3R5cGVzLCByZXNvdXJjZeKAkW1hbmFnZXIgaGVscGVycywNCj4+ICAgIGFu
ZCBjb3Jl4oCRc2VsZWN0aW9uIHV0aWxpdGllcy4NCj4+DQo+PiBBZGQgYSBjb25maWd1cmFibGUg
b3B0aW9uIE1GQ19VU0VfQ09SRURVTVAgdG8gZW5hYmxlIGNvcmXigJFkdW1wDQo+PiBzdXBwb3J0
IGZvciBkZWJ1Z2dpbmcgTUZDIGVycm9ycy4NCj4+DQo+PiBUaGVzZSBjaGFuZ2VzIGJyaW5nIHN1
cHBvcnQgZm9yIG5ld2VyIEV4eW5vc+KAkWJhc2VkIE1GQyBoYXJkd2FyZSwNCj4+IGNsZWFubHkg
c2VwYXJhdGUgaXQgZnJvbSB0aGUgbGVnYWN5IFM1UOKAkU1GQyBkcml2ZXIsIGFuZCBsYXkgdGhl
DQo+PiBncm91bmR3b3JrIGZvciBmdXR1cmUgZmVhdHVyZSBkZXZlbG9wbWVudCBhbmQgZGVidWdn
aW5nLg0KPj4NCj4gTm8sIE5BSy4gRXhpc3RpbmcgZHJpdmVyIGlzIHdlbGwgdGVzdGVkIGFuZCBh
bHJlYWR5IHVzZWQgb24gbmV3ZXN0DQo+IEV4eW5vcyBTb0MsIHNvIGFsbCB0aGlzIG5ldyBkcml2
ZXIgaXMgZXhhY3RseSBob3cgeW91IHNob3VsZCBub3Qgd29yaw0KPiBpbiB1cHN0cmVhbS4gWW91
IG5lZWQgdG8gaW50ZWdyYXRlIGludG8gZXhpc3RpbmcgZHJpdmVyLg0KPg0KPiBTYW1zdW5nIHJl
Y2VpdmVkIHRoaXMgcmV2aWV3IG11bHRpcGxlIHRpbWVzIGFscmVhZHkuDQoNClBsZWFzZSBkb24n
dCBiZSBzbyBjYXRlZ29yaWNhbC4gVGhlIE1GQyBoYXJkd2FyZSBldm9sdmVkIHF1aXRlIGEgYml0
IA0KZnJvbSB0aGUgYW5jaWVudCB0aW1lcyBvZiBTNVBWMjEwIFNvQywgd2hlbiBzNXAtbWZjIGRy
aXZlciB3YXMgZGVzaWduZWQuIA0KVGhlIGZlYXR1cmUgbGlzdCBvZiB0aGUgbmV3IGhhcmR3YXJl
IGhhcmRseSBtYXRjaGVzIHRob3NlIGFuZCBJIHJlYWxseSANCmRvbid0IHNlZSB0aGUgcmVhc29u
IGZvciBmb3JjaW5nIHN1cHBvcnQgZm9yIHNvIGRpZmZlcmVudCBoYXJkd2FyZSBpbiBhIA0Kc2lu
Z2xlIGRyaXZlci4gU29tZXRpbWVzIGl0IGlzIGVhc2llciBqdXN0IHRvIGhhdmUgMiBzZXBhcmF0
ZSBkcml2ZXJzIGlmIA0KdGhlIGNvbW1vbiBwYXJ0IGlzIGp1c3QgdGhlIGFjcm9ueW0gaW4gdGhl
IGhhcmR3YXJlIGJsb2NrIG5hbWUuLi4NCg0KQmVzdCByZWdhcmRzDQotLSANCk1hcmVrIFN6eXBy
b3dza2ksIFBoRA0KU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
