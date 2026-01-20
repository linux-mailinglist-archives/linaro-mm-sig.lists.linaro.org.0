Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBl6KlShb2kLCAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 16:37:56 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 370084643D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 16:37:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBF6B4014A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 13:10:57 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 3267E3F732
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 13:10:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=H66meatB;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B307B60018;
	Tue, 20 Jan 2026 13:10:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75BAFC16AAE;
	Tue, 20 Jan 2026 13:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768914651;
	bh=FxDNhPLLAfmPmJMIRFTFPDZNe22KPzHCzmgh6qnQqZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H66meatBSh1LI3Kc+LtMKEFS7m/ZmLrZH8aGGFmAavlTQIAP9kvlFc180LzVGJOgr
	 VoRWA4PU3SRHk8ISpZJdCvufUfOsvhppfpHpEfM58TVVzk9DO1cdoyeGURjHg7KtNd
	 KABkX1mR2+dvVQiNrmFGlqzzMsXnRBAxpFHqa85G/7inSS7ETTqyimUMX3lonMWl6T
	 bm5tEJJ4PHjUrvp4SfDAhg4FbxylObYHHNiJu7ye5doDxIjXpEUakjTHcek5KgasRt
	 eArvXoDxK+mhIA6mo36uedrLvFigSp5RiqJqQg/qPinytKXgMEvV0BndlvT75uBnWe
	 oNtAMHkWz4fAA==
Date: Tue, 20 Jan 2026 15:10:46 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20260120131046.GS13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-3-a03bb27c0875@nvidia.com>
 <20260119165951.GI961572@ziepe.ca>
 <20260119182300.GO13201@unreal>
 <20260119195444.GL961572@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260119195444.GL961572@ziepe.ca>
X-Spamd-Bar: ---
Message-ID-Hash: 5LXTU6XOXKY3HPIOJCWDF4HCMYSLNPAG
X-Message-ID-Hash: 5LXTU6XOXKY3HPIOJCWDF4HCMYSLNPAG
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@
 lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/4] iommufd: Require DMABUF revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5LXTU6XOXKY3HPIOJCWDF4HCMYSLNPAG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev, lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 370084643D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMDM6NTQ6NDRQTSAtMDQwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPiBPbiBNb24sIEphbiAxOSwgMjAyNiBhdCAwODoyMzowMFBNICswMjAwLCBMZW9u
IFJvbWFub3Zza3kgd3JvdGU6DQo+ID4gT24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMTI6NTk6NTFQ
TSAtMDQwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiA+ID4gT24gU3VuLCBKYW4gMTgsIDIw
MjYgYXQgMDI6MDg6NDdQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+ID4gPiBG
cm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiA+ID4gPiANCj4gPiA+
ID4gSU9NTVVGRCBkb2VzIG5vdCBzdXBwb3J0IHBhZ2UgZmF1bHQgaGFuZGxpbmcsIGFuZCBhZnRl
ciBhIGNhbGwgdG8NCj4gPiA+ID4gLmludmFsaWRhdGVfbWFwcGluZ3MoKSBhbGwgbWFwcGluZ3Mg
YmVjb21lIGludmFsaWQuIEVuc3VyZSB0aGF0DQo+ID4gPiA+IHRoZSBJT01NVUZEIERNQUJVRiBp
bXBvcnRlciBpcyBib3VuZCB0byBhIHJldm9rZeKAkWF3YXJlIERNQUJVRiBleHBvcnRlcg0KPiA+
ID4gPiAoZm9yIGV4YW1wbGUsIFZGSU8pLg0KPiA+ID4gPiANCj4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4g
PiA+ICBkcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYyB8IDkgKysrKysrKystDQo+ID4gPiA+
ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPiA+
IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMgYi9k
cml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0KPiA+ID4gPiBpbmRleCA3NmY5MDBmYTE2ODcu
LmE1ZWIyYmM0ZWY0OCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9pb21tdS9pb21tdWZk
L3BhZ2VzLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCj4g
PiA+ID4gQEAgLTE1MDEsMTYgKzE1MDEsMjIgQEAgc3RhdGljIGludCBpb3B0X21hcF9kbWFidWYo
c3RydWN0IGlvbW11ZmRfY3R4ICppY3R4LCBzdHJ1Y3QgaW9wdF9wYWdlcyAqcGFnZXMsDQo+ID4g
PiA+ICAJCW11dGV4X3VubG9jaygmcGFnZXMtPm11dGV4KTsNCj4gPiA+ID4gIAl9DQo+ID4gPiA+
ICANCj4gPiA+ID4gLQlyYyA9IHN5bV92ZmlvX3BjaV9kbWFfYnVmX2lvbW11ZmRfbWFwKGF0dGFj
aCwgJnBhZ2VzLT5kbWFidWYucGh5cyk7DQo+ID4gPiA+ICsJcmMgPSBkbWFfYnVmX3BpbihhdHRh
Y2gpOw0KPiA+ID4gPiAgCWlmIChyYykNCj4gPiA+ID4gIAkJZ290byBlcnJfZGV0YWNoOw0KPiA+
ID4gPiAgDQo+ID4gPiA+ICsJcmMgPSBzeW1fdmZpb19wY2lfZG1hX2J1Zl9pb21tdWZkX21hcChh
dHRhY2gsICZwYWdlcy0+ZG1hYnVmLnBoeXMpOw0KPiA+ID4gPiArCWlmIChyYykNCj4gPiA+ID4g
KwkJZ290byBlcnJfdW5waW47DQo+ID4gPiA+ICsNCj4gPiA+ID4gIAlkbWFfcmVzdl91bmxvY2so
ZG1hYnVmLT5yZXN2KTsNCj4gPiA+ID4gIA0KPiA+ID4gPiAgCS8qIE9uIHN1Y2Nlc3MgaW9wdF9y
ZWxlYXNlX3BhZ2VzKCkgd2lsbCBkZXRhY2ggYW5kIHB1dCB0aGUgZG1hYnVmLiAqLw0KPiA+ID4g
PiAgCXBhZ2VzLT5kbWFidWYuYXR0YWNoID0gYXR0YWNoOw0KPiA+ID4gPiAgCXJldHVybiAwOw0K
PiA+ID4gDQo+ID4gPiBEb24ndCB3ZSBuZWVkIGFuIGV4cGxpY2l0IHVucGluIGFmdGVyIHVubWFw
cGluZz8NCj4gPiANCj4gPiBZZXMsIGJ1dCB0aGlzIHBhdGNoIGlzIGdvaW5nIHRvIGJlIGRyb3Bw
ZWQgaW4gdjMgYmVjYXVzZSBvZiB0aGlzDQo+ID4gc3VnZ2VzdGlvbi4NCj4gPiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvYTM5N2ZmMWUtNjE1Zi00ODczLTk4YTktOTQwZjljMTZmODVjQGFt
ZC5jb20NCj4gDQo+IFRoYXQncyBub3QgcmlnaHQsIHRoYXQgc3VnZ2VzdGlvbiBpcyBhYm91dCBj
aGFuZ2luZyBWRklPLiBpb21tdWZkIG11c3QNCj4gc3RpbGwgYWN0IGFzIGEgcGlubmluZyBpbXBv
cnRlciENCg0KVGhlcmUgaXMgbm8gY2hhbmdlIGluIGlvbW11ZmQsIGFzIGl0IGludm9rZXMgZG1h
X2J1Zl9keW5hbWljX2F0dGFjaCgpDQp3aXRoIGEgdmFsaWQgJmlvcHRfZG1hYnVmX2F0dGFjaF9y
ZXZva2Vfb3BzLiBUaGUgY2hlY2sgZGV0ZXJtaW5pbmcgd2hldGhlcg0KaW9tbXVmZCBjYW4gcGVy
Zm9ybSBhIHJldm9rZSBpcyBoYW5kbGVkIHRoZXJlLg0KDQpUaGFua3MNCg0KPiANCj4gSmFzb24N
Cj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
