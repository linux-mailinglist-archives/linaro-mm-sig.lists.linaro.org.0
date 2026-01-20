Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIKdNTGnb2ndEgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 17:02:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F8347010
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 17:02:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3316040175
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 13:34:10 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 553BF3F9D9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 13:34:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JpEG1sP9;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B6397439A6;
	Tue, 20 Jan 2026 13:34:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC30AC16AAE;
	Tue, 20 Jan 2026 13:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768916043;
	bh=oLJ2iu9KlHT5QrDdejkQxW6aJLgiN+DqMd8h51OdTRU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JpEG1sP9sdoE2iRilDGuE2cq1/H2M6cDuai69Nw+oSU99dcdoZdWBvI1Ukv0pmCi9
	 TsEw1r+DamQwCel7MoQtDe43k96uNEN2EIGYyUqy+LKVNlFKvNVQdDnF9gRgkw6+oE
	 Iyr3Ih5rCshWR5ndygaol8Ath9Rlm/yA6Sguxq2x2tSUxefkc1flchRkXEHVN8GCfi
	 tJskCUcB7JdPmjSewrBWCzbAo1v7780XPg1+FKbkQX6nJPso+uCdLPziwkOu29i/jw
	 mD8HoF6GofHxxX6dhDDXQOlk4BrG8fNLd2RXpMxN3Qn9LCRK7nBxumFh6AjnzbEM7k
	 ZfnVnW6TNMaYg==
Date: Tue, 20 Jan 2026 15:33:57 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20260120133357.GT13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-3-a03bb27c0875@nvidia.com>
 <20260119165951.GI961572@ziepe.ca>
 <20260119182300.GO13201@unreal>
 <20260119195444.GL961572@ziepe.ca>
 <20260120131046.GS13201@unreal>
 <20260120131530.GN961572@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260120131530.GN961572@ziepe.ca>
X-Spamd-Bar: ---
Message-ID-Hash: QIGYKFF3WLQWBHAST5VHJSPQBQQTTNUV
X-Message-ID-Hash: QIGYKFF3WLQWBHAST5VHJSPQBQQTTNUV
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@
 lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/4] iommufd: Require DMABUF revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QIGYKFF3WLQWBHAST5VHJSPQBQQTTNUV/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev, lists.freedesktop.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,nvidia.com:email]
X-Rspamd-Queue-Id: 72F8347010
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBKYW4gMjAsIDIwMjYgYXQgMDk6MTU6MzBBTSAtMDQwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPiBPbiBUdWUsIEphbiAyMCwgMjAyNiBhdCAwMzoxMDo0NlBNICswMjAwLCBMZW9u
IFJvbWFub3Zza3kgd3JvdGU6DQo+ID4gT24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMDM6NTQ6NDRQ
TSAtMDQwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiA+ID4gT24gTW9uLCBKYW4gMTksIDIw
MjYgYXQgMDg6MjM6MDBQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+ID4gPiBP
biBNb24sIEphbiAxOSwgMjAyNiBhdCAxMjo1OTo1MVBNIC0wNDAwLCBKYXNvbiBHdW50aG9ycGUg
d3JvdGU6DQo+ID4gPiA+ID4gT24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDI6MDg6NDdQTSArMDIw
MCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+ID4gPiA+ID4gRnJvbTogTGVvbiBSb21hbm92
c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gSU9NTVVG
RCBkb2VzIG5vdCBzdXBwb3J0IHBhZ2UgZmF1bHQgaGFuZGxpbmcsIGFuZCBhZnRlciBhIGNhbGwg
dG8NCj4gPiA+ID4gPiA+IC5pbnZhbGlkYXRlX21hcHBpbmdzKCkgYWxsIG1hcHBpbmdzIGJlY29t
ZSBpbnZhbGlkLiBFbnN1cmUgdGhhdA0KPiA+ID4gPiA+ID4gdGhlIElPTU1VRkQgRE1BQlVGIGlt
cG9ydGVyIGlzIGJvdW5kIHRvIGEgcmV2b2tl4oCRYXdhcmUgRE1BQlVGIGV4cG9ydGVyDQo+ID4g
PiA+ID4gPiAoZm9yIGV4YW1wbGUsIFZGSU8pLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiA+ID4g
PiA+ID4gLS0tDQo+ID4gPiA+ID4gPiAgZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMgfCA5
ICsrKysrKysrLQ0KPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jIGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2Vz
LmMNCj4gPiA+ID4gPiA+IGluZGV4IDc2ZjkwMGZhMTY4Ny4uYTVlYjJiYzRlZjQ4IDEwMDY0NA0K
PiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCj4gPiA+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jDQo+ID4gPiA+ID4gPiBAQCAt
MTUwMSwxNiArMTUwMSwyMiBAQCBzdGF0aWMgaW50IGlvcHRfbWFwX2RtYWJ1ZihzdHJ1Y3QgaW9t
bXVmZF9jdHggKmljdHgsIHN0cnVjdCBpb3B0X3BhZ2VzICpwYWdlcywNCj4gPiA+ID4gPiA+ICAJ
CW11dGV4X3VubG9jaygmcGFnZXMtPm11dGV4KTsNCj4gPiA+ID4gPiA+ICAJfQ0KPiA+ID4gPiA+
ID4gIA0KPiA+ID4gPiA+ID4gLQlyYyA9IHN5bV92ZmlvX3BjaV9kbWFfYnVmX2lvbW11ZmRfbWFw
KGF0dGFjaCwgJnBhZ2VzLT5kbWFidWYucGh5cyk7DQo+ID4gPiA+ID4gPiArCXJjID0gZG1hX2J1
Zl9waW4oYXR0YWNoKTsNCj4gPiA+ID4gPiA+ICAJaWYgKHJjKQ0KPiA+ID4gPiA+ID4gIAkJZ290
byBlcnJfZGV0YWNoOw0KPiA+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ID4gKwlyYyA9IHN5bV92Zmlv
X3BjaV9kbWFfYnVmX2lvbW11ZmRfbWFwKGF0dGFjaCwgJnBhZ2VzLT5kbWFidWYucGh5cyk7DQo+
ID4gPiA+ID4gPiArCWlmIChyYykNCj4gPiA+ID4gPiA+ICsJCWdvdG8gZXJyX3VucGluOw0KPiA+
ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsN
Cj4gPiA+ID4gPiA+ICANCj4gPiA+ID4gPiA+ICAJLyogT24gc3VjY2VzcyBpb3B0X3JlbGVhc2Vf
cGFnZXMoKSB3aWxsIGRldGFjaCBhbmQgcHV0IHRoZSBkbWFidWYuICovDQo+ID4gPiA+ID4gPiAg
CXBhZ2VzLT5kbWFidWYuYXR0YWNoID0gYXR0YWNoOw0KPiA+ID4gPiA+ID4gIAlyZXR1cm4gMDsN
Cj4gPiA+ID4gPiANCj4gPiA+ID4gPiBEb24ndCB3ZSBuZWVkIGFuIGV4cGxpY2l0IHVucGluIGFm
dGVyIHVubWFwcGluZz8NCj4gPiA+ID4gDQo+ID4gPiA+IFllcywgYnV0IHRoaXMgcGF0Y2ggaXMg
Z29pbmcgdG8gYmUgZHJvcHBlZCBpbiB2MyBiZWNhdXNlIG9mIHRoaXMNCj4gPiA+ID4gc3VnZ2Vz
dGlvbi4NCj4gPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2EzOTdmZjFlLTYxNWYt
NDg3My05OGE5LTk0MGY5YzE2Zjg1Y0BhbWQuY29tDQo+ID4gPiANCj4gPiA+IFRoYXQncyBub3Qg
cmlnaHQsIHRoYXQgc3VnZ2VzdGlvbiBpcyBhYm91dCBjaGFuZ2luZyBWRklPLiBpb21tdWZkIG11
c3QNCj4gPiA+IHN0aWxsIGFjdCBhcyBhIHBpbm5pbmcgaW1wb3J0ZXIhDQo+ID4gDQo+ID4gVGhl
cmUgaXMgbm8gY2hhbmdlIGluIGlvbW11ZmQsIGFzIGl0IGludm9rZXMgZG1hX2J1Zl9keW5hbWlj
X2F0dGFjaCgpDQo+ID4gd2l0aCBhIHZhbGlkICZpb3B0X2RtYWJ1Zl9hdHRhY2hfcmV2b2tlX29w
cy4gVGhlIGNoZWNrIGRldGVybWluaW5nIHdoZXRoZXINCj4gPiBpb21tdWZkIGNhbiBwZXJmb3Jt
IGEgcmV2b2tlIGlzIGhhbmRsZWQgdGhlcmUuDQo+IA0KPiBpb21tdWZkIGlzIGEgcGluaW5nIGlt
cG9ydGVyLiBJIGRpZCBub3QgYWRkIGEgY2FsbCB0byBwaW4gYmVjYXVzZSBpdA0KPiBvbmx5IHdv
cmtlZCB3aXRoIFZGSU8gdGhhdCB3b3VsZCBub3Qgc3VwcG9ydCBpdC4gTm93IHRoYXQgdGhpcyBz
ZXJpZXMNCj4gZml4ZXMgaXQgdGhlIHBpbiBtdXN0IGJlIGFkZGVkLiBEb24ndCBkcm9wIHRoaXMg
cGF0Y2guDQoNCk5vIHByb2JsZW0sIGxldCdzIGtlZXAgaXQuDQoNClRoYW5rcw0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
