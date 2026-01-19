Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F14D3B2D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 17:58:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F31C4400F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 16:58:49 +0000 (UTC)
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
	by lists.linaro.org (Postfix) with ESMTPS id 455483F6B6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 16:58:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=Xz9iVxNF;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.65 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f65.google.com with SMTP id 6a1803df08f44-88a2d21427dso33403866d6.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 08:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768841925; x=1769446725; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ljxKTxaVdu8I0ces4FnKFMKgo+H8JcchtOlXOe2X8IE=;
        b=Xz9iVxNFZkACLbgMABSBRzG4O4qexIqU7VDu71Y7WK3nGDMI3BWnTFujJOg3TXMYWh
         jf4iWXGjFfwaowgSUg3b42F2+OviMCm/SFcLp+EF64Yzq1BRJSRPIVTpIEzkl9ZuuOCm
         rRtpX3bqVunAAbAAkAMzxxQ3vXVLDE1OMS54ABQo1ZIeTV9Fz+cZHqo8ZzCUzeWz037Z
         +Wzor2dpP9SPhLHJD4DAaX7nfQtA9L63nW0wMRKaQ2ZkPyppt3ND+D5B72IUhERFFPkR
         r/g9pargR2/WbvxF32IHmywIhEVtJ6OjtVYqadMtVigpbfr0BnwmOOIFS7WnqWQ8Rk4o
         F/xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768841925; x=1769446725;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ljxKTxaVdu8I0ces4FnKFMKgo+H8JcchtOlXOe2X8IE=;
        b=dzYuUTfn7c7ECBSMnrgV1/jcnCXAgLiCHyoVJnuhgXZASTF1d1EaDoUiudTKtj9Ehm
         sBwM0CxXS30qAthIr6QtDqSXG+orDz3nPAccHE+yQCn69IWxB0kBLE+2PASiFU2U5ECM
         kCj0L9twkt/5xbJHsyBj4GyO3oiKfVUvhjGQ3XBXBaAl/+5dMdlmeHnjywIb60zF0vOw
         5H/fpe61I9ruypHN0BPpYjNw3ZZn5trkFXbHkp7GPcszK7RstpMHsswoLQCE3IQQ2INa
         rby/7f093DcqfFfKa1CjZLPbm11mKyVOYFRm+6+kKbrUYr5FNXUszx0gfa9NUPdnCi73
         woBA==
X-Forwarded-Encrypted: i=1; AJvYcCVm3IhwDzUc4KqZwgKI2eBhbA5GmAJfGxQRxgof8YC/dLgxpeOXhcl2R+FLbiSRJe+a2RGLyxYf4+nPKuR+@lists.linaro.org
X-Gm-Message-State: AOJu0YzQvVmVJsRJ8bo289ZuW2rwV6kL1po0FKiAkqmDin+XNqVz7Igv
	PzQNUh4IPrSMVf9PNueo2AnPJIWWg8MkRLYE2A4KiWSe8+z3B4dUmFzaYTEVriS7VcA=
X-Gm-Gg: AZuq6aKQ9CLSTxGm+MRLYK78T4LeuKXdKUGk1QjuuVm7nwgDGOUYaKsPaxVo7iPRlgi
	Z4SIrBBEDBYsg8gx5wLB9/AUQj/dEEB3tGwIUBk70C4Kw2PJQkZIYzyzg1YlA/eDTu0+An/C6iQ
	kxiJHHgqaBpkXGfUwbOojIVlqbo2dkOi7CLwATXALTsKglTdHqZkM7cCqVSEhE2DMGJSzQ961mg
	j+99HVjDfUq/TRFCkP5Eoe14fUjKlLFHxQri0Cti/TWcfUqlJDaGtU5szyDz9DKs8MJtS2b354c
	CrKspIfAFUmlTHYFlpo+gd1qUWHd1c0DaG4DEA235Nh5CZZbMsp4HE/Q7paXQQVWQ+dSSgPUcOe
	1DEtm/xl7R6tMbGjdjdQILUEDZS0zGtQ81RnXegIMHjRPAYol3P/CRfi9dz1689IRAFuTy7VVJB
	Fm4d++PZl5LdbCpz1SNNkzifEI46jszLkDcYt6rcoyupLvw0t6gVftxjNlYE19xiJ9sk3FpGVBQ
	iTFrA==
X-Received: by 2002:a05:6214:2523:b0:88a:2e39:957e with SMTP id 6a1803df08f44-8942dd9e90fmr129930286d6.57.1768841924690;
        Mon, 19 Jan 2026 08:58:44 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e5e526dsm87021366d6.12.2026.01.19.08.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:58:44 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vhsaR-00000005IQb-2Wqn;
	Mon, 19 Jan 2026 12:58:43 -0400
Date: Mon, 19 Jan 2026 12:58:43 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260119165843.GH961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
X-Rspamd-Queue-Id: 455483F6B6
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.65:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	DWL_DNSWL_BLOCKED(0.00)[ziepe.ca:dkim];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[142.162.112.119:received,209.85.219.65:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OY6E3CL45O4V43HMZTGP7NECL7CWTFUV
X-Message-ID-Hash: OY6E3CL45O4V43HMZTGP7NECL7CWTFUV
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.
 freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OY6E3CL45O4V43HMZTGP7NECL7CWTFUV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDI6MDg6NDRQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBDaGFuZ2Vsb2c6DQo+IHYyOg0KPiAgKiBDaGFuZ2VkIHNlcmllcyB0byBkb2N1
bWVudCB0aGUgcmV2b2tlIHNlbWFudGljcyBpbnN0ZWFkIG9mDQo+ICAgIGltcGxlbWVudGluZyBp
dC4NCj4gdjE6IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDExMS1kbWFidWYtcmV2b2tl
LXYxLTAtZmI0YmNjOGMyNTliQG52aWRpYS5jb20NCj4gDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4g
VGhpcyBzZXJpZXMgZG9jdW1lbnRzIGEgZG1hLWJ1ZiDigJxyZXZva2XigJ0gbWVjaGFuaXNtOiB0
byBhbGxvdyBhIGRtYS1idWYNCj4gZXhwb3J0ZXIgdG8gZXhwbGljaXRseSBpbnZhbGlkYXRlICji
gJxraWxs4oCdKSBhIHNoYXJlZCBidWZmZXIgYWZ0ZXIgaXQgaGFzDQo+IGJlZW4gZGlzdHJpYnV0
ZWQgdG8gaW1wb3J0ZXJzLCBzbyB0aGF0IGZ1cnRoZXIgQ1BVIGFuZCBkZXZpY2UgYWNjZXNzIGlz
DQo+IHByZXZlbnRlZCBhbmQgaW1wb3J0ZXJzIHJlbGlhYmx5IG9ic2VydmUgZmFpbHVyZS4NCj4g
DQo+IFRoZSBjaGFuZ2UgaW4gdGhpcyBzZXJpZXMgaXMgdG8gcHJvcGVybHkgZG9jdW1lbnQgYW5k
IHVzZSBleGlzdGluZyBjb3JlDQo+IOKAnHJldm9rZWTigJ0gc3RhdGUgb24gdGhlIGRtYS1idWYg
b2JqZWN0IGFuZCBhIGNvcnJlc3BvbmRpbmcgZXhwb3J0ZXItdHJpZ2dlcmVkDQo+IHJldm9rZSBv
cGVyYXRpb24uIE9uY2UgYSBkbWEtYnVmIGlzIHJldm9rZWQsIG5ldyBhY2Nlc3MgcGF0aHMgYXJl
IGJsb2NrZWQgc28NCj4gdGhhdCBhdHRlbXB0cyB0byBETUEtbWFwLCB2bWFwLCBvciBtbWFwIHRo
ZSBidWZmZXIgZmFpbCBpbiBhIGNvbnNpc3RlbnQgd2F5Lg0KDQpJIHRoaW5rIGl0IHdvdWxkIGhl
bHAgdG8gZXhwbGFpbiB0aGUgYmlnZ2VyIHBpY3R1cmUgaW4gdGhlIGNvdmVyIGxldHRlcjoNCg0K
DQpETUFCVUYgaGFzIHF1aWV0bHkgYWxsb3dlZCBjYWxsaW5nIG1vdmVfbm90aWZ5IG9uIHBpbm5l
ZCBETUFCVUZzLCBldmVuDQp0aG91Z2ggbGVnYWN5IGltcG9ydGVycyB1c2luZyBkbWFfYnVmX2F0
dGFjaCgpIHdvdWxkIHNpbXBseSBpZ25vcmUNCnRoZXNlIGNhbGxzLg0KDQpSRE1BIHNhdyB0aGlz
IGFuZCBuZWVkZWQgdG8gdXNlIGFsbG93X3BlZXIycGVlcj10cnVlLCBzbyBpbXBsZW1lbnRlZCBh
DQpuZXctc3R5bGUgcGlubmVkIGltcG9ydGVyIHdpdGggYW4gZXhwbGljaXRseSBub24td29ya2lu
ZyBtb3ZlX25vdGlmeSgpDQpjYWxsYmFjay4NCg0KVGhpcyBoYXMgYmVlbiB0b2xlcmFibGUgYmVj
YXVzZSB0aGUgZXhpc3RpbmcgZXhwb3J0ZXJzIGFyZSB0aG91Z2h0IHRvDQpvbmx5IGNhbGwgbW92
ZV9ub3RpZnkoKSBvbiBhIHBpbm5lZCBETUFCVUYgdW5kZXIgUkFTIGV2ZW50cyBhbmQgd2UNCmhh
dmUgYmVlbiB3aWxsaW5nIHRvIHRvbGVyYXRlIHRoZSBVQUYgdGhhdCByZXN1bHRzIGJ5IGFsbG93
aW5nIHRoZQ0KaW1wb3J0ZXIgdG8gY29udGludWUgdG8gdXNlIHRoZSBtYXBwaW5nIGluIHRoaXMg
cmFyZSBjYXNlLg0KDQpWRklPIHdhbnRzIHRvIGltcGxlbWVudCBhIHBpbiBzdXBwb3J0aW5nIGV4
cG9ydGVyIHRoYXQgd2lsbCBpc3N1ZSBhDQpyZXZva2luZyBtb3ZlX25vdGlmeSgpIGFyb3VuZCBG
TFJzIGFuZCBhIGZldyBvdGhlciB1c2VyIHRyaWdnZXJhYmxlDQpvcGVyYXRpb25zLiBTaW5jZSB0
aGlzIGlzIG11Y2ggbW9yZSBjb21tb24gd2UgYXJlIG5vdCB3aWxsaW5nIHRvDQp0b2xlcmF0ZSB0
aGUgc2VjdXJpdHkgVUFGIGNhdXNlZCBieSBpbnRlcndvcmtpbmcgd2l0aA0Kbm9uLW1vdmVfbm90
aWZ5KCkgc3VwcG9ydGluZyBkcml2ZXJzLiBUaHVzIHRpbGwgbm93IFZGSU8gaGFzIHJlcXVpcmVk
DQpkeW5hbWljIGltcG9ydGVycywgZXZlbiB0aG91Z2ggaXQgbmV2ZXIgYWN0dWFsbHkgbW92ZXMg
dGhlIGJ1ZmZlcg0KbG9jYXRpb24uDQoNClRvIGFsbG93IFZGSU8gdG8gd29yayB3aXRoIHBpbm5l
ZCBpbXBvcnRlcnMsIGFjY29yZGluZyB0byBob3cgRE1BQlVGDQp3YXMgaW50ZW5kZWQsIHdlIG5l
ZWQgdG8gYWxsb3cgVkZJTyB0byBkZXRlY3QgaWYgYW4gaW1wb3J0ZXIgaXMgbGVnYWN5DQpvciBS
RE1BIGFuZCBkb2VzIG5vdCBhY3R1YWxseSBpbXBsZW1lbnQgbW92ZV9ub3RpZnkoKS4NCg0KSW50
cm9kdWNlIGEgbmV3IGZ1bmN0aW9uIHRoYXQgZXhwb3J0ZXJzIGNhbiBjYWxsIHRvIGRldGVjdCB0
aGVzZSBsZXNzDQpjYXBhYmxlIGltcG9ydGVycy4gVkZJTyBjYW4gdGhlbiByZWZ1c2UgdG8gYWNj
ZXB0IHRoZW0gZHVyaW5nIGF0dGFjaC4NCg0KSW4gdGhlb3J5IGFsbCBleHBvcnRlcnMgdGhhdCBj
YWxsIG1vdmVfbm90aWZ5KCkgb24gcGlubmVkIERNQUJVRidzDQpzaG91bGQgY2FsbCB0aGlzIGZ1
bmN0aW9uLCBob3dldmVyIHRoYXQgd291bGQgYnJlYWsgYSBudW1iZXIgb2Ygd2lkZWx5DQp1c2Vk
IE5JQy9HUFUgZmxvd3MuIFRodXMgZm9yIG5vdyBkbyBub3Qgc3ByZWFkIHRoaXMgZnVydGhlciB0
aGFuIFZGSU8NCnVudGlsIHdlIGNhbiB1bmRlcnN0YW5kIGhvdyBtdWNoIG9mIFJETUEgY2FuIGlt
cGxlbWVudCB0aGUgZnVsbA0Kc2VtYW50aWMuDQoNCkluIHRoZSBwcm9jZXNzIGNsYXJpZnkgaG93
IG1vdmVfbm90aWZ5IGlzIGludGVuZGVkIHRvIGJlIHVzZWQgd2l0aA0KcGlubmVkIERNQUJVRnMu
DQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
