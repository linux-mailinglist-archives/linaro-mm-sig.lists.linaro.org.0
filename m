Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOODB2L34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:51:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F01D840FD4A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:51:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18C0B404F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:51:12 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by lists.linaro.org (Postfix) with ESMTPS id 749593F713
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 23:13:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=f5SL8YrJ;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of dmatlack@google.com designates 209.85.167.53 as permitted sender) smtp.mailfrom=dmatlack@google.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-592ee9a16adso8968268e87.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 16:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1761606814; x=1762211614; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cVb3sBQg3S7kfhJuRLHfxPiQ08+Bc1FaH34bvysQgyo=;
        b=f5SL8YrJNkiWx4TLKVYGuipa5a8A/iui+kdRuginHzL9qp6OAX5n34rXALZrZgZXCy
         5FcegyiH/rZGG2Uejws4+WBWOgsD9CTdPpsvYG87oIBqOFr5SlwPd6T7awTnnQuOfCQx
         LC2OO9YtpAou/zbw93SsYpkGQ0ZFWOMvA9BmGEbSuVfqZPH/x4SAxdKj7JaThNjUhrdG
         ag0+hhoPC8XlcEheZEKc6kYbNE/b9AJG6BSoBu+G/ILnVG32UrxYh3H4kPsAHzYYohxB
         Cdk6TTUU6/lnwwS967/MDKmfteYFvafOxYvo+ihcMo0nCY6QyCacOXcjGmK2dqeIVy2Q
         serg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761606814; x=1762211614;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVb3sBQg3S7kfhJuRLHfxPiQ08+Bc1FaH34bvysQgyo=;
        b=E42TKpw2kYAPIYpISy0p3/q0hPd1/mSUC7Mh1gQujWRzhx/RCiLMgO3yh+vb3YBxQI
         1N4hMbzlSf1+LyHBAN2yDD8LI4xWcFaj6C0Du6Xtg/+ZmNo9VuZAkQd6bMeTLOmK6TIR
         zmjrPezTvLfdCshEbELsg+WOgMChxaodoVCPOswYdm6okpfVX+MHf3/gsFWwamv8B7Ky
         X+ILg1dk8UT4bQ15CsydYUA/+hn/WMlpDriY9s3ElHVhcJ1SRxqeeq4+0g+cfuSF+YXv
         bDX3X12F653XNJ+e6s8fwAVZg1RnXXjPdYpH8o3ILBmzwprmNez9v5zlm+xnQzezw9NH
         hkXA==
X-Forwarded-Encrypted: i=1; AJvYcCULFFMwy/wq91HfypozSIYZyruGdtQfP2PqX0RONd+6YXJk0hAeg5dOD6AHNS3tsbypL8WjSkPlLnfZDaof@lists.linaro.org
X-Gm-Message-State: AOJu0Yx4LG5mnmWYpBzcVhPRK9BYVOqtbQU4efI8C+R5OyPJcRN6fUg0
	3koFnjm8VI7wIkYjGh++GtK14wwXrvfo/38eFdTPvGxPrVfbxWAppOVrxllPEMM/iTpWQJZv/ei
	09ceziDi7uph22DpRmS7Dv97qY2IgyVPtcG5PwmJg
X-Gm-Gg: ASbGncvF1bSpp+oxG7jihiKU9G8qAsoHRKyxOXrIZBX7OscePC5+XROxAT2C3II00Zh
	kz4HgPtxkY4JUHVzCfJBnZroYTdidf+O1NxPLHfkzF3ho+In12u1c7Mj5j27YUGJPkAhI9bg8TU
	WPsq65Uoe4tz68Apr/ehdwymXnLABKt0P6lqumxEYarIiv9exiEf8D4AzFRrA5PnycmUZ6MLoGW
	IECMuPNdYLzQ4ZiDYMR1LCPIktBDxgmq8FdexwXlg7MNCQsthIfhjAqvtTZZMCiZcbL8r4=
X-Google-Smtp-Source: AGHT+IGl3ca765JSYQeeeNWnOc4ez61Rh9cYHuTu2Z8wbfu4++aeMX3ejm6+mpCGbnxLweY96XJw4Qd/Jsw/gJioL2Q=
X-Received: by 2002:a05:6512:39ce:b0:585:c51e:e99d with SMTP id
 2adb3069b0e04-5930e98f2bbmr555951e87.3.1761606813913; Mon, 27 Oct 2025
 16:13:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1760368250.git.leon@kernel.org> <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
In-Reply-To: <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
From: David Matlack <dmatlack@google.com>
Date: Mon, 27 Oct 2025 16:13:05 -0700
X-Gm-Features: AWmQ_blG76O58dB2_ktM5H7ZDlww5WUOcPernLo2oZm94nuYAfy2S9NihsUA1rg
Message-ID: <CALzav=cj_g8ndvbWdm=dukW+37cDh04k1n7ssFrDG+dN3D+cbw@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: dmatlack@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ESOEBTT2MVPJZNU22W3EO2SQ44XCQSC3
X-Message-ID-Hash: ESOEBTT2MVPJZNU22W3EO2SQ44XCQSC3
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:27 +0000
CC: Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ESOEBTT2MVPJZNU22W3EO2SQ44XCQSC3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	DATE_IN_PAST(1.00)[4095];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmatlack@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.491];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:email,mail.gmail.com:mid];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[linaro-mm-sig]
X-Rspamd-Queue-Id: F01D840FD4A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBPY3QgMTMsIDIwMjUgYXQgODo0NOKAr0FNIExlb24gUm9tYW5vdnNreSA8bGVvbkBr
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZp
ZGlhLmNvbT4NCj4NCj4gQWRkIHN1cHBvcnQgZm9yIGV4cG9ydGluZyBQQ0kgZGV2aWNlIE1NSU8g
cmVnaW9ucyB0aHJvdWdoIGRtYS1idWYsDQo+IGVuYWJsaW5nIHNhZmUgc2hhcmluZyBvZiBub24t
c3RydWN0IHBhZ2UgbWVtb3J5IHdpdGggY29udHJvbGxlZA0KPiBsaWZldGltZSBtYW5hZ2VtZW50
LiBUaGlzIGFsbG93cyBSRE1BIGFuZCBvdGhlciBzdWJzeXN0ZW1zIHRvIGltcG9ydA0KPiBkbWEt
YnVmIEZEcyBhbmQgYnVpbGQgdGhlbSBpbnRvIG1lbW9yeSByZWdpb25zIGZvciBQQ0kgUDJQIG9w
ZXJhdGlvbnMuDQoNCj4gKy8qKg0KPiArICogVXBvbiBWRklPX0RFVklDRV9GRUFUVVJFX0dFVCBj
cmVhdGUgYSBkbWFfYnVmIGZkIGZvciB0aGUNCj4gKyAqIHJlZ2lvbnMgc2VsZWN0ZWQuDQo+ICsg
Kg0KPiArICogb3Blbl9mbGFncyBhcmUgdGhlIHR5cGljYWwgZmxhZ3MgcGFzc2VkIHRvIG9wZW4o
MiksIGVnIE9fUkRXUiwgT19DTE9FWEVDLA0KPiArICogZXRjLiBvZmZzZXQvbGVuZ3RoIHNwZWNp
ZnkgYSBzbGljZSBvZiB0aGUgcmVnaW9uIHRvIGNyZWF0ZSB0aGUgZG1hYnVmIGZyb20uDQo+ICsg
KiBucl9yYW5nZXMgaXMgdGhlIHRvdGFsIG51bWJlciBvZiAoUDJQIERNQSkgcmFuZ2VzIHRoYXQg
Y29tcHJpc2UgdGhlIGRtYWJ1Zi4NCj4gKyAqDQo+ICsgKiBSZXR1cm46IFRoZSBmZCBudW1iZXIg
b24gc3VjY2VzcywgLTEgYW5kIGVycm5vIGlzIHNldCBvbiBmYWlsdXJlLg0KPiArICovDQo+ICsj
ZGVmaW5lIFZGSU9fREVWSUNFX0ZFQVRVUkVfRE1BX0JVRiAxMQ0KPiArDQo+ICtzdHJ1Y3QgdmZp
b19yZWdpb25fZG1hX3JhbmdlIHsNCj4gKyAgICAgICBfX3U2NCBvZmZzZXQ7DQo+ICsgICAgICAg
X191NjQgbGVuZ3RoOw0KPiArfTsNCj4gKw0KPiArc3RydWN0IHZmaW9fZGV2aWNlX2ZlYXR1cmVf
ZG1hX2J1ZiB7DQo+ICsgICAgICAgX191MzIgICByZWdpb25faW5kZXg7DQo+ICsgICAgICAgX191
MzIgICBvcGVuX2ZsYWdzOw0KPiArICAgICAgIF9fdTMyICAgZmxhZ3M7DQo+ICsgICAgICAgX191
MzIgICBucl9yYW5nZXM7DQo+ICsgICAgICAgc3RydWN0IHZmaW9fcmVnaW9uX2RtYV9yYW5nZSBk
bWFfcmFuZ2VzW107DQo+ICt9Ow0KDQpUaGlzIHVBUEkgd291bGQgYmUgYSBnb29kIGNhbmRpZGF0
ZSBmb3IgYSBWRklPIHNlbGZ0ZXN0LiBZb3UgY2FuIHRlc3QNCnRoYXQgaXQgcmV0dXJucyBhbiBl
cnJvciB3aGVuIGl0J3Mgc3VwcG9zZWQgdG8sIGFuZCBhIHZhbGlkIGZkIHdoZW4NCml0J3Mgc3Vw
cG9zZWQgdG8uIEFuZCBvbmNlIHRoZSBpb21tdWZkIGltcG9ydGVyIHNpZGUgaXMgcmVhZHksIHdl
IGNhbg0KZXh0ZW5kIHRoZSB0ZXN0IGFuZCB2ZXJpZnkgdGhhdCB0aGUgZmQgY2FuIGJlIG1hcHBl
ZCBpbnRvIGlvbW11ZmQuDQoNCkl0IHdpbGwgcHJvYmFibHkgYmUgY2hhbGxlbmdpbmcgdG8gbWVh
bmluZ2Z1bGx5IGV4ZXJjaXNlIGRldmljZSBQMlANCnRocm91Z2ggYSBzZWxmdGVzdCwgSSBoYXZl
bid0IHRob3VnaHQgYWJvdXQgaG93IHRvIGV4dGVuZCB0aGUgZHJpdmVyDQpmcmFtZXdvcmsgZm9y
IHRoYXQgeWV0Li4uIEJ1dCB5b3UgY2FuIGF0IGxlYXN0IHRlc3QgdGhhdCBhbGwgdGhlDQppb2N0
bHMgYmVoYXZlIGxpa2UgdGhleSBzaG91bGQuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
