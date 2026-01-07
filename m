Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F49CFEC1D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 07 Jan 2026 17:01:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADC3B40159
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jan 2026 16:01:17 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by lists.linaro.org (Postfix) with ESMTPS id D2ED14015A
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jan 2026 16:00:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=OV9JUnbz;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.44 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-888bd3bd639so11644366d6.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Jan 2026 08:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1767801653; x=1768406453; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ftSoJlbCa6MOGNHtdz3xW3rHVknPRmwRfQPP71m23p0=;
        b=OV9JUnbzwQzsoR7rPVRwW6AostPRy4R3dML4BTxIulcHfZPgLiH37YsDp/50Hcg7GW
         yJ3OOnFnn3vIH7qrDwkAE+o0OdFzjChyGPkFVf3Kzrwi0C/WZkL6lxZiE1+rxfG4Fba4
         qYebtvkxRkV5BeKvrESiyeNX+BnWsoidMWvn0xMfiVd435YM4m2E61/QZhz+DdqClUhk
         r1B7tnUPKg39OR0JWIIE5Rt+IIXVhnTsH9927O7/xJ7ECwgLGiDN8G/1v1AQ3yyzM36F
         WG73tmOTifDxiaMhpW1bgsnJtGK4Du30DvgYQKgnu27e2DhQSPs74ap35efBRVu0w3Jb
         sYrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767801653; x=1768406453;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ftSoJlbCa6MOGNHtdz3xW3rHVknPRmwRfQPP71m23p0=;
        b=h2egNG1hlS+4fUP1cdwGGvWrtLWZidiGiExJ1Mb/Rv8+oAlqrCDt6cBAHSPWz3TmhQ
         ApWrcUdJHra7swvE7OWrXQ+b+d28Fvbcg7cUYn8PeFIC3Kb43eRx3xPYMQK9G4G5Zwfh
         dNmeUhaw82f3rt2smWKaretOZlz7TZnQRTjJzt1R/K+4atYxMfRfWKJY4OcmhqQEerYX
         xEzLbsh2hjmwcYO1hpsCe0kllPTvj9epiKwxUUaj3InWA43YE/Bud+jXTP9hZ4xeuE5I
         th0LDBnTHEVdztrGpQDpGDrK7+WWPRuKpSS7li1df3AfsQfAqCtfcXCnYP4IRWU+pIgY
         oWHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaeONSrk9oatNAHk9USmaTWV8SstKyrYo2WDt/sm5NNkizesaixhxE8ANabowSyvFG+SmjqgUtbORgNRL3@lists.linaro.org
X-Gm-Message-State: AOJu0Yy0pgFHi6X286DK+MU7m8rTCRTec9+OtJDZp7vjTZD7SWu2O2bv
	pqVF4irFX4TL04cc1kDE5zU2r3Uy3GUxTPup0+GUHpiS7KCrDNutXrT0hwVzP8S/NLo=
X-Gm-Gg: AY/fxX5LWj37Mw/odclCLv64mLTFWnpeVPEhBs7cj8YOEEwhjDolIx81ArLZ4FKcBTj
	G2ZMhil/KEwyTCglm6uaKfB1utsXbXXxX7gLQLNSmDgy5TywOtRuM9GxW40BCCeCKmJLxViO6kE
	Rc7i3/dYg21n2MTi+neDwyhRS/LE9zC0h2GQMICKJyAl4koao0Ytt31nZQ5wMsz8xop9ObUk73S
	9ggL5oYhmVPDlkg19+pXsm7d5/VsVl6UbJgeUmpsxk00k8yfbEuUwEWny0LqaxnSNc1fxbqfj0k
	xeoKiwWMbqKioqQ3bC4Swk8dL1dyqIf0IuCxeSx3XO0txZSf3P21InfiT0vHUnC38qBRK6cKuH6
	sgHSEBfs4Ep9xKTs/GwIg/1Y1lzC9z0us9Y9y62r9vPVWfenCfERM0Rifs7jv9vKNAV9x6i458q
	E9nvGlrETpL5al3T5ITuR9Cspd2mDuo6qwi3c8S23JgVACymODpHYsAoA05023zR7t/3HwsUC8u
	vzjFw==
X-Google-Smtp-Source: AGHT+IEsFTBclBHNaJgPLh58sVSxPObjQlXbE6JZhrOur9VbgMkz2k1BHIEIa/RCFDyuscOAoE/vIQ==
X-Received: by 2002:a05:6214:411:b0:888:4930:7989 with SMTP id 6a1803df08f44-89083d0d91bmr44153996d6.36.1767801649963;
        Wed, 07 Jan 2026 08:00:49 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8907725ffc7sm34937966d6.44.2026.01.07.08.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:00:49 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vdVxn-00000002CVI-0vE2;
	Wed, 07 Jan 2026 12:00:47 -0400
Date: Wed, 7 Jan 2026 12:00:47 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260107160047.GB340082@ziepe.ca>
References: <20260107-convert-to-pvec-v1-1-6e3ab8079708@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-convert-to-pvec-v1-1-6e3ab8079708@nvidia.com>
X-Rspamd-Queue-Id: D2ED14015A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.44:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RSPAMD_EMAILBL_FAIL(0.00)[jgg.nvidia.com:query timed out];
	DMARC_NA(0.00)[ziepe.ca];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:email,ziepe.ca:dkim,ziepe.ca:mid,ziepe.ca:from_smtp,ziepe.ca:from_mime];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SW3IBOROGVLOWZFJVXSJU57QJ7ZZLVGU
X-Message-ID-Hash: SW3IBOROGVLOWZFJVXSJU57QJ7ZZLVGU
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Ankit Agrawal <ankita@nvidia.com>, Matthew Wilcox <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig]  Re: types: reuse common =?utf-8?q?phys=5Fvec_type_instead_of_DMABUF_open=E2=80=91coded?= variant
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SW3IBOROGVLOWZFJVXSJU57QJ7ZZLVGU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMDcsIDIwMjYgYXQgMTE6MTQ6MTRBTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiAN
Cj4gQWZ0ZXIgY29tbWl0IGZjZjQ2M2I5MmEwOCAoInR5cGVzOiBtb3ZlIHBoeXNfdmVjIGRlZmlu
aXRpb24gdG8gY29tbW9uIGhlYWRlciIpLA0KPiB3ZSBjYW4gdXNlIHRoZSBzaGFyZWQgcGh5c192
ZWMgdHlwZSBpbnN0ZWFkIG9mIHRoZSBETUFCVUbigJFzcGVjaWZpYw0KPiBkbWFfYnVmX3BoeXNf
dmVjLCB3aGljaCBkdXBsaWNhdGVkIHRoZSBzYW1lIHN0cnVjdHVyZSBhbmQgc2VtYW50aWNzLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4N
Cj4gLS0tDQo+IEFsZXgsDQo+IA0KPiBBY2NvcmRpbmcgdG8gZGlmZnN0YXQsIFZGSU8gaXMgdGhl
IHN1YnN5c3RlbSB3aXRoIHRoZSBsYXJnZXN0IHNldCBvZiBjaGFuZ2VzLA0KPiBzbyBpdCB3b3Vs
ZCBiZSBncmVhdCBpZiB5b3UgY291bGQgdGFrZSBpdCB0aHJvdWdoIHlvdXIgdHJlZS4NCj4gDQo+
IFRoZSBzZXJpZXMgaXMgYmFzZWQgb24gdGhlIGZvci03LjAvYmxrLXB2ZWMgc2hhcmVkIGJyYW5j
aCBmcm9tIEplbnM6DQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L2F4Ym9lL2xpbnV4LmdpdC9sb2cvP2g9Zm9yLTcuMC9ibGstcHZlYw0KDQpHcmVhdCEN
Cg0KUmV2aWV3ZWQtYnk6IEphc29uIEd1bnRob3JwZSA8amdnQG52aWRpYS5jb20+DQoNCkphc29u
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
