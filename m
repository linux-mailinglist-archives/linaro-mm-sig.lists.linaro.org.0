Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2714ED3A4B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 11:20:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48A043F7FD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 10:20:12 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id EB1E13F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 10:20:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=DxrQQXAa;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A7E143CF2;
	Mon, 19 Jan 2026 10:20:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 992BBC116C6;
	Mon, 19 Jan 2026 10:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768818005;
	bh=2RDjQUZMhmdWBYNRZtH/kkwU0r9gHkrCC4kz2CcBePY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DxrQQXAaI0qp3UxT5FitNpNW3Y9svXeBpnJR8Mwvk24SmBQfuUIB86Rn8wh4a/ecQ
	 pixwE/Z1cQ7jAwH5Xn4fAmSy+WAHOtmuhwbgMe1tcgyZoc2JxN67BOiUkLlG7dAZ4l
	 khAt25iuWNQOrsVRWjFsFCLlai/63P8eDcFYXOtI6ejGK+Cu+Dry69rHRjOgbENrNO
	 lPdh+8a9nXnyzv60+Z+ElrFp0rGvrInDnteHpR0Bd8RjB1i7CfWg3ENBjJ/z6EqW2a
	 e2HuPDKEOpE3UjazOeYLrGHAjL5NuqIVqBfBtCuolSeMuXg4lb7kuRYhoBwXGm6Ty2
	 nMhOuNmDbrRGw==
Date: Mon, 19 Jan 2026 12:20:00 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20260119102000.GH13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
 <20260119075229.GE13201@unreal>
 <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
X-Rspamd-Queue-Id: EB1E13F734
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: W2JUWCP3G2MEBL7A2AATFU2TMHQZGCOG
X-Message-ID-Hash: W2JUWCP3G2MEBL7A2AATFU2TMHQZGCOG
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.k
 ernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W2JUWCP3G2MEBL7A2AATFU2TMHQZGCOG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMTA6Mjc6MDBBTSArMDEwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQo+IE9uIE1vbiwgMjAyNi0wMS0xOSBhdCAwOTo1MiArMDIwMCwgTGVvbiBSb21h
bm92c2t5IHdyb3RlOg0KPiA+IE9uIFN1biwgSmFuIDE4LCAyMDI2IGF0IDAzOjE2OjI1UE0gKzAx
MDAsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOg0KPiA+ID4gSGksIExlb24sDQo+ID4gPiANCj4g
PiA+IE9uIFN1biwgMjAyNi0wMS0xOCBhdCAxNDowOCArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdy
b3RlOg0KPiA+ID4gPiBDaGFuZ2Vsb2c6DQo+ID4gPiA+IHYyOg0KPiA+ID4gPiDCoCogQ2hhbmdl
ZCBzZXJpZXMgdG8gZG9jdW1lbnQgdGhlIHJldm9rZSBzZW1hbnRpY3MgaW5zdGVhZCBvZg0KPiA+
ID4gPiDCoMKgIGltcGxlbWVudGluZyBpdC4NCj4gPiA+ID4gdjE6DQo+ID4gPiA+IGh0dHBzOi8v
cGF0Y2gubXNnaWQubGluay8yMDI2MDExMS1kbWFidWYtcmV2b2tlLXYxLTAtZmI0YmNjOGMyNTli
QG52aWRpYS5jb20NCj4gPiA+ID4gDQo+ID4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gPiA+IC0tLS0NCj4g
PiA+ID4gLS0tLQ0KPiA+ID4gPiBUaGlzIHNlcmllcyBkb2N1bWVudHMgYSBkbWEtYnVmIOKAnHJl
dm9rZeKAnSBtZWNoYW5pc206IHRvIGFsbG93IGENCj4gPiA+ID4gZG1hLQ0KPiA+ID4gPiBidWYN
Cj4gPiA+ID4gZXhwb3J0ZXIgdG8gZXhwbGljaXRseSBpbnZhbGlkYXRlICjigJxraWxs4oCdKSBh
IHNoYXJlZCBidWZmZXIgYWZ0ZXINCj4gPiA+ID4gaXQNCj4gPiA+ID4gaGFzDQo+ID4gPiA+IGJl
ZW4gZGlzdHJpYnV0ZWQgdG8gaW1wb3J0ZXJzLCBzbyB0aGF0IGZ1cnRoZXIgQ1BVIGFuZCBkZXZp
Y2UNCj4gPiA+ID4gYWNjZXNzDQo+ID4gPiA+IGlzDQo+ID4gPiA+IHByZXZlbnRlZCBhbmQgaW1w
b3J0ZXJzIHJlbGlhYmx5IG9ic2VydmUgZmFpbHVyZS4NCj4gPiA+ID4gDQo+ID4gPiA+IFRoZSBj
aGFuZ2UgaW4gdGhpcyBzZXJpZXMgaXMgdG8gcHJvcGVybHkgZG9jdW1lbnQgYW5kIHVzZQ0KPiA+
ID4gPiBleGlzdGluZw0KPiA+ID4gPiBjb3JlDQo+ID4gPiA+IOKAnHJldm9rZWTigJ0gc3RhdGUg
b24gdGhlIGRtYS1idWYgb2JqZWN0IGFuZCBhIGNvcnJlc3BvbmRpbmcNCj4gPiA+ID4gZXhwb3J0
ZXItDQo+ID4gPiA+IHRyaWdnZXJlZA0KPiA+ID4gPiByZXZva2Ugb3BlcmF0aW9uLiBPbmNlIGEg
ZG1hLWJ1ZiBpcyByZXZva2VkLCBuZXcgYWNjZXNzIHBhdGhzIGFyZQ0KPiA+ID4gPiBibG9ja2Vk
IHNvDQo+ID4gPiA+IHRoYXQgYXR0ZW1wdHMgdG8gRE1BLW1hcCwgdm1hcCwgb3IgbW1hcCB0aGUg
YnVmZmVyIGZhaWwgaW4gYQ0KPiA+ID4gPiBjb25zaXN0ZW50IHdheS4NCj4gPiA+IA0KPiA+ID4g
VGhpcyBzb3VuZHMgbGlrZSBpdCBkb2VzIG5vdCBtYXRjaCBob3cgbWFueSBHUFUtZHJpdmVycyB1
c2UgdGhlDQo+ID4gPiBtb3ZlX25vdGlmeSgpIGNhbGxiYWNrLg0KPiA+IA0KPiA+IE5vIGNoYW5n
ZSBmb3IgdGhlbS4NCj4gPiANCj4gPiA+IA0KPiA+ID4gbW92ZV9ub3RpZnkoKSB3b3VsZCB0eXBp
Y2FsbHkgaW52YWxpZGF0ZSBhbnkgZGV2aWNlIG1hcHMgYW5kIGFueQ0KPiA+ID4gYXN5bmNocm9u
b3VzIHBhcnQgb2YgdGhhdCBpbnZhbGlkYXRpb24gd291bGQgYmUgY29tcGxldGUgd2hlbiB0aGUN
Cj4gPiA+IGRtYS0NCj4gPiA+IGJ1ZidzIHJlc2VydmF0aW9uIG9iamVjdCBiZWNvbWVzIGlkbGUg
V1JUIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQDQo+ID4gPiBmZW5jZXMuDQo+ID4gDQo+ID4gVGhp
cyBwYXJ0IGhhcyBub3QgY2hhbmdlZCBhbmQgcmVtYWlucyB0aGUgc2FtZSBmb3IgdGhlIHJldm9j
YXRpb24NCj4gPiBmbG93IGFzIHdlbGwuDQo+ID4gDQo+ID4gPiANCj4gPiA+IEhvd2V2ZXIsIHRo
ZSBpbXBvcnRlciBjb3VsZCwgYWZ0ZXIgb2J0YWluaW5nIHRoZSByZXN2IGxvY2ssIG9idGFpbg0K
PiA+ID4gYQ0KPiA+ID4gbmV3IG1hcCB1c2luZyBkbWFfYnVmX21hcF9hdHRhY2htZW50KCksIGFu
ZCBJJ2QgYXNzdW1lIHRoZSBDUFUgbWFwcw0KPiA+ID4gd29yayBpbiB0aGUgc2FtZSB3YXksIEku
RS4gbW92ZV9ub3RpZnkoKSBkb2VzIG5vdCAqcGVybWFuZW50bHkqDQo+ID4gPiByZXZva2UNCj4g
PiA+IGltcG9ydGVyIGFjY2Vzcy4NCj4gPiANCj4gPiBUaGlzIHBhcnQgZGl2ZXJnZXMgYnkgZGVz
aWduIGFuZCBpcyBkb2N1bWVudGVkIHRvIG1hdGNoIHJldm9rZQ0KPiA+IHNlbWFudGljcy7CoCAN
Cj4gPiBJdCBkZWZpbmVzIHdoYXQgbXVzdCBvY2N1ciBhZnRlciB0aGUgZXhwb3J0ZXIgcmVxdWVz
dHMgdGhhdCB0aGUNCj4gPiBidWZmZXIgYmXCoCANCj4gPiAia2lsbGVkIi4gQW4gaW1wb3J0ZXIg
dGhhdCBmb2xsb3dzIHJldm9rZSBzZW1hbnRpY3Mgd2lsbCBub3QgYXR0ZW1wdA0KPiA+IHRvIGNh
bGzCoCANCj4gPiBkbWFfYnVmX21hcF9hdHRhY2htZW50KCksIGFuZCB0aGUgZXhwb3J0ZXIgd2ls
bCBibG9jayBhbnkgcmVtYXBwaW5nDQo+ID4gYXR0ZW1wdHPCoCANCj4gPiByZWdhcmRsZXNzLiBT
ZWUgdGhlIHByaXYtPnJldm9rZWQgZmxhZyBpbiB0aGUgVkZJTyBleHBvcnRlci4NCj4gPiANCj4g
PiBJbiBhZGRpdGlvbiwgaW4gdGhpcyBlbWFpbCB0aHJlYWQsIENocmlzdGlhbiBleHBsYWlucyB0
aGF0IHJldm9rZQ0KPiA+IHNlbWFudGljcyBhbHJlYWR5IGV4aXN0cywgd2l0aCB0aGUgY29tYmlu
YXRpb24gb2YgZG1hX2J1Zl9waW4gYW5kDQo+ID4gZG1hX2J1Zl9tb3ZlX25vdGlmeSwganVzdCBu
b3QgZG9jdW1lbnRlZDoNCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvZjdmMTg1NmEt
NDRmYS00NGFmLWI0OTYtZWIxMjY3YTA1ZDExQGFtZC5jb20vDQo+IA0KPiANCj4gSG1tLA0KPiAN
Cj4gQ29uc2lkZXJpbmcgDQo+IA0KPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92
Ni4xOS1yYzUvc291cmNlL2RyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMjTDE5
Mg0KPiANCj4gdGhpcyBzb3VuZHMgbGlrZSBpdCdzIG5vdCBqdXN0IHVuZG9jdW1lbnRlZCBidXQg
YWxzbyBpbiBzb21lIGNhc2VzDQo+IHVuaW1wbGVtZW50ZWQuDQoNClllcywgaXQgd2FzIGRpc2N1
c3NlZCBsYXRlciBpbiB0aGUgdGhyZWFkIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2
MDExMjE1MzUwMy5HRjc0NTg4OEB6aWVwZS5jYS8uDQpSRE1BIHdpbGwgbmVlZCBzb21lIGFkanVz
dG1lbnRzIGxhdGVyLCBidXQgZmlyc3Qgd2UgbmVlZCB0byBkb2N1bWVudCB0aGUNCmV4aXN0aW5n
IHNlbWFudGljcy4NCg0KPiBUaGUgeGUgZHJpdmVyIGZvciBvbmUgZG9lc24ndCBleHBlY3QgbW92
ZV9ub3RpZnkoKSB0byBiZQ0KPiBjYWxsZWQgb24gcGlubmVkIGJ1ZmZlcnMsIHNvIGlmIHRoYXQg
aXMgaW5kZWVkIGdvaW5nIHRvIGJlIHBhcnQgb2YgdGhlDQo+IGRtYS1idWYgcHJvdG9jb2wsICB3
b3VsZG4ndCBzdXBwb3J0IGZvciB0aGF0IG5lZWQgdG8gYmUgYWR2ZXJ0aXNlZCBieQ0KPiB0aGUg
aW1wb3J0ZXI/DQoNClRoaXMgaXMgd2hhdCBKYXNvbiBwcm9wb3NlZCB3aXRoICJlbnVtIGRtYV9i
dWZfbW92ZV9ub3RpZnlfbGV2ZWwiLCBidXQNCmZvciBzb21lIHJlYXNvbiB3ZSBnb3Qgbm8gcmVz
cG9uc2VzLg0KDQpUaGFua3MNCg0KPiANCj4gVGhhbmtzLA0KPiBUaG9tYXMNCj4gDQo+ID4gDQo+
ID4gVGhhbmtzDQo+ID4gDQo+ID4gPiANCj4gPiA+IC9UaG9tYXMNCj4gPiA+IA0KPiA+ID4gDQo+
ID4gPiA+IA0KPiA+ID4gPiBUaGFua3MNCj4gPiA+ID4gDQo+ID4gPiA+IENjOiBsaW51eC1tZWRp
YUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiA+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiA+ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiA+ID4g
PiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiA+ID4gPiBDYzogYW1kLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gQ2M6IHZpcnR1YWxpemF0aW9uQGxpc3RzLmxp
bnV4LmRldg0KPiA+ID4gPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4g
PiA+IENjOiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZw0KPiA+ID4gPiBDYzogaW9tbXVAbGlz
dHMubGludXguZGV2DQo+ID4gPiA+IENjOiBrdm1Admdlci5rZXJuZWwub3JnDQo+ID4gPiA+IFRv
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiA+ID4gPiBUbzogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+ID4gPiBUbzogQWxl
eCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPg0KPiA+ID4gPiBUbzogRGF2aWQg
QWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4gPiA+ID4gVG86IFNpbW9uYSBWZXR0ZXIgPHNp
bW9uYUBmZndsbC5jaD4NCj4gPiA+ID4gVG86IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQu
Y29tPg0KPiA+ID4gPiBUbzogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFi
b3JhLmNvbT4NCj4gPiA+ID4gVG86IEd1cmNoZXRhbiBTaW5naCA8Z3VyY2hldGFuc2luZ2hAY2hy
b21pdW0ub3JnPg0KPiA+ID4gPiBUbzogQ2hpYS1JIFd1IDxvbHZhZmZlQGdtYWlsLmNvbT4NCj4g
PiA+ID4gVG86IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+DQo+ID4gPiA+IFRvOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+
ID4gPiA+IFRvOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gPiA+
ID4gVG86IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiA+ID4g
PiBUbzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
Pg0KPiA+ID4gPiBUbzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+
ID4gPiBUbzogSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+DQo+ID4gPiA+IFRvOiBMZW9u
IFJvbWFub3Zza3kgPGxlb25Aa2VybmVsLm9yZz4NCj4gPiA+ID4gVG86IEtldmluIFRpYW4gPGtl
dmluLnRpYW5AaW50ZWwuY29tPg0KPiA+ID4gPiBUbzogSm9lcmcgUm9lZGVsIDxqb3JvQDhieXRl
cy5vcmc+DQo+ID4gPiA+IFRvOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPg0KPiA+ID4g
PiBUbzogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4NCj4gPiA+ID4gVG86IEFs
ZXggV2lsbGlhbXNvbiA8YWxleEBzaGF6Ym90Lm9yZz4NCj4gPiA+ID4gDQo+ID4gPiA+IC0tLQ0K
PiA+ID4gPiBMZW9uIFJvbWFub3Zza3kgKDQpOg0KPiA+ID4gPiDCoMKgwqDCoMKgIGRtYS1idWY6
IFJlbmFtZSAubW92ZV9ub3RpZnkoKSBjYWxsYmFjayB0byBhIGNsZWFyZXINCj4gPiA+ID4gaWRl
bnRpZmllcg0KPiA+ID4gPiDCoMKgwqDCoMKgIGRtYS1idWY6IERvY3VtZW50IHJldm9rZSBzZW1h
bnRpY3MNCj4gPiA+ID4gwqDCoMKgwqDCoCBpb21tdWZkOiBSZXF1aXJlIERNQUJVRiByZXZva2Ug
c2VtYW50aWNzDQo+ID4gPiA+IMKgwqDCoMKgwqAgdmZpbzogQWRkIHBpbm5lZCBpbnRlcmZhY2Ug
dG8gcGVyZm9ybSByZXZva2Ugc2VtYW50aWNzDQo+ID4gPiA+IA0KPiA+ID4gPiDCoGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
IDYgKysrLS0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rt
YV9idWYuYyB8wqAgNCArKy0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0
Z3B1X3ByaW1lLmPCoMKgwqDCoMKgIHzCoCAyICstDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJt
L3hlL3Rlc3RzL3hlX2RtYV9idWYuY8KgwqDCoMKgwqDCoCB8wqAgNiArKystLS0NCj4gPiA+ID4g
wqBkcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoCAyICstDQo+ID4gPiA+IMKgZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYu
Y8KgwqDCoMKgwqDCoCB8wqAgNCArKy0tDQo+ID4gPiA+IMKgZHJpdmVycy9pbmZpbmliYW5kL2h3
L21seDUvbXIuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQ0KPiA+ID4gPiDCoGRy
aXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDExICsrKysrKysrKy0tDQo+ID4gPiA+IMKgZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFi
dWYuY8KgwqDCoMKgwqDCoMKgwqDCoCB8IDE2DQo+ID4gPiA+ICsrKysrKysrKysrKysrKysNCj4g
PiA+ID4gwqBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfCAyNQ0KPiA+ID4gPiArKysrKysrKysrKysrKysrKysrKysrLS0tDQo+
ID4gPiA+IMKgMTAgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25z
KC0pDQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiBiYXNlLWNvbW1pdDogOWFjZTQ3NTNhNTIwMmIwMjE5
MWQ1NGU5ZmRmN2Y5ZTNkMDJiODVlYg0KPiA+ID4gPiBjaGFuZ2UtaWQ6IDIwMjUxMjIxLWRtYWJ1
Zi1yZXZva2UtYjkwZWYxNmU0MjM2DQo+ID4gPiA+IA0KPiA+ID4gPiBCZXN0IHJlZ2FyZHMsDQo+
ID4gPiA+IC0twqAgDQo+ID4gPiA+IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+
DQo+ID4gPiA+IA0KPiA+ID4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
