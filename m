Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEP8GuC+gGl3AgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Feb 2026 16:12:32 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D162DCDF9D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Feb 2026 16:12:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFF3F3F7FD
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Feb 2026 15:12:30 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by lists.linaro.org (Postfix) with ESMTPS id E919E3F795
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Feb 2026 15:12:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=VRH2ufYP;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.172 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-5014e1312c6so29109521cf.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Feb 2026 07:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770045143; x=1770649943; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xO0aL+oRN74yVSsHQO79QNqtu9/dj8jxjzC/60StG/Q=;
        b=VRH2ufYPYQWOZ5ACh3WM8NaUIpHEunkminjT5EK0jsRLdQgVbCaUm9XQYwt9/LDA1j
         u1aDqjHPjKRvwq8ClXw8YCPa1kRjYwkSaqkO8VZ9oGntZUq0qyX+nLXH0RfnRKG/6OKC
         hLrqlH+q/wyecnde2oKwqKLSj3Tc6T1PsgTWflw9v1e50D+jpg0ZgsGigo2aJ8zdtoRi
         vcF5ScGY9Ws/JB6I2ED/XdclkWT9RUKX6tBbmWfV57LeuQzUXaaKAuLhmttRVxC4U4K1
         6Ff//H0cHwRtdH3FbrhNuQ5l8MibD2U0Lg/s9nf94pfC4fTF2z8fcQgDcZzjqVFSFf2t
         ZcDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770045143; x=1770649943;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xO0aL+oRN74yVSsHQO79QNqtu9/dj8jxjzC/60StG/Q=;
        b=gWJ6zbsZEc8qcAQ4j7DnTyJXOnAdV+CynhLZlA0Bv5h/srjLHhn3Tw0o1oJqIa/1qz
         IwUyHQR6wg4vW2u595GllezutxbEFqnpnfccvA14Fxljsjn0Md7WUt7Y6OsIHJIN10M7
         SZZiUEv3ZD0Uw2uETPRzZ63dMvGi888+6kFO9b9402AUgqJmCHNVKd34u6DoqeuqPXrV
         HtSU61c81ehTOV7iVq2mkrxcNDQB2Svfoxt24qKEUqW0mhSzrempJNfcJ+n+vKyUATol
         hn9cU1H54tsJdBsWNwPjApEzaJgrLv9a3mEUG+BLu3PsbctwcT2S6qmpvRNB91mtt0ug
         U5uw==
X-Forwarded-Encrypted: i=1; AJvYcCVF/cBAzT8pM8WdGk8K+lRq4aplBwK+jk3soxfyhNRJOQemqVNB2rXG/1ng8uyc9jIL+bOWYLlF+FG/ZiAO@lists.linaro.org
X-Gm-Message-State: AOJu0YyiiMF2m/XAgYOjEIIhKo6zF2EL3keeK4SHJR3OQk7e8dgTxTCI
	Schrx9IHRKO788sg7CRKIbsCBuiOUtMv1FFF+IPi5OmeZwubhIOQtQ5PRklAYRaHLwo=
X-Gm-Gg: AZuq6aLpPGvowG8h6GpOmoGsAlKVV4/923A1HcnKzrGolWP36RXRsTIae2dDCKW0mHE
	JTyjnzCWqV4bQOrvX/2FhzSCsa8LltESN8ZRVwfM+5gXg0ay+X95uHs7521/2G12Cs6EqPOtJGA
	Y+pKlJuklxX2LkoFZXGYWtMiV0AP9T1Kr/L4ug0LgcwomX9GmGmsTYLfcOaG1br3DMV+mG66+Ut
	bwNHbq1yewG7Yw30e7XZbNTFs6Hi35FE2muCP8vAMEzF7A7xrE8rqGIB3mEQHf5L8peXskO+kNy
	XS1ZLxzE+p3opFsgS3KzDGCFJhOQYvGpIT8JGRFZLY5FQ+XE7+kkTFzJ8kE4jwKkYwsnxKu8nxD
	hy3XBpoX4z5hB3A414Qc/SljdOAriB3Hx4xtvWzcWfPtne4BO/zjq+d/78MMguKlBkg1AFZpQc4
	EpjGKxpvsdgJovvf/VQP7Rttongbp7dRynGEPljgyXoUa7Xbm1q1/pzXyuDhAQVRf5QDE=
X-Received: by 2002:a05:622a:1993:b0:4ee:1903:367b with SMTP id d75a77b69052e-505d214ba65mr150834861cf.5.1770045143271;
        Mon, 02 Feb 2026 07:12:23 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50337bb9d21sm106856261cf.26.2026.02.02.07.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:12:22 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vmvbB-0000000FJuI-3Zxp;
	Mon, 02 Feb 2026 11:12:21 -0400
Date: Mon, 2 Feb 2026 11:12:21 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260202151221.GH2328995@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <31872c87-5cba-4081-8196-72cc839c6122@amd.com>
 <20260130130131.GO10992@unreal>
 <d25bead8-8372-4791-a741-3371342f4698@amd.com>
 <20260130135618.GC2328995@ziepe.ca>
 <d1dce6c1-9a89-4ae4-90eb-7b6d8cdcdd91@amd.com>
 <20260130144415.GE2328995@ziepe.ca>
 <c976c33c-4fa7-4350-8dcc-a5c218d1b0d6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c976c33c-4fa7-4350-8dcc-a5c218d1b0d6@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: 5KGZGJW3VYUY32674GSU4HDATWITEPAH
X-Message-ID-Hash: 5KGZGJW3VYUY32674GSU4HDATWITEPAH
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5KGZGJW3VYUY32674GSU4HDATWITEPAH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: D162DCDF9D
X-Rspamd-Action: no action

T24gTW9uLCBGZWIgMDIsIDIwMjYgYXQgMDk6NDI6MjJBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8zMC8yNiAxNTo0NCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiA+
IE9uIEZyaSwgSmFuIDMwLCAyMDI2IGF0IDAzOjExOjQ4UE0gKzAxMDAsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6DQo+ID4+IE9uIDEvMzAvMjYgMTQ6NTYsIEphc29uIEd1bnRob3JwZSB3cm90ZToN
Cj4gPj4+IE9uIEZyaSwgSmFuIDMwLCAyMDI2IGF0IDAyOjIxOjA4UE0gKzAxMDAsIENocmlzdGlh
biBLw7ZuaWcgd3JvdGU6DQo+ID4+Pg0KPiA+Pj4+IFRoYXQgd291bGQgd29yayBmb3IgbWUuDQo+
ID4+Pj4NCj4gPj4+PiBRdWVzdGlvbiBpcyBpZiB5b3UgcmVhbGx5IHdhbnQgdG8gZG8gaXQgdGhp
cyB3YXk/IFNlZSB1c3VhbGx5DQo+ID4+Pj4gZXhwb3J0ZXJzIHRyeSB0byBhdm9pZCBibG9ja2lu
ZyBzdWNoIGZ1bmN0aW9ucy4NCj4gPj4+DQo+ID4+PiBZZXMsIGl0IGhhcyB0byBiZSB0aGlzIHdh
eSwgcmV2b2tlIGlzIGEgc3luY2hyb25vdXMgdXNlciBzcGFjZQ0KPiA+Pj4gdHJpZ2dlcmVkIG9w
ZXJhdGlvbiBhcm91bmQgdGhpbmdzIGxpa2UgRkxSIG9yIGRldmljZSBjbG9zZS4gV2UgY2FuJ3QN
Cj4gPj4+IGRlZmVyIGl0IGludG8gc29tZSBiYWNrZ3JvdW5kIG9wZXJhdGlvbiBsaWtlIHBtLg0K
PiA+Pg0KPiA+PiBZZWFoLCBidXQgeW91IG9ubHkgbmVlZCB0aGF0IGluIGEgY291cGxlIG9mIHVz
ZSBjYXNlcyBhbmQgbm90IGFsbC4NCj4gPiANCj4gPiBOb3QgYWxsLCB0aGF0IGlzIHdoeSB0aGUg
ZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKCkgaXMgdGhlcmUgdG8NCj4gPiBkaXN0aW5ndWlzaCB0
aGlzIGNhc2UgZnJvbSBvdGhlcnMuDQo+IA0KPiBObywgbm8gdGhhdCdzIG5vdCB3aGF0IEkgbWVh
bi4NCj4gDQo+IFNlZSBvbiB0aGUgb25lIGhhbmQgeW91IGhhdmUgcnVudGltZSBQTSB3aGljaCBh
dXRvbWF0aWNhbGx5IHNodXRzDQo+IGRvd24geW91ciBkZXZpY2UgYWZ0ZXIgc29tZSB0aW1lIHdo
ZW4gdGhlIGxhc3QgdXNlciBzdG9wcyB1c2luZyBpdC4NCj4gDQo+IFRoZW4gb24gdGhlIG90aGVy
IGhhbmQgeW91IGhhdmUgYW4gaW50ZW50aW9uYWwgcmV2b2tlIHRyaWdnZXJlZCBieQ0KPiB1c2Vy
c3BhY2UuDQo+IA0KPiBBcyBmYXIgYXMgSSd2ZSByZWFkIHVwIG9uIHRoZSBjb2RlIGN1cnJlbnRs
eSBib3RoIGFyZSBoYW5kbGVkIHRoZQ0KPiBzYW1lIHdheSwgYW5kIHRoYXQgZG9lc24ndCBzb3Vu
ZCBjb3JyZWN0IHRvIG1lLg0KPiANCj4gUnVudGltZSBQTSBzaG91bGQgKm5vdCogdHJpZ2dlciBh
dXRvbWF0aWNhbGx5IHdoZW4gdGhlcmUgYXJlIHN0aWxsDQo+IG1hcHBpbmdzIG9yIGV2ZW4gRE1B
LWJ1ZnMgaW4gZXhpc3RlbmNlIGZvciB0aGUgVkZJTyBkZXZpY2UuDQoNCkknbSBhIGxpdHRsZSBj
b25mdXNlZCB3aHkgd2UgYXJlIHRhbGtpbmcgYWJvdXQgcnVudGltZSBQTSAtIGFyZSB5b3UNCnBv
aW50aW5nIG91dCBhbiBpc3N1ZSBpbiBWRklPIHRvZGF5IHdoZXJlIGl0J3MgUE0gc3VwcG9ydCBp
cyBub3QgZ29vZD8NCg0KSSBhZG1pdCBJIGRvbid0IGtub3cgYSBsb3QgYWJvdXQgVkZJTyBQTSBz
dXBwb3J0Li4gVGhvdWdoIEkgdGhvdWdodCBpbg0KdGhlIFZGSU8gY2FzZSBQTSB3YXMgYWN0dWFs
bHkgdW5kZXIgdXNlcnNwYWNlIGNvbnRyb2wgYXMgZ2VuZXJhbGx5IHRoZQ0KUE0gY29udHJvbCBp
cyBkZWxlZ2F0ZWQgdG8gdGhlIFZNLg0KDQpUaHJvdWdoIHRoYXQgbGVucywgd2hhdCBpcyBoYXBw
ZW5pbmcgaGVyZSBpcyBjb3JyZWN0LiBJZiB0aGUgVk0NCnJlcXVlc3RzIHRvIHNodXQgZG93biBW
RklPIFBNICh0aHJvdWdoIGEgaHlwZXJ2aXNvciB2ZmlvIGlvY3RsKSB0aGVuDQp3ZSBkbyB3YW50
IHRvIHJldm9rZSB0aGUgRE1BQlVGIHNvIHRoYXQgdGhlIFZNIGNhbid0IHRyaWdnZXIgYSBBRVIv
ZXRjDQpieSB0cnlpbmcgdG8gYWNjZXNzIHRoZSBzbGVlcGluZyBQQ0kgZGV2aWNlLg0KDQpJIGRv
bid0IHRoaW5rIFZGSU8gdXNlcyBhdXRvbWF0aWMgUE0gb24gYSB0aW1lciwgdGhhdCBkb2Vzbid0
IG1ha2UNCnNlbnNlIGZvciBpdCdzIHByb2dyYW1taW5nIG1vZGVsLg0KDQpKYXNvbg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
