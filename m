Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB88EC69F7D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 15:30:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F6CC3F909
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 14:30:20 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by lists.linaro.org (Postfix) with ESMTPS id 5BC993F834
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 14:30:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=fKdIs+dk;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.174 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8b2d56eaaceso324857685a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 06:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763476205; x=1764081005; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gAj/lhLwXUkQIe838UyunLw5D1V/iLtJCJGMnOEEnt8=;
        b=fKdIs+dk+lkRCCfuaPmXGspKQ3AcSRdubPAxS2lKFBh0KYk5Gdf/d8o4j4CcJMJW3p
         jlhlUv3WYz9vNZHWQ9DG4GoyCWWAT0ZldwoPDTH7fPUz+E5u6x6hnqQ1Q4famglcvhMb
         Nou1xNUwNm0Jacxfuh2X3JnaCHKfPxqkEE8SoACUbP/AxcATbmMsLxCShuJEp5flzw97
         vWt24RyJKHlNENvOxK/MM0vX0EIAdoJxBsnygtUSinjOxP0q55P9UJjgnAmkfAjT0DBR
         B277chrN8lQ85jJX7M/6ACDhFXUoWEbhXepEtPVEAfVfcTxT1K8ntMbARo2k0h/6sRdp
         tOgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763476205; x=1764081005;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gAj/lhLwXUkQIe838UyunLw5D1V/iLtJCJGMnOEEnt8=;
        b=un51xueG8i4BOxG8qXAUP0C+PzsB66U3ItpEwO2wvnXY6LKxS6S3WgcnQ0+peyyf7+
         8wTpb6PFod8naIPC9txiPLCYi+CuEcB7L0Srfzv6VjK6wdE3wGqy/gJ+5yJ/1ERghCeZ
         9mGHp/Nn313Mc/jKVA3vTBN9m4HnuVr/u694gxFnyL91yzswSjang4ggyKBGmR8KmdTG
         nGpQWTdTjLY+FrBO1WMgY9fHpvZCpD5htbumwwltcmljoNlzw4ARPuD1D4zG9lD+YvNo
         JJjZv0LSx2fDy8+WMeK9jlgrNGVJMCadw8wCXN6jSyx+7V9SgvppTWqaGN4GxUT1mId/
         oKNg==
X-Forwarded-Encrypted: i=1; AJvYcCW2RrDDG7+d5yiuD9i6SgX9Xx+RvxGf99rlDLgdHSufV0KRV0Frj5Bx0x/qPXpi+ucNXfmJIU9Xg3GmsDEi@lists.linaro.org
X-Gm-Message-State: AOJu0YzRto5EKovLB5ZHGLUkjLoQPgS64eDo/buUaX7YeOUaJdJBLUi3
	0P9kdc4HiRLTAxOsLjSWgUlkloScfO/NhPPla2vtrXK4WK1tVWLkBunolgqV5GWYCRA=
X-Gm-Gg: ASbGncv6eJCwhdbB75Kvt04YCNhpFTkp3VolCq7ffXxA8HazfWKK143yiQi6fKZj0oM
	Nsd8UzkBnrVNKIXGagKFQeId/Gh63YqokpVb4yKf4VaeA204LNFb817m4SAV7rk7gn0TeZwWRqh
	L5+i0x7bu1NSlkbPxg1wtrjAE2s9JJmvA2Gx4hpzCNZY76/wgeN0uXWA9gCqRokbeW05+yxWt1c
	ygUDYCNqOpTPia9uXBKwARbcn+TVKVRgbXQBgg8Zjd4Zv3C8Ps2aWO6BClFDQsQbFdJCuhp/UUT
	NSaMJuqLsE1ZpF4jSp77PGt6sgiCTy3BFwaNAWamx/PapIsficVHqTf2oMr76YRHskuHFwhYcdf
	olma9Bg7t6QY4l1vkPM+fJB5viyrZfp+bLd7I0/IfpIl5e1dlfnD7ZhlcP3qrOpI8hAZ2Z8w9PF
	UyKh6SSXefZaf8JoOBKej+IahdrlYnBhNPR7XulZFC9jxBYpSvJfhPD3fZqNSVwC7pkYM=
X-Google-Smtp-Source: AGHT+IGl2QxjkDkgi5jKGR6lwtLy9hLDUjSd3xhjzd2vh/OGWRtCENW0fUVdt2sQ45uUuO7DIyidjQ==
X-Received: by 2002:a05:622a:4a15:b0:4ed:df82:ca30 with SMTP id d75a77b69052e-4edfc875136mr206770331cf.13.1763476204719;
        Tue, 18 Nov 2025 06:30:04 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-882862d0944sm115395396d6.9.2025.11.18.06.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 06:30:04 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLMiZ-00000000NFZ-1yj6;
	Tue, 18 Nov 2025 10:30:03 -0400
Date: Tue, 18 Nov 2025 10:30:03 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Ankit Agrawal <ankita@nvidia.com>
Message-ID: <20251118143003.GH17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-11-fd9aa5df478f@nvidia.com>
 <SA1PR12MB7199A8A0D17CDC980F819CC6B0D6A@SA1PR12MB7199.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SA1PR12MB7199A8A0D17CDC980F819CC6B0D6A@SA1PR12MB7199.namprd12.prod.outlook.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.174:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ziepe.ca];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[ziepe.ca:dkim,ziepe.ca:mid,ziepe.ca:from_smtp,ziepe.ca:from_mime,mail-qk1-f174.google.com:rdns,mail-qk1-f174.google.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5BC993F834
X-Spamd-Bar: ---
Message-ID-Hash: GCJ7YC36LFZEUUZE5R27SRDPSKJHL7J5
X-Message-ID-Hash: GCJ7YC36LFZEUUZE5R27SRDPSKJHL7J5
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-doc@
 vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 11/11] vfio/nvgrace: Support get_dmabuf_phys
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GCJ7YC36LFZEUUZE5R27SRDPSKJHL7J5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBOb3YgMTgsIDIwMjUgYXQgMDc6NTk6MjBBTSArMDAwMCwgQW5raXQgQWdyYXdhbCB3
cm90ZToNCj4gK8KgwqDCoMKgwqDCoCBpZiAobnZkZXYtPnJlc21lbS5tZW1sZW5ndGggJiYgcmVn
aW9uX2luZGV4ID09IFJFU01FTV9SRUdJT05fSU5ERVgpIHsNCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLyoNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFRoZSBQ
MlAgcHJvcGVydGllcyBvZiB0aGUgbm9uLUJBUiBtZW1vcnkgaXMgdGhlIHNhbWUgYXMgdGhlDQo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBCQVIgbWVtb3J5LCBzbyBqdXN0IHVz
ZSB0aGUgcHJvdmlkZXIgZm9yIGluZGV4IDAuIFNvbWVkYXkNCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAqIHdoZW4gQ1hMIGdldHMgUDJQIHN1cHBvcnQgd2UgY291bGQgY3JlYXRl
IENYTGlzaCBwcm92aWRlcnMNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGZv
ciB0aGUgbm9uLUJBUiBtZW1vcnkuDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Ki8NCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWVtX3JlZ2lvbiA9ICZudmRldi0+
cmVzbWVtOw0KPiArwqDCoMKgwqDCoMKgIH0gZWxzZSBpZiAocmVnaW9uX2luZGV4ID09IFVTRU1F
TV9SRUdJT05fSU5ERVgpIHsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoNCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFRoaXMgaXMgYWN0dWFsbHkgY2FjaGFi
bGUgbWVtb3J5IGFuZCBpc24ndCB0cmVhdGVkIGFzIFAyUCBpbg0KPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICogdGhlIGNoaXAuIEZvciBub3cgd2UgaGF2ZSBubyB3YXkgdG8gcHVz
aCBjYWNoYWJsZSBtZW1vcnkNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHRo
cm91Z2ggZXZlcnl0aGluZyBhbmQgdGhlIEdyYWNlIEhXIGRvZXNuJ3QgY2FyZSB3aGF0IGNhY2hp
bmcNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGF0dHJpYnV0ZSBpcyBwcm9n
cmFtbWVkIGludG8gdGhlIFNNTVUuIFNvIHVzZSBCQVIgMC4NCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAqLw0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtZW1fcmVn
aW9uID0gJm52ZGV2LT51c2VtZW07DQo+ICvCoMKgwqDCoMKgwqAgfQ0KPiArDQo+IA0KPiBDYW4g
d2UgcmVwbGFjZSB0aGlzIHdpdGggbnZncmFjZV9ncHVfbWVtcmVnaW9uKCk/DQoNClllcywgbG9v
a3MgbGlrZQ0KDQpCdXQgd2UgbmVlZCB0byBwcmVzZXJ2ZSB0aGUgY29tbWVudHMgYWJvdmUgYXMg
d2VsbCBzb21laG93Lg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
