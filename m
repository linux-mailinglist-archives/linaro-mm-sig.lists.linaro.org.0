Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Bw1AW+HcGkEYQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 08:59:43 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 83441532AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 08:59:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4302240175
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 07:59:41 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4364F3F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 07:59:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dfyuJlQZ;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A89F043E8F;
	Wed, 21 Jan 2026 07:59:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9A6FC116D0;
	Wed, 21 Jan 2026 07:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768982374;
	bh=lEy1yZ/ijqL0f8O4r3b/+kmhBy9GW/pNUeqgzBHM/dA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dfyuJlQZbT+khgy1UNrCtf//gRr41b5TeKPoiYg80AS6Fc/HmDd3VwtiI+5NSenuw
	 2Spobvzc4gCbVDeqXVaQQbRwrS6+CHKVy3XbpOJDk9mphG7a3wdXKInoc7n0OfcKWE
	 8SWHbICqvKTijL1hBIfRy4blDhgnKn5Fu+boDiKbghi+pmOrn0ZdSCoarjSE6+E1nR
	 24AKgBy+Kh5VI/MLAyjcYTcRF130zk6/0Xf1/w1d4GVohJUI57MraMOfQ3eptReL80
	 6JZuVHv3OQrm+n2zA8FnYBMhG1FJ8jnjl2gjc7wulNG8aRh7RUGCDXECKS4I2EibU8
	 Rp2oext3FgQ8w==
Date: Wed, 21 Jan 2026 09:59:29 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <20260121075929.GU13201@unreal>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <aW/pQmOO8komCgOK@lstrano-desk.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aW/pQmOO8komCgOK@lstrano-desk.jf.intel.com>
X-Spamd-Bar: ---
Message-ID-Hash: 3F7W6EGFIXCUCXXPR6SUYMDUX3CI3H2Q
X-Message-ID-Hash: 3F7W6EGFIXCUCXXPR6SUYMDUX3CI3H2Q
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@list
 s.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3F7W6EGFIXCUCXXPR6SUYMDUX3CI3H2Q/>
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
	RCPT_COUNT_TWELVE(0.00)[34];
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
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,list,lists.linaro.org,lists.freedesktop.org,lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email]
X-Rspamd-Queue-Id: 83441532AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBKYW4gMjAsIDIwMjYgYXQgMTI6NDQ6NTBQTSAtMDgwMCwgTWF0dGhldyBCcm9zdCB3
cm90ZToNCj4gT24gVHVlLCBKYW4gMjAsIDIwMjYgYXQgMDQ6MDc6MDZQTSArMDIwMCwgTGVvbiBS
b21hbm92c2t5IHdyb3RlOg0KPiA+IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRp
YS5jb20+DQo+ID4gDQo+ID4gZG1hLWJ1ZiBpbnZhbGlkYXRpb24gaXMgcGVyZm9ybWVkIGFzeW5j
aHJvbm91c2x5IGJ5IGhhcmR3YXJlLCBzbyBWRklPIG11c3QNCj4gPiB3YWl0IHVudGlsIGFsbCBh
ZmZlY3RlZCBvYmplY3RzIGhhdmUgYmVlbiBmdWxseSBpbnZhbGlkYXRlZC4NCj4gPiANCj4gPiBG
aXhlczogNWQ3NDc4MWViYzg2ICgidmZpby9wY2k6IEFkZCBkbWEtYnVmIGV4cG9ydCBzdXBwb3J0
IGZvciBNTUlPIHJlZ2lvbnMiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8
bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvdmZpby9wY2kvdmZpb19w
Y2lfZG1hYnVmLmMgfCA1ICsrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFi
dWYuYyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCj4gPiBpbmRleCBkNGQw
ZjdkMDhjNTMuLjMzYmM2YTE5MDlkZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3ZmaW8vcGNp
L3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+ID4gKysrIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9k
bWFidWYuYw0KPiA+IEBAIC0zMjEsNiArMzIxLDkgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX21v
dmUoc3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBib29sIHJldm9rZWQpDQo+ID4g
IAkJCWRtYV9yZXN2X2xvY2socHJpdi0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4gPiAgCQkJcHJp
di0+cmV2b2tlZCA9IHJldm9rZWQ7DQo+ID4gIAkJCWRtYV9idWZfbW92ZV9ub3RpZnkocHJpdi0+
ZG1hYnVmKTsNCj4gPiArCQkJZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KHByaXYtPmRtYWJ1Zi0+cmVz
diwNCj4gPiArCQkJCQkgICAgICBETUFfUkVTVl9VU0FHRV9LRVJORUwsIGZhbHNlLA0KPiA+ICsJ
CQkJCSAgICAgIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsNCj4gDQo+IFNob3VsZCB3ZSBleHBsaWNp
dGx5IGNhbGwgb3V0IGluIHRoZSBkbWFfYnVmX21vdmVfbm90aWZ5KCkgLw0KPiBpbnZhbGlkYXRl
X21hcHBpbmdzIGtlcm5lbC1kb2MgdGhhdCBLRVJORUwgc2xvdHMgYXJlIHRoZSBtZWNoYW5pc20N
Cj4gZm9yIGNvbW11bmljYXRpbmcgYXN5bmNocm9ub3VzIGRtYV9idWZfbW92ZV9ub3RpZnkgLw0K
PiBpbnZhbGlkYXRlX21hcHBpbmdzIGV2ZW50cyB2aWEgZmVuY2VzPw0KPiANCj4gWWVzLCB0aGlz
IGlzIHByb2JhYmx5IGltcGxpZWQsIGJ1dCBpdCB3b3VsZG7igJl0IGh1cnQgdG8gc3RhdGUgdGhp
cw0KPiBleHBsaWNpdGx5IGFzIHBhcnQgb2YgdGhlIGNyb3NzLWRyaXZlciBjb250cmFjdC4NCj4g
DQo+IEhlcmUgaXMgd2hhdCB3ZSBoYXZlIG5vdzoNCj4gDQo+ICAJICogLSBEeW5hbWljIGltcG9y
dGVycyBzaG91bGQgc2V0IGZlbmNlcyBmb3IgYW55IGFjY2VzcyB0aGF0IHRoZXkgY2FuJ3QNCj4g
CSAqICAgZGlzYWJsZSBpbW1lZGlhdGVseSBmcm9tIHRoZWlyICZkbWFfYnVmX2F0dGFjaF9vcHMu
aW52YWxpZGF0ZV9tYXBwaW5ncw0KPiAgCSAqICAgY2FsbGJhY2suDQoNCkkgYmVsaWV2ZSBJIGRv
Y3VtZW50ZWQgdGhpcyBpbiBwYXRjaCA0Og0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjYwMTIwLWRtYWJ1Zi1yZXZva2UtdjMtNC1iN2UwYjA3YjgyMTRAbnZpZGlhLmNvbS8iDQpJcyB0
aGVyZSBhbnl0aGluZyBlbHNlIHRoYXQgc2hvdWxkIGJlIGFkZGVkPw0KDQogIDEyNzUgLyoqDQog
IDEyNzYgICogZG1hX2J1Zl9tb3ZlX25vdGlmeSAtIG5vdGlmeSBhdHRhY2htZW50cyB0aGF0IERN
QS1idWYgaXMgbW92aW5nDQogIDEyNzcgICoNCiAgMTI3OCAgKiBAZG1hYnVmOiAgICAgW2luXSAg
ICBidWZmZXIgd2hpY2ggaXMgbW92aW5nDQogIDEyNzkgICoNCiAgMTI4MCAgKiBJbmZvcm1zIGFs
bCBhdHRhY2htZW50cyB0aGF0IHRoZXkgbmVlZCB0byBkZXN0cm95IGFuZCByZWNyZWF0ZSBhbGwg
dGhlaXINCiAgMTI4MSAgKiBtYXBwaW5ncy4gSWYgdGhlIGF0dGFjaG1lbnQgaXMgZHluYW1pYyB0
aGVuIHRoZSBkeW5hbWljIGltcG9ydGVyIGlzIGV4cGVjdGVkDQogIDEyODIgICogdG8gaW52YWxp
ZGF0ZSBhbnkgY2FjaGVzIGl0IGhhcyBvZiB0aGUgbWFwcGluZyByZXN1bHQgYW5kIHBlcmZvcm0g
YSBuZXcNCiAgMTI4MyAgKiBtYXBwaW5nIHJlcXVlc3QgYmVmb3JlIGFsbG93aW5nIEhXIHRvIGRv
IGFueSBmdXJ0aGVyIERNQS4NCiAgMTI4NCAgKg0KICAxMjg1ICAqIElmIHRoZSBhdHRhY2htZW50
IGlzIHBpbm5lZCB0aGVuIHRoaXMgaW5mb3JtcyB0aGUgcGlubmVkIGltcG9ydGVyIHRoYXQNCiAg
MTI4NiAgKiB0aGUgdW5kZXJseWluZyBtYXBwaW5nIGlzIG5vIGxvbmdlciBhdmFpbGFibGUuIFBp
bm5lZCBpbXBvcnRlcnMgbWF5IHRha2UNCiAgMTI4NyAgKiB0aGlzIGlzIGFzIGEgcGVybWFuZW50
IHJldm9jYXRpb24gc28gZXhwb3J0ZXJzIHNob3VsZCBub3QgdHJpZ2dlciBpdA0KICAxMjg4ICAq
IGxpZ2h0bHkuDQogIDEyODkgICoNCiAgMTI5MCAgKiBGb3IgbGVnYWN5IHBpbm5lZCBpbXBvcnRl
cnMgdGhhdCBjYW5ub3Qgc3VwcG9ydCBpbnZhbGlkYXRpb24gdGhpcyBpcyBhIE5PUC4NCiAgMTI5
MSAgKiBEcml2ZXJzIGNhbiBjYWxsIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpIHRvIGRldGVy
bWluZSBpZiB0aGUgaW1wb3J0ZXINCiAgMTI5MiAgKiBzdXBwb3J0cyB0aGlzLg0KICAxMjkzICAq
DQogIDEyOTQgICogTk9URTogVGhlIGludmFsaWRhdGlvbiB0cmlnZ2VycyBhc3luY2hyb25vdXMg
SFcgb3BlcmF0aW9uIGFuZCB0aGUgY2FsbGVycw0KICAxMjk1ICAqIG5lZWQgdG8gd2FpdCBmb3Ig
dGhpcyBvcGVyYXRpb24gdG8gY29tcGxldGUgYnkgY2FsbGluZw0KICAxMjk2ICAqIHRvIGRtYV9y
ZXN2X3dhaXRfdGltZW91dCgpLg0KICAxMjk3ICAqLw0KDQpUaGFua3MNCg0KDQo+IA0KPiBNYXR0
DQo+IA0KPiA+ICAJCQlkbWFfcmVzdl91bmxvY2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4gPiAg
CQl9DQo+ID4gIAkJZnB1dChwcml2LT5kbWFidWYtPmZpbGUpOw0KPiA+IEBAIC0zNDIsNiArMzQ1
LDggQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX2NsZWFudXAoc3RydWN0IHZmaW9fcGNpX2NvcmVf
ZGV2aWNlICp2ZGV2KQ0KPiA+ICAJCXByaXYtPnZkZXYgPSBOVUxMOw0KPiA+ICAJCXByaXYtPnJl
dm9rZWQgPSB0cnVlOw0KPiA+ICAJCWRtYV9idWZfbW92ZV9ub3RpZnkocHJpdi0+ZG1hYnVmKTsN
Cj4gPiArCQlkbWFfcmVzdl93YWl0X3RpbWVvdXQocHJpdi0+ZG1hYnVmLT5yZXN2LCBETUFfUkVT
Vl9VU0FHRV9LRVJORUwsDQo+ID4gKwkJCQkgICAgICBmYWxzZSwgTUFYX1NDSEVEVUxFX1RJTUVP
VVQpOw0KPiA+ICAJCWRtYV9yZXN2X3VubG9jayhwcml2LT5kbWFidWYtPnJlc3YpOw0KPiA+ICAJ
CXZmaW9fZGV2aWNlX3B1dF9yZWdpc3RyYXRpb24oJnZkZXYtPnZkZXYpOw0KPiA+ICAJCWZwdXQo
cHJpdi0+ZG1hYnVmLT5maWxlKTsNCj4gPiANCj4gPiAtLSANCj4gPiAyLjUyLjANCj4gPiANCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
