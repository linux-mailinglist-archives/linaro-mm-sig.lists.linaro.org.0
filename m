Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C8ED9D3A2E0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 10:27:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A32640140
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 09:27:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	by lists.linaro.org (Postfix) with ESMTPS id 0CBFB3F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 09:27:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=lCUcN4om;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 192.198.163.18 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768814840; x=1800350840;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=1LWdKy0wxcp3AbNhZv5YgZA5HhjEKmlwhhAIxDXEKnI=;
  b=lCUcN4omlnVLN9ToWQL+8Os53D1o+igys0Zvkj+AmwYNh3yNMpzITGQ9
   LKVVm536jQWElFYBWjbDRfuTyXh8OGHIuiEU4bfBL6AEgip3PsMOtekuC
   UgkHnxyiVSuOIpqeUBcCsxK9d5CPOjflvWtNcls+sM3quly4iT2X1QmXD
   +Uj3JsByIjomPs5SNQnPZjQmmNNb9N4sdMNQmASFP0ncAl+HjbB6R/vXS
   9iX11OmRwFl2xgdnPcKoWGJNm3gXpMRhePV3RghoSVq8E/DzsF6o8DxVS
   CpVh4kTALyT5kciHzRfGdvTeWBvfCg85VGKs26DYKE4dLnnbLhnKByW2B
   A==;
X-CSE-ConnectionGUID: VHhQpKqPR0W5rfZ2+ey2QA==
X-CSE-MsgGUID: dVEQnEoOSwiPNRbFVXwmPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69223444"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800";
   d="scan'208";a="69223444"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jan 2026 01:27:19 -0800
X-CSE-ConnectionGUID: wVDcltDLQGSQ0FDWpueWJw==
X-CSE-MsgGUID: rdbnuLpiR2SkFhlwu7xzJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800";
   d="scan'208";a="210835738"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO [10.245.244.32]) ([10.245.244.32])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jan 2026 01:27:11 -0800
Message-ID: <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>
Date: Mon, 19 Jan 2026 10:27:00 +0100
In-Reply-To: <20260119075229.GE13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
	 <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
	 <20260119075229.GE13201@unreal>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 0CBFB3F734
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[192.198.163.18:from];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: NO7ZSD6TW3VT67S7RPU2GYIJTHC2VFI6
X-Message-ID-Hash: NO7ZSD6TW3VT67S7RPU2GYIJTHC2VFI6
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.k
 ernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NO7ZSD6TW3VT67S7RPU2GYIJTHC2VFI6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDI2LTAxLTE5IGF0IDA5OjUyICswMjAwLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6
DQo+IE9uIFN1biwgSmFuIDE4LCAyMDI2IGF0IDAzOjE2OjI1UE0gKzAxMDAsIFRob21hcyBIZWxs
c3Ryw7ZtIHdyb3RlOg0KPiA+IEhpLCBMZW9uLA0KPiA+IA0KPiA+IE9uIFN1biwgMjAyNi0wMS0x
OCBhdCAxNDowOCArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+ID4gQ2hhbmdlbG9n
Og0KPiA+ID4gdjI6DQo+ID4gPiDCoCogQ2hhbmdlZCBzZXJpZXMgdG8gZG9jdW1lbnQgdGhlIHJl
dm9rZSBzZW1hbnRpY3MgaW5zdGVhZCBvZg0KPiA+ID4gwqDCoCBpbXBsZW1lbnRpbmcgaXQuDQo+
ID4gPiB2MToNCj4gPiA+IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDExMS1kbWFidWYt
cmV2b2tlLXYxLTAtZmI0YmNjOGMyNTliQG52aWRpYS5jb20NCj4gPiA+IA0KPiA+ID4gLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0NCj4gPiA+IC0tLS0NCj4gPiA+IC0tLS0NCj4gPiA+IFRoaXMgc2VyaWVzIGRvY3VtZW50cyBh
IGRtYS1idWYg4oCccmV2b2tl4oCdIG1lY2hhbmlzbTogdG8gYWxsb3cgYQ0KPiA+ID4gZG1hLQ0K
PiA+ID4gYnVmDQo+ID4gPiBleHBvcnRlciB0byBleHBsaWNpdGx5IGludmFsaWRhdGUgKOKAnGtp
bGzigJ0pIGEgc2hhcmVkIGJ1ZmZlciBhZnRlcg0KPiA+ID4gaXQNCj4gPiA+IGhhcw0KPiA+ID4g
YmVlbiBkaXN0cmlidXRlZCB0byBpbXBvcnRlcnMsIHNvIHRoYXQgZnVydGhlciBDUFUgYW5kIGRl
dmljZQ0KPiA+ID4gYWNjZXNzDQo+ID4gPiBpcw0KPiA+ID4gcHJldmVudGVkIGFuZCBpbXBvcnRl
cnMgcmVsaWFibHkgb2JzZXJ2ZSBmYWlsdXJlLg0KPiA+ID4gDQo+ID4gPiBUaGUgY2hhbmdlIGlu
IHRoaXMgc2VyaWVzIGlzIHRvIHByb3Blcmx5IGRvY3VtZW50IGFuZCB1c2UNCj4gPiA+IGV4aXN0
aW5nDQo+ID4gPiBjb3JlDQo+ID4gPiDigJxyZXZva2Vk4oCdIHN0YXRlIG9uIHRoZSBkbWEtYnVm
IG9iamVjdCBhbmQgYSBjb3JyZXNwb25kaW5nDQo+ID4gPiBleHBvcnRlci0NCj4gPiA+IHRyaWdn
ZXJlZA0KPiA+ID4gcmV2b2tlIG9wZXJhdGlvbi4gT25jZSBhIGRtYS1idWYgaXMgcmV2b2tlZCwg
bmV3IGFjY2VzcyBwYXRocyBhcmUNCj4gPiA+IGJsb2NrZWQgc28NCj4gPiA+IHRoYXQgYXR0ZW1w
dHMgdG8gRE1BLW1hcCwgdm1hcCwgb3IgbW1hcCB0aGUgYnVmZmVyIGZhaWwgaW4gYQ0KPiA+ID4g
Y29uc2lzdGVudCB3YXkuDQo+ID4gDQo+ID4gVGhpcyBzb3VuZHMgbGlrZSBpdCBkb2VzIG5vdCBt
YXRjaCBob3cgbWFueSBHUFUtZHJpdmVycyB1c2UgdGhlDQo+ID4gbW92ZV9ub3RpZnkoKSBjYWxs
YmFjay4NCj4gDQo+IE5vIGNoYW5nZSBmb3IgdGhlbS4NCj4gDQo+ID4gDQo+ID4gbW92ZV9ub3Rp
ZnkoKSB3b3VsZCB0eXBpY2FsbHkgaW52YWxpZGF0ZSBhbnkgZGV2aWNlIG1hcHMgYW5kIGFueQ0K
PiA+IGFzeW5jaHJvbm91cyBwYXJ0IG9mIHRoYXQgaW52YWxpZGF0aW9uIHdvdWxkIGJlIGNvbXBs
ZXRlIHdoZW4gdGhlDQo+ID4gZG1hLQ0KPiA+IGJ1ZidzIHJlc2VydmF0aW9uIG9iamVjdCBiZWNv
bWVzIGlkbGUgV1JUIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQDQo+ID4gZmVuY2VzLg0KPiANCj4g
VGhpcyBwYXJ0IGhhcyBub3QgY2hhbmdlZCBhbmQgcmVtYWlucyB0aGUgc2FtZSBmb3IgdGhlIHJl
dm9jYXRpb24NCj4gZmxvdyBhcyB3ZWxsLg0KPiANCj4gPiANCj4gPiBIb3dldmVyLCB0aGUgaW1w
b3J0ZXIgY291bGQsIGFmdGVyIG9idGFpbmluZyB0aGUgcmVzdiBsb2NrLCBvYnRhaW4NCj4gPiBh
DQo+ID4gbmV3IG1hcCB1c2luZyBkbWFfYnVmX21hcF9hdHRhY2htZW50KCksIGFuZCBJJ2QgYXNz
dW1lIHRoZSBDUFUgbWFwcw0KPiA+IHdvcmsgaW4gdGhlIHNhbWUgd2F5LCBJLkUuIG1vdmVfbm90
aWZ5KCkgZG9lcyBub3QgKnBlcm1hbmVudGx5Kg0KPiA+IHJldm9rZQ0KPiA+IGltcG9ydGVyIGFj
Y2Vzcy4NCj4gDQo+IFRoaXMgcGFydCBkaXZlcmdlcyBieSBkZXNpZ24gYW5kIGlzIGRvY3VtZW50
ZWQgdG8gbWF0Y2ggcmV2b2tlDQo+IHNlbWFudGljcy7CoCANCj4gSXQgZGVmaW5lcyB3aGF0IG11
c3Qgb2NjdXIgYWZ0ZXIgdGhlIGV4cG9ydGVyIHJlcXVlc3RzIHRoYXQgdGhlDQo+IGJ1ZmZlciBi
ZcKgIA0KPiAia2lsbGVkIi4gQW4gaW1wb3J0ZXIgdGhhdCBmb2xsb3dzIHJldm9rZSBzZW1hbnRp
Y3Mgd2lsbCBub3QgYXR0ZW1wdA0KPiB0byBjYWxswqAgDQo+IGRtYV9idWZfbWFwX2F0dGFjaG1l
bnQoKSwgYW5kIHRoZSBleHBvcnRlciB3aWxsIGJsb2NrIGFueSByZW1hcHBpbmcNCj4gYXR0ZW1w
dHPCoCANCj4gcmVnYXJkbGVzcy4gU2VlIHRoZSBwcml2LT5yZXZva2VkIGZsYWcgaW4gdGhlIFZG
SU8gZXhwb3J0ZXIuDQo+IA0KPiBJbiBhZGRpdGlvbiwgaW4gdGhpcyBlbWFpbCB0aHJlYWQsIENo
cmlzdGlhbiBleHBsYWlucyB0aGF0IHJldm9rZQ0KPiBzZW1hbnRpY3MgYWxyZWFkeSBleGlzdHMs
IHdpdGggdGhlIGNvbWJpbmF0aW9uIG9mIGRtYV9idWZfcGluIGFuZA0KPiBkbWFfYnVmX21vdmVf
bm90aWZ5LCBqdXN0IG5vdCBkb2N1bWVudGVkOg0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvZjdmMTg1NmEtNDRmYS00NGFmLWI0OTYtZWIxMjY3YTA1ZDExQGFtZC5jb20vDQoNCg0KSG1t
LA0KDQpDb25zaWRlcmluZyANCg0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYu
MTktcmM1L3NvdXJjZS9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jI0wxOTIN
Cg0KdGhpcyBzb3VuZHMgbGlrZSBpdCdzIG5vdCBqdXN0IHVuZG9jdW1lbnRlZCBidXQgYWxzbyBp
biBzb21lIGNhc2VzDQp1bmltcGxlbWVudGVkLiBUaGUgeGUgZHJpdmVyIGZvciBvbmUgZG9lc24n
dCBleHBlY3QgbW92ZV9ub3RpZnkoKSB0byBiZQ0KY2FsbGVkIG9uIHBpbm5lZCBidWZmZXJzLCBz
byBpZiB0aGF0IGlzIGluZGVlZCBnb2luZyB0byBiZSBwYXJ0IG9mIHRoZQ0KZG1hLWJ1ZiBwcm90
b2NvbCwgIHdvdWxkbid0IHN1cHBvcnQgZm9yIHRoYXQgbmVlZCB0byBiZSBhZHZlcnRpc2VkIGJ5
DQp0aGUgaW1wb3J0ZXI/DQoNClRoYW5rcywNClRob21hcw0KDQo+IA0KPiBUaGFua3MNCj4gDQo+
ID4gDQo+ID4gL1Rob21hcw0KPiA+IA0KPiA+IA0KPiA+ID4gDQo+ID4gPiBUaGFua3MNCj4gPiA+
IA0KPiA+ID4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPiA+ID4gQ2M6IGRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcNCj4gPiA+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+ID4g
PiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IENjOiB2aXJ0dWFsaXph
dGlvbkBsaXN0cy5saW51eC5kZXYNCj4gPiA+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiA+IENjOiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZw0KPiA+ID4gQ2M6IGlv
bW11QGxpc3RzLmxpbnV4LmRldg0KPiA+ID4gQ2M6IGt2bUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiA+
IFRvOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiA+ID4gVG86IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gPiA+IFRvOiBBbGV4
IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+DQo+ID4gPiBUbzogRGF2aWQgQWly
bGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4gPiA+IFRvOiBTaW1vbmEgVmV0dGVyIDxzaW1vbmFA
ZmZ3bGwuY2g+DQo+ID4gPiBUbzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+DQo+
ID4gPiBUbzogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4N
Cj4gPiA+IFRvOiBHdXJjaGV0YW4gU2luZ2ggPGd1cmNoZXRhbnNpbmdoQGNocm9taXVtLm9yZz4N
Cj4gPiA+IFRvOiBDaGlhLUkgV3UgPG9sdmFmZmVAZ21haWwuY29tPg0KPiA+ID4gVG86IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiBU
bzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KPiA+ID4gVG86IFRob21hcyBa
aW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiA+ID4gVG86IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiA+ID4gVG86IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IFRvOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gPiBUbzogSmFzb24gR3VudGhvcnBlIDxq
Z2dAemllcGUuY2E+DQo+ID4gPiBUbzogTGVvbiBSb21hbm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+
DQo+ID4gPiBUbzogS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+DQo+ID4gPiBUbzog
Sm9lcmcgUm9lZGVsIDxqb3JvQDhieXRlcy5vcmc+DQo+ID4gPiBUbzogV2lsbCBEZWFjb24gPHdp
bGxAa2VybmVsLm9yZz4NCj4gPiA+IFRvOiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0u
Y29tPg0KPiA+ID4gVG86IEFsZXggV2lsbGlhbXNvbiA8YWxleEBzaGF6Ym90Lm9yZz4NCj4gPiA+
IA0KPiA+ID4gLS0tDQo+ID4gPiBMZW9uIFJvbWFub3Zza3kgKDQpOg0KPiA+ID4gwqDCoMKgwqDC
oCBkbWEtYnVmOiBSZW5hbWUgLm1vdmVfbm90aWZ5KCkgY2FsbGJhY2sgdG8gYSBjbGVhcmVyDQo+
ID4gPiBpZGVudGlmaWVyDQo+ID4gPiDCoMKgwqDCoMKgIGRtYS1idWY6IERvY3VtZW50IHJldm9r
ZSBzZW1hbnRpY3MNCj4gPiA+IMKgwqDCoMKgwqAgaW9tbXVmZDogUmVxdWlyZSBETUFCVUYgcmV2
b2tlIHNlbWFudGljcw0KPiA+ID4gwqDCoMKgwqDCoCB2ZmlvOiBBZGQgcGlubmVkIGludGVyZmFj
ZSB0byBwZXJmb3JtIHJldm9rZSBzZW1hbnRpY3MNCj4gPiA+IA0KPiA+ID4gwqBkcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA2
ICsrKy0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1
Zi5jIHzCoCA0ICsrLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3By
aW1lLmPCoMKgwqDCoMKgIHzCoCAyICstDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0
cy94ZV9kbWFfYnVmLmPCoMKgwqDCoMKgwqAgfMKgIDYgKysrLS0tDQo+ID4gPiDCoGRyaXZlcnMv
Z3B1L2RybS94ZS94ZV9kbWFfYnVmLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0N
Cj4gPiA+IMKgZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuY8KgwqDCoMKgwqDC
oCB8wqAgNCArKy0tDQo+ID4gPiDCoGRyaXZlcnMvaW5maW5pYmFuZC9ody9tbHg1L21yLmPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0NCj4gPiA+IMKgZHJpdmVycy9pb21tdS9pb21t
dWZkL3BhZ2VzLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTEgKysrKysrKysrLS0N
Cj4gPiA+IMKgZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuY8KgwqDCoMKgwqDCoMKg
wqDCoCB8IDE2DQo+ID4gPiArKysrKysrKysrKysrKysrDQo+ID4gPiDCoGluY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDI1DQo+
ID4gPiArKysrKysrKysrKysrKysrKysrKysrLS0tDQo+ID4gPiDCoDEwIGZpbGVzIGNoYW5nZWQs
IDYwIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPiA+ID4gLS0tDQo+ID4gPiBiYXNl
LWNvbW1pdDogOWFjZTQ3NTNhNTIwMmIwMjE5MWQ1NGU5ZmRmN2Y5ZTNkMDJiODVlYg0KPiA+ID4g
Y2hhbmdlLWlkOiAyMDI1MTIyMS1kbWFidWYtcmV2b2tlLWI5MGVmMTZlNDIzNg0KPiA+ID4gDQo+
ID4gPiBCZXN0IHJlZ2FyZHMsDQo+ID4gPiAtLcKgIA0KPiA+ID4gTGVvbiBSb21hbm92c2t5IDxs
ZW9ucm9AbnZpZGlhLmNvbT4NCj4gPiA+IA0KPiA+IA0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
