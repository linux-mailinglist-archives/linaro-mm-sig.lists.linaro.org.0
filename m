Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 905FFD396EB
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 15:16:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58F1E3FDB0
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 14:16:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	by lists.linaro.org (Postfix) with ESMTPS id 9ECE63F7FC
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jan 2026 14:16:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="ZRirNYx/";
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768745806; x=1800281806;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=UudtuDq34MYJqWXnxCgj7hLDUtpJxnIbpapqDIrG7M8=;
  b=ZRirNYx/4PVnhDRkx+qDA3l3Oi/rCJfGBGcxhcPMaw1snstkSSzq9pTi
   sA3sG9m/VPworHsZzfArOKz1S8nw/T5XxnydMm0BK821VgEvLHzRwga1B
   z6wuUuLr1Z9TsadcONWo14ZlfEd7uRCOenlbAIiE53fFKCxJeJHdwmp40
   KA3hfuWoY2DoEGUs/gJR0ilYRHzO+nph8QH4HRIM/Ptmm6b7LIKMEDnk+
   QK9M+JAeTfdXHKOPNG0Pvt/+fJwCfBrwufTMue0OXCQU6Ke/F8ppQD3X/
   mgCeZEIV+ao0BHhL9jt7d5QfLtcr1nKgIAxN43APDt1XTIQbspwBX4tQj
   w==;
X-CSE-ConnectionGUID: 4yIqQTtZRq+c2Y38iJwypQ==
X-CSE-MsgGUID: BQzx/YYERWqCiNkwMsSn4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="80279028"
X-IronPort-AV: E=Sophos;i="6.21,235,1763452800";
   d="scan'208";a="80279028"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2026 06:16:44 -0800
X-CSE-ConnectionGUID: uEuCMJyAT1SPhq5oFgFZ9A==
X-CSE-MsgGUID: YCbX+3UhScWByywIYHhhTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,235,1763452800";
   d="scan'208";a="205264188"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO [10.245.244.5]) ([10.245.244.5])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2026 06:16:38 -0800
Message-ID: <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>,  Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann
 <kraxel@redhat.com>,  Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu	
 <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
  Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, Lucas De Marchi	 <lucas.demarchi@intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian
 <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon
 <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson
 <alex@shazbot.org>
Date: Sun, 18 Jan 2026 15:16:25 +0100
In-Reply-To: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 9ECE63F7FC
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RCVD_IN_DNSWL_MED(-0.20)[198.175.65.11:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PPGNSSYQQCGIOCZWEH5HJAGSDAW5PLJM
X-Message-ID-Hash: PPGNSSYQQCGIOCZWEH5HJAGSDAW5PLJM
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PPGNSSYQQCGIOCZWEH5HJAGSDAW5PLJM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIExlb24sDQoNCk9uIFN1biwgMjAyNi0wMS0xOCBhdCAxNDowOCArMDIwMCwgTGVvbiBSb21h
bm92c2t5IHdyb3RlOg0KPiBDaGFuZ2Vsb2c6DQo+IHYyOg0KPiDCoCogQ2hhbmdlZCBzZXJpZXMg
dG8gZG9jdW1lbnQgdGhlIHJldm9rZSBzZW1hbnRpY3MgaW5zdGVhZCBvZg0KPiDCoMKgIGltcGxl
bWVudGluZyBpdC4NCj4gdjE6DQo+IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDExMS1k
bWFidWYtcmV2b2tlLXYxLTAtZmI0YmNjOGMyNTliQG52aWRpYS5jb20NCj4gDQo+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiAtLS0tDQo+IFRoaXMgc2VyaWVzIGRvY3VtZW50cyBhIGRtYS1idWYg4oCccmV2b2tl
4oCdIG1lY2hhbmlzbTogdG8gYWxsb3cgYSBkbWEtDQo+IGJ1Zg0KPiBleHBvcnRlciB0byBleHBs
aWNpdGx5IGludmFsaWRhdGUgKOKAnGtpbGzigJ0pIGEgc2hhcmVkIGJ1ZmZlciBhZnRlciBpdA0K
PiBoYXMNCj4gYmVlbiBkaXN0cmlidXRlZCB0byBpbXBvcnRlcnMsIHNvIHRoYXQgZnVydGhlciBD
UFUgYW5kIGRldmljZSBhY2Nlc3MNCj4gaXMNCj4gcHJldmVudGVkIGFuZCBpbXBvcnRlcnMgcmVs
aWFibHkgb2JzZXJ2ZSBmYWlsdXJlLg0KPiANCj4gVGhlIGNoYW5nZSBpbiB0aGlzIHNlcmllcyBp
cyB0byBwcm9wZXJseSBkb2N1bWVudCBhbmQgdXNlIGV4aXN0aW5nDQo+IGNvcmUNCj4g4oCccmV2
b2tlZOKAnSBzdGF0ZSBvbiB0aGUgZG1hLWJ1ZiBvYmplY3QgYW5kIGEgY29ycmVzcG9uZGluZyBl
eHBvcnRlci0NCj4gdHJpZ2dlcmVkDQo+IHJldm9rZSBvcGVyYXRpb24uIE9uY2UgYSBkbWEtYnVm
IGlzIHJldm9rZWQsIG5ldyBhY2Nlc3MgcGF0aHMgYXJlDQo+IGJsb2NrZWQgc28NCj4gdGhhdCBh
dHRlbXB0cyB0byBETUEtbWFwLCB2bWFwLCBvciBtbWFwIHRoZSBidWZmZXIgZmFpbCBpbiBhDQo+
IGNvbnNpc3RlbnQgd2F5Lg0KDQpUaGlzIHNvdW5kcyBsaWtlIGl0IGRvZXMgbm90IG1hdGNoIGhv
dyBtYW55IEdQVS1kcml2ZXJzIHVzZSB0aGUNCm1vdmVfbm90aWZ5KCkgY2FsbGJhY2suDQoNCm1v
dmVfbm90aWZ5KCkgd291bGQgdHlwaWNhbGx5IGludmFsaWRhdGUgYW55IGRldmljZSBtYXBzIGFu
ZCBhbnkNCmFzeW5jaHJvbm91cyBwYXJ0IG9mIHRoYXQgaW52YWxpZGF0aW9uIHdvdWxkIGJlIGNv
bXBsZXRlIHdoZW4gdGhlIGRtYS0NCmJ1ZidzIHJlc2VydmF0aW9uIG9iamVjdCBiZWNvbWVzIGlk
bGUgV1JUIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQDQpmZW5jZXMuDQoNCkhvd2V2ZXIsIHRoZSBp
bXBvcnRlciBjb3VsZCwgYWZ0ZXIgb2J0YWluaW5nIHRoZSByZXN2IGxvY2ssIG9idGFpbiBhDQpu
ZXcgbWFwIHVzaW5nIGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoKSwgYW5kIEknZCBhc3N1bWUgdGhl
IENQVSBtYXBzDQp3b3JrIGluIHRoZSBzYW1lIHdheSwgSS5FLiBtb3ZlX25vdGlmeSgpIGRvZXMg
bm90ICpwZXJtYW5lbnRseSogcmV2b2tlDQppbXBvcnRlciBhY2Nlc3MuDQoNCi9UaG9tYXMNCg0K
DQo+IA0KPiBUaGFua3MNCj4gDQo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4g
Q2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZw0KPiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBD
YzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZpcnR1YWxpemF0aW9uQGxp
c3RzLmxpbnV4LmRldg0KPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZw0KPiBDYzogaW9tbXVAbGlzdHMubGludXguZGV2
DQo+IENjOiBrdm1Admdlci5rZXJuZWwub3JnDQo+IFRvOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNl
bXdhbEBsaW5hcm8ub3JnPg0KPiBUbzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KPiBUbzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29t
Pg0KPiBUbzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4gVG86IFNpbW9uYSBW
ZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4NCj4gVG86IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRo
YXQuY29tPg0KPiBUbzogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3Jh
LmNvbT4NCj4gVG86IEd1cmNoZXRhbiBTaW5naCA8Z3VyY2hldGFuc2luZ2hAY2hyb21pdW0ub3Jn
Pg0KPiBUbzogQ2hpYS1JIFd1IDxvbHZhZmZlQGdtYWlsLmNvbT4NCj4gVG86IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+IFRvOiBNYXhpbWUg
UmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+IFRvOiBUaG9tYXMgWmltbWVybWFubiA8dHpp
bW1lcm1hbm5Ac3VzZS5kZT4NCj4gVG86IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPg0KPiBUbzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPg0KPiBUbzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
Pg0KPiBUbzogSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+DQo+IFRvOiBMZW9uIFJvbWFu
b3Zza3kgPGxlb25Aa2VybmVsLm9yZz4NCj4gVG86IEtldmluIFRpYW4gPGtldmluLnRpYW5AaW50
ZWwuY29tPg0KPiBUbzogSm9lcmcgUm9lZGVsIDxqb3JvQDhieXRlcy5vcmc+DQo+IFRvOiBXaWxs
IERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPg0KPiBUbzogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT4NCj4gVG86IEFsZXggV2lsbGlhbXNvbiA8YWxleEBzaGF6Ym90Lm9yZz4NCj4g
DQo+IC0tLQ0KPiBMZW9uIFJvbWFub3Zza3kgKDQpOg0KPiDCoMKgwqDCoMKgIGRtYS1idWY6IFJl
bmFtZSAubW92ZV9ub3RpZnkoKSBjYWxsYmFjayB0byBhIGNsZWFyZXIgaWRlbnRpZmllcg0KPiDC
oMKgwqDCoMKgIGRtYS1idWY6IERvY3VtZW50IHJldm9rZSBzZW1hbnRpY3MNCj4gwqDCoMKgwqDC
oCBpb21tdWZkOiBSZXF1aXJlIERNQUJVRiByZXZva2Ugc2VtYW50aWNzDQo+IMKgwqDCoMKgwqAg
dmZpbzogQWRkIHBpbm5lZCBpbnRlcmZhY2UgdG8gcGVyZm9ybSByZXZva2Ugc2VtYW50aWNzDQo+
IA0KPiDCoGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfMKgIDYgKysrLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RtYV9idWYuYyB8wqAgNCArKy0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92
aXJ0Z3B1X3ByaW1lLmPCoMKgwqDCoMKgIHzCoCAyICstDQo+IMKgZHJpdmVycy9ncHUvZHJtL3hl
L3Rlc3RzL3hlX2RtYV9idWYuY8KgwqDCoMKgwqDCoCB8wqAgNiArKystLS0NCj4gwqBkcml2ZXJz
L2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICst
DQo+IMKgZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuY8KgwqDCoMKgwqDCoCB8
wqAgNCArKy0tDQo+IMKgZHJpdmVycy9pbmZpbmliYW5kL2h3L21seDUvbXIuY8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8wqAgMiArLQ0KPiDCoGRyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5j
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDExICsrKysrKysrKy0tDQo+IMKgZHJpdmVy
cy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuY8KgwqDCoMKgwqDCoMKgwqDCoCB8IDE2ICsrKysr
KysrKysrKysrKysNCj4gwqBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyNQ0KPiArKysrKysrKysrKysrKysrKysrKysrLS0t
DQo+IMKgMTAgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0p
DQo+IC0tLQ0KPiBiYXNlLWNvbW1pdDogOWFjZTQ3NTNhNTIwMmIwMjE5MWQ1NGU5ZmRmN2Y5ZTNk
MDJiODVlYg0KPiBjaGFuZ2UtaWQ6IDIwMjUxMjIxLWRtYWJ1Zi1yZXZva2UtYjkwZWYxNmU0MjM2
DQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IC0twqAgDQo+IExlb24gUm9tYW5vdnNreSA8bGVvbnJv
QG52aWRpYS5jb20+DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
