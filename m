Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A660779A902
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:50:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAF683EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:50:26 +0000 (UTC)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	by lists.linaro.org (Postfix) with ESMTPS id 7F4A33EF12
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Aug 2023 17:34:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=ieYA6bVx;
	spf=pass (lists.linaro.org: domain of pintu.ping@gmail.com designates 209.85.217.47 as permitted sender) smtp.mailfrom=pintu.ping@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-44756c21105so826470137.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 03 Aug 2023 10:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691084054; x=1691688854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s8Xa9pYsN9q26Cy2OfWksmVuBviyVuvzRMdasYi4RPE=;
        b=ieYA6bVxf1lbXkgHAn+hXhVfxzKe711nmI2r+8a2Pkje45GQmKLftZmaLt0qar82gg
         SFBl/K1845mX6+FAqPkGcjyrpBXYikncS74nQOppvoyKSHXe0rCclfsEAXrPauDBdjLV
         e25KI/Uu6/whFSVJCUzOwGJkV3uYaP9OmOzDMNjjkk1ts8gnSQW1ex6gNo+0kzwO65XL
         HyypX83EJT7/21befwOJ9uRlgd3lhXqtj1LN6iNBdvKWKSCrS9QQZFXiZGxHkCMMLy82
         +seRRUC93Y1mRKPJn8r746QD8Gi1bfCC2+B+iopA0nXA09o5X8xylmqFAP/A/rLnnA0P
         /oIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691084054; x=1691688854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s8Xa9pYsN9q26Cy2OfWksmVuBviyVuvzRMdasYi4RPE=;
        b=YsuHEI3Dt+nNwkdvQAsep4tPZnawvekoFPhZfUvXQmsbtdHDsMAYN22jBafEfHsIvW
         QGWbjGvId7/U7lcDjKgclFzYJwE99orX3PEPTbBfo3K7+WAnspavW+ZaqCibK48/JuD/
         jxkGVHiTFnFQ5US8DlBjJgBqBhCjC1XgP0tVo5wGMOTuADqW1+PqT1MlIqk62JpMBDjy
         Nd3sVfGAG1G37wMyMIUNHBDD/AXH2GL4MWLumnLb8Lui+9FC4C+wxON/ZV2DxYT7dkfE
         zoiO0mWAQHZUr2VJXwyUPDV5L0HKVNtGECrn8s75O/y1VYTZdql1LcXaqPeU8Yz0p7gK
         kNiA==
X-Gm-Message-State: ABy/qLZa/2EI3BYdB83HlGrLKBNXUurI+mornHIr+c9IL6MSgKt/ldnK
	JSBnPJEixNme0jT/4KRP+aqJ6OKQ/LZZiKQPUx8=
X-Google-Smtp-Source: APBJJlG6pjOoG0q6RAsawh+9qeUBUHt8XE1GKbQlIBPYmQFLRffHoU6WGPDLy5lU6fh2CQ1SS4cFWeU/BvylteONzOI=
X-Received: by 2002:a05:6102:d8a:b0:443:5524:8f8b with SMTP id
 d10-20020a0561020d8a00b0044355248f8bmr4828038vst.4.1691084054017; Thu, 03 Aug
 2023 10:34:14 -0700 (PDT)
MIME-Version: 1.0
References: <1690598115-26287-1-git-send-email-quic_pintu@quicinc.com>
 <20230731112155.GA3662@lst.de> <CAOuPNLjnfq1JefngtNrg0Q+JdMTSRz+eEqxGQJFfx9+af+k9WA@mail.gmail.com>
 <20230801171838.GA14599@lst.de> <CANDhNCq+3OEosUcQJ5GFgk+5OyG+JqXKM43UAo0aPz-V27OgAA@mail.gmail.com>
 <20230802094725.GA28241@lst.de>
In-Reply-To: <20230802094725.GA28241@lst.de>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Thu, 3 Aug 2023 23:04:02 +0530
Message-ID: <CAOuPNLjAOk0BOXDcjbY+evX_uxbZyptrJXMf0ULhReECzEX0CQ@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7F4A33EF12
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.47:from]
X-MailFrom: pintu.ping@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2AEMLBUTTYPZ337CBSM355TCQ2Y66LVF
X-Message-ID-Hash: 2AEMLBUTTYPZ337CBSM355TCQ2Y66LVF
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:50 +0000
CC: John Stultz <jstultz@google.com>, Pintu Kumar <quic_pintu@quicinc.com>, linux-kernel@vger.kernel.org, akpm@linux-foundation.org, linux-mm@kvack.org, robin.murphy@arm.com, iommu@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-contiguous: define proper name for global cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2AEMLBUTTYPZ337CBSM355TCQ2Y66LVF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFdlZCwgMiBBdWcgMjAyMyBhdCAxNToxNywgQ2hyaXN0b3BoIEhlbGx3aWcgPGhj
aEBsc3QuZGU+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIEF1ZyAwMSwgMjAyMyBhdCAxMDozOTowNFBN
IC0wNzAwLCBKb2huIFN0dWx0eiB3cm90ZToNCj4gPiBTbywgZm9yZ2l2ZSBtZSwgSSd2ZSBub3Qg
aGFkIGEgY2hhbmNlIHRvIGxvb2sgaW50byB0aGlzLCBidXQgbXkNCj4gPiByZWNvbGxlY3Rpb24g
d2FzICJyZXNlcnZlZCIgaXMgdGhlIG5hbWUgd2Ugc2VlIG9uIHg4NiwgYnV0IG90aGVyIG5hbWVz
DQo+ID4gYXJlIHBvc3NpYmx5IHByb3ZpZGVkIHZpYSB0aGUgZHRzIG5vZGU/DQo+DQpObywgSSB0
aGluayAicmVzZXJ2ZWQiIGlzIHRoZSBuYW1lIGhhcmQtY29kZWQgKGZvciBhbGwgYXJjaCkgaW4g
S2VybmVsDQpmb3IgZ2xvYmFsLWNtYS4NClNvLCBJIGRvbid0IHRoaW5rIHRoaXMgaXMgeDg2IHNw
ZWNpZmljLiBJIGFtIGNoZWNraW5nIG9uIGFybTMyIGl0c2VsZi4NCldoZW4gd2UgY2FuIGRtYV9h
bGxvY19jb2hlcmVudCB3ZSBzZWUgdGhlc2UgaW4gdGhlIGxvZ3MgKGlmIGR0cyByZWdpb24NCmlz
IG5vdCBwcmVzZW50KS4NCmNtYTogY21hX2FsbG9jKGNtYSAocHRydmFsKSwgbmFtZTogcmVzZXJ2
ZWQsIGNvdW50IDY0LCBhbGlnbiA2KQ0KTm93LCB3aXRoIHRoaXMgY2hhbmdlIHdlIHdpbGwgc2Vl
IHRoaXM6DQpjbWE6IGNtYV9hbGxvYyhjbWEgKHB0cnZhbCksIG5hbWU6IGdsb2JhbC1jbWEtcmVn
aW9uLCBjb3VudCA2NCwgYWxpZ24gNikNCg0KPiBJbmRlZWQsIGRtYV9jb250aWd1b3VzX2RlZmF1
bHRfYXJlYSBjYW4gYWxzbyBiZSBzZXQgdGhyb3VnaA0KPiBybWVtX2NtYV9zZXR1cCwgd2hpY2gg
dGhlbiB0YWtlcyB0aGUgbmFtZSBmcm9tIERULg0KPg0KSSB0aGluayB0aGlzIGlzIGEgZGlmZmVy
ZW50IGNhc2UuIElmIERUIGVudHJ5IGlzIHByZXNlbnQgd2UgZ2V0IHRoaXM6DQpSZXNlcnZlZCBt
ZW1vcnk6IGNyZWF0ZWQgQ01BIG1lbW9yeSBwb29sIGF0IDB4OTgwMDAwMDAsIG5hbWU6IG5hbWU6
DQpsaW51eCxjbWEsIHNpemUgMTI4IE1pQg0KY21hOiBjbWFfYWxsb2MoY21hIChwdHJ2YWwpLCBu
YW1lOiBsaW51eCxjbWEsIGNvdW50IDY0LCBhbGlnbiA2KQ0KDQpIZXJlIHdlIGFyZSB0YWxraW5n
IGFib3V0IHRoZSBkZWZhdWx0IGhhcmQtY29kZWQgbmFtZSBpbiBLZXJuZWwgY29kZQ0KaWYgRFQg
aXMgbm90IGRlZmluZWQuDQpTbywgaW4gb25lIG9mIHRoZSBib2FyZHMsIHRoaXMgRFQgZW50cnkg
d2FzIG5vdCBwcmVzZW50IGFuZCBpdCBzaG93cw0KYXMgInJlc2VydmVkIi4NCg0KPiA+IEkgYmVs
aWV2ZSBvbiB0aGUgaGlrZXkgYm9hcmQgaXRzICJsaW51eCxjbWEiIGlzIHRoZSBuYW1lLCBzbyBm
b3JjaW5nDQo+ID4gaXQgdG8gcmVzZXJ2ZWQgd291bGQgYnJlYWsgdGhhdC4NCj4gPg0KWWVzLCBl
dmVyeXdoZXJlIGluIHRoZSBEVCBpdCdzIGRlZmluZWQgYXMgImxpbnV4LGNtYSIuDQpZb3UgbWVh
biB0aGlzIGFsc28gc2hvdWxkIGJlIGNoYW5nZWQgdG8gImxpbnV4LGNtYS1nbG9iYWwtcmVnaW9u
Ig0KZXZlcnl3aGVyZSB3aXRoIHRoaXMgY2hhbmdlID8NCg0KPiA+IE1heWJlIGluc3RlYWQgYWRk
IGEgY29tcGF0IGNvbmZpZyBvcHRpb24gdG8gZm9yY2UgdGhlIGNtYSBuYW1lIChzbyB4ODYNCj4g
PiBjYW4gc2V0IGl0IHRvICJkZWZhdWx0IiBpZiBuZWVkZWQpPw0KPg0KWWVzLCBoYXZpbmcgaXQg
aW4gY29uZmlnIGlzIGFsc28gYSBnb29kIG9wdGlvbiBpbnN0ZWFkIG9mIGhhcmQtY29kaW5nIGlu
IEtlcm5lbC4NCj4NCj4gSSB0aGluayB3ZSdsbCBqdXN0IG5lZWQgdG8gbGVhdmUgaXQgYXMtaXMu
ICBJIHdpdGggZG1hLWhlYXBzIGhhZCBuZXZlcg0KPiBleHBvc2VkIHRoZSBuYW1lIHRvIHVzZXJz
cGFjZSwgYnV0IHdlJ2xsIGhhdmUgdG8gbNGWdmUgd2l0aCBpdCBub3cuDQoNCkNhbiB5b3UgcG9p
bnQgbWUgdG8gdGhlIHVzZXJzcGFjZSB1dGlsaXR5IHdlIGFyZSB0YWxraW5nIGFib3V0IGhlcmUg
Pw0KSSB0aGluayB3ZSBzaG91bGQgbm90IHdvcnJ5IG11Y2ggYWJvdXQgdXNlcnNwYWNlIG5hbWUg
ZXhwb3N1cmUuDQpJIGd1ZXNzIGl0IHNob3VsZCBmZXRjaCB3aGF0ZXZlciBpcyBkZWNsYXJlZCBp
biBLZXJuZWwgb3IgRFRTLCByaWdodCA/DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
