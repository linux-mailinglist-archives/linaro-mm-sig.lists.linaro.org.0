Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0EAC70E03
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 20:45:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C35FF3F786
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 19:45:24 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by lists.linaro.org (Postfix) with ESMTPS id 70EE83F786
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 19:45:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=GycLfoZ3;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.176 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8b0f54370ecso9306385a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 11:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763581508; x=1764186308; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ngigizqFoW1/n7l/UtYTJcb/TxX1OBEkHcoOUDKA/VA=;
        b=GycLfoZ3Ki1AzoCMqGVf9iMleppDDwbEm+ydqPH3g6vew6YCpyotZLioSvh6MCJd0j
         R7aGzCPTDQS5cvleMkeApOgu8Pc6jYO2fG+bfhS0N0kr7xfFGqkc/pOkL+4vCSk61LpY
         DXmKXnptGsaSvbr8k/JvDw93ZE4imRVgrR+a6dlM9P51ypVQq3p3vBuNuzRzyYKLNSwV
         PTCEK1nP/XSq93Nlq4F/Px25ZGbnEwk7uJ+GQqVUNwtORUkxt1hg7ik9cW7LXJfCoVUA
         H7NMtQu0Fl+L/fal8pqoHt0/JqP8sM3pW/SnBTu+2DKckEt03wV174QX+7q3dkLDUT4u
         CNAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763581508; x=1764186308;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ngigizqFoW1/n7l/UtYTJcb/TxX1OBEkHcoOUDKA/VA=;
        b=cqYD9PpyckS8PcVUjD4strOGNW6MZoeIjEZVnCAICpJK7oYKP55Xjvrte5G0/1o5g5
         1rIW7wlpLnxiPfxITRBPMKQ6oJW09nS9mc7fQ+5sTLZuLzX6R3pjM3C0FDP3dhJGenqr
         OunmaDaDK0WcZJKtzwwRi4n6E+O3KwjaET3F3UVxrxorAKmtpkeXQGEWOj6ge6A+xvos
         pFCETRdpCNAm0xYoCRE932//FY3vnh1P2Q/n3U5TkxrLFbcZVhalV3YVi/VkQxJ0XJLY
         hqsNg6UmSdpSwiLGwRm1ZsfBjeQRe8obLYaHoQgKwZ3LazoB6mM0NdQTHlGFaApepBEN
         SOTw==
X-Forwarded-Encrypted: i=1; AJvYcCXSyf7cwVzUZ6D02w5IAXFtshSIs8I3KbR5nsrXpg/2CcCEWBbv5MwUq+xkYAT9ZPQX2rDI0iKOeOVCxtEe@lists.linaro.org
X-Gm-Message-State: AOJu0Yw5egXa7+AX92jWunQ0DUmxzBjb9VAN1ZuXGEoVI1W0Jn4OShFD
	voVK+3m0sobRLddSxshAgsLKuDOe8/2URlEMXoUGYSf+Bcxh61OjcuPb3eenKhh2+BY=
X-Gm-Gg: ASbGncux6nS0HMi0BE5Pm9CZIljQqLrC1cLcNAq1Q83532OJEn/ffkgRIzOHwt8rIsH
	Z7+XEUpJ82VtgmkLBarbFAFD/k8Z210f+sxJh+quxFeFPFMF0nVUDvyMb4TthLbkXEozOYOMccO
	tMLO52M+/Srotr5yaCpvTxXkUz7LBHQQ5CclvZN8wcOfGuuHV56kT5aYA52aNaQ9nyVQ33ZgdG1
	3OVuX8B2T8lQsPIStd1uLESBOK9GK7PQJArEFhmBAb/QdLW+SR9nAwlTCBOBtVkJWrnbDWEXMmS
	YvLj+2WjkFJZYX7AsyFdge/3iil/+6JCEd7CBzplgtgMagBzPbV5tQ7NpTZxA1agFUSGWVsLvVk
	2AcbRgE1bvQEPtTXMW3UwgBnjP3nmvBZtsL5v7tM/ZDCPcycgwSGKnck+qvBoAdwT5CP2ROD6or
	0mGUkQB4O98CWHyOa0pLG87lhnlJ+Eh/iuXoNy+qdPjahZDhr0ct0/9iVh
X-Google-Smtp-Source: AGHT+IHM2All3T5KCtKB0YCjHC7VAw8938Pjcsqc0YyXScERh5oSqA8kZNdUfx1RTYUHZ+fIhtYAoA==
X-Received: by 2002:a05:620a:44d4:b0:893:31da:1028 with SMTP id af79cd13be357-8b3274b5313mr86654885a.90.1763581507903;
        Wed, 19 Nov 2025 11:45:07 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8846e447272sm1944186d6.5.2025.11.19.11.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 11:45:07 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLo70-00000000bcb-3TE0;
	Wed, 19 Nov 2025 15:45:06 -0400
Date: Wed, 19 Nov 2025 15:45:06 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251119194506.GS17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-5-fd9aa5df478f@nvidia.com>
 <9798b34c-618b-4e89-82b0-803bc655c82b@amd.com>
 <20251119133529.GL17968@ziepe.ca>
 <ad36ef4e-a485-4bbf-aaa9-67cd517ca018@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad36ef4e-a485-4bbf-aaa9-67cd517ca018@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.176:from];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ziepe.ca];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[47.55.120.4:received,209.85.222.176:from];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 70EE83F786
X-Spamd-Bar: ---
Message-ID-Hash: EAQW6TKE2MYB3I36AAIZLGK3EISGKEH3
X-Message-ID-Hash: EAQW6TKE2MYB3I36AAIZLGK3EISGKEH3
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 05/11] PCI/P2PDMA: Document DMABUF model
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EAQW6TKE2MYB3I36AAIZLGK3EISGKEH3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMTksIDIwMjUgYXQgMDM6MDY6MThQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMTEvMTkvMjUgMTQ6MzUsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4g
PiBPbiBXZWQsIE5vdiAxOSwgMjAyNSBhdCAxMDoxODowOEFNICswMTAwLCBDaHJpc3RpYW4gS8O2
bmlnIHdyb3RlOg0KPiA+Pj4gK0FzIHRoaXMgaXMgbm90IHdlbGwtZGVmaW5lZCBvciB3ZWxsLXN1
cHBvcnRlZCBpbiByZWFsIEhXIHRoZSBrZXJuZWwgZGVmYXVsdHMgdG8NCj4gPj4+ICtibG9ja2lu
ZyBzdWNoIHJvdXRpbmcuIFRoZXJlIGlzIGFuIGFsbG93IGxpc3QgdG8gYWxsb3cgZGV0ZWN0aW5n
IGtub3duLWdvb2QgSFcsDQo+ID4+PiAraW4gd2hpY2ggY2FzZSBQMlAgYmV0d2VlbiBhbnkgdHdv
IFBDSWUgZGV2aWNlcyB3aWxsIGJlIHBlcm1pdHRlZC4NCj4gPj4NCj4gPj4gVGhhdCBzZWN0aW9u
IHNvdW5kcyBub3QgY29ycmVjdCB0byBtZS4gDQo+ID4gDQo+ID4gSXQgaXMgY29ycmVjdCBpbiB0
aGF0IGl0IGRlc2NyaWJlcyB3aGF0IHRoZSBrZXJuZWwgZG9lcyByaWdodCBub3cuDQo+ID4gDQo+
ID4gU2VlIGNhbGNfbWFwX3R5cGVfYW5kX2Rpc3QoKSwgaG9zdF9icmlkZ2Vfd2hpdGVsaXN0KCks
IGNwdV9zdXBwb3J0c19wMnBkbWEoKS4NCj4gDQo+IFdlbGwgSSdtIHRoZSBvbmUgd2hvIG9yaWdp
bmFsbHkgc3VnZ2VzdGVkIHRoYXQgd2hpdGVsaXN0IGFuZCB0aGUgZGVzY3JpcHRpb24gc3RpbGwg
ZG9lc24ndCBzb3VuZCBjb3JyZWN0IHRvIG1lLg0KPiANCj4gSSB3b3VsZCB3cml0ZSBzb21ldGhp
bmcgbGlrZSAiVGhlIFBDSWUgc3BlY2lmaWNhdGlvbiBkb2Vzbid0IGRlZmluZSB0aGUgZm9yd2Fy
ZGluZyBvZiB0cmFuc2FjdGlvbnMgYmV0d2VlbiBoaWVyYXJjaHkgZG9tYWlucy4uLi4iDQoNCk9r
DQoNCj4gVGhlIHByZXZpb3VzIHRleHQgd2FzIGFjdHVhbGx5IG11Y2ggYmV0dGVyIHRoYW4gdGhp
cyBzdW1tYXJ5IHNpbmNlDQo+IG5vdyBpdCBsZWF2ZXMgb3V0IHRoZSBpbXBvcnRhbnQgaW5mb3Jt
YXRpb24gd2hlcmUgYWxsIG9mIHRoaXMgaXMNCj4gY29tZXMgZnJvbS4NCg0KV2VsbCwgSU1ITywg
aXQgZG9lc24ndCAiY29tZSBmcm9tIiBhbnl3aGVyZSwgdGhpcyBpcyBhbGwNCmltcGxlbWVudGF0
aW9uIHNwZWNpZmljIGJlaGF2aW9ycy4uDQoNCj4gPiBBUk0gU09DcyBhcmUgZnJlcXVlbnRseSBu
b3Qgc3VwcG9ydGluZyBldmVuIG9uIHNlcnZlciBDUFVzLg0KPg0KPiBJSVJDIEFSTSBhY3R1YWxs
eSBoYXMgYSB2YWxpZGF0aW9uIHByb2dyYW0gZm9yIHRoaXMsIGJ1dCBJJ3ZlIGZvcmdvdHRlbiB0
aGUgbmFtZSBvZiBpdCBhZ2Fpbi4NCg0KSSBzdXNwZWN0IHlvdSBtZWFuIFNCU0EsIGFuZCBJIGtu
b3cgYXQgbGVhc3Qgb25lIG5ldyBTQlNBIGFwcHJvdmVkDQpjaGlwIHRoYXQgZG9lc24ndCBoYXZl
IHdvcmtpbmcgUDJQIHRocm91Z2ggdGhlIGhvc3QgYnJpZGdlLi4gOigNCiANCj4gUmFuZHkgc2hv
dWxkIGtub3cgdGhlIG5hbWUgb2YgaXQgYW5kIEkgdGhpbmsgbWVudGlvbmluZyB0aGUgc3RhdHVz
DQo+IG9mIHRoZSB2ZW5kb3JzIGhlcmUgd291bGQgYmUgYSBnb29kIGlkZWEuDQoNCkkgdGhpbmsg
cmVmZXIgdG8gdGhlIGtlcm5lbCBjb2RlIGlzIGJlc3QgZm9yIHdoYXQgaXMgY3VycmVudGx5IHBl
cm1pdHRlZC4uDQoNCj4gVGhlIGRvY3VtZW50YXRpb24gbWFrZXMgaXQgc291bmQgbGlrZSBETUEt
YnVmIGlzIGxpbWl0ZWQgdG8gbm90DQo+IHVzaW5nIHN0cnVjdCBwYWdlcyBhbmQgZGlyZWN0IEkv
TywgYnV0IHRoYXQgaXMgbm90IHRydWUuDQoNCk9rYXksIEkgc2VlIHdoYXQgeW91IG1lYW4sIHRo
ZSBpbnRlbnRpb24gd2FzIHRvIGJlIHZlcnkgc3Ryb25nIGFuZCBzYXkNCmlmIHlvdSBhcmUgbm90
IHVzaW5nIHN0cnVjdCBwYWdlcyB0aGVuIHlvdSBtdXN0IHVzaW5nIERNQUJVRiBvcg0Kc29tZXRo
aW5nIGxpa2UgaXQgdG8gY29udHJvbCBsaWZldGltZS4gTm90IHRvIHNheSB0aGF0IHdhcyB0aGUg
b25seQ0Kd2F5IGhvdyBETUFCVUYgY2FuIGJlIHVzZWQuDQoNCkxlb24gbGV0J3MgdHJ5IHRvIGNs
YXJpZnkgdGhhdCBhIGJpdCBtb3JlDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
