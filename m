Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 853CFD3B418
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 18:24:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C3663F7D8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 17:24:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	by lists.linaro.org (Postfix) with ESMTPS id 92D3E3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 17:24:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="A7Kh/x2F";
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 198.175.65.18 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768843467; x=1800379467;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=qk3XuufPPEIck/9A121yktRTMzQ3kk4TF/duoWERK0Q=;
  b=A7Kh/x2FeOZ0vfi0QpXM+KbS9sCp87IyGIm85l0+nB69n9TZivGxJK4C
   MJysZX0YmjdiMH/5WahD1ZcDfZMtzEI9c2a3jf55UOw6JlLBuN2jDEC57
   Hyat/tdD6JTYOi88nVgUBCFQT1K0rnPEbxxp7qFAqZ4s9Zf+Ie6Yq/3I9
   8sIwmRjkBTHPfv8c32OlvxaH0tAWM+K9ex9uvcYZaWnn8Z8eFNNTiDPzx
   N6WXDuH+fVQuWMhOKROp7YxTLJTH63CAPhzQztKbxnRGcQo5zLN0AhzP/
   HkBj5M0Hr+ICU2ANQ+I8ct5M0W0o86Df9sXBIUQEXc6ZeBIaMgeiPdoM9
   Q==;
X-CSE-ConnectionGUID: 4MRZFdVERM6h+//LSbsOUQ==
X-CSE-MsgGUID: /ysMWg2MSaS6h9VWvnqBkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70107690"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800";
   d="scan'208";a="70107690"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jan 2026 09:24:26 -0800
X-CSE-ConnectionGUID: cCp8cmdLTFaKiKQxa3/2oQ==
X-CSE-MsgGUID: 4scyjDTQQq6KHTJ1sXWYZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800";
   d="scan'208";a="243499496"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO [10.245.244.32]) ([10.245.244.32])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jan 2026 09:24:19 -0800
Message-ID: <9679639cc7d9c2a27c5529484546faa65013f261.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Date: Mon, 19 Jan 2026 18:24:16 +0100
In-Reply-To: <20260119162424.GE961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
	 <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
	 <20260119075229.GE13201@unreal>
	 <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
	 <20260119162424.GE961572@ziepe.ca>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 92D3E3F6FF
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-9.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[198.175.65.18:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4SSXKHTFKURU5LZPPVCVTRU4PO34NG4J
X-Message-ID-Hash: 4SSXKHTFKURU5LZPPVCVTRU4PO34NG4J
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vge
 r.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4SSXKHTFKURU5LZPPVCVTRU4PO34NG4J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDI2LTAxLTE5IGF0IDEyOjI0IC0wNDAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6
DQo+IE9uIE1vbiwgSmFuIDE5LCAyMDI2IGF0IDEwOjI3OjAwQU0gKzAxMDAsIFRob21hcyBIZWxs
c3Ryw7ZtIHdyb3RlOg0KPiA+IHRoaXMgc291bmRzIGxpa2UgaXQncyBub3QganVzdCB1bmRvY3Vt
ZW50ZWQgYnV0IGFsc28gaW4gc29tZSBjYXNlcw0KPiA+IHVuaW1wbGVtZW50ZWQuIFRoZSB4ZSBk
cml2ZXIgZm9yIG9uZSBkb2Vzbid0IGV4cGVjdCBtb3ZlX25vdGlmeSgpDQo+ID4gdG8gYmUNCj4g
PiBjYWxsZWQgb24gcGlubmVkIGJ1ZmZlcnMsIHNvIGlmIHRoYXQgaXMgaW5kZWVkIGdvaW5nIHRv
IGJlIHBhcnQgb2YNCj4gPiB0aGUNCj4gPiBkbWEtYnVmIHByb3RvY29sLMKgIHdvdWxkbid0IHN1
cHBvcnQgZm9yIHRoYXQgbmVlZCB0byBiZSBhZHZlcnRpc2VkDQo+ID4gYnkNCj4gPiB0aGUgaW1w
b3J0ZXI/DQo+IA0KPiBDYW4geW91IGNsYXJpZnkgdGhpcz8NCj4gDQo+IEkgZG9uJ3Qgc2VlIHhl
J3MgaW1wb3J0ZXIgY2FsbGluZyBkbWFfYnVmX3BpbigpIG9yIGRtYV9idWZfYXR0YWNoKCkNCj4g
b3V0c2lkZSBvZiB0ZXN0cz8gSXQncyBpbXBvcnRlciBpbXBsZW1lbnRzIGEgZnVsbHkgZnVuY3Rp
b25hbCBsb29raW5nDQo+IGR5bmFtaWMgYXR0YWNoIHdpdGggbW92ZV9ub3RpZnkoKT8NCj4gDQo+
IEkgc2VlIHRoZSBleHBvcmVyIGlzIGNoZWNraW5nIGZvciBwaW5uZWQgYW5kIHRoZW4gbm90IGNh
bGxpbmcNCj4gbW92ZV9ub3RpZnkgLSBpcyB0aGF0IHdoYXQgeW91IG1lYW4/DQoNCk5vIGl0IHdh
cyBpZiBtb3ZlX25vdGlmeSgpIGlzIGNhbGxlZCBvbiBhIHBpbm5lZCBidWZmZXIsIHRoaW5ncyB3
aWxsDQpwcm9iYWJseSBibG93IHVwLg0KDQpBbmQgSSB3YXMgdW5kZXIgdGhlIGltcHJlc3Npb24g
dGhhdCB3ZSdkIG1pZ2h0IGJlIHBpbm5pbmcgaW1wb3J0ZWQNCmZyYW1lYnVmZmVycyBidXQgZWl0
aGVyIHdlIGRvbid0IGdldCBhbnkgb2YgdGhvc2Ugb3Igd2UncmUgdXNpbmcgdGhlDQppbmNvcnJl
Y3QgaW50ZXJmYWNlIHRvIHBpbiwgc28gaXQgbWlnaHQgbm90IGJlIGEgYmlnIGlzc3VlIGZyb20g
dGhlIHhlDQpzaWRlLiBOZWVkIHRvIGNoZWNrIHRoaXMuDQoNCkluIGFueSBjYXNlIHdlJ2Qgd2Fu
dCB0byBzdXBwb3J0IHJldm9raW5nIGFsc28gb2YgcGlubmVkIGJ1ZmZlcnMgbW92aW5nDQpmb3J3
YXJkLCBzbyBxdWVzdGlvbiByZWFsbHkgYmVjb21lcyB3aGV0aGVyIGluIHRoZSBtZWFuLXRpbWUg
d2UgbmVlZCB0bw0KZmxhZyBzb21laG93IHRoYXQgd2UgZG9uJ3Qgc3VwcG9ydCBpdC4NCg0KVGhh
bmtzLA0KVGhvbWFzDQoNCg0KPiANCj4gV2hlbiBJIGxvb2tlZCB0aHJvdWdoIGFsbCB0aGUgaW1w
b3J0ZXJzIG9ubHkgUkRNQSBvYnZpb3VzbHkgZGlkbid0DQo+IHN1cHBvcnQgbW92ZV9ub3RpZnkg
b24gcGlubmVkIGJ1ZmZlcnMuDQo+IA0KPiBKYXNvbg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
