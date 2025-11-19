Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF06DC70D5E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 20:37:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BABEB3F8F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 19:37:01 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by lists.linaro.org (Postfix) with ESMTPS id EB22E3F80C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 19:36:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=fkk055yD;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.170 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8b2d56eaaceso11756785a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 11:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763580999; x=1764185799; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sztelLlBrONBmM282viGyh6kz65i94yYxCWrYWozdqM=;
        b=fkk055yDXS1f/WGM2qiZPIHtEWQU0vFhxiMvssiQLvSFqvyBBXjy8rm1WHykZBktDw
         cYVoQDV19MlJNbPDf7JV5UC2WiO4R2L0a5YnYHeUOoG70usNz64V03xmlEqCy0tXpvdG
         IsoT5YVJ5yUycjcAQpy2Tg6FD0ep3lwpLTy7O3dScKwExM8lpOCcWvmrxjmkWbsi2hNS
         xvgY8/vRf6gkj/AAzbBvJcR++1JyEpP9D9vf1ySEvbqyWU/sTK8wk3bReZEvd32XK8gt
         ugZbDMF0ECSRwZWoAUFq38SmAumuq+73DT4YIbRtpn3TZxTThBupX35c+5o52gOFf1Hl
         AwQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763580999; x=1764185799;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sztelLlBrONBmM282viGyh6kz65i94yYxCWrYWozdqM=;
        b=T29pajOA0RdBoay6Soe+Q4CAwWnneXzfYoe8Va4T2hgdN5zilouGzDozeMeJzN97Jr
         I5aCtNE+WTKWAy1E8/YjHWPOmU5I3Ue0nEynIoB9oRXFU6OqdfkkvTqAa+GxkWscbmlt
         GAqKwmxFxS0jsjtR+4DbHEPd33LrjzmB1xcDJI8J4FoF6qQzf66Epi4lXQMRWRPjiMu2
         teBPIXP9ZQBTIoMSJxbS7hb6qzLg19LJhcXZX3eniWjd5KmnKWeq+L711+4VNru3SVCo
         s6YdlmvFT+VZHUbe/WYBj8Xs3h9P5jt9cGiDjSJQbxHK2IpaCL05Uz9A5kOLG5PrEztA
         sSow==
X-Forwarded-Encrypted: i=1; AJvYcCX0uWyt9SinmLVQ037SyrluBEJSwMD7ZIwanN9nabtX97wuCWcYwI40lUnYi+CzDTHvEU07yTsTTFNf2ySp@lists.linaro.org
X-Gm-Message-State: AOJu0YxcUqBDQiXgc6DBIJpQAs4Lv2J4+XR2vTQscKyQh3At4I8vTAEE
	jhOllT9B/Y4taS5VAk1oZpg93z9t+kXVMj866z064M6VT89E0eZBPpGGfG7xa+XyhN4=
X-Gm-Gg: ASbGnct/ZEVZF0CrZf/qWnDwpAwiUXW8qlLTsiRTpq2aPxL9Pw5HGDwGZgRUQh8zkg6
	9+oljuY17K9WJDEcEBi93tQ0G+1m0gCQ838ZDU2SnZDPI8S4fuxczeKj/psU/gf3O9MqZlR0Kqh
	I/jSXKd12XrHluaFldW76ExeVO3HYlxFxTOzY4NB9uF91Bgy7X2wucrlIXMsAU22agbXXuuDPCP
	xWiEwEJCMU97aqpyekrfYRZ17XKgflPL60EBaXOHJ8ykjxKHBVJW2CofpZxT6C6YSLeMpUmtE1y
	2dWbwJpzAHzZI95LiFg1YZtQIyNYVU6AIUmOH81X8qJEvsp/rgRVJkKePUsu6jtx+42/fcwbyMP
	OInknn4Q/EdvyyWYOBvBPGaIyu89UQVY/dXr0qzy/tlAv4aKPwfIBA6SsbEhwXUmR9Am5rRl5xp
	55BBEglV1O5muNIlq9kUruWaEREprqybhbcvuUG/8ver7r6qUcDZDvNOl0
X-Google-Smtp-Source: AGHT+IEogkhlTHFcyAE9/u1UuBQV+X3tukog/nHIoHavB/ndnYOWZGPWrkYoYNh/EOln2cA+Kp4KoA==
X-Received: by 2002:a05:622a:310:b0:4ee:1d84:3068 with SMTP id d75a77b69052e-4ee4971a985mr8236121cf.76.1763580999342;
        Wed, 19 Nov 2025 11:36:39 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee48d64503sm3117901cf.13.2025.11.19.11.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 11:36:38 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLnyo-00000000bYz-0lQx;
	Wed, 19 Nov 2025 15:36:38 -0400
Date: Wed, 19 Nov 2025 15:36:38 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251119193638.GQ17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119134245.GD18335@unreal>
 <6714dc49-6b5c-4d58-9a43-95bb95873a97@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6714dc49-6b5c-4d58-9a43-95bb95873a97@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.170:from];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[47.55.120.4:query timed out,209.85.222.170:query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[47.55.120.4:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.222.170:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EB22E3F80C
X-Spamd-Bar: ---
Message-ID-Hash: WRJPJFTOFUE7OEJ7MCBSPB626VQBXGTP
X-Message-ID-Hash: WRJPJFTOFUE7OEJ7MCBSPB626VQBXGTP
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex
  Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WRJPJFTOFUE7OEJ7MCBSPB626VQBXGTP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMTksIDIwMjUgYXQgMDM6MTE6MDFQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiBJIG1pc3MgaW50ZXJwcmV0ZWQgdGhlIGNhbGwgdG8gcGNpX3AycGRtYV9t
YXBfdHlwZSgpIGhlcmUgaW4gdGhhdA0KPiBub3cgdGhlIERNQS1idWYgY29kZSBkZWNpZGVzIGlm
IHRyYW5zYWN0aW9ucyBnbyBvdmVyIHRoZSByb290DQo+IGNvbXBsZXggb3Igbm90Lg0KDQpPaCwg
dGhhdCdzIG5vdCBpdCBhdCBhbGwuIEkgdGhpbmsgeW91IGdldCBpdCwgYnV0IGp1c3QgdG8gYmUg
cmVhbGx5DQpjbGVhcjoNCg0KVGhpcyBjb2RlIGlzIHRha2luZyBhIHBoeXNpY2FsIGFkZHJlc3Mg
ZnJvbSB0aGUgZXhwb3J0ZXIgYW5kDQpkZXRlcm1pbmluZyBob3cgaXQgTVVTVCByb3V0ZSBpbnNp
ZGUgdGhlIGZhYnJpYy4gVGhlcmUgaXMgb25seSBvbmUNCnNpbmdsZSBjaG9pY2Ugd2l0aCBubyBv
cHRpb25hbGl0eS4NCg0KVGhlIGV4cG9ydGVyIGFscmVhZHkgZGVjaWRlZCBpZiBpdCB3aWxsIGdv
IG92ZXIgdGhlIGhvc3QgYnJpZGdlIGJ5DQpwcm92aWRpbmcgYW4gYWRkcmVzcyB0aGF0IG11c3Qg
dXNlIGEgaG9zdCBicmlkZ2UgcGF0aC4NCg0KPiBCdXQgdGhlIGV4cG9ydGVyIGNhbiBjYWxsIHBj
aV9wMnBkbWFfbWFwX3R5cGUoKSBldmVuIGJlZm9yZSBjYWxsaW5nDQo+IHRoaXMgZnVuY3Rpb24s
IHNvIHRoYXQgbG9va3MgZmluZSB0byBtZS4NCg0KWWVzLCB0aGUgZXhwb3J0ZXIgbmVlZHMgdG8g
ZGVjaWRlIHdoZXJlIHRoZSBkYXRhIGlzIHBsYWNlZCBiZWZvcmUgaXQNCnRyaWVzIHRvIG1hcCBp
dCBpbnRvIHRoZSBTR1QuDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
