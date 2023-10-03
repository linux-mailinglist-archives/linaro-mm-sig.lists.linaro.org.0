Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FD27B6C88
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Oct 2023 16:59:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A90F3EAC1
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Oct 2023 14:59:27 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	by lists.linaro.org (Postfix) with ESMTPS id E33A13EAC1
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Oct 2023 14:59:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Uh4aB3jb;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.161.43 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-57bab8676f9so586132eaf.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Oct 2023 07:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696345164; x=1696949964; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=paCC2yP2dDTzgPbMIpAziwv1LCMCxhhjgQrwrl1gs1o=;
        b=Uh4aB3jbvA6333ws3Du0vlyCpsef6Q1S9MK1hMzBXd3761Ge7ieEZKRfpMjA9b6gmK
         MpQQLZiCw/JKytJn6UEuOs11YgHMLKn45YxY/WaWM3A0IPeE741nM+xjZMYMkSFqfAra
         RQqPtlDB/dvAc9obW8DFugHwpXDfV+w//athEMZBTgsbsbJX0kMRDcbJBrWOVyNUJZJl
         oQ8L/xtSStOgaF4F0J0g/k7zyN4FrufS6dbvUe0Idrf0g4BdGjb5rMGoBN5fcMe9ZJiP
         I1KRietzDkG7H4al6oB8dxPAVw9QqDeQoKmA7vhb8Oz1NKT4c0bmPm41TxH74YaIezai
         0C7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696345164; x=1696949964;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=paCC2yP2dDTzgPbMIpAziwv1LCMCxhhjgQrwrl1gs1o=;
        b=mx0hDlAONiEs4W7+hRwxKixuQFC1DrJa4e/MHQDX3Al9M5I4E8NETs2mZMVGeIuXyu
         aLWiqsuhALCgmh6wuVGAlU0qROZPknUsRTN6rx1Nim/RxFK0DtITgVoWN80U4RXeVqrP
         NU8q+xvjomHXD8cDge3fJ4dOV2w/mbmm9t8fMCpkp92Mo7pTQatCiwaz0h307G6vHImD
         NCWbur8WBpruD2mLveGPzWKEyeTidmMBHlIviHKrnUyNQS3k282yv1wi3F3HHoCU1L33
         9M0HqHWzIKzvFzKAbwBttnV9TRjvL433PA9OdwMbSGncue+dwAAlq9ehCsYZn64PFujQ
         wDzg==
X-Gm-Message-State: AOJu0YwbEQ61UDs5vCMB1NPcTHxPCcArrmEHY4ZHDN2/SIFAl058Gvj1
	1+wpImrjeWWsSKzwBYGy92DQT5nYv7kDXp2MCLeKNQ==
X-Google-Smtp-Source: AGHT+IEC/Kn3ElM9sRc8RziFnK7dG4Mz8Mu+9fXziWBkbOanl/IOsnZjGUYnuFHW5isQpUi/P4sO/SVenJA9KUgaiWk=
X-Received: by 2002:a05:6358:2822:b0:143:8f7f:9150 with SMTP id
 k34-20020a056358282200b001438f7f9150mr14957693rwb.13.1696345163992; Tue, 03
 Oct 2023 07:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <bc145167-0471-4ab3-935c-aa5dc20e342a@moroto.mountain>
 <CABdmKX1PsCcRpsnUgwoS9yMhCXcin1bQt6D+N0b2mHP93cmX-A@mail.gmail.com> <04ea5706-7373-48c4-a93e-e69c50816a0b@kadam.mountain>
In-Reply-To: <04ea5706-7373-48c4-a93e-e69c50816a0b@kadam.mountain>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 3 Oct 2023 07:59:12 -0700
Message-ID: <CABdmKX3dg70gMnzmxOGHOM3ZucE6jFAFpskLShFNxE=g=LBy0g@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.43:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,mail-oo1-f43.google.com:helo,mail-oo1-f43.google.com:rdns];
	NEURAL_HAM(-0.00)[-0.995];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E33A13EAC1
Message-ID-Hash: CX5TC36V6Y3LYWUZUZZYXRNG2GBDAX7N
X-Message-ID-Hash: CX5TC36V6Y3LYWUZUZZYXRNG2GBDAX7N
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: John Stultz <jstultz@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Fix off by one in cma_heap_vm_fault()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CX5TC36V6Y3LYWUZUZZYXRNG2GBDAX7N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBPY3QgMywgMjAyMyBhdCAxOjMw4oCvQU0gRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBl
bnRlckBsaW5hcm8ub3JnPiB3cm90ZToNCj4NCj4gT24gTW9uLCBPY3QgMDIsIDIwMjMgYXQgMTA6
MTY6MjRBTSAtMDcwMCwgVC5KLiBNZXJjaWVyIHdyb3RlOg0KPiA+IE9uIE1vbiwgT2N0IDIsIDIw
MjMgYXQgMTI6MDTigK9BTSBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQGxpbmFyby5vcmc+
IHdyb3RlOg0KPiA+ID4NCj4gPiA+IFRoZSBidWZmZXItPnBhZ2VzW10gaGFzICJidWZmZXItPnBh
Z2Vjb3VudCIgZWxlbWVudHMgc28gdGhpcyA+IGNvbXBhcmlzb24NCj4gPiA+IGhhcyB0byBiZSBj
aGFuZ2VkIHRvID49IHRvIGF2b2lkIHJlYWRpbmcgYmV5b25kIHRoZSBlbmQgb2YgdGhlIGFycmF5
Lg0KPiA+ID4gVGhlIGJ1ZmZlci0+cGFnZXNbXSBhcnJheSBpcyBhbGxvY2F0ZWQgaW4gY21hX2hl
YXBfYWxsb2NhdGUoKS4NCj4gPiA+DQo+ID4gPiBGaXhlczogYTVkMmQyOWUyNGJlICgiZG1hLWJ1
ZjogaGVhcHM6IE1vdmUgaGVhcC1oZWxwZXIgbG9naWMgaW50byB0aGUgY21hX2hlYXAgaW1wbGVt
ZW50YXRpb24iKQ0KPiA+ID4gU2lnbmVkLW9mZi1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBl
bnRlckBsaW5hcm8ub3JnPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBz
L2NtYV9oZWFwLmMgfCAyICstDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9jbWFfaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCj4g
PiA+IGluZGV4IGVlODk5ZjhlNjcyMS4uYmVhN2U1NzRmOTE2IDEwMDY0NA0KPiA+ID4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9oZWFwcy9jbWFfaGVhcC5jDQo+ID4gPiBAQCAtMTY1LDcgKzE2NSw3IEBAIHN0YXRpYyB2
bV9mYXVsdF90IGNtYV9oZWFwX3ZtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQ0KPiA+ID4g
ICAgICAgICBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSA9IHZtZi0+dm1hOw0KPiA+ID4gICAg
ICAgICBzdHJ1Y3QgY21hX2hlYXBfYnVmZmVyICpidWZmZXIgPSB2bWEtPnZtX3ByaXZhdGVfZGF0
YTsNCj4gPiA+DQo+ID4gPiAtICAgICAgIGlmICh2bWYtPnBnb2ZmID4gYnVmZmVyLT5wYWdlY291
bnQpDQo+ID4gPiArICAgICAgIGlmICh2bWYtPnBnb2ZmID49IGJ1ZmZlci0+cGFnZWNvdW50KQ0K
PiA+ID4gICAgICAgICAgICAgICAgIHJldHVybiBWTV9GQVVMVF9TSUdCVVM7DQo+ID4gPg0KPiA+
IEhpIERhbiwNCj4gPg0KPiA+IFlvdXIgZml4IGxvb2tzIGNvcnJlY3QgdG8gbWUsIGJ1dCBJJ20g
Y3VyaW91cyBpZiB5b3Ugb2JzZXJ2ZWQgdGhpcw0KPiA+IHByb2JsZW0gb24gYSBkZXZpY2U/IFRo
ZSBtbWFwIGluIGRtYS1idWYuYyBsb29rcyBsaWtlIGl0IHByZXZlbnRzDQo+ID4gY3JlYXRpbmcg
YSBtYXBwaW5nIHRoYXQgaXMgdG9vIGxhcmdlLCBhbmQgSSB0aGluayBhbiBhY2Nlc3MgYmV5b25k
IHRoZQ0KPiA+IFZNQSBzaG91bGQgc2VnZmF1bHQgYmVmb3JlIHJlYWNoaW5nIGhlcmUuDQo+DQo+
IFRoaXMgaXMgZnJvbSBzdGF0aWMgYW5hbHlzaXMgYW5kIG5vdCBmcm9tIHRlc3RpbmcuICBZb3Ug
Y291bGQgYmUgY29ycmVjdA0KPiB0aGF0IHRoaXMgYnVnIGNhbid0IGFmZmVjdCByZWFsIGxpZmUu
DQo+DQo+IHJlZ2FyZHMsDQo+IGRhbiBjYXJwZW50ZXINCg0KT2ssIHRoYW5rcyBEYW4uDQoNClJl
dmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
