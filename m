Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 41747D3A25E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 10:04:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 40CA73F734
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 09:04:53 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id BB09D3F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 09:04:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=e33bUuuF;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2140A44114;
	Mon, 19 Jan 2026 09:04:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B57CC116C6;
	Mon, 19 Jan 2026 09:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768813486;
	bh=9ibwmwir6DNuwcFVFVRMrnxNeKv3ejBMBmArbCsPm6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e33bUuuFuYAfNmaAVBINTTMiHDitg3Ewo284Wv30/72Z5sl3bIG03XiqzmmtksV2N
	 E9d2cJoHjdjKYaYooTlSPB4iJpWVL91L1AN491690/uRHfcmT6wUBbopZdfCbx77Px
	 Q3HC1qDJGA9Pt3HYbxuqrUGdEozMHTi5LrmTjFyJYKE+R+M0iAaeaStvmIivkeGtTZ
	 mxhJNSrhHrd2zaHDTg7GSf/GrHIQaeet8ghZgUq43q6WrWChlkPf5q6E/9m4Skchfc
	 5l1Di/szMWkD2gAlw1okBT15wo+lo6dJX8Dgm6WcIx/IrIDWLVWHnzHUEXQ9299Wj5
	 PA/zo+uxfkTlQ==
Date: Mon, 19 Jan 2026 11:04:40 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20260119090440.GG13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
 <8bc75706c18c410f9564805c487907aba0aab627.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8bc75706c18c410f9564805c487907aba0aab627.camel@linux.intel.com>
X-Rspamd-Queue-Id: BB09D3F734
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Q3MH2AP2EW7FY4EGFMIG3N67HUJOMLSE
X-Message-ID-Hash: Q3MH2AP2EW7FY4EGFMIG3N67HUJOMLSE
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.k
 ernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q3MH2AP2EW7FY4EGFMIG3N67HUJOMLSE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDM6Mjk6MDJQTSArMDEwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQo+IE9uIFN1biwgMjAyNi0wMS0xOCBhdCAxNDowOCArMDIwMCwgTGVvbiBSb21h
bm92c2t5IHdyb3RlOg0KPiA+IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5j
b20+DQo+ID4gDQo+ID4gRG9jdW1lbnQgYSBETUEtYnVmIHJldm9rZSBtZWNoYW5pc20gdGhhdCBh
bGxvd3MgYW4gZXhwb3J0ZXIgdG8NCj4gPiBleHBsaWNpdGx5DQo+ID4gaW52YWxpZGF0ZSAoImtp
bGwiKSBhIHNoYXJlZCBidWZmZXIgYWZ0ZXIgaXQgaGFzIGJlZW4gaGFuZGVkIG91dCB0bw0KPiA+
IGltcG9ydGVycy4gT25jZSByZXZva2VkLCBhbGwgZnVydGhlciBDUFUgYW5kIGRldmljZSBhY2Nl
c3MgaXMNCj4gPiBibG9ja2VkLCBhbmQNCj4gPiBpbXBvcnRlcnMgY29uc2lzdGVudGx5IG9ic2Vy
dmUgZmFpbHVyZS4NCj4gDQo+IFNlZSBwcmV2aW91cyBjb21tZW50IFdSVCB0aGlzLg0KPiANCj4g
PiANCj4gPiBUaGlzIHJlcXVpcmVzIGJvdGggaW1wb3J0ZXJzIGFuZCBleHBvcnRlcnMgdG8gaG9u
b3IgdGhlIHJldm9rZQ0KPiA+IGNvbnRyYWN0Lg0KPiA+IA0KPiA+IEZvciBpbXBvcnRlcnMsIHRo
aXMgbWVhbnMgaW1wbGVtZW50aW5nIC5pbnZhbGlkYXRlX21hcHBpbmdzKCkgYW5kDQo+ID4gY2Fs
bGluZw0KPiA+IGRtYV9idWZfcGluKCkgYWZ0ZXIgdGhlIERNQeKAkWJ1ZiBpcyBhdHRhY2hlZCB0
byB2ZXJpZnkgdGhlIGV4cG9ydGVy4oCZcw0KPiA+IHN1cHBvcnQNCj4gPiBmb3IgcmV2b2NhdGlv
bi4NCj4gDQo+IFdoeSB3b3VsZCB0aGUgaW1wb3J0ZXIgd2FudCB0byB2ZXJpZnkgdGhlIGV4cG9y
dGVyJ3Mgc3VwcG9ydCBmb3INCj4gcmV2b2NhdGlvbj8gSWYgdGhlIGV4cG9ydGVyIGRvZXNuJ3Qg
c3VwcG9ydCBpdCwgdGhlIG9ubHkgY29uc2VxdWVuY2UNCj4gd291bGQgYmUgdGhhdCBpbnZhbGlk
YXRlX21hcHBpbmdzKCkgd291bGQgbmV2ZXIgYmUgY2FsbGVkLCBhbmQgdGhhdA0KPiBkbWFfYnVm
X3BpbigpIGlzIGEgTk9QLiBCZXNpZGVzLCBkbWFfYnVmX3BpbigpIHdvdWxkIG5vdCByZXR1cm4g
YW4NCj4gZXJyb3IgaWYgdGhlIGV4cG9ydGVyIGRvZXNuJ3QgaW1wbGVtZW50IHRoZSBwaW4oKSBj
YWxsYmFjaz8NCg0KVGhlIGlkZWEgaXMgdGhhdCBib3RoIHNob3VsZCBkbyByZXZva2UgYW5kIHRo
ZXJlIGlzIGEgbmVlZCB0byBpbmRpY2F0ZQ0KdGhhdCB0aGlzIGV4cG9ydGVyIGhhcyBzb21lIGV4
cGVjdGF0aW9ucyBmcm9tIHRoZSBpbXBvcnRlcnMuIE9uZSBvZiB0aGVtDQppcyB0aGF0IGludmFs
aWRhdGVfbWFwcGluZ3MgZXhpc3RzLg0KDQpUaGFua3MNCg0KPiANCj4gT3IgcGVyaGFwcyBJIG1p
c3NlZCBhIHByZXJlcSBwYXRjaD8NCj4gDQo+IFRoYW5rcywNCj4gVGhvbWFzDQo+IA0KPiANCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
