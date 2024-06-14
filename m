Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 161EC908B41
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jun 2024 14:07:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADD5E3F5C2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jun 2024 12:07:48 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id F29A13F5C2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jun 2024 12:07:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E093AFEC;
	Fri, 14 Jun 2024 05:08:00 -0700 (PDT)
Received: from [10.57.71.136] (unknown [10.57.71.136])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DBB43F64C;
	Fri, 14 Jun 2024 05:07:32 -0700 (PDT)
Message-ID: <3516994c-7b06-4409-b9a9-975b9f7a60eb@arm.com>
Date: Fri, 14 Jun 2024 13:07:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-2-060e48eea250@tomeuvizoso.net>
 <ffviz6ak6qsn2reg5y35aerzy7wxfx6fzix6xjyminbhfcguus@clszdjakdcjd>
 <CAAObsKCx+r5UuESnrPem1Rb1-BF4i8FVwu6uozWhABOWoq+M4Q@mail.gmail.com>
 <CAAObsKChaBZ2C5ezWsiZ_LoN6R2HFhFA9=UNSRYB6cyeo-jreg@mail.gmail.com>
 <vmgk4wmlxbsb7lphq2ep3xnxx3mbv6e6lecihtftxoyp5lidvy@mectcwirrlek>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <vmgk4wmlxbsb7lphq2ep3xnxx3mbv6e6lecihtftxoyp5lidvy@mectcwirrlek>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F29A13F5C2
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.19 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_CC(0.00)[8bytes.org,kernel.org,sntech.de,tomeuvizoso.net,gmail.com,ffwll.ch,linux.intel.com,suse.de,pengutronix.de,linaro.org,amd.com,lists.linux.dev,lists.infradead.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.968];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[]
Message-ID-Hash: CAC73H6LBZNSVVYHNBHZIGY6SX66XNEF
X-Message-ID-Hash: CAC73H6LBZNSVVYHNBHZIGY6SX66XNEF
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/9] iommu/rockchip: Attach multiple power domains
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CAC73H6LBZNSVVYHNBHZIGY6SX66XNEF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNC0wNi0xMyAxMDozOCBwbSwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6DQo+IEhpLA0K
PiANCj4gT24gVGh1LCBKdW4gMTMsIDIwMjQgYXQgMTE6MzQ6MDJBTSBHTVQsIFRvbWV1IFZpem9z
byB3cm90ZToNCj4+IE9uIFRodSwgSnVuIDEzLCAyMDI0IGF0IDExOjI04oCvQU0gVG9tZXUgVml6
b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+IHdyb3RlOg0KPj4+IE9uIFRodSwgSnVuIDEzLCAy
MDI0IGF0IDI6MDXigK9BTSBTZWJhc3RpYW4gUmVpY2hlbA0KPj4+IDxzZWJhc3RpYW4ucmVpY2hl
bEBjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4+Pj4gT24gV2VkLCBKdW4gMTIsIDIwMjQgYXQgMDM6
NTI6NTVQTSBHTVQsIFRvbWV1IFZpem9zbyB3cm90ZToNCj4+Pj4+IElPTU1VcyB3aXRoIG11bHRp
cGxlIGJhc2UgYWRkcmVzc2VzIGNhbiBhbHNvIGhhdmUgbXVsdGlwbGUgcG93ZXINCj4+Pj4+IGRv
bWFpbnMuDQo+Pj4+Pg0KPj4+Pj4gVGhlIGJhc2UgZnJhbWV3b3JrIG9ubHkgdGFrZXMgY2FyZSBv
ZiBhIHNpbmdsZSBwb3dlciBkb21haW4sIGFzIHNvbWUNCj4+Pj4+IGRldmljZXMgd2lsbCBuZWVk
IGZvciB0aGVzZSBwb3dlciBkb21haW5zIHRvIGJlIHBvd2VyZWQgb24gaW4gYSBzcGVjaWZpYw0K
Pj4+Pj4gb3JkZXIuDQo+Pj4+Pg0KPj4+Pj4gVXNlIGEgaGVscGVyIGZ1bmN0aW9uIHRvIHN0YWJs
aXNoIGxpbmtzIGluIHRoZSBvcmRlciBpbiB3aGljaCB0aGV5IGFyZQ0KPj4+Pj4gaW4gdGhlIERU
Lg0KPj4+Pj4NCj4+Pj4+IFRoaXMgaXMgbmVlZGVkIGJ5IHRoZSBJT01NVSB1c2VkIGJ5IHRoZSBO
UFUgaW4gdGhlIFJLMzU4OC4NCj4+Pj4+DQo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUb21ldSBWaXpv
c28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4NCj4+Pj4+IC0tLQ0KPj4+Pg0KPj4+PiBUbyBtZSBp
dCBsb29rcyBsaWtlIHRoaXMgaXMgbXVsdGlwbGUgSU9NTVVzLCB3aGljaCBzaG91bGQgZWFjaCBn
ZXQNCj4+Pj4gdGhlaXIgb3duIG5vZGUuIEkgZG9uJ3Qgc2VlIGEgZ29vZCByZWFzb24gZm9yIG1l
cmdpbmcgdGhlc2UNCj4+Pj4gdG9nZXRoZXIuDQo+Pj4NCj4+PiBJIGhhdmUgbWFkZSBxdWl0ZSBh
IGZldyBhdHRlbXB0cyBhdCBzcGxpdHRpbmcgdGhlIElPTU1VcyBhbmQgYWxzbyB0aGUNCj4+PiBj
b3JlcywgYnV0IEkgd2Fzbid0IGFibGUgdG8gZ2V0IHRoaW5ncyB3b3JraW5nIHN0YWJseS4gVGhl
IFRSTSBpcw0KPj4+IHJlYWxseSBzY2FudCBhYm91dCBob3cgdGhlIDQgSU9NTVUgaW5zdGFuY2Vz
IHJlbGF0ZSB0byBlYWNoIG90aGVyLCBhbmQNCj4+PiB3aGF0IHRoZSBmb3VydGggb25lIGlzIGZv
ci4NCj4+Pg0KPj4+IEdpdmVuIHRoYXQgdGhlIHZlbmRvciBkcml2ZXIgdHJlYXRzIHRoZW0gYXMg
YSBzaW5nbGUgSU9NTVUgd2l0aCBmb3VyDQo+Pj4gaW5zdGFuY2VzIGFuZCB3ZSBkb24ndCBoYXZl
IGFueSBpbmZvcm1hdGlvbiBvbiB0aGVtLCBJIHJlc2lnbmVkIG15c2VsZg0KPj4+IHRvIGp1c3Qg
aGF2ZSB0aGVtIGFzIGEgc2luZ2xlIGRldmljZS4NCj4+Pg0KPj4+IEkgd291bGQgbG92ZSB0byBi
ZSBwcm92ZWQgd3JvbmcgdGhvdWdoIGFuZCBmaW5kIGEgd2F5IGZvIGdldHRpbmcNCj4+PiB0aGlu
Z3Mgc3RhYmx5IGFzIGRpZmZlcmVudCBkZXZpY2VzIHNvIHRoZXkgY2FuIGJlIHBvd2VyZWQgb24g
YW5kIG9mZg0KPj4+IGFzIG5lZWRlZC4gV2UgY291bGQgc2F2ZSBxdWl0ZSBzb21lIGNvZGUgYXMg
d2VsbC4NCj4+DQo+PiBGV0lXLCBoZXJlIGEgZmV3IHdheXMgaG93IEkgdHJpZWQgdG8gc3RydWN0
dXJlIHRoZSBEVCBub2Rlcywgbm9uZSBvZg0KPj4gdGhlc2Ugd29ya2VkIHJlbGlhYmx5Og0KPj4N
Cj4+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90b21ldS9saW51eC8tL2Jsb2IvNi4x
MC1yb2NrZXQtbXVsdGlwbGUtZGV2aWNlcy1wb3dlci9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OHMuZHRzaT9yZWZfdHlwZT1oZWFkcyNMMTE2Mw0KPj4gaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL3RvbWV1L2xpbnV4Ly0vYmxvYi82LjEwLXJvY2tldC1zY2hlbWEtc3Vi
bm9kZXMvL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpP3JlZl90eXBl
PWhlYWRzI0wxMTYyDQo+PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdG9tZXUvbGlu
dXgvLS9ibG9iLzYuMTAtcm9ja2V0LW11bHRpcGxlLWRldmljZXMvL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpP3JlZl90eXBlPWhlYWRzI0wxMTYzDQo+PiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdG9tZXUvbGludXgvLS9ibG9iLzYuMTAtcm9ja2V0LW11
bHRpcGxlLWlvbW11cy8vYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2k/
cmVmX3R5cGU9aGVhZHMjTDI2NjkNCj4+DQo+PiBJIGNhbiB2ZXJ5IHdlbGwgaW1hZ2luZSBJIG1p
c3NlZCBzb21lIHdheSBvZiBnZXR0aW5nIHRoaXMgdG8gd29yaywgYnV0DQo+PiBmb3IgZXZlcnkg
YXR0ZW1wdCwgdGhlIGRvbWFpbnMsIGlvbW11cyBhbmQgY29yZXMgd2VyZSByZXN1bWVkIGluDQo+
PiBkaWZmZXJlbnQgb3JkZXJzIHRoYXQgcHJlc3VtYWJseSBjYXVzZWQgcHJvYmxlbXMgZHVyaW5n
IGNvbmN1cnJlbnQNCj4+IGV4ZWN1dGlvbiBmbyB3b3JrbG9hZHMuDQo+Pg0KPj4gU28gSSBmZWxs
IGJhY2sgdG8gd2hhdCB0aGUgdmVuZG9yIGRyaXZlciBkb2VzLCB3aGljaCB3b3JrcyByZWxpYWJs
eQ0KPj4gKGJ1dCBhbGwgY29yZXMgaGF2ZSB0byBiZSBwb3dlcmVkIG9uIGF0IHRoZSBzYW1lIHRp
bWUpLg0KPiANCj4gTWguIFRoZSAiNi4xMC1yb2NrZXQtbXVsdGlwbGUtaW9tbXVzIiBicmFuY2gg
c2VlbXMgd3JvbmcuIFRoZXJlIGlzDQo+IG9ubHkgb25lIGlvbW11IG5vZGUgaW4gdGhhdC4gSSB3
b3VsZCBoYXZlIGV4cGVjdGVkIGEgdGVzdCB3aXRoDQo+IA0KPiBya25uIHsNCj4gICAgICAvLyBj
b21iaW5lZCBkZXZpY2UNCj4gDQo+ICAgICAgaW9tbXVzID0gPCZpb21tdTE+LCA8JmlvbW11Mj4s
IC4uLjsNCj4gfTsNCj4gDQo+IE90aGVyd2lzZSBJIHRoaW5rIEkgd291bGQgZ28gd2l0aCB0aGUg
c2NoZW1hLXN1Ym5vZGVzIHZhcmlhbnQuIFRoZQ0KPiBkcml2ZXIgY2FuIGluaXRpYWxseSB3YWxr
IHRocm91Z2ggdGhlIHN1Yi1ub2RlcyBhbmQgY29sbGVjdCB0aGUNCj4gcmVzb3VyY2VzIGludG8g
dGhlIG1haW4gZGV2aWNlLCBzbyBvbiB0aGUgZHJpdmVyIHNpZGUgbm90aGluZyB3b3VsZA0KPiBy
ZWFsbHkgY2hhbmdlLiBCdXQgdGhhdCBoYXMgYSBjb3VwbGUgb2YgYWR2YW50YWdlczoNCj4gDQo+
IDEuIERUIGFuZCBEVCBiaW5kaW5nIGFyZSBlYXNpZXIgdG8gcmVhZA0KPiAyLiBJdCdzIHNpbWls
YXIgdG8gZS5nLiBDUFUgY29yZXMgZWFjaCBoYXZpbmcgdGhlaXIgb3duIG5vZGUNCj4gMy4gRWFz
eSB0byBleHRlbmQgdG8gbW9yZSBjb3JlcyBpbiB0aGUgZnV0dXJlDQo+IDQuIFRoZSBrZXJuZWwg
Y2FuIGVhc2lseSBzd2l0Y2ggdG8gcHJvcGVyIHBlci1jb3JlIGRldmljZSBtb2RlbCB3aGVuDQo+
ICAgICB0aGUgcHJvYmxlbSBoYXMgYmVlbiBpZGVudGlmaWVkDQoNCkl0IGFsc28gd291bGQgc2Vl
bSB0byBwZXJtaXQgZGVzY3JpYmluZyBhbmQgYXNzb2NpYXRpbmcgdGhlIHBlci1jb3JlIA0KSU9N
TVVzIGluZGl2aWR1YWxseSAtIGFwYXJ0IGZyb20gY29yZSAwJ3MgYXBwYXJlbnQgY291cGxpbmcg
dG8gd2hhdGV2ZXIgDQpzaGFyZWQgInVuY29yZSIgc3R1ZmYgZXhpc3RzIGZvciB0aGUgd2hvbGUg
dGhpbmcsIGZyb20gdGhlIGRpc3RpbmN0IA0KY2xvY2tzLCBpbnRlcnJ1cHRzLCBwb3dlciBkb21h
aW5zIGV0Yy4gbGluaW5nIHVwIHdpdGggZWFjaCBjb3JlIEknZCANCmd1ZXNzIHRob3NlIElPTU1V
cyBhcmUgbm90IGludGVycmVsYXRlZCB0aGUgc2FtZSB3YXkgdGhlIElTUCdzIA0KcmVhZC93cml0
ZSBJT01NVXMgYXJlICh3aGljaCB3YXMgdGhlIG1haW4ganVzdGlmaWNhdGlvbiBmb3IgYWRvcHRp
bmcgdGhlIA0KbXVsdGlwbGUtcmVnIGRlc2lnbiBvcmlnaW5hbGx5IHZzLiBkaXN0aW5jdCBEVCBu
b2RlcyBsaWtlIEV4eW5vcyBkb2VzKS4gDQpIb3dldmVyLCBwcmFjdGljYWxseSB0aGF0IHdvdWxk
IHJlcXVpcmUgdGhlIGRyaXZlciB0byBhdCBsZWFzdCBwb3B1bGF0ZSANCnBlci1jb3JlIGNoaWxk
IGRldmljZXMgdG8gbWFrZSBETUEgQVBJIG9yIElPTU1VIEFQSSBtYXBwaW5ncyB3aXRoLCBzaW5j
ZSANCndlIGNvdWxkbid0IHNwcmVhZCB0aGUgImNvbGxlY3QgdGhlIHJlc291cmNlcyIgdHJpY2sg
aW50byB0aG9zZSANCnN1YnN5c3RlbXMgYXMgd2VsbC4NCg0KVGhhbmtzLA0KUm9iaW4uDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
