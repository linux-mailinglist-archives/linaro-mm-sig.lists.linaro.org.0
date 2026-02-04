Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDn7MvSEg2llowMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 18:42:12 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF49EB105
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 18:42:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 580763F960
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Feb 2026 17:42:11 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 308C83F795
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Feb 2026 17:42:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Y5sNk7Yo;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4A711444D5;
	Wed,  4 Feb 2026 17:42:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ABA4C116C6;
	Wed,  4 Feb 2026 17:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770226923;
	bh=p787FwvtGxpTW7O+BZ6Vp7w3LWjZ2nLdxL1PN/deDRo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y5sNk7YoVaiqLlGkRnVYCRSjbVUtYvArX7zLCO0dq9LARndPLPkwL0xKjxvhVq2pl
	 pgr4rff3JEaU3JLLY7edp68Rr5VjQNRFRIZw6ETH1AWCgHbDlIgcwwCbRdGpZq90He
	 UBGguXZpA1L9b22GpsmfUiUI6FVFJHrnHxBSkzjTXt8+gPdExzOi/eNdc/MOnPKf+Q
	 Aqee+/IUEM/rzCbcV2pID1uVCuOkkwM8e3efDB9obdYx+OCQEmWJ2i50cYE/5zVVM8
	 c8QctwcWyxr4Q1eq9txWCJRRhfIJWW7V5DaeHqHDoUVdtavrJVOMe40HRuZ2LaARJz
	 CejQKWN5h2JEg==
Date: Wed, 4 Feb 2026 19:41:57 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260204174157.GA12201@unreal>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
 <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: HQLPNVHSX3TBZJTEWD6QU7XVO3KM2YR2
X-Message-ID-Hash: HQLPNVHSX3TBZJTEWD6QU7XVO3KM2YR2
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel
 @vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HQLPNVHSX3TBZJTEWD6QU7XVO3KM2YR2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,intel.com:email,shazbot.org:email,amd.com:email]
X-Rspamd-Queue-Id: 5DF49EB105
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMDQsIDIwMjYgYXQgMDU6MjE6NDVQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8zMS8yNiAwNjozNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+
IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gDQo+ID4gVGls
bCBub3cgVkZJTyBoYXMgcmVqZWN0ZWQgcGlubmVkIGltcG9ydGVycywgbGFyZ2VseSB0byBhdm9p
ZCBiZWluZyB1c2VkDQo+ID4gd2l0aCB0aGUgUkRNQSBwaW5uZWQgaW1wb3J0ZXIgdGhhdCBjYW5u
b3QgaGFuZGxlIGEgbW92ZV9ub3RpZnkoKSB0byByZXZva2UNCj4gPiBhY2Nlc3MuDQo+ID4gDQo+
ID4gVXNpbmcgZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKCkgaXQgY2FuIHRlbGwgdGhlIGRpZmZl
cmVuY2UgYmV0d2VlbiBwaW5uZWQNCj4gPiBpbXBvcnRlcnMgdGhhdCBzdXBwb3J0IHRoZSBmbG93
IGRlc2NyaWJlZCBpbiBkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MoKQ0KPiA+IGFuZCB0aG9z
ZSB0aGF0IGRvbid0Lg0KPiA+IA0KPiA+IFRodXMgcGVybWl0IGNvbXBhdGlibGUgcGlubmVkIGlt
cG9ydGVycy4NCj4gPiANCj4gPiBUaGlzIGlzIG9uZSBvZiB0d28gaXRlbXMgSU9NTVVGRCByZXF1
aXJlcyB0byByZW1vdmUgaXRzIHByaXZhdGUgaW50ZXJmYWNlDQo+ID4gdG8gVkZJTydzIGRtYS1i
dWYuDQo+ID4gDQo+ID4gUmV2aWV3ZWQtYnk6IEtldmluIFRpYW4gPGtldmluLnRpYW5AaW50ZWwu
Y29tPg0KPiA+IFJldmlld2VkLWJ5OiBBbGV4IFdpbGxpYW1zb24gPGFsZXhAc2hhemJvdC5vcmc+
DQo+ID4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIHwg
MTUgKysrLS0tLS0tLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vcGNp
L3ZmaW9fcGNpX2RtYWJ1Zi5jIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0K
PiA+IGluZGV4IDc4ZDQ3ZTI2MGYzNC4uYTVmYjgwZTA2OGVlIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCj4gPiArKysgYi9kcml2ZXJzL3ZmaW8v
cGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+ID4gQEAgLTIyLDE2ICsyMiw2IEBAIHN0cnVjdCB2Zmlv
X3BjaV9kbWFfYnVmIHsNCj4gPiAgCXU4IHJldm9rZWQgOiAxOw0KPiA+ICB9Ow0KPiA+ICANCj4g
PiAtc3RhdGljIGludCB2ZmlvX3BjaV9kbWFfYnVmX3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2htZW50KQ0KPiA+IC17DQo+ID4gLQlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+ID4g
LX0NCj4gPiAtDQo+ID4gLXN0YXRpYyB2b2lkIHZmaW9fcGNpX2RtYV9idWZfdW5waW4oc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCkNCj4gPiAtew0KPiA+IC0JLyogRG8gbm90
aGluZyAqLw0KPiA+IC19DQo+ID4gLQ0KPiANCj4gVGhpcyBjaHVuayBoZXJlIGRvZXNuJ3Qgd2Fu
dCB0byBhcHBseSB0byBkcm0tbWlzYy1uZXh0LCBteSBlZHVjYXRlZCBndWVzcyBpcyB0aGF0IHRo
ZSBwYXRjaCBhZGRpbmcgdGhvc2UgbGluZXMgaXMgbWlzc2luZyBpbiB0aGF0IHRyZWUuDQo+IA0K
PiBIb3cgc2hvdWxkIHdlIGhhbmRsZSB0aGF0PyBQYXRjaGVzIDEtMyBoYXZlIGFscmVhZHkgYmVl
biBwdXNoZWQgdG8gZHJtLW1pc2MtbmV4dCBhbmQgSSB3b3VsZCByYXRoZXIgbGlrZSB0byBwdXNo
IHBhdGNoZXMgNC02IHRocm91Z2ggdGhhdCBicmFuY2ggYXMgd2VsbC4NCg0KVGhlcmUgaXMgbm8g
bmVlZCBmb3IgYSBiYWNrbWVyZ2U7IGl0IHNob3VsZCBnbyBpbiB0aHJvdWdoIHRoZSBzaGFyZWQN
CmJyYW5jaC4gQWxleCBoYXMgY3JlYXRlZCB0aGUgdGFnIHZmaW8tdjYuMTktcmM4LCB3aGljaCBp
cyB2Ni4xOS1yYzYgcGx1cw0KdGhlIFZGSU8gcGluIHBhdGNoLg0KDQpZb3UgbmVlZCB0byBtZXJn
ZSB0aGlzIHRhZyBpbnRvIGRybS1taXNjLW5leHQuIFRoYXQgd2lsbCBlbnN1cmUgdGhhdA0KTGlu
dXMsIERSTSwgYW5kIFZGSU8gYWxsIHNlZSB0aGUgc2FtZSBTSEEtMSwgYW5kIHRoYXQgcGF0Y2hl
cyA14oCTNiBjYW4gYmUNCmFwcGxpZWQgYWZ0ZXJ3YXJkLg0KDQpUaGFua3MNCg0KPiANCj4gSSBj
YW4gcmVxdWVzdCBhIGJhY2ttZXJnZSBmcm9tIHRoZSBkcm0tbWlzYy1uZXh0IG1haW50YWluZXJz
LCBidXQgdGhlbiB3ZSBjbGVhcmx5IGRvbid0IGdldCB0aGF0IHVwc3RyZWFtIHRoaXMgd2Vlay4N
Cj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+ID4gIHN0YXRpYyBpbnQgdmZpb19w
Y2lfZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCj4gPiAgCQkJCSAgIHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQpDQo+ID4gIHsNCj4gPiBAQCAtNDMs
NiArMzMsOSBAQCBzdGF0aWMgaW50IHZmaW9fcGNpX2RtYV9idWZfYXR0YWNoKHN0cnVjdCBkbWFf
YnVmICpkbWFidWYsDQo+ID4gIAlpZiAocHJpdi0+cmV2b2tlZCkNCj4gPiAgCQlyZXR1cm4gLUVO
T0RFVjsNCj4gPiAgDQo+ID4gKwlpZiAoIWRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZShhdHRhY2ht
ZW50KSkNCj4gPiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+ID4gKw0KPiA+ICAJcmV0dXJuIDA7
DQo+ID4gIH0NCj4gPiAgDQo+ID4gQEAgLTEwNyw4ICsxMDAsNiBAQCBzdGF0aWMgdm9pZCB2Zmlv
X3BjaV9kbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4gPiAgfQ0KPiA+
ICANCj4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyB2ZmlvX3BjaV9kbWFidWZf
b3BzID0gew0KPiA+IC0JLnBpbiA9IHZmaW9fcGNpX2RtYV9idWZfcGluLA0KPiA+IC0JLnVucGlu
ID0gdmZpb19wY2lfZG1hX2J1Zl91bnBpbiwNCj4gPiAgCS5hdHRhY2ggPSB2ZmlvX3BjaV9kbWFf
YnVmX2F0dGFjaCwNCj4gPiAgCS5tYXBfZG1hX2J1ZiA9IHZmaW9fcGNpX2RtYV9idWZfbWFwLA0K
PiA+ICAJLnVubWFwX2RtYV9idWYgPSB2ZmlvX3BjaV9kbWFfYnVmX3VubWFwLA0KPiA+IA0KPiAN
Cj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
