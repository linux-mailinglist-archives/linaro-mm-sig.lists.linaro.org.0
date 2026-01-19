Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B31D3A0A1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 08:52:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0761840141
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 07:52:41 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 45ED93F736
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 07:52:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VL41eV1F;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9503B60159;
	Mon, 19 Jan 2026 07:52:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94EE5C19424;
	Mon, 19 Jan 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768809154;
	bh=FgccbxSW4ALrowfCLmsRR/Zu7j7Ob42C2Xqwm3A13m4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VL41eV1F4pT4aqEBXrqmgMj8ay967tZwnXgdE3sr95zj66Szyt/gEQZ9ZHC1/ZCoI
	 zHdHVoh19kPdrpptXHDlZLHPfMWdCRNwsBdwJ7VBIbjsDDrXymv7wyQjLraR/owc8z
	 evQ3EyRQBsTDbPFCBP+u0no9EvPNSeIC1y3//MY6sa/XWAJj/UJTznEsT5zeykc+UM
	 MOLIbXeG3taFetfPJqqhIWgSSkBbREOAi0MKLUbM9986sLho/+clz8Gf3zrknd4884
	 dnnSFY+E5761ocKkG9RiPkmSgCPvhyyXYSXwcxbhpYQalj7/p76ack/evO/E3Y0LdM
	 pnmfKlRF+LN7g==
Date: Mon, 19 Jan 2026 09:52:29 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20260119075229.GE13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
X-Rspamd-Queue-Id: 45ED93F736
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[31];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DWL_DNSWL_NONE(0.00)[kernel.org:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: E525WOIGFGCGAHN2GW47X75PDVDGLBBU
X-Message-ID-Hash: E525WOIGFGCGAHN2GW47X75PDVDGLBBU
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.k
 ernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E525WOIGFGCGAHN2GW47X75PDVDGLBBU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDM6MTY6MjVQTSArMDEwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQo+IEhpLCBMZW9uLA0KPiANCj4gT24gU3VuLCAyMDI2LTAxLTE4IGF0IDE0OjA4
ICswMjAwLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6DQo+ID4gQ2hhbmdlbG9nOg0KPiA+IHYyOg0K
PiA+IMKgKiBDaGFuZ2VkIHNlcmllcyB0byBkb2N1bWVudCB0aGUgcmV2b2tlIHNlbWFudGljcyBp
bnN0ZWFkIG9mDQo+ID4gwqDCoCBpbXBsZW1lbnRpbmcgaXQuDQo+ID4gdjE6DQo+ID4gaHR0cHM6
Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwMTExLWRtYWJ1Zi1yZXZva2UtdjEtMC1mYjRiY2M4YzI1
OWJAbnZpZGlhLmNvbQ0KPiA+IA0KPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+IC0tLS0NCj4gPiBUaGlz
IHNlcmllcyBkb2N1bWVudHMgYSBkbWEtYnVmIOKAnHJldm9rZeKAnSBtZWNoYW5pc206IHRvIGFs
bG93IGEgZG1hLQ0KPiA+IGJ1Zg0KPiA+IGV4cG9ydGVyIHRvIGV4cGxpY2l0bHkgaW52YWxpZGF0
ZSAo4oCca2lsbOKAnSkgYSBzaGFyZWQgYnVmZmVyIGFmdGVyIGl0DQo+ID4gaGFzDQo+ID4gYmVl
biBkaXN0cmlidXRlZCB0byBpbXBvcnRlcnMsIHNvIHRoYXQgZnVydGhlciBDUFUgYW5kIGRldmlj
ZSBhY2Nlc3MNCj4gPiBpcw0KPiA+IHByZXZlbnRlZCBhbmQgaW1wb3J0ZXJzIHJlbGlhYmx5IG9i
c2VydmUgZmFpbHVyZS4NCj4gPiANCj4gPiBUaGUgY2hhbmdlIGluIHRoaXMgc2VyaWVzIGlzIHRv
IHByb3Blcmx5IGRvY3VtZW50IGFuZCB1c2UgZXhpc3RpbmcNCj4gPiBjb3JlDQo+ID4g4oCccmV2
b2tlZOKAnSBzdGF0ZSBvbiB0aGUgZG1hLWJ1ZiBvYmplY3QgYW5kIGEgY29ycmVzcG9uZGluZyBl
eHBvcnRlci0NCj4gPiB0cmlnZ2VyZWQNCj4gPiByZXZva2Ugb3BlcmF0aW9uLiBPbmNlIGEgZG1h
LWJ1ZiBpcyByZXZva2VkLCBuZXcgYWNjZXNzIHBhdGhzIGFyZQ0KPiA+IGJsb2NrZWQgc28NCj4g
PiB0aGF0IGF0dGVtcHRzIHRvIERNQS1tYXAsIHZtYXAsIG9yIG1tYXAgdGhlIGJ1ZmZlciBmYWls
IGluIGENCj4gPiBjb25zaXN0ZW50IHdheS4NCj4gDQo+IFRoaXMgc291bmRzIGxpa2UgaXQgZG9l
cyBub3QgbWF0Y2ggaG93IG1hbnkgR1BVLWRyaXZlcnMgdXNlIHRoZQ0KPiBtb3ZlX25vdGlmeSgp
IGNhbGxiYWNrLg0KDQpObyBjaGFuZ2UgZm9yIHRoZW0uDQoNCj4gDQo+IG1vdmVfbm90aWZ5KCkg
d291bGQgdHlwaWNhbGx5IGludmFsaWRhdGUgYW55IGRldmljZSBtYXBzIGFuZCBhbnkNCj4gYXN5
bmNocm9ub3VzIHBhcnQgb2YgdGhhdCBpbnZhbGlkYXRpb24gd291bGQgYmUgY29tcGxldGUgd2hl
biB0aGUgZG1hLQ0KPiBidWYncyByZXNlcnZhdGlvbiBvYmplY3QgYmVjb21lcyBpZGxlIFdSVCBE
TUFfUkVTVl9VU0FHRV9CT09LS0VFUA0KPiBmZW5jZXMuDQoNClRoaXMgcGFydCBoYXMgbm90IGNo
YW5nZWQgYW5kIHJlbWFpbnMgdGhlIHNhbWUgZm9yIHRoZSByZXZvY2F0aW9uIGZsb3cgYXMgd2Vs
bC4NCg0KPiANCj4gSG93ZXZlciwgdGhlIGltcG9ydGVyIGNvdWxkLCBhZnRlciBvYnRhaW5pbmcg
dGhlIHJlc3YgbG9jaywgb2J0YWluIGENCj4gbmV3IG1hcCB1c2luZyBkbWFfYnVmX21hcF9hdHRh
Y2htZW50KCksIGFuZCBJJ2QgYXNzdW1lIHRoZSBDUFUgbWFwcw0KPiB3b3JrIGluIHRoZSBzYW1l
IHdheSwgSS5FLiBtb3ZlX25vdGlmeSgpIGRvZXMgbm90ICpwZXJtYW5lbnRseSogcmV2b2tlDQo+
IGltcG9ydGVyIGFjY2Vzcy4NCg0KVGhpcyBwYXJ0IGRpdmVyZ2VzIGJ5IGRlc2lnbiBhbmQgaXMg
ZG9jdW1lbnRlZCB0byBtYXRjaCByZXZva2Ugc2VtYW50aWNzLiAgDQpJdCBkZWZpbmVzIHdoYXQg
bXVzdCBvY2N1ciBhZnRlciB0aGUgZXhwb3J0ZXIgcmVxdWVzdHMgdGhhdCB0aGUgYnVmZmVyIGJl
ICANCiJraWxsZWQiLiBBbiBpbXBvcnRlciB0aGF0IGZvbGxvd3MgcmV2b2tlIHNlbWFudGljcyB3
aWxsIG5vdCBhdHRlbXB0IHRvIGNhbGwgIA0KZG1hX2J1Zl9tYXBfYXR0YWNobWVudCgpLCBhbmQg
dGhlIGV4cG9ydGVyIHdpbGwgYmxvY2sgYW55IHJlbWFwcGluZyBhdHRlbXB0cyAgDQpyZWdhcmRs
ZXNzLiBTZWUgdGhlIHByaXYtPnJldm9rZWQgZmxhZyBpbiB0aGUgVkZJTyBleHBvcnRlci4NCg0K
SW4gYWRkaXRpb24sIGluIHRoaXMgZW1haWwgdGhyZWFkLCBDaHJpc3RpYW4gZXhwbGFpbnMgdGhh
dCByZXZva2UNCnNlbWFudGljcyBhbHJlYWR5IGV4aXN0cywgd2l0aCB0aGUgY29tYmluYXRpb24g
b2YgZG1hX2J1Zl9waW4gYW5kDQpkbWFfYnVmX21vdmVfbm90aWZ5LCBqdXN0IG5vdCBkb2N1bWVu
dGVkOg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2Y3ZjE4NTZhLTQ0ZmEtNDRhZi1iNDk2
LWViMTI2N2EwNWQxMUBhbWQuY29tLw0KDQpUaGFua3MNCg0KPiANCj4gL1Rob21hcw0KPiANCj4g
DQo+ID4gDQo+ID4gVGhhbmtzDQo+ID4gDQo+ID4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVs
Lm9yZw0KPiA+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiA+IENjOiBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnDQo+ID4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6
IHZpcnR1YWxpemF0aW9uQGxpc3RzLmxpbnV4LmRldg0KPiA+IENjOiBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gPiBDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBD
YzogaW9tbXVAbGlzdHMubGludXguZGV2DQo+ID4gQ2M6IGt2bUB2Z2VyLmtlcm5lbC5vcmcNCj4g
PiBUbzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4gPiBUbzogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+IFRvOiBBbGV4IERl
dWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+DQo+ID4gVG86IERhdmlkIEFpcmxpZSA8
YWlybGllZEBnbWFpbC5jb20+DQo+ID4gVG86IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5j
aD4NCj4gPiBUbzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+DQo+ID4gVG86IERt
aXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQo+ID4gVG86IEd1
cmNoZXRhbiBTaW5naCA8Z3VyY2hldGFuc2luZ2hAY2hyb21pdW0ub3JnPg0KPiA+IFRvOiBDaGlh
LUkgV3UgPG9sdmFmZmVAZ21haWwuY29tPg0KPiA+IFRvOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiA+IFRvOiBNYXhpbWUgUmlwYXJkIDxt
cmlwYXJkQGtlcm5lbC5vcmc+DQo+ID4gVG86IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFu
bkBzdXNlLmRlPg0KPiA+IFRvOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4NCj4gPiBUbzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXgu
aW50ZWwuY29tPg0KPiA+IFRvOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
DQo+ID4gVG86IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPg0KPiA+IFRvOiBMZW9uIFJv
bWFub3Zza3kgPGxlb25Aa2VybmVsLm9yZz4NCj4gPiBUbzogS2V2aW4gVGlhbiA8a2V2aW4udGlh
bkBpbnRlbC5jb20+DQo+ID4gVG86IEpvZXJnIFJvZWRlbCA8am9yb0A4Ynl0ZXMub3JnPg0KPiA+
IFRvOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPg0KPiA+IFRvOiBSb2JpbiBNdXJwaHkg
PHJvYmluLm11cnBoeUBhcm0uY29tPg0KPiA+IFRvOiBBbGV4IFdpbGxpYW1zb24gPGFsZXhAc2hh
emJvdC5vcmc+DQo+ID4gDQo+ID4gLS0tDQo+ID4gTGVvbiBSb21hbm92c2t5ICg0KToNCj4gPiDC
oMKgwqDCoMKgIGRtYS1idWY6IFJlbmFtZSAubW92ZV9ub3RpZnkoKSBjYWxsYmFjayB0byBhIGNs
ZWFyZXIgaWRlbnRpZmllcg0KPiA+IMKgwqDCoMKgwqAgZG1hLWJ1ZjogRG9jdW1lbnQgcmV2b2tl
IHNlbWFudGljcw0KPiA+IMKgwqDCoMKgwqAgaW9tbXVmZDogUmVxdWlyZSBETUFCVUYgcmV2b2tl
IHNlbWFudGljcw0KPiA+IMKgwqDCoMKgwqAgdmZpbzogQWRkIHBpbm5lZCBpbnRlcmZhY2UgdG8g
cGVyZm9ybSByZXZva2Ugc2VtYW50aWNzDQo+ID4gDQo+ID4gwqBkcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA2ICsrKy0tLQ0K
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8wqAgNCAr
Ky0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfcHJpbWUuY8KgwqDCoMKg
wqAgfMKgIDIgKy0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmPC
oMKgwqDCoMKgwqAgfMKgIDYgKysrLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0veGUveGVfZG1h
X2J1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstDQo+ID4gwqBkcml2ZXJzL2lu
ZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jwqDCoMKgwqDCoMKgIHzCoCA0ICsrLS0NCj4gPiDC
oGRyaXZlcnMvaW5maW5pYmFuZC9ody9tbHg1L21yLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgIDIgKy0NCj4gPiDCoGRyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8IDExICsrKysrKysrKy0tDQo+ID4gwqBkcml2ZXJzL3ZmaW8vcGNp
L3ZmaW9fcGNpX2RtYWJ1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTYgKysrKysrKysrKysrKysr
Kw0KPiA+IMKgaW5jbHVkZS9saW51eC9kbWEtYnVmLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHwgMjUNCj4gPiArKysrKysrKysrKysrKysrKysrKysrLS0tDQo+ID4g
wqAxMCBmaWxlcyBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkNCj4g
PiAtLS0NCj4gPiBiYXNlLWNvbW1pdDogOWFjZTQ3NTNhNTIwMmIwMjE5MWQ1NGU5ZmRmN2Y5ZTNk
MDJiODVlYg0KPiA+IGNoYW5nZS1pZDogMjAyNTEyMjEtZG1hYnVmLXJldm9rZS1iOTBlZjE2ZTQy
MzYNCj4gPiANCj4gPiBCZXN0IHJlZ2FyZHMsDQo+ID4gLS3CoCANCj4gPiBMZW9uIFJvbWFub3Zz
a3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiA+IA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
