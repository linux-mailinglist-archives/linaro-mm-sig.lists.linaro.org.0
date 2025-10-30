Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGF2Nw344GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 822AD40FE01
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94E5A40993
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:54:04 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id B4C4C3F784
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 22:29:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fb.com header.s=s2048-2025-q2 header.b=epe5O20x;
	dmarc=pass (policy=reject) header.from=fb.com;
	spf=pass (lists.linaro.org: domain of "prvs=73982f053d=amastro@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=73982f053d=amastro@meta.com"
Received: from pps.filterd (m0109333.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UM3pna1895091;
	Thu, 30 Oct 2025 15:28:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=60MefK3DxP+BN/HIANh8ofusObRmU+P87CCGRx3MEO0=; b=epe5O20xyR3j
	YqdW4KFFW/hKSzMmP6zxpSgyY+iAjdoiRJ/+1fZ+wpMdqBODgMbL3NtPVqIm9fXn
	x8KD+nhge1tAFU+UM7ib57i84EfUejMrkp4ywkavIftCYdfYPL+rg5TyuM4egAxp
	v730WeuN1y8ewqJYkdxzs+vF0OKA/mBfAZff8Mdlq8EyvuSoLvqO75SdNAY16w6j
	uZbkq8Y021f4I7CD+rct0ho/uS5M6fGUedgN4CujHW513K4iArOZm0gmlsx+gPqZ
	Qi8bw00rL9JiY8406oULQSWADhgiBvzYco4K9/0e4d4uZWV47Eh97AQSmjhfQ0Yg
	vjFgzZ4jXg==
Received: from maileast.thefacebook.com ([163.114.135.16])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4a4aakbt30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 30 Oct 2025 15:28:47 -0700 (PDT)
Received: from devgpu015.cco6.facebook.com (2620:10d:c0a8:1b::8e35) by
 mail.thefacebook.com (2620:10d:c0a9:6f::237c) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.20; Thu, 30 Oct 2025 22:28:44 +0000
Date: Thu, 30 Oct 2025 15:28:39 -0700
From: Alex Mastro <amastro@fb.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <aQPmlwaoqPPFeyN/@devgpu015.cco6.facebook.com>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <CALzav=cj_g8ndvbWdm=dukW+37cDh04k1n7ssFrDG+dN3D+cbw@mail.gmail.com>
 <20251028120207.GQ12554@unreal>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251028120207.GQ12554@unreal>
X-Originating-IP: [2620:10d:c0a8:1b::8e35]
X-Proofpoint-GUID: 0ZpO7X-t6Kgi2VjTgweWDl_lcxnq2iwh
X-Authority-Analysis: v=2.4 cv=MKVtWcZl c=1 sm=1 tr=0 ts=6903e69f cx=c_pps
 a=MfjaFnPeirRr97d5FC5oHw==:117 a=MfjaFnPeirRr97d5FC5oHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=7nlfRzPPCwOAtMVn9e4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=nl4s5V0KI7Kw-pW0DWrs:22
 a=pHzHmUro8NiASowvMSCR:22 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-ORIG-GUID: 0ZpO7X-t6Kgi2VjTgweWDl_lcxnq2iwh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE5MCBTYWx0ZWRfX9llSfoX60trR
 mXbkBVBl55Urqb11S4qwjm/pObJY1X+1S60diRRsEHth5MOf7IKq4Czoup72ugb8Fl7vtg6Umws
 T0wR1zGVKO57L2GHA+0qVpD49RE7de+O2DlACYm/FDEOQ+atQFmHmE8OEvSGvK9Gg4KMjnnZt8P
 9eo89vLlcLa+5jC4ltXqN6ZnruT3+bwwmAoV+36wLcYx0ULiPIRAKmAFs3n7/cl40zFJ4huLoWi
 lhzkX2aFxuaPfA92Kwt7K+H/vFc1bREnntF0tAc+FIeWaqYsNtchscW+GO7K0feCvrH6ojQzyNc
 9LmYvsWx+Z1+kjfzugACbFQ5EapodjjO8oosw2rM7ft6LeldzwV/2j0JbuFgschcLfnZT3p4l5a
 f0vHibOGQ5TJGIf/lMEHHGx/tX27mA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_07,2025-10-29_03,2025-10-01_01
X-Spamd-Bar: ---
X-MailFrom: prvs=73982f053d=amastro@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QRPOT55JLOQQ7M73NM4BERGCAHRVHPVJ
X-Message-ID-Hash: QRPOT55JLOQQ7M73NM4BERGCAHRVHPVJ
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:38 +0000
CC: David Matlack <dmatlack@google.com>, Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QRPOT55JLOQQ7M73NM4BERGCAHRVHPVJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[fb.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[fb.com:s=s2048-2025-q2];
	DATE_IN_PAST(1.00)[4024];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[fb.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[amastro@fb.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 822AD40FE01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBPbiBNb24sIE9jdCAyNywgMjAyNSBhdCAwNDoxMzowNVBNIC0wNzAwLCBEYXZpZCBNYXRsYWNr
IHdyb3RlOg0KPiA+IE9uIE1vbiwgT2N0IDEzLCAyMDI1IGF0IDg6NDTigK9BTSBMZW9uIFJvbWFu
b3Zza3kgPGxlb25Aa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4gVGhpcyB1QVBJIHdvdWxkIGJlIGEg
Z29vZCBjYW5kaWRhdGUgZm9yIGEgVkZJTyBzZWxmdGVzdC4gWW91IGNhbiB0ZXN0DQo+ID4gdGhh
dCBpdCByZXR1cm5zIGFuIGVycm9yIHdoZW4gaXQncyBzdXBwb3NlZCB0bywgYW5kIGEgdmFsaWQg
ZmQgd2hlbg0KPiA+IGl0J3Mgc3VwcG9zZWQgdG8uIEFuZCBvbmNlIHRoZSBpb21tdWZkIGltcG9y
dGVyIHNpZGUgaXMgcmVhZHksIHdlIGNhbg0KPiA+IGV4dGVuZCB0aGUgdGVzdCBhbmQgdmVyaWZ5
IHRoYXQgdGhlIGZkIGNhbiBiZSBtYXBwZWQgaW50byBpb21tdWZkLg0KPiANCj4gTm8gcHJvYmxl
bSwgSSdsbCBhZGQgc3VjaCB0ZXN0LCBidXQgbGV0J3MgZm9jdXMgb24gbWFraW5nIHN1cmUgdGhh
dCB0aGlzDQo+IHNlcmllcyBpcyBhY2NlcHRlZCBmaXJzdC4NCg0KQWxvbmcgc2ltaWxhciBsaW5l
cywgcGVyaGFwcyBhZGRpbmcgdmZpbyBhcyBzcmMvdmZpb19tZW1vcnkuYyBkbWFidWYgcHJvdmlk
ZXINCnRvIHBlcmZ0ZXN0IFsxXSBjb3VsZCBiZSB1c2VmdWwgZm9yIGxvdy1sZXZlbCBlbmQtdG8t
ZW5kIHZhbGlkYXRpb24uDQoNCmh0dHBzOi8vZ2l0aHViLmNvbS9saW51eC1yZG1hL3BlcmZ0ZXN0
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
