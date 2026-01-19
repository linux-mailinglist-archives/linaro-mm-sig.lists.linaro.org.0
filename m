Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1389DD3A5DF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 11:53:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 230183F961
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 10:53:22 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 4A9173F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 10:53:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OpdkTsQs;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AC79460140;
	Mon, 19 Jan 2026 10:53:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C06F1C19422;
	Mon, 19 Jan 2026 10:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768819996;
	bh=1q27yzMVmLBdhU4D/EWhJZCqgMjxahH/mYESJWghn8I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OpdkTsQsAByKSZOuH5DOP1PFuu7t9GqCW2+xZDZ4wPjOB+LfhqU7I4kx0h1PA0bVc
	 sQvjJt+cbJxzgGXazSGQxw2vNNz8u6+MDRTkjAl+F8eDoa90tjt3DxdRlTHpFH+4zO
	 ZhXJddMFtauS+Vg79rL4DHBp9AMLJlHZruQvY18G1yiREFBVPlLHGmr7NvBXAnUd73
	 0vUmDNy0Mp6GiPsvlWsUc2E3oXtx+u42qwjhNDIoRwpVDZ9O0Rmx9/vH5xWi+bI7+z
	 g9p6a9Mxgo7Dy5L8zJD5xKf0dNxrUJMFJDSMRzhdhw02wJpTluutGC5JS1BwSXoJXC
	 PHUVE3zE5n0vg==
Date: Mon, 19 Jan 2026 12:53:12 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260119105312.GJ13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
 <20260119075229.GE13201@unreal>
 <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
 <78035892-758d-4104-9dd5-aed9a045d481@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78035892-758d-4104-9dd5-aed9a045d481@amd.com>
X-Rspamd-Queue-Id: 4A9173F734
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EWA2HTAOK4U2BCE5K7IABG4EHASPATAF
X-Message-ID-Hash: EWA2HTAOK4U2BCE5K7IABG4EHASPATAF
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rd
 ma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EWA2HTAOK4U2BCE5K7IABG4EHASPATAF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMTE6MjA6NDZBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8xOS8yNiAxMDoyNywgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6DQo+
ID4gT24gTW9uLCAyMDI2LTAxLTE5IGF0IDA5OjUyICswMjAwLCBMZW9uIFJvbWFub3Zza3kgd3Jv
dGU6DQo+ID4+IE9uIFN1biwgSmFuIDE4LCAyMDI2IGF0IDAzOjE2OjI1UE0gKzAxMDAsIFRob21h
cyBIZWxsc3Ryw7ZtIHdyb3RlOg0KPiA+Pj4gSGksIExlb24sDQo+ID4+Pg0KPiA+Pj4gT24gU3Vu
LCAyMDI2LTAxLTE4IGF0IDE0OjA4ICswMjAwLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6DQo+ID4+
Pj4gQ2hhbmdlbG9nOg0KPiA+Pj4+IHYyOg0KPiA+Pj4+IMKgKiBDaGFuZ2VkIHNlcmllcyB0byBk
b2N1bWVudCB0aGUgcmV2b2tlIHNlbWFudGljcyBpbnN0ZWFkIG9mDQo+ID4+Pj4gwqDCoCBpbXBs
ZW1lbnRpbmcgaXQuDQo+ID4+Pj4gdjE6DQo+ID4+Pj4gaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5r
LzIwMjYwMTExLWRtYWJ1Zi1yZXZva2UtdjEtMC1mYjRiY2M4YzI1OWJAbnZpZGlhLmNvbQ0KPiA+
Pj4+DQo+ID4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPj4+PiAtLS0tDQo+ID4+Pj4gLS0tLQ0KPiA+Pj4+IFRo
aXMgc2VyaWVzIGRvY3VtZW50cyBhIGRtYS1idWYg4oCccmV2b2tl4oCdIG1lY2hhbmlzbTogdG8g
YWxsb3cgYQ0KPiA+Pj4+IGRtYS0NCj4gPj4+PiBidWYNCj4gPj4+PiBleHBvcnRlciB0byBleHBs
aWNpdGx5IGludmFsaWRhdGUgKOKAnGtpbGzigJ0pIGEgc2hhcmVkIGJ1ZmZlciBhZnRlcg0KPiA+
Pj4+IGl0DQo+ID4+Pj4gaGFzDQo+ID4+Pj4gYmVlbiBkaXN0cmlidXRlZCB0byBpbXBvcnRlcnMs
IHNvIHRoYXQgZnVydGhlciBDUFUgYW5kIGRldmljZQ0KPiA+Pj4+IGFjY2Vzcw0KPiA+Pj4+IGlz
DQo+ID4+Pj4gcHJldmVudGVkIGFuZCBpbXBvcnRlcnMgcmVsaWFibHkgb2JzZXJ2ZSBmYWlsdXJl
Lg0KPiA+Pj4+DQo+ID4+Pj4gVGhlIGNoYW5nZSBpbiB0aGlzIHNlcmllcyBpcyB0byBwcm9wZXJs
eSBkb2N1bWVudCBhbmQgdXNlDQo+ID4+Pj4gZXhpc3RpbmcNCj4gPj4+PiBjb3JlDQo+ID4+Pj4g
4oCccmV2b2tlZOKAnSBzdGF0ZSBvbiB0aGUgZG1hLWJ1ZiBvYmplY3QgYW5kIGEgY29ycmVzcG9u
ZGluZw0KPiA+Pj4+IGV4cG9ydGVyLQ0KPiA+Pj4+IHRyaWdnZXJlZA0KPiA+Pj4+IHJldm9rZSBv
cGVyYXRpb24uIE9uY2UgYSBkbWEtYnVmIGlzIHJldm9rZWQsIG5ldyBhY2Nlc3MgcGF0aHMgYXJl
DQo+ID4+Pj4gYmxvY2tlZCBzbw0KPiA+Pj4+IHRoYXQgYXR0ZW1wdHMgdG8gRE1BLW1hcCwgdm1h
cCwgb3IgbW1hcCB0aGUgYnVmZmVyIGZhaWwgaW4gYQ0KPiA+Pj4+IGNvbnNpc3RlbnQgd2F5Lg0K
PiA+Pj4NCj4gPj4+IFRoaXMgc291bmRzIGxpa2UgaXQgZG9lcyBub3QgbWF0Y2ggaG93IG1hbnkg
R1BVLWRyaXZlcnMgdXNlIHRoZQ0KPiA+Pj4gbW92ZV9ub3RpZnkoKSBjYWxsYmFjay4NCj4gPj4N
Cj4gPj4gTm8gY2hhbmdlIGZvciB0aGVtLg0KPiA+Pg0KPiA+Pj4NCj4gPj4+IG1vdmVfbm90aWZ5
KCkgd291bGQgdHlwaWNhbGx5IGludmFsaWRhdGUgYW55IGRldmljZSBtYXBzIGFuZCBhbnkNCj4g
Pj4+IGFzeW5jaHJvbm91cyBwYXJ0IG9mIHRoYXQgaW52YWxpZGF0aW9uIHdvdWxkIGJlIGNvbXBs
ZXRlIHdoZW4gdGhlDQo+ID4+PiBkbWEtDQo+ID4+PiBidWYncyByZXNlcnZhdGlvbiBvYmplY3Qg
YmVjb21lcyBpZGxlIFdSVCBETUFfUkVTVl9VU0FHRV9CT09LS0VFUA0KPiA+Pj4gZmVuY2VzLg0K
PiA+Pg0KPiA+PiBUaGlzIHBhcnQgaGFzIG5vdCBjaGFuZ2VkIGFuZCByZW1haW5zIHRoZSBzYW1l
IGZvciB0aGUgcmV2b2NhdGlvbg0KPiA+PiBmbG93IGFzIHdlbGwuDQo+ID4+DQo+ID4+Pg0KPiA+
Pj4gSG93ZXZlciwgdGhlIGltcG9ydGVyIGNvdWxkLCBhZnRlciBvYnRhaW5pbmcgdGhlIHJlc3Yg
bG9jaywgb2J0YWluDQo+ID4+PiBhDQo+ID4+PiBuZXcgbWFwIHVzaW5nIGRtYV9idWZfbWFwX2F0
dGFjaG1lbnQoKSwgYW5kIEknZCBhc3N1bWUgdGhlIENQVSBtYXBzDQo+ID4+PiB3b3JrIGluIHRo
ZSBzYW1lIHdheSwgSS5FLiBtb3ZlX25vdGlmeSgpIGRvZXMgbm90ICpwZXJtYW5lbnRseSoNCj4g
Pj4+IHJldm9rZQ0KPiA+Pj4gaW1wb3J0ZXIgYWNjZXNzLg0KPiA+Pg0KPiA+PiBUaGlzIHBhcnQg
ZGl2ZXJnZXMgYnkgZGVzaWduIGFuZCBpcyBkb2N1bWVudGVkIHRvIG1hdGNoIHJldm9rZQ0KPiA+
PiBzZW1hbnRpY3MuwqAgDQo+IA0KPiBQbGVhc2UgZG9uJ3QgZG9jdW1lbnQgdGhhdC4gVGhpcyBp
cyBzcGVjaWZpYyBleHBvcnRlciBiZWhhdmlvciBhbmQgZG9lc24ndCBiZWxvbmcgaW50byBETUEt
YnVmIGF0IGFsbC4NCj4gDQo+ID4+IEl0IGRlZmluZXMgd2hhdCBtdXN0IG9jY3VyIGFmdGVyIHRo
ZSBleHBvcnRlciByZXF1ZXN0cyB0aGF0IHRoZQ0KPiA+PiBidWZmZXIgYmXCoCANCj4gPj4gImtp
bGxlZCIuIEFuIGltcG9ydGVyIHRoYXQgZm9sbG93cyByZXZva2Ugc2VtYW50aWNzIHdpbGwgbm90
IGF0dGVtcHQNCj4gPj4gdG8gY2FsbMKgIA0KPiA+PiBkbWFfYnVmX21hcF9hdHRhY2htZW50KCks
IGFuZCB0aGUgZXhwb3J0ZXIgd2lsbCBibG9jayBhbnkgcmVtYXBwaW5nDQo+ID4+IGF0dGVtcHRz
wqAgDQo+ID4+IHJlZ2FyZGxlc3MuIFNlZSB0aGUgcHJpdi0+cmV2b2tlZCBmbGFnIGluIHRoZSBW
RklPIGV4cG9ydGVyLg0KPiANCj4gSSBoYXZlIHRvIGNsZWFybHkgcmVqZWN0IHRoYXQuDQo+IA0K
PiBJdCdzIHRoZSBqb2Igb2YgdGhlIGV4cG9ydGVyIHRvIHJlamVjdCBzdWNoIGNhbGxzIHdpdGgg
YW4gYXBwcm9wcmlhdGUgZXJyb3IgYW5kIG5vdCB0aGUgaW1wb3J0ZXIgdG8gbm90IG1ha2UgdGhl
bS4NCg0KQ3VycmVudCBjb2RlIGJlaGF2ZXMgYXMgZXhwZWN0ZWQ6IHRoZSBleHBvcnRlciByZWpl
Y3RzIG1hcHBpbmcgYXR0ZW1wdHMgYWZ0ZXINCi5pbnZhbGlkYXRlX21hcHBpbmcgaXMgY2FsbGVk
LCBhbmQgaGFuZGxlcyB0aGUgbG9naWMgaW50ZXJuYWxseS4NCg0KSG93ZXZlciwgaXQgaXMgbm90
IGNsZWFyIHdoYXQgZXhhY3RseSB5b3UgYXJlIHByb3Bvc2luZy4gSW4gdjEg4oCUIHdoaWNoIHlv
dQ0Kb2JqZWN0ZWQgdG8g4oCUIEkgc3VnZ2VzdGVkIG5lZ290aWF0aW5nIHJldm9rZSBzdXBwb3J0
IGFsb25nIHdpdGggdGhlIGxvZ2ljIGZvcg0KcmVqZWN0aW5nIG1hcHBpbmdzIGluIHRoZSBkbWEt
YnVmIGNvcmUuIEluIHRoaXMgdmVyc2lvbiwgeW91IG9iamVjdCB0byBwbGFjaW5nDQp0aGUgcmVq
ZWN0aW9uIGxvZ2ljIGluIHRoZSBleHBvcnRlci4NCg0KPiANCj4gPj4gSW4gYWRkaXRpb24sIGlu
IHRoaXMgZW1haWwgdGhyZWFkLCBDaHJpc3RpYW4gZXhwbGFpbnMgdGhhdCByZXZva2UNCj4gPj4g
c2VtYW50aWNzIGFscmVhZHkgZXhpc3RzLCB3aXRoIHRoZSBjb21iaW5hdGlvbiBvZiBkbWFfYnVm
X3BpbiBhbmQNCj4gPj4gZG1hX2J1Zl9tb3ZlX25vdGlmeSwganVzdCBub3QgZG9jdW1lbnRlZDoN
Cj4gPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2Y3ZjE4NTZhLTQ0ZmEtNDRhZi1iNDk2
LWViMTI2N2EwNWQxMUBhbWQuY29tLw0KPiA+IA0KPiA+IA0KPiA+IEhtbSwNCj4gPiANCj4gPiBD
b25zaWRlcmluZyANCj4gPiANCj4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92
Ni4xOS1yYzUvc291cmNlL2RyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMjTDE5
Mg0KPiANCj4gWWVzLCB0aGF0IGNhc2UgaXMgd2VsbCBrbm93bi4NCj4gDQo+ID4gdGhpcyBzb3Vu
ZHMgbGlrZSBpdCdzIG5vdCBqdXN0IHVuZG9jdW1lbnRlZCBidXQgYWxzbyBpbiBzb21lIGNhc2Vz
DQo+ID4gdW5pbXBsZW1lbnRlZC4gVGhlIHhlIGRyaXZlciBmb3Igb25lIGRvZXNuJ3QgZXhwZWN0
IG1vdmVfbm90aWZ5KCkgdG8gYmUNCj4gPiBjYWxsZWQgb24gcGlubmVkIGJ1ZmZlcnMsDQo+IA0K
PiBBbmQgdGhhdCBpcyB3aGF0IHdlIG5lZWQgdG8gY2hhbmdlLiBTZWUgbW92ZV9ub3RpZnkgY2Fu
IGhhcHBlbiBvbiBwaW5uZWQgYnVmZmVycyBjdXJyZW50bHkgYXMgd2VsbC4NCj4gDQo+IEZvciBl
eGFtcGxlIGluIHRoZSBjYXNlIG9mIFBDSSBob3QgdW5wbHVnLiBBZnRlciBwaW5uaW5nIHdlIGp1
c3QgZG9uJ3QgY2FsbCBpdCBmb3IgbWVtb3J5IG1hbmFnZW1lbnQgbmVlZHMgYW55IG1vcmUuDQo+
IA0KPiBXZSBqdXN0IGhhdmVuJ3QgZG9jdW1lbnRlZCB0aGF0IHByb3Blcmx5Lg0KPiANCj4gPiBz
byBpZiB0aGF0IGlzIGluZGVlZCBnb2luZyB0byBiZSBwYXJ0IG9mIHRoZQ0KPiA+IGRtYS1idWYg
cHJvdG9jb2wsICB3b3VsZG4ndCBzdXBwb3J0IGZvciB0aGF0IG5lZWQgdG8gYmUgYWR2ZXJ0aXNl
ZCBieQ0KPiA+IHRoZSBpbXBvcnRlcj8NCj4gDQo+IFRoYXQncyB3aGF0IHRoaXMgcGF0Y2ggc2V0
IGhlcmUgc2hvdWxkIGRvLCB5ZXMuDQo+IA0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+IA0K
PiA+IA0KPiA+IFRoYW5rcywNCj4gPiBUaG9tYXMNCj4gPiANCj4gPj4NCj4gPj4gVGhhbmtzDQo+
ID4+DQo+ID4+Pg0KPiA+Pj4gL1Rob21hcw0KPiA+Pj4NCj4gPj4+DQo+ID4+Pj4NCj4gPj4+PiBU
aGFua3MNCj4gPj4+Pg0KPiA+Pj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4g
Pj4+PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+Pj4+IENjOiBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gPj4+PiBDYzogbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZw0KPiA+Pj4+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+
Pj4+IENjOiB2aXJ0dWFsaXphdGlvbkBsaXN0cy5saW51eC5kZXYNCj4gPj4+PiBDYzogaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4+Pj4gQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJu
ZWwub3JnDQo+ID4+Pj4gQ2M6IGlvbW11QGxpc3RzLmxpbnV4LmRldg0KPiA+Pj4+IENjOiBrdm1A
dmdlci5rZXJuZWwub3JnDQo+ID4+Pj4gVG86IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+DQo+ID4+Pj4gVG86IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCj4gPj4+PiBUbzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQu
Y29tPg0KPiA+Pj4+IFRvOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KPiA+Pj4+
IFRvOiBTaW1vbmEgVmV0dGVyIDxzaW1vbmFAZmZ3bGwuY2g+DQo+ID4+Pj4gVG86IEdlcmQgSG9m
Zm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPg0KPiA+Pj4+IFRvOiBEbWl0cnkgT3NpcGVua28gPGRt
aXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPiA+Pj4+IFRvOiBHdXJjaGV0YW4gU2luZ2gg
PGd1cmNoZXRhbnNpbmdoQGNocm9taXVtLm9yZz4NCj4gPj4+PiBUbzogQ2hpYS1JIFd1IDxvbHZh
ZmZlQGdtYWlsLmNvbT4NCj4gPj4+PiBUbzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCj4gPj4+PiBUbzogTWF4aW1lIFJpcGFyZCA8bXJpcGFy
ZEBrZXJuZWwub3JnPg0KPiA+Pj4+IFRvOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4NCj4gPj4+PiBUbzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+DQo+ID4+Pj4gVG86IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4NCj4gPj4+PiBUbzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50
ZWwuY29tPg0KPiA+Pj4+IFRvOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4NCj4gPj4+
PiBUbzogTGVvbiBSb21hbm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+DQo+ID4+Pj4gVG86IEtldmlu
IFRpYW4gPGtldmluLnRpYW5AaW50ZWwuY29tPg0KPiA+Pj4+IFRvOiBKb2VyZyBSb2VkZWwgPGpv
cm9AOGJ5dGVzLm9yZz4NCj4gPj4+PiBUbzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4N
Cj4gPj4+PiBUbzogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4NCj4gPj4+PiBU
bzogQWxleCBXaWxsaWFtc29uIDxhbGV4QHNoYXpib3Qub3JnPg0KPiA+Pj4+DQo+ID4+Pj4gLS0t
DQo+ID4+Pj4gTGVvbiBSb21hbm92c2t5ICg0KToNCj4gPj4+PiDCoMKgwqDCoMKgIGRtYS1idWY6
IFJlbmFtZSAubW92ZV9ub3RpZnkoKSBjYWxsYmFjayB0byBhIGNsZWFyZXINCj4gPj4+PiBpZGVu
dGlmaWVyDQo+ID4+Pj4gwqDCoMKgwqDCoCBkbWEtYnVmOiBEb2N1bWVudCByZXZva2Ugc2VtYW50
aWNzDQo+ID4+Pj4gwqDCoMKgwqDCoCBpb21tdWZkOiBSZXF1aXJlIERNQUJVRiByZXZva2Ugc2Vt
YW50aWNzDQo+ID4+Pj4gwqDCoMKgwqDCoCB2ZmlvOiBBZGQgcGlubmVkIGludGVyZmFjZSB0byBw
ZXJmb3JtIHJldm9rZSBzZW1hbnRpY3MNCj4gPj4+Pg0KPiA+Pj4+IMKgZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArKyst
LS0NCj4gPj4+PiDCoGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMg
fMKgIDQgKystLQ0KPiA+Pj4+IMKgZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3ByaW1l
LmPCoMKgwqDCoMKgIHzCoCAyICstDQo+ID4+Pj4gwqBkcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMv
eGVfZG1hX2J1Zi5jwqDCoMKgwqDCoMKgIHzCoCA2ICsrKy0tLQ0KPiA+Pj4+IMKgZHJpdmVycy9n
cHUvZHJtL3hlL3hlX2RtYV9idWYuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQ0K
PiA+Pj4+IMKgZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuY8KgwqDCoMKgwqDC
oCB8wqAgNCArKy0tDQo+ID4+Pj4gwqBkcml2ZXJzL2luZmluaWJhbmQvaHcvbWx4NS9tci5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstDQo+ID4+Pj4gwqBkcml2ZXJzL2lvbW11L2lv
bW11ZmQvcGFnZXMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMSArKysrKysrKyst
LQ0KPiA+Pj4+IMKgZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuY8KgwqDCoMKgwqDC
oMKgwqDCoCB8IDE2DQo+ID4+Pj4gKysrKysrKysrKysrKysrKw0KPiA+Pj4+IMKgaW5jbHVkZS9s
aW51eC9kbWEtYnVmLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwg
MjUNCj4gPj4+PiArKysrKysrKysrKysrKysrKysrKysrLS0tDQo+ID4+Pj4gwqAxMCBmaWxlcyBj
aGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkNCj4gPj4+PiAtLS0NCj4g
Pj4+PiBiYXNlLWNvbW1pdDogOWFjZTQ3NTNhNTIwMmIwMjE5MWQ1NGU5ZmRmN2Y5ZTNkMDJiODVl
Yg0KPiA+Pj4+IGNoYW5nZS1pZDogMjAyNTEyMjEtZG1hYnVmLXJldm9rZS1iOTBlZjE2ZTQyMzYN
Cj4gPj4+Pg0KPiA+Pj4+IEJlc3QgcmVnYXJkcywNCj4gPj4+PiAtLcKgIA0KPiA+Pj4+IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4+Pj4NCj4gPj4+DQo+ID4gDQo+IA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
