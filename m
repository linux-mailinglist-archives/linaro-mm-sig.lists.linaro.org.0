Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCVGG1gNe2nqAwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jan 2026 08:33:44 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B1CACBB7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jan 2026 08:33:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B774F401C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jan 2026 07:33:42 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id EF0DF3F721
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jan 2026 07:33:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nd7XKBpW;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5FF8D41AF1;
	Thu, 29 Jan 2026 07:33:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81028C4CEF7;
	Thu, 29 Jan 2026 07:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769672016;
	bh=QBIwpAtD3x2QlngJHpmtfy+I0xZag8/IoNN2nefvD44=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nd7XKBpWVASqj2PQ5+O26lNzR2owwrjZ+UFhzwzV5C7rfonAJCymlbkRGjNsekjom
	 he9rYeseZjNSy/0uUsYtu2rE0V9B2obwvYr84gMEMsIXfMHbRpIOLQG8VKcUj1EDWG
	 RCL32sfCprWk7ujIe52D/CGmaJLCftvBy9NNCh9toQxOiXhsAaRnM3ffpkajAH1ZpM
	 fXNq2C3mRiG9ylqGldO5M8PS6KozilVEFN97LtMCnv+QZPbZmSb3kvTLNumwZq3+2a
	 cXHUw1JolJPAOY7ZZE4cbJzciDN3W68iIBcC3s0kcCkl9sD9ehst1O+sHirdqoPJBu
	 OQUMpJRWtxn7A==
Date: Thu, 29 Jan 2026 09:33:31 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20260129073331.GB10992@unreal>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <aXfUZcSEr9N18o6w@google.com>
 <20260127085835.GQ13967@unreal>
 <20260127162754.GH1641016@ziepe.ca>
 <BN9PR11MB5276B99D4E8C6496B0C447888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN9PR11MB5276B99D4E8C6496B0C447888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Spamd-Bar: ---
Message-ID-Hash: CYKNOH724QUN2OXJ2PZQ2KT5RDGQWOH6
X-Message-ID-Hash: CYKNOH724QUN2OXJ2PZQ2KT5RDGQWOH6
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Pranjal Shrivastava <praan@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-media@vger.kernel.org" <l
 inux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "virtualization@lists.linux.dev" <virtualization@lists.linux.dev>, "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CYKNOH724QUN2OXJ2PZQ2KT5RDGQWOH6/>
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
	NEURAL_HAM(-0.00)[-0.940];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ziepe.ca,google.com,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:email]
X-Rspamd-Queue-Id: F0B1CACBB7
X-Rspamd-Action: no action

T24gVGh1LCBKYW4gMjksIDIwMjYgYXQgMDc6MDY6MzdBTSArMDAwMCwgVGlhbiwgS2V2aW4gd3Jv
dGU6DQo+ID4gRnJvbTogSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+DQo+ID4gU2VudDog
V2VkbmVzZGF5LCBKYW51YXJ5IDI4LCAyMDI2IDEyOjI4IEFNDQo+ID4gDQo+ID4gT24gVHVlLCBK
YW4gMjcsIDIwMjYgYXQgMTA6NTg6MzVBTSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0K
PiA+ID4gPiA+IEBAIC0zMzMsNyArMzU5LDM3IEBAIHZvaWQgdmZpb19wY2lfZG1hX2J1Zl9tb3Zl
KHN0cnVjdA0KPiA+IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBib29sIHJldm9rZWQpDQo+
ID4gPiA+ID4gIAkJCWRtYV9yZXN2X2xvY2socHJpdi0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4g
PiA+ID4gPiAgCQkJcHJpdi0+cmV2b2tlZCA9IHJldm9rZWQ7DQo+ID4gPiA+ID4gIAkJCWRtYV9i
dWZfaW52YWxpZGF0ZV9tYXBwaW5ncyhwcml2LT5kbWFidWYpOw0KPiA+ID4gPiA+ICsJCQlkbWFf
cmVzdl93YWl0X3RpbWVvdXQocHJpdi0+ZG1hYnVmLT5yZXN2LA0KPiA+ID4gPiA+ICsJCQkJCSAg
ICAgIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQLA0KPiA+IGZhbHNlLA0KPiA+ID4gPiA+ICsJCQkJ
CSAgICAgIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsNCj4gPiA+ID4gPiAgCQkJZG1hX3Jlc3ZfdW5s
b2NrKHByaXYtPmRtYWJ1Zi0+cmVzdik7DQo+ID4gPiA+ID4gKwkJCWlmIChyZXZva2VkKSB7DQo+
ID4gPiA+ID4gKwkJCQlrcmVmX3B1dCgmcHJpdi0+a3JlZiwNCj4gPiB2ZmlvX3BjaV9kbWFfYnVm
X2RvbmUpOw0KPiA+ID4gPiA+ICsJCQkJLyogTGV0J3Mgd2FpdCB0aWxsIGFsbCBETUEgdW5tYXAg
YXJlDQo+ID4gY29tcGxldGVkLiAqLw0KPiA+ID4gPiA+ICsJCQkJd2FpdCA9IHdhaXRfZm9yX2Nv
bXBsZXRpb25fdGltZW91dCgNCj4gPiA+ID4gPiArCQkJCQkmcHJpdi0+Y29tcCwgc2Vjc190b19q
aWZmaWVzKDEpKTsNCj4gPiA+ID4NCj4gPiA+ID4gSXMgdGhlIDEtc2Vjb25kIGNvbnN0YW50IHN1
ZmZpY2llbnQgZm9yIGFsbCBoYXJkd2FyZSwgb3Igc2hvdWxkIHRoZQ0KPiA+ID4gPiBpbnZhbGlk
YXRlX21hcHBpbmdzKCkgY29udHJhY3QgcmVxdWlyZSB0aGUgY2FsbGJhY2sgdG8gYmxvY2sgdW50
aWwNCj4gPiA+ID4gc3BlY3VsYXRpdmUgcmVhZHMgYXJlIHN0cmljdGx5IGZlbmNlZD8gSSdtIHdv
bmRlcmluZyBhYm91dCBhIGNhc2Ugd2hlcmUNCj4gPiA+ID4gYSBkZXZpY2UncyBmaXJtd2FyZSBo
YXMgYSBoaWdoIHJlc3BvbnNlIGxhdGVuY3ksIHBlcmhhcHMgZHVlIHRvIGludGVybmFsDQo+ID4g
PiA+IG1hbmFnZW1lbnQgdGFza3MgbGlrZSBlcnJvciByZWNvdmVyeSBvciB0aGVybWFsIGFuZCBp
dCBleGNlZWRzIHRoZSAxcw0KPiA+ID4gPiB0aW1lb3V0Lg0KPiA+ID4gPg0KPiA+ID4gPiBJZiB0
aGUgZGV2aWNlIGlzIGluIHRoZSBtaWRkbGUgb2YgYSBsYXJnZSBETUEgYnVyc3QgYW5kIHRoZSBm
aXJtd2FyZSBpcw0KPiA+ID4gPiBzbG93IHRvIGZsdXNoIHRoZSBpbnRlcm5hbCBwaXBlbGluZXMg
dG8gYSBmdWxseSAicXVpZXNjZWQiDQo+ID4gPiA+IHJlYWQtYW5kLWRpc2NhcmQgc3RhdGUsIHJl
Y2xhaW1pbmcgdGhlIG1lbW9yeSBhdCBleGFjdGx5IDEuMDAxIHNlY29uZHMNCj4gPiA+ID4gcmlz
a3MgdHJpZ2dlcmluZyBwbGF0Zm9ybS1sZXZlbCBmYXVsdHMuLg0KPiA+ID4gPg0KPiA+ID4gPiBT
aW5jZSB0aGUgd2VuIGV4cGxpY2l0bHkgcGVybWl0IHRoZXNlIHNwZWN1bGF0aXZlIHJlYWRzIHVu
dGlsIHVubWFwIGlzDQo+ID4gPiA+IGNvbXBsZXRlLCByZWx5aW5nIG9uIGEgaGFyZGNvZGVkIHRp
bWVvdXQgaW4gdGhlIGV4cG9ydGVyIHNlZW1zIHRvDQo+ID4gPiA+IGludHJvZHVjZSBhIGhhcmR3
YXJlLWRlcGVuZGVudCByYWNlIGNvbmRpdGlvbiB0aGF0IGNvdWxkIGNvbXByb21pc2UNCj4gPiA+
ID4gc3lzdGVtIHN0YWJpbGl0eSB2aWEgSU9NTVUgZXJyb3JzIG9yIEFFUiBmYXVsdHMuDQo+ID4g
PiA+DQo+ID4gPiA+IFNob3VsZCB0aGUgaW1wb3J0ZXIgaW5zdGVhZCBiZSByZXF1aXJlZCB0byBn
dWFyYW50ZWUgdGhhdCBhbGwNCj4gPiA+ID4gc3BlY3VsYXRpdmUgYWNjZXNzIGhhcyBjZWFzZWQg
YmVmb3JlIHRoZSBpbnZhbGlkYXRpb24gY2FsbCByZXR1cm5zPw0KPiA+ID4NCj4gPiA+IEl0IGlz
IGd1YXJhbnRlZWQgYnkgdGhlIGRtYV9yZXN2X3dhaXRfdGltZW91dCgpIGNhbGwgYWJvdmUuIFRo
YXQgY2FsbA0KPiA+IGVuc3VyZXMNCj4gPiA+IHRoYXQgdGhlIGhhcmR3YXJlIGhhcyBjb21wbGV0
ZWQgYWxsIHBlbmRpbmcgb3BlcmF0aW9ucy4gVGhlIDHigJFzZWNvbmQNCj4gPiBkZWxheSBpcw0K
PiA+ID4gbWVhbnQgdG8gY2F0Y2ggY2FzZXMgd2hlcmUgYW4gaW4ta2VybmVsIERNQSB1bm1hcCBj
YWxsIGlzIG1pc3NpbmcsIHdoaWNoDQo+ID4gc2hvdWxkDQo+ID4gPiBub3QgdHJpZ2dlciBhbnkg
RE1BIGFjdGl2aXR5IGF0IHRoYXQgcG9pbnQuDQo+ID4gDQo+ID4gQ2hyaXN0aWFuIG1heSBrbm93
IGFjdHVhbCBleGFtcGxlcywgYnV0IG15IGdlbmVyYWwgZmVlbGluZyBpcyBoZSB3YXMNCj4gPiB3
b3JyeWluZyBhYm91dCBkcml2ZXJzIHRoYXQgaGF2ZSBwdXNoZWQgdGhlIERNQUJVRiB0byB2aXNp
YmlsaXR5IG9uDQo+ID4gdGhlIEdQVSBhbmQgdGhlIG1vdmUgbm90aWZ5ICYgZmVuY2VzIG9ubHkg
c2hvb3QgZG93biBzb21lIGFjY2Vzcy4gU28NCj4gPiBpdCBoYXMgdG8gd2FpdCB1bnRpbCB0aGUg
RE1BQlVGIGlzIGZpbmFsbHkgdW5tYXBwZWQuDQo+ID4gDQo+ID4gUHJhbmphbCdzIGV4YW1wbGUg
c2hvdWxkIGJlIGNvdmVyZWQgYnkgdGhlIGRyaXZlciBhZGRpbmcgYSBmZW5jZSBhbmQNCj4gPiB0
aGVuIHRoZSB1bmJvdW5kZWQgZmVuY2Ugd2FpdCB3aWxsIGNvbXBsZXRlIGl0Lg0KPiA+IA0KPiAN
Cj4gQmVhciBtZSBpZiBpdCdzIGFuIGlnbm9yYW50IHF1ZXN0aW9uLg0KPiANCj4gVGhlIGNvbW1p
dCBtc2cgb2YgcGF0Y2g2IHNheXMgdGhhdCBWRklPIGRvZXNuJ3QgdG9sZXJhdGUgdW5ib3VuZGVk
DQo+IHdhaXQsIHdoaWNoIGlzIHRoZSByZWFzb24gYmVoaW5kIHRoZSAybmQgdGltZW91dCB3YWl0
IGhlcmUuDQoNCkl0IGlzIG5vdCBhY2N1cmF0ZS4gQSBzZWNvbmQgdGltZW91dCBpcyBwcmVzZW50
IGJvdGggaW4gdGhlDQpkZXNjcmlwdGlvbiBvZiBwYXRjaCA2IGFuZCBpbiBWRklPIGltcGxlbWVu
dGF0aW9uLiBUaGUgZGlmZmVyZW5jZSBpcw0KdGhhdCB0aGUgdGltZW91dCBpcyBlbmZvcmNlZCB3
aXRoaW4gVkZJTy4NCg0KPiANCj4gVGhlbiB3aHkgaXMgInRoZSB1bmJvdW5kZWQgZmVuY2Ugd2Fp
dCIgbm90IGEgcHJvYmxlbSBpbiB0aGUgc2FtZQ0KPiBjb2RlIHBhdGg/IHRoZSB1c2Ugb2YgTUFY
X1NDSEVEVUxFX1RJTUVPVVQgaW1wbHkgYSB3b3JzdC1jYXNlDQo+IHRpbWVvdXQgaW4gaHVuZHJl
ZHMgb2YgeWVhcnMuLi4NCg0KIkFuIHVuYm91bmRlZCBmZW5jZSB3YWl0IiBpcyBhIGRpZmZlcmVu
dCBjbGFzcyBvZiB3YWl0LiBJdCBpbmRpY2F0ZXMgYnJva2VuDQpoYXJkd2FyZSB0aGF0IGNvbnRp
bnVlcyB0byBpc3N1ZSBETUEgdHJhbnNhY3Rpb25zIGV2ZW4gYWZ0ZXIgaXQgaGFzIGJlZW4gdG9s
ZCB0bw0Kc3RvcC4NCg0KVGhlIHNlY29uZCB3YWl0IGV4aXN0cyB0byBjYXRjaCBzb2Z0d2FyZSBi
dWdzIG9yIG1pc3VzZSwgd2hlcmUgdGhlIGRtYS1idWYNCmltcG9ydGVyIGhhcyBtaXNyZXByZXNl
bnRlZCBpdHMgY2FwYWJpbGl0aWVzLg0KDQo+IA0KPiBhbmQgaXQnZCBiZSBoZWxwZnVsIHRvIHB1
dCBzb21lIHdvcmRzIGluIHRoZSBjb2RlIGJhc2VkIG9uIHdoYXQncw0KPiBkaXNjdXNzZWQgaGVy
ZS4NCg0KV2UndmUgZG9jdW1lbnRlZCBhcyBtdWNoIGFzIHdlIGNhbiBpbiBkbWFfYnVmX2F0dGFj
aF9yZXZvY2FibGUoKSBhbmQNCmRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncygpLiBEbyB5b3Ug
aGF2ZSBhbnkgc3VnZ2VzdGlvbnMgb24gd2hhdCBlbHNlDQpzaG91bGQgYmUgYWRkZWQgaGVyZT8N
Cg0KVGhhbmtzDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
