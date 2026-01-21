Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLAwDknScGkOaAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:19:05 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C67E95770C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:19:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6BD240150
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 13:19:03 +0000 (UTC)
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
	by lists.linaro.org (Postfix) with ESMTPS id DDD593F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 13:18:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=GN2H0S82;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.193 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f193.google.com with SMTP id af79cd13be357-8c538d17816so846595285a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 05:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769001534; x=1769606334; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wNQCHIWEBRMpiFqsZYjt880FRkRpyp1yzlc3O4lUKsM=;
        b=GN2H0S82Skl43UquqezC3OY1u+u0sGzAHepWg0JuYo/rvNDpzHTshavIWqrfENnsPr
         mC4vytD7tre6FVPMYas1ESlfpl+c6M1RIPHVbf/JgmVoFJqVwd88/8CRzGbKFpoHbi50
         UG46GUYcSQinOjtmVfCmFcuEi+Up+NnXKPMtJ+OnM6DmfYFJMtplLN2bnHalFB4M6HhA
         Ods6zSL8Hm+Tq6rJtxs/oH4YHKp4NRB88wD7kqG5j/P3zNhIcllduM3iUNHG2gwWn9g4
         qRFfdKJr0b66ItG5rOlYcJtUYINqQZQv/RhVVKJLHuhgasLbHIyfsTb/prPcbMVkvzJE
         zXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769001534; x=1769606334;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wNQCHIWEBRMpiFqsZYjt880FRkRpyp1yzlc3O4lUKsM=;
        b=ENKMWtnzkVq6a+zJ7GFW/HeiO+uw4IncLtpF/qOYWPKUUuvRxvvLH6K4lzJWxcvKxt
         zpbWfLWQaCFv5l2i50pa8jXpHoKD86qszd2HDsUPIcd9wuDBIFeLCHhrlQtXk4PU9nm3
         3puJOwhbuMWfTZP51jiCQyKI2VpmAc2gd+eS+FZSPMEsDRFxaixpGGDyuTZRDBpEI+QL
         wfPHVEhzq5vuEta6VEiciLcb8Q9RevRtyHDESlrhCGlVTtZULZ/N06G0KSHJv8914A2p
         jDbPND+0NWnRtRA4340wTb9FsUjC7yF+4ZQFtI4TIAjJApsgK1K6e6tLNkMaLwWJYwyk
         5vsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOLXTNYYz6Mq+Wag41nu5aaZ/hBJaOvtPQB9/e5Q4278PSXh90LqtfIguJhY3xShOvIceJotItotInLynj@lists.linaro.org
X-Gm-Message-State: AOJu0YyFMI/GzXau5wacxtXdmTym4X2F0oNAfFly0sFeWyDbbBYbCsxa
	aVROHiioqSbmvIf4gAolmS8vr8/Zqga+UOadnC02X35K0V+dAGVTqayBPS3wHWpLY/Y=
X-Gm-Gg: AZuq6aJqF9K4v64Wqyopt4dmkCWzmS/qtxP3+5208QZtN4oMTd5Ao2Kx98zKzuAVroG
	8W1bvgX/qodbVHECt9s7lU05Ojn05/ZJVZklsRvkPq4oTM9kfUPICuujK63SxbqpvjUKgwTfqkW
	AkENxOo4vHCGueXAmvap4fGf7T4O0dkTtOihX6Z0Rc9DRiQ9FI9ZZsDzPlrJUyZZSA1fnGJa2Ms
	SiRFAn/QoBjDW/+Ahxgg8lBKDEtilZzMgvoQANiEJzs98Wch2rj982wp+uNtKxWOF+q0Td1sWlX
	Bp35OXDUY+6Q/RqlABqL6zmsz9YjSmqNY0yGBcJl3HSYX2Zmvpa/EWYbsqchtFS2bf/lk05rj4G
	KwRJHTfGy2YEh0EnS94UQ7m/EDamMJIwOLMEByGP8klHdRKuC0fbTVoqwln+P28fYRVDQSenVo/
	Rs+DX8wc/9R7QxHLjURMLYfmuxtN7TyRSNwCQP4AxvkR4e4elZyRXIKSwuj35VLn2tPtk=
X-Received: by 2002:a05:620a:a819:b0:8c6:aaf3:cb44 with SMTP id af79cd13be357-8c6aaf3cd9bmr2247463385a.4.1769001534382;
        Wed, 21 Jan 2026 05:18:54 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ad820sm1209794385a.10.2026.01.21.05.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 05:18:53 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viY6m-00000006DUF-3lkE;
	Wed, 21 Jan 2026 09:18:52 -0400
Date: Wed, 21 Jan 2026 09:18:52 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260121131852.GX961572@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-3-b7e0b07b8214@nvidia.com>
 <4fe42e7e-846c-4aae-8274-3e9a5e7f9a6d@amd.com>
 <20260121091423.GY13201@unreal>
 <7cfe0495-f654-4f9d-8194-fa5717eeafff@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7cfe0495-f654-4f9d-8194-fa5717eeafff@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: C7YE3BPNPP6OYXBHI3SPTDOJZV7KUUMV
X-Message-ID-Hash: C7YE3BPNPP6OYXBHI3SPTDOJZV7KUUMV
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/7] dma-buf: Document RDMA non-ODP invalidate_mapping() special case
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C7YE3BPNPP6OYXBHI3SPTDOJZV7KUUMV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
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
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: C67E95770C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMTA6MTc6MTZBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gVGhlIHdob2xlIGlkZWEgaXMgdG8gbWFrZSBpbnZhbGlkYXRlX21hcHBpbmdz
IHRydWx5IG9wdGlvbmFsLg0KDQpCdXQgaXQncyBub3QgcmVhbGx5IG9wdGlvbmFsISBJdCdzIGFi
c2VuY2UgbWVhbnMgd2UgYXJlIGlnbm9yaW5nIFVBRg0Kc2VjdXJpdHkgaXNzdWVzIHdoZW4gdGhl
IGV4cG9ydGVycyBkbyB0aGVpciBtb3ZlX25vdGlmeSgpIGFuZCBub3RoaW5nDQpoYXBwZW5zLg0K
DQpHaXZlbiB0aGlzIEkgZG9uJ3Qgd2FudCB0byBsb29zZSB0aGUgd2FybmluZyBsb2cgZWl0aGVy
LCB0aGUgc2l0dWF0aW9uDQpuZWVkcyB0byBiZSByZXBvcnRlZC4uDQoNCkphc29uDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
