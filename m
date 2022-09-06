Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 531BE604349
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:33:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 659993F5AE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:33:51 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id A85DB3F1BB
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 12:34:32 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4E3186150F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 12:34:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76F1AC43144
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 12:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662467670;
	bh=8rswhesIf7F5l4+vbHZDuYiPqhm8GcAPme7YzWlPZHo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=PiNv1XmT/gpk9znR9JgMI4/e7BI81aa2qWYK/59dSmcexqrMxxpeHHNYXOVgORVT+
	 aNtMJHQF/LYb4TJ6/fr8ZBihYhKffPcMD8aD7d13wtmrjdCf+DnuOBkzByBaCaFknF
	 Ic16wmoX4NEG7XlyXqWG8ihyxJjA4XvwKBbUlyboZfuE7fZ0ukqZ36Ce90YO0bxj3Y
	 SOw2c3ksDzdeopDl2TOjx2ac2k0vxwqXeVzVqq0yLGG6BIY+eMyLwQ7jHnoM/jgpBy
	 y5DXqGO1Ciz/Mi2MxwFG9+1TVvjBtwXLIsXssWCGMTAmjfcvozXT4duoRTuhtXRc9K
	 NeUL0L7nLF39w==
Received: by mail-il1-f174.google.com with SMTP id k2so5879524ilu.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Sep 2022 05:34:30 -0700 (PDT)
X-Gm-Message-State: ACgBeo0W4j8cDv7gEPVI2suUC765s1g9a/NjQdc6cA/uuCiK8jYuYasR
	XWOpNO02qKdvSOVChMAsb5WkkqEVl/G+VgQRlf8=
X-Google-Smtp-Source: AA6agR5t2EEfOfqFt/KzpOaxtGy9C1ikdONdFt3Yo84P649uJqUH/4H9gMVQanRhVGUj+eh8dpntM2no5PF+qGxQBb0=
X-Received: by 2002:a92:c561:0:b0:2ed:a26a:8c65 with SMTP id
 b1-20020a92c561000000b002eda26a8c65mr12449599ilj.23.1662467669406; Tue, 06
 Sep 2022 05:34:29 -0700 (PDT)
MIME-Version: 1.0
References: <0-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com> <YxcYGzPv022G2vLm@infradead.org>
 <b6b5d236-c089-7428-4cc9-a08fe4f6b4a3@amd.com> <YxczjNIloP7TWcf2@nvidia.com>
In-Reply-To: <YxczjNIloP7TWcf2@nvidia.com>
From: Oded Gabbay <ogabbay@kernel.org>
Date: Tue, 6 Sep 2022 15:34:02 +0300
X-Gmail-Original-Message-ID: <CAFCwf115rwTWzgPXcpog4u5NAvH4JO+Qis_fcx0mRrNR5AQcaQ@mail.gmail.com>
Message-ID: <CAFCwf115rwTWzgPXcpog4u5NAvH4JO+Qis_fcx0mRrNR5AQcaQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@nvidia.com>
X-MailFrom: ogabbay@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WOQW2Z6UFLODXA3EX6S3L5KM5T2IVWGW
X-Message-ID-Hash: WOQW2Z6UFLODXA3EX6S3L5KM5T2IVWGW
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:32:13 +0000
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@infradead.org>, Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, KVM list <kvm@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma <linux-rdma@vger.kernel.org>, Maor Gottlieb <maorg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WOQW2Z6UFLODXA3EX6S3L5KM5T2IVWGW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBTZXAgNiwgMjAyMiBhdCAyOjQ4IFBNIEphc29uIEd1bnRob3JwZSA8amdnQG52aWRp
YS5jb20+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIFNlcCAwNiwgMjAyMiBhdCAxMjozODo0NFBNICsw
MjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+IEFtIDA2LjA5LjIyIHVtIDExOjUxIHNj
aHJpZWIgQ2hyaXN0b3BoIEhlbGx3aWc6DQo+ID4gPiA+ICt7DQo+ID4gPiA+ICsgc3RydWN0IHZm
aW9fcGNpX2RtYV9idWYgKnByaXYgPSBkbWFidWYtPnByaXY7DQo+ID4gPiA+ICsgaW50IHJjOw0K
PiA+ID4gPiArDQo+ID4gPiA+ICsgcmMgPSBwY2lfcDJwZG1hX2Rpc3RhbmNlX21hbnkocHJpdi0+
dmRldi0+cGRldiwgJmF0dGFjaG1lbnQtPmRldiwgMSwNCj4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB0cnVlKTsNCj4gPiA+IFRoaXMgc2hvdWxkIGp1c3QgdXNlIHBjaV9w
MnBkbWFfZGlzdGFuY2UuDQo+DQo+IE9LDQo+DQo+ID4gPiA+ICsgLyoNCj4gPiA+ID4gKyAgKiBT
aW5jZSB0aGUgbWVtb3J5IGJlaW5nIG1hcHBlZCBpcyBhIGRldmljZSBtZW1vcnkgaXQgY291bGQg
bmV2ZXIgYmUgaW4NCj4gPiA+ID4gKyAgKiBDUFUgY2FjaGVzLg0KPiA+ID4gPiArICAqLw0KPiA+
ID4gRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyBkb2Vzbid0IGV2ZW4gYXBwbHkgdG8gZG1hX21hcF9y
ZXNvdXJjZSwgbm90IHN1cmUNCj4gPiA+IHdoZXJlIHRoaXMgd2lzZG9tIGNvbWVzIGZyb20uDQo+
DQo+IEhhYmFuYSBkcml2ZXINCkkgaGF0ZSB0byB0aHJvdyB0aGUgYmFsbCBhdCBzb21lb25lIGVs
c2UsIGJ1dCBJIGFjdHVhbGx5IGNvcGllZCB0aGUNCmNvZGUgZnJvbSB0aGUgYW1kZ3B1IGRyaXZl
ciwgZnJvbSBhbWRncHVfdnJhbV9tZ3JfYWxsb2Nfc2d0KCkgaWlyYy4NCkFuZCBpZiB5b3UgcmVt
ZW1iZXIgSmFzb24sIHlvdSBhc2tlZCB3aHkgd2UgdXNlIHRoaXMgc3BlY2lmaWMgZGVmaW5lDQpp
biB0aGUgb3JpZ2luYWwgcmV2aWV3IHlvdSBkaWQgYW5kIEkgcmVwbGllZCB0aGUgZm9sbG93aW5n
ICh0byB3aGljaA0KeW91IGFncmVlZCBhbmQgdGhhdCdzIHdoeSB3ZSBhZGRlZCB0aGUgY29tbWVu
dCk6DQoNCiJUaGUgbWVtb3J5IGJlaGluZCB0aGlzIHNwZWNpZmljIGRtYS1idWYgaGFzICphbHdh
eXMqIHJlc2lkZWQgb24gdGhlDQpkZXZpY2UgaXRzZWxmLCBpLmUuIGl0IGxpdmVzIG9ubHkgaW4g
dGhlICdkZXZpY2UnIGRvbWFpbiAoYWZ0ZXIgYWxsLA0KaXQgbWFwcyBhIFBDSSBiYXIgYWRkcmVz
cyB3aGljaCBwb2ludHMgdG8gdGhlIGRldmljZSBtZW1vcnkpLg0KVGhlcmVmb3JlLCBpdCB3YXMg
bmV2ZXIgaW4gdGhlICdDUFUnIGRvbWFpbiBhbmQgaGVuY2UsIHRoZXJlIGlzIG5vDQpuZWVkIHRv
IHBlcmZvcm0gYSBzeW5jIG9mIHRoZSBtZW1vcnkgdG8gdGhlIENQVSdzIGNhY2hlLCBhcyBpdCB3
YXMNCm5ldmVyIGluc2lkZSB0aGF0IGNhY2hlIHRvIGJlZ2luIHdpdGguDQoNClRoaXMgaXMgbm90
IHRoZSBzYW1lIGNhc2UgYXMgd2l0aCByZWd1bGFyIG1lbW9yeSB3aGljaCBpcyBkbWEtbWFwcGVk
DQphbmQgdGhlbiBjb3BpZWQgaW50byB0aGUgZGV2aWNlIHVzaW5nIGEgZG1hIGVuZ2luZS4gSW4g
dGhhdCBjYXNlLA0KdGhlIG1lbW9yeSBzdGFydGVkIGluIHRoZSAnQ1BVJyBkb21haW4gYW5kIG1v
dmVkIHRvIHRoZSAnZGV2aWNlJw0KZG9tYWluLiBXaGVuIGl0IGlzIHVubWFwcGVkIGl0IHdpbGwg
aW5kZWVkIGJlIHJlY3ljbGVkIHRvIGJlIHVzZWQNCmZvciBhbm90aGVyIHB1cnBvc2UgYW5kIHRo
ZXJlZm9yZSB3ZSBuZWVkIHRvIHN5bmMgdGhlIENQVSBjYWNoZS4iDQoNCk9kZWQNCj4NCj4gPiA+
ID4gKyBkbWFfYWRkciA9IGRtYV9tYXBfcmVzb3VyY2UoDQo+ID4gPiA+ICsgICAgICAgICBhdHRh
Y2htZW50LT5kZXYsDQo+ID4gPiA+ICsgICAgICAgICBwY2lfcmVzb3VyY2Vfc3RhcnQocHJpdi0+
dmRldi0+cGRldiwgcHJpdi0+aW5kZXgpICsNCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgcHJp
di0+b2Zmc2V0LA0KPiA+ID4gPiArICAgICAgICAgcHJpdi0+ZG1hYnVmLT5zaXplLCBkaXIsIERN
QV9BVFRSX1NLSVBfQ1BVX1NZTkMpOw0KPiA+ID4gVGhpcyBpcyBub3QgaG93IFAyUCBhZGRyZXNz
ZXMgYXJlIG1hcHBlZC4gIFlvdSBuZWVkIHRvIHVzZQ0KPiA+ID4gZG1hX21hcF9zZ3RhYmxlIGFu
ZCBoYXZlIHRoZSBwcm9wZXIgcGdtYXAgZm9yIGl0Lg0KPiA+DQo+ID4gVGhlIHByb2JsZW0gaXMg
b25jZSBtb3JlIHRoYXQgdGhpcyBpcyBNTUlPIHNwYWNlLCBpbiBvdGhlciB3b3JkcyByZWdpc3Rl
cg0KPiA+IEJBUnMgd2hpY2ggbmVlZHMgdG8gYmUgZXhwb3J0ZWQvaW1wb3J0ZWQuDQo+ID4NCj4g
PiBBZGRpbmcgc3RydWN0IHBhZ2VzIGZvciBpdCBnZW5lcmFsbHkgc291bmRzIGxpa2UgdGhlIHdy
b25nIGFwcHJvYWNoIGhlcmUuDQo+ID4gWW91IGNhbid0IGV2ZW4gYWNjZXNzIHRoaXMgd2l0aCB0
aGUgQ1BVIG9yIHdvdWxkIHRyaWdnZXIgcG90ZW50aWFsbHkNCj4gPiB1bndhbnRlZCBoYXJkd2Fy
ZSBhY3Rpb25zLg0KPg0KPiBSaWdodCwgdGhpcyB3aG9sZSB0aGluZyBpcyB0aGUgInN0YW5kYXJk
IiB0aGF0IGRtYWJ1ZiBoYXMgYWRvcHRlZA0KPiBpbnN0ZWFkIG9mIHRoZSBzdHJ1Y3QgcGFnZXMu
IE9uY2UgdGhlIEFNRCBHUFUgZHJpdmVyIHN0YXJ0ZWQgZG9pbmcNCj4gdGhpcyBzb21lIHRpbWUg
YWdvIG90aGVyIGRyaXZlcnMgZm9sbG93ZWQuDQo+DQo+IE5vdyB3ZSBoYXZlIHN0cnVjdCBwYWdl
cywgYWxtb3N0LCBidXQgSSdtIG5vdCBzdXJlIGlmIHRoZWlyIGxpbWl0cyBhcmUNCj4gY29tcGF0
aWJsZSB3aXRoIFZGSU8/IFRoaXMgaGFzIHRvIHdvcmsgZm9yIHNtYWxsIGJhcnMgYXMgd2VsbC4N
Cj4NCj4gSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
