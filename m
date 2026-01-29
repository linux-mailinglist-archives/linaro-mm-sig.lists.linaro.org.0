Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOUJFWIde2msBQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jan 2026 09:42:10 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BC19FAD9FC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jan 2026 09:42:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B14743F7B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jan 2026 08:42:08 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id ED2893F7B3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jan 2026 08:42:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=sJecCk3f;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2FD9F60054;
	Thu, 29 Jan 2026 08:42:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED8E8C4CEF7;
	Thu, 29 Jan 2026 08:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769676122;
	bh=ULqTXXRRvOEaToOQufqn0DT2Uq0Y5ZhV8wPvD5kiy38=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sJecCk3fd142pV7aGXECoVLIDzOZhUWnnhJKlTwcp9G4EN9Cuwi1JPzmHE7fiMuyf
	 e/hYZk7b68M92QyJpAGFzHgWPoWU4Wv7Yc4Pss8RlXgDoH8Z3zICPvVfVfnUVRD32G
	 Ja9IvIO/38norewAYFYG4VPRhHkXMjp05wW4imftl2jLLNJZbuWAtXZxRFaOPiW5qe
	 /apGZQxhSLlXRP7POJu5VImlUrKlNTUavJQSDI4NJJ23U9yj4JOx9ldP/dQ+uCrERk
	 vTmo7fG/G4U1Lw+wkQ7q9YMCGCnnKeD3CrfFgxtQgSnLVANjTikelLazKIOJKQQ9Ca
	 XUPt3aSNkmxwg==
Date: Thu, 29 Jan 2026 10:41:56 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20260129084156.GC10992@unreal>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <aXfUZcSEr9N18o6w@google.com>
 <20260127085835.GQ13967@unreal>
 <20260127162754.GH1641016@ziepe.ca>
 <BN9PR11MB5276B99D4E8C6496B0C447888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20260129073331.GB10992@unreal>
 <BN9PR11MB52766EA91FEB08876DA474888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN9PR11MB52766EA91FEB08876DA474888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Spamd-Bar: ---
Message-ID-Hash: IGKASOVTRNMLR35F6LDGY6FC4XXTQN5C
X-Message-ID-Hash: IGKASOVTRNMLR35F6LDGY6FC4XXTQN5C
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Pranjal Shrivastava <praan@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-media@vger.kernel.org" <l
 inux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "virtualization@lists.linux.dev" <virtualization@lists.linux.dev>, "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IGKASOVTRNMLR35F6LDGY6FC4XXTQN5C/>
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-0.951];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ziepe.ca,google.com,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:email,intel.com:email]
X-Rspamd-Queue-Id: BC19FAD9FC
X-Rspamd-Action: no action

T24gVGh1LCBKYW4gMjksIDIwMjYgYXQgMDg6MTM6MThBTSArMDAwMCwgVGlhbiwgS2V2aW4gd3Jv
dGU6DQo+ID4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+DQo+ID4gU2Vu
dDogVGh1cnNkYXksIEphbnVhcnkgMjksIDIwMjYgMzozNCBQTQ0KPiA+IA0KPiA+IE9uIFRodSwg
SmFuIDI5LCAyMDI2IGF0IDA3OjA2OjM3QU0gKzAwMDAsIFRpYW4sIEtldmluIHdyb3RlOg0KPiA+
ID4gPiBGcm9tOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4NCj4gPiA+ID4gU2VudDog
V2VkbmVzZGF5LCBKYW51YXJ5IDI4LCAyMDI2IDEyOjI4IEFNDQo+ID4gPiA+DQo+ID4gPiA+IE9u
IFR1ZSwgSmFuIDI3LCAyMDI2IGF0IDEwOjU4OjM1QU0gKzAyMDAsIExlb24gUm9tYW5vdnNreSB3
cm90ZToNCj4gPiA+ID4gPiA+ID4gQEAgLTMzMyw3ICszNTksMzcgQEAgdm9pZCB2ZmlvX3BjaV9k
bWFfYnVmX21vdmUoc3RydWN0DQo+ID4gPiA+IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBi
b29sIHJldm9rZWQpDQo+ID4gPiA+ID4gPiA+ICAJCQlkbWFfcmVzdl9sb2NrKHByaXYtPmRtYWJ1
Zi0+cmVzdiwgTlVMTCk7DQo+ID4gPiA+ID4gPiA+ICAJCQlwcml2LT5yZXZva2VkID0gcmV2b2tl
ZDsNCj4gPiA+ID4gPiA+ID4gIAkJCWRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncyhwcml2LQ0K
PiA+ID5kbWFidWYpOw0KPiA+ID4gPiA+ID4gPiArCQkJZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KHBy
aXYtPmRtYWJ1Zi0+cmVzdiwNCj4gPiA+ID4gPiA+ID4gKw0KPiA+IERNQV9SRVNWX1VTQUdFX0JP
T0tLRUVQLA0KPiA+ID4gPiBmYWxzZSwNCj4gPiA+ID4gPiA+ID4gKw0KPiA+IE1BWF9TQ0hFRFVM
RV9USU1FT1VUKTsNCj4gPiA+ID4gPiA+ID4gIAkJCWRtYV9yZXN2X3VubG9jayhwcml2LT5kbWFi
dWYtPnJlc3YpOw0KPiA+ID4gPiA+ID4gPiArCQkJaWYgKHJldm9rZWQpIHsNCj4gPiA+ID4gPiA+
ID4gKwkJCQlrcmVmX3B1dCgmcHJpdi0+a3JlZiwNCj4gPiA+ID4gdmZpb19wY2lfZG1hX2J1Zl9k
b25lKTsNCj4gPiA+ID4gPiA+ID4gKwkJCQkvKiBMZXQncyB3YWl0IHRpbGwgYWxsIERNQSB1bm1h
cCBhcmUNCj4gPiA+ID4gY29tcGxldGVkLiAqLw0KPiA+ID4gPiA+ID4gPiArCQkJCXdhaXQgPSB3
YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQoDQo+ID4gPiA+ID4gPiA+ICsJCQkJCSZwcml2LT5j
b21wLA0KPiA+IHNlY3NfdG9famlmZmllcygxKSk7DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4g
SXMgdGhlIDEtc2Vjb25kIGNvbnN0YW50IHN1ZmZpY2llbnQgZm9yIGFsbCBoYXJkd2FyZSwgb3Ig
c2hvdWxkIHRoZQ0KPiA+ID4gPiA+ID4gaW52YWxpZGF0ZV9tYXBwaW5ncygpIGNvbnRyYWN0IHJl
cXVpcmUgdGhlIGNhbGxiYWNrIHRvIGJsb2NrIHVudGlsDQo+ID4gPiA+ID4gPiBzcGVjdWxhdGl2
ZSByZWFkcyBhcmUgc3RyaWN0bHkgZmVuY2VkPyBJJ20gd29uZGVyaW5nIGFib3V0IGEgY2FzZQ0K
PiA+IHdoZXJlDQo+ID4gPiA+ID4gPiBhIGRldmljZSdzIGZpcm13YXJlIGhhcyBhIGhpZ2ggcmVz
cG9uc2UgbGF0ZW5jeSwgcGVyaGFwcyBkdWUgdG8NCj4gPiBpbnRlcm5hbA0KPiA+ID4gPiA+ID4g
bWFuYWdlbWVudCB0YXNrcyBsaWtlIGVycm9yIHJlY292ZXJ5IG9yIHRoZXJtYWwgYW5kIGl0IGV4
Y2VlZHMgdGhlDQo+ID4gMXMNCj4gPiA+ID4gPiA+IHRpbWVvdXQuDQo+ID4gPiA+ID4gPg0KPiA+
ID4gPiA+ID4gSWYgdGhlIGRldmljZSBpcyBpbiB0aGUgbWlkZGxlIG9mIGEgbGFyZ2UgRE1BIGJ1
cnN0IGFuZCB0aGUgZmlybXdhcmUgaXMNCj4gPiA+ID4gPiA+IHNsb3cgdG8gZmx1c2ggdGhlIGlu
dGVybmFsIHBpcGVsaW5lcyB0byBhIGZ1bGx5ICJxdWllc2NlZCINCj4gPiA+ID4gPiA+IHJlYWQt
YW5kLWRpc2NhcmQgc3RhdGUsIHJlY2xhaW1pbmcgdGhlIG1lbW9yeSBhdCBleGFjdGx5IDEuMDAx
DQo+ID4gc2Vjb25kcw0KPiA+ID4gPiA+ID4gcmlza3MgdHJpZ2dlcmluZyBwbGF0Zm9ybS1sZXZl
bCBmYXVsdHMuLg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IFNpbmNlIHRoZSB3ZW4gZXhwbGlj
aXRseSBwZXJtaXQgdGhlc2Ugc3BlY3VsYXRpdmUgcmVhZHMgdW50aWwgdW5tYXAgaXMNCj4gPiA+
ID4gPiA+IGNvbXBsZXRlLCByZWx5aW5nIG9uIGEgaGFyZGNvZGVkIHRpbWVvdXQgaW4gdGhlIGV4
cG9ydGVyIHNlZW1zIHRvDQo+ID4gPiA+ID4gPiBpbnRyb2R1Y2UgYSBoYXJkd2FyZS1kZXBlbmRl
bnQgcmFjZSBjb25kaXRpb24gdGhhdCBjb3VsZA0KPiA+IGNvbXByb21pc2UNCj4gPiA+ID4gPiA+
IHN5c3RlbSBzdGFiaWxpdHkgdmlhIElPTU1VIGVycm9ycyBvciBBRVIgZmF1bHRzLg0KPiA+ID4g
PiA+ID4NCj4gPiA+ID4gPiA+IFNob3VsZCB0aGUgaW1wb3J0ZXIgaW5zdGVhZCBiZSByZXF1aXJl
ZCB0byBndWFyYW50ZWUgdGhhdCBhbGwNCj4gPiA+ID4gPiA+IHNwZWN1bGF0aXZlIGFjY2VzcyBo
YXMgY2Vhc2VkIGJlZm9yZSB0aGUgaW52YWxpZGF0aW9uIGNhbGwgcmV0dXJucz8NCj4gPiA+ID4g
Pg0KPiA+ID4gPiA+IEl0IGlzIGd1YXJhbnRlZWQgYnkgdGhlIGRtYV9yZXN2X3dhaXRfdGltZW91
dCgpIGNhbGwgYWJvdmUuIFRoYXQgY2FsbA0KPiA+ID4gPiBlbnN1cmVzDQo+ID4gPiA+ID4gdGhh
dCB0aGUgaGFyZHdhcmUgaGFzIGNvbXBsZXRlZCBhbGwgcGVuZGluZyBvcGVyYXRpb25zLiBUaGUg
MeKAkXNlY29uZA0KPiA+ID4gPiBkZWxheSBpcw0KPiA+ID4gPiA+IG1lYW50IHRvIGNhdGNoIGNh
c2VzIHdoZXJlIGFuIGluLWtlcm5lbCBETUEgdW5tYXAgY2FsbCBpcyBtaXNzaW5nLA0KPiA+IHdo
aWNoDQo+ID4gPiA+IHNob3VsZA0KPiA+ID4gPiA+IG5vdCB0cmlnZ2VyIGFueSBETUEgYWN0aXZp
dHkgYXQgdGhhdCBwb2ludC4NCj4gPiA+ID4NCj4gPiA+ID4gQ2hyaXN0aWFuIG1heSBrbm93IGFj
dHVhbCBleGFtcGxlcywgYnV0IG15IGdlbmVyYWwgZmVlbGluZyBpcyBoZSB3YXMNCj4gPiA+ID4g
d29ycnlpbmcgYWJvdXQgZHJpdmVycyB0aGF0IGhhdmUgcHVzaGVkIHRoZSBETUFCVUYgdG8gdmlz
aWJpbGl0eSBvbg0KPiA+ID4gPiB0aGUgR1BVIGFuZCB0aGUgbW92ZSBub3RpZnkgJiBmZW5jZXMg
b25seSBzaG9vdCBkb3duIHNvbWUgYWNjZXNzLiBTbw0KPiA+ID4gPiBpdCBoYXMgdG8gd2FpdCB1
bnRpbCB0aGUgRE1BQlVGIGlzIGZpbmFsbHkgdW5tYXBwZWQuDQo+ID4gPiA+DQo+ID4gPiA+IFBy
YW5qYWwncyBleGFtcGxlIHNob3VsZCBiZSBjb3ZlcmVkIGJ5IHRoZSBkcml2ZXIgYWRkaW5nIGEg
ZmVuY2UgYW5kDQo+ID4gPiA+IHRoZW4gdGhlIHVuYm91bmRlZCBmZW5jZSB3YWl0IHdpbGwgY29t
cGxldGUgaXQuDQo+ID4gPiA+DQo+ID4gPg0KPiA+ID4gQmVhciBtZSBpZiBpdCdzIGFuIGlnbm9y
YW50IHF1ZXN0aW9uLg0KPiA+ID4NCj4gPiA+IFRoZSBjb21taXQgbXNnIG9mIHBhdGNoNiBzYXlz
IHRoYXQgVkZJTyBkb2Vzbid0IHRvbGVyYXRlIHVuYm91bmRlZA0KPiA+ID4gd2FpdCwgd2hpY2gg
aXMgdGhlIHJlYXNvbiBiZWhpbmQgdGhlIDJuZCB0aW1lb3V0IHdhaXQgaGVyZS4NCj4gPiANCj4g
PiBJdCBpcyBub3QgYWNjdXJhdGUuIEEgc2Vjb25kIHRpbWVvdXQgaXMgcHJlc2VudCBib3RoIGlu
IHRoZQ0KPiA+IGRlc2NyaXB0aW9uIG9mIHBhdGNoIDYgYW5kIGluIFZGSU8gaW1wbGVtZW50YXRp
b24uIFRoZSBkaWZmZXJlbmNlIGlzDQo+ID4gdGhhdCB0aGUgdGltZW91dCBpcyBlbmZvcmNlZCB3
aXRoaW4gVkZJTy4NCj4gPiANCj4gPiA+DQo+ID4gPiBUaGVuIHdoeSBpcyAidGhlIHVuYm91bmRl
ZCBmZW5jZSB3YWl0IiBub3QgYSBwcm9ibGVtIGluIHRoZSBzYW1lDQo+ID4gPiBjb2RlIHBhdGg/
IHRoZSB1c2Ugb2YgTUFYX1NDSEVEVUxFX1RJTUVPVVQgaW1wbHkgYSB3b3JzdC1jYXNlDQo+ID4g
PiB0aW1lb3V0IGluIGh1bmRyZWRzIG9mIHllYXJzLi4uDQo+ID4gDQo+ID4gIkFuIHVuYm91bmRl
ZCBmZW5jZSB3YWl0IiBpcyBhIGRpZmZlcmVudCBjbGFzcyBvZiB3YWl0LiBJdCBpbmRpY2F0ZXMg
YnJva2VuDQo+ID4gaGFyZHdhcmUgdGhhdCBjb250aW51ZXMgdG8gaXNzdWUgRE1BIHRyYW5zYWN0
aW9ucyBldmVuIGFmdGVyIGl0IGhhcyBiZWVuDQo+ID4gdG9sZCB0bw0KPiA+IHN0b3AuDQo+ID4g
DQo+ID4gVGhlIHNlY29uZCB3YWl0IGV4aXN0cyB0byBjYXRjaCBzb2Z0d2FyZSBidWdzIG9yIG1p
c3VzZSwgd2hlcmUgdGhlIGRtYS1idWYNCj4gPiBpbXBvcnRlciBoYXMgbWlzcmVwcmVzZW50ZWQg
aXRzIGNhcGFiaWxpdGllcy4NCj4gPiANCj4gDQo+IE9rYXkgSSBzZWUuDQo+IA0KPiA+ID4NCj4g
PiA+IGFuZCBpdCdkIGJlIGhlbHBmdWwgdG8gcHV0IHNvbWUgd29yZHMgaW4gdGhlIGNvZGUgYmFz
ZWQgb24gd2hhdCdzDQo+ID4gPiBkaXNjdXNzZWQgaGVyZS4NCj4gPiANCj4gPiBXZSd2ZSBkb2N1
bWVudGVkIGFzIG11Y2ggYXMgd2UgY2FuIGluIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpIGFu
ZA0KPiA+IGRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncygpLiBEbyB5b3UgaGF2ZSBhbnkgc3Vn
Z2VzdGlvbnMgb24gd2hhdCBlbHNlDQo+ID4gc2hvdWxkIGJlIGFkZGVkIGhlcmU/DQo+ID4gDQo+
IA0KPiB0aGUgc2VsZWN0aW9uIG9mIDFzPw0KDQpJdCBpcyBpbmRpcmVjdGx5IHdyaXR0ZW4gaW4g
ZGVzY3JpcHRpb24gb2YgV0FSTl9PTigpLCBidXQgbGV0J3MgYWRkDQptb3JlLiBXaGF0IGFib3V0
IHRoZSBmb2xsb3dpbmc/DQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNp
X2RtYWJ1Zi5jIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KaW5kZXggOTM3
OTVhZDJlMDI1Li45NDhiYTc1Mjg4YzYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3ZmaW8vcGNpL3Zm
aW9fcGNpX2RtYWJ1Zi5jDQorKysgYi9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5j
DQpAQCAtMzU3LDcgKzM1NywxMyBAQCB2b2lkIHZmaW9fcGNpX2RtYV9idWZfbW92ZShzdHJ1Y3Qg
dmZpb19wY2lfY29yZV9kZXZpY2UgKnZkZXYsIGJvb2wgcmV2b2tlZCkNCiAgICAgICAgICAgICAg
ICAgICAgICAgIGRtYV9yZXN2X3VubG9jayhwcml2LT5kbWFidWYtPnJlc3YpOw0KICAgICAgICAg
ICAgICAgICAgICAgICAgaWYgKHJldm9rZWQpIHsNCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAga3JlZl9wdXQoJnByaXYtPmtyZWYsIHZmaW9fcGNpX2RtYV9idWZfZG9uZSk7DQotICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIExldCdzIHdhaXQgdGlsbCBhbGwgRE1BIHVu
bWFwIGFyZSBjb21wbGV0ZWQuICovDQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8q
DQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqIExldCdzIHdhaXQgZm9yIDEgc2Vj
b25kIHRpbGwgYWxsIERNQSB1bm1hcA0KKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
KiBhcmUgY29tcGxldGVkLiBJdCBpcyBzdXBwb3NlZCB0byBjYXRjaCBkbWEtYnVmDQorICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAqIGltcG9ydGVycyB3aGljaCBsaWVkIGFib3V0IHRo
ZWlyIHN1cHBvcnQNCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICogb2YgZG1hYnVm
IHJldm9rZS4gU2VlIGRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncygpDQorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAqIGZvciB0aGUgZXhwZWN0ZWQgYmVoYXZpb3VyLA0KKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgKi8NCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgd2FpdCA9IHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCgNCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAmcHJpdi0+Y29tcCwgc2Vjc190b19qaWZmaWVzKDEp
KTsNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyoNCg0KPiANCj4gdGhlbiwNCj4g
DQo+IFJldmlld2VkLWJ5OiBLZXZpbiBUaWFuIDxrZXZpbi50aWFuQGludGVsLmNvbT4NCg0KVGhh
bmtzDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
