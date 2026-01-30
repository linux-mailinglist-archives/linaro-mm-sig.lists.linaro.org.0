Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNS2L8jDfGmgOgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 15:44:24 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F5ABBB0C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 15:44:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7308840171
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:44:23 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by lists.linaro.org (Postfix) with ESMTPS id B66C03F75A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 14:44:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=o8pxGBoa;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.177 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8c70ce93afaso242625485a.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 06:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769784256; x=1770389056; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UlIFC23S9unnjQhVGEC3vUha1a+Kfy5xxpLqRiUCtvQ=;
        b=o8pxGBoa10/wz6MxQNYPlNS3ZPWOvfEWqz7ukWCy6tZuYlLWIkrKI827pttSr+VpSd
         5VzvvM3AY1Bs1Ic9pWeRG3U+Gqe/ZouPUuD5Pj6PQCohsdY7zY1YM8e9tlpIK1Cc5Xww
         3FokoAaS7b38TqA4El88g+ADv+4Hjcyla38+a+8nV97Aiac4l/ffiQCGo7aIz6TyuQPh
         RPN5IJhtkxzPelbjj6luLX3QshK6woNMZhNWwK1bNyfatdV2O6oejd0f3RBAMSa0DBNy
         xNx0nHkHgKGNHNaYGuF+doaKzh48T82Y34hDiy5svEGcR6z0r7pKHrflK74QcND8lrTk
         8Nlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769784256; x=1770389056;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UlIFC23S9unnjQhVGEC3vUha1a+Kfy5xxpLqRiUCtvQ=;
        b=K8kfjrvgVBHQ0zqNuRduk/AHD+aJxNsMndlBoFTScj/6fip9FGbC6bSIXwqvKKWq9O
         ZBO4J5/22ThAADWyRQIU/kVujKRY7fUK0QcHZTW9uL7400V5uHN+0qRbxgDh5SvV9p5A
         kTdLIdfZtqkPIKlb4dEuIW9QU1NbdSxGqIwpnbIicxcgkKG/EO2czWzKVDtqLUPY76Pm
         OIxjv1/2yAbIBEwaL+eHSvotsQ/ssg7HpM5+Zai5TndsN1X4ijmoqJX9gbxln1AgwKun
         dhrlmWYC/QDmW076YVJU1dSYhwaiIfjHC6HriqBIyGSnrrnnfmRLIM4XRiHadLX5fs9C
         umKw==
X-Forwarded-Encrypted: i=1; AJvYcCUjTdzR9Y+jC4nMKaYaEoWJzXuuQNuJo7y42y8TS9vdpQ+HilRhmSN50pZtxTpJiDJP5R6zNobXZkKKyhxC@lists.linaro.org
X-Gm-Message-State: AOJu0Yx1/yftTep6esWxAmq6Uy639drMVypqFJiNufB5U9ed10UE2U2Y
	CLzd+78MumokfzZl5D9jMCd5xAHXITN2R6CXS5xxxTqhECHP9VPFLbrUVElDyvJvvjo=
X-Gm-Gg: AZuq6aIRl+3PWhOV/c5A/A8XleovUOe+Q4wPYEVv4fZuPcW1Hgp42278a1Hb9tCWFtp
	RV48IvAKkCHSFHjB5QPVrjf8LlX3f53ukl+ukXjg7jD+9/3eEjDQkYnVupnty5On+YvpA1IeBVM
	GPtfy7g5vWoE6F7VdqgQxzfCghWIEBnLuwsF64fKkA28rsSUx7vW/aEqQu0kIVMgc8UgKMq2M9M
	deH/U3EqQOK8uBbgvwnSe0XSWT82X8+oLnxtIYq66r2SJ//L+UMYGJwZrkSfm7Pe5YsgGU8SVCO
	jUe5k4m/uRVU8WXtI0kO007jn7l1cx6GwPgaCjkffHRnNjPwOUID4v7yXfKA0KvNZ/gVWZlcAu4
	YV00P6UbIfTv5eHPDUiyaZci+x0tXlsI9BkPq6C9+ot2aBUg5/EK1/mN36iHq7t+TX0FjpWs2RB
	L2KJBKxzHjP4Sz1RKcEQyc4aypGM9rx6rd0TZSm1qaCc9GXLRogNor7a/xNvccrxg31Ys=
X-Received: by 2002:ac8:7f0f:0:b0:501:51b6:cd3e with SMTP id d75a77b69052e-505d21a4775mr39321141cf.29.1769784256186;
        Fri, 30 Jan 2026 06:44:16 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5033745c426sm56137391cf.7.2026.01.30.06.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 06:44:15 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vlpjL-0000000B0t1-0Fhg;
	Fri, 30 Jan 2026 10:44:15 -0400
Date: Fri, 30 Jan 2026 10:44:15 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260130144415.GE2328995@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <31872c87-5cba-4081-8196-72cc839c6122@amd.com>
 <20260130130131.GO10992@unreal>
 <d25bead8-8372-4791-a741-3371342f4698@amd.com>
 <20260130135618.GC2328995@ziepe.ca>
 <d1dce6c1-9a89-4ae4-90eb-7b6d8cdcdd91@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1dce6c1-9a89-4ae4-90eb-7b6d8cdcdd91@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: H3O5ZP55MURMV7AQNX7GYM3BDO3TBYNI
X-Message-ID-Hash: H3O5ZP55MURMV7AQNX7GYM3BDO3TBYNI
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H3O5ZP55MURMV7AQNX7GYM3BDO3TBYNI/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid]
X-Rspamd-Queue-Id: 52F5ABBB0C
X-Rspamd-Action: no action

T24gRnJpLCBKYW4gMzAsIDIwMjYgYXQgMDM6MTE6NDhQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8zMC8yNiAxNDo1NiwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiA+
IE9uIEZyaSwgSmFuIDMwLCAyMDI2IGF0IDAyOjIxOjA4UE0gKzAxMDAsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6DQo+ID4gDQo+ID4+IFRoYXQgd291bGQgd29yayBmb3IgbWUuDQo+ID4+DQo+ID4+
IFF1ZXN0aW9uIGlzIGlmIHlvdSByZWFsbHkgd2FudCB0byBkbyBpdCB0aGlzIHdheT8gU2VlIHVz
dWFsbHkNCj4gPj4gZXhwb3J0ZXJzIHRyeSB0byBhdm9pZCBibG9ja2luZyBzdWNoIGZ1bmN0aW9u
cy4NCj4gPiANCj4gPiBZZXMsIGl0IGhhcyB0byBiZSB0aGlzIHdheSwgcmV2b2tlIGlzIGEgc3lu
Y2hyb25vdXMgdXNlciBzcGFjZQ0KPiA+IHRyaWdnZXJlZCBvcGVyYXRpb24gYXJvdW5kIHRoaW5n
cyBsaWtlIEZMUiBvciBkZXZpY2UgY2xvc2UuIFdlIGNhbid0DQo+ID4gZGVmZXIgaXQgaW50byBz
b21lIGJhY2tncm91bmQgb3BlcmF0aW9uIGxpa2UgcG0uDQo+IA0KPiBZZWFoLCBidXQgeW91IG9u
bHkgbmVlZCB0aGF0IGluIGEgY291cGxlIG9mIHVzZSBjYXNlcyBhbmQgbm90IGFsbC4NCg0KTm90
IGFsbCwgdGhhdCBpcyB3aHkgdGhlIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpIGlzIHRoZXJl
IHRvDQpkaXN0aW5ndWlzaCB0aGlzIGNhc2UgZnJvbSBvdGhlcnMuDQoNCkphc29uDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
