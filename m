Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6809955BA22
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 15:51:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 358423ECC0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 13:51:32 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by lists.linaro.org (Postfix) with ESMTPS id 17F6C3ECC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jun 2022 13:51:27 +0000 (UTC)
Received: by mail-qv1-f49.google.com with SMTP id y14so14734109qvs.10
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jun 2022 06:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=IO/5LQDipzPqsfiPf2oKew6mU+NIadwTqMByhggPg0I=;
        b=GOyk+HaLucKVVNkgp6ddt+d56vzd0A8t7G4KOm1AbUEU5/BeYVRzygTy8xCIa+lNPf
         Si1v7SHohI30eBXdgPyC7mZJixMFZ35tJljXaSgkh0Li26Q+p0JAIButdSaunBS85MXd
         WXo6/Mf1UKxdoyn+uUXME6FEzJ7YFXrx6o2LDBi9QFHEZtTbCLtan2urHYd2GWdvzte5
         3V0ii1UopvsZFN2VxRhYSgOy6FU3B7szGbIf0CymZAbD0Ba5wzZmNVE7nN1mxUBGPJ2n
         duSOw6JuHYdOLa2znVpddX5BlAaBgG0AbhYMuNzwZXU/IS2NZvQlGSPIK6kyuB6VzIBx
         PFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=IO/5LQDipzPqsfiPf2oKew6mU+NIadwTqMByhggPg0I=;
        b=4QZSYiOpS0gG+f1MW5mq97B3kIWXHZ8tAwy+btKNt9u7QBIxgI3vBEXzx/WDV5jYvH
         oa+vKvsNqySfrmxdKrmbwXZV7wTBTrMM+T7bZr4f1kwXd430gxZzzZQz3FG63NhDLgDo
         hIQeeUFoF1EKgPGKUZUIp5oY/UissjT1WK2YKWBNwnsOXM93n94aW4dm3uK36JY6k9gz
         x25KIPpFj0UABtnLrsDuDh73at1E+qg0WA3zqRX4n3OKBXRGq7gx5Z+tYFpGpI7seqv8
         CDrWnkG5KqGDsKguVqlHlxOW15mUTLXWs1Kiaa+C03phj0v26dpkRuxBKUU7AuvBQhH5
         Sonw==
X-Gm-Message-State: AJIora9AnDtULxKd4yR5ro2lyCURXRX4PYOIEnbLbgzbVUKoe5Y/k9GK
	yNnDMTtq1H1MF65nFHsja4irvA==
X-Google-Smtp-Source: AGRyM1uwTUgcdBTwPIHf6SCg4Il6IWSeM4ajg7IuHzzyn8HZDcP+XrUxKuXlZI8HzHEN016LOLSDHA==
X-Received: by 2002:a05:622a:5985:b0:31b:899:3093 with SMTP id gb5-20020a05622a598500b0031b08993093mr2059921qtb.616.1656337886689;
        Mon, 27 Jun 2022 06:51:26 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id s24-20020ac85ed8000000b00317c519be8bsm6996967qtx.66.2022.06.27.06.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 06:51:26 -0700 (PDT)
Message-ID: <36eef859d63640b4456360e17383635644703e3d.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Lucas Stach <l.stach@pengutronix.de>, Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>
Date: Mon, 27 Jun 2022 09:51:24 -0400
In-Reply-To: <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
	 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
	 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
	 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
	 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
	 <20220623101326.18beeab3@eldfell>
	 <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
	 <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
	 <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com>
	 <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
User-Agent: Evolution 3.44.2 (3.44.2-1.fc36) 
MIME-Version: 1.0
Message-ID-Hash: DM34GUEX6HHAIK2PTCOS6MV56NWNNHAL
X-Message-ID-Hash: DM34GUEX6HHAIK2PTCOS6MV56NWNNHAL
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DM34GUEX6HHAIK2PTCOS6MV56NWNNHAL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkxlIGpldWRpIDIzIGp1aW4gMjAyMiDDoCAxMDo1OCArMDIwMCwgTHVjYXMgU3RhY2gg
YSDDqWNyaXTCoDoNCj4gPiA+IEluIHRoZSBETUEgQVBJIGtlZXBpbmcgdGhpbmdzIG1hcHBlZCBp
cyBhbHNvIGEgdmFsaWQgdXNlLWNhc2UsIGJ1dCB0aGVuDQo+ID4gPiB5b3UgbmVlZCB0byBkbyBl
eHBsaWNpdCBkb21haW4gdHJhbnNmZXJzIHZpYSB0aGUgZG1hX3N5bmNfKiBmYW1pbHksDQo+ID4g
PiB3aGljaCBETUEtYnVmIGhhcyBub3QgaW5oZXJpdGVkLiBBZ2FpbiB0aG9zZSBzeW5jIGFyZSBu
by1vcHMgb24gY2FjaGUNCj4gPiA+IGNvaGVyZW50IGFyY2hpdGVjdHVyZXMsIGJ1dCBkbyBhbnkg
bmVjZXNzYXJ5IGNhY2hlIG1haW50ZW5hbmNlIG9uIG5vbg0KPiA+ID4gY29oZXJlbnQgYXJjaGVz
Lg0KPiA+IA0KPiA+IENvcnJlY3QsIHllcy4gQ29oZXJlbmN5IGlzIG1hbmRhdG9yeSBmb3IgRE1B
LWJ1ZiwgeW91IGNhbid0IHVzZSANCj4gPiBkbWFfc3luY18qIG9uIGl0IHdoZW4geW91IGFyZSB0
aGUgaW1wb3J0ZXIuDQo+ID4gDQo+ID4gVGhlIGV4cG9ydGVyIGNvdWxkIG9mIGNvdXJzZSBtYWtl
IHVzZSBvZiB0aGF0IGJlY2F1c2UgaGUgaXMgdGhlIG93bmVyIG9mIA0KPiA+IHRoZSBidWZmZXIu
DQo+IA0KPiBJbiB0aGUgZXhhbXBsZSBnaXZlbiBoZXJlIHdpdGggVVZDIHZpZGVvLCB5b3UgZG9u
J3Qga25vdyB0aGF0IHRoZQ0KPiBidWZmZXIgd2lsbCBiZSBleHBvcnRlZCBhbmQgbmVlZHMgdG8g
YmUgY29oZXJlbnQgd2l0aG91dA0KPiBzeW5jaHJvbml6YXRpb24gcG9pbnRzLCBkdWUgdG8gdGhl
IG1hcHBpbmcgY2FjaGUgYXQgdGhlIERSTSBzaWRlLiBTbw0KPiBWNEwyIG5hdHVyYWxseSBhbGxv
Y2F0ZXMgdGhlIGJ1ZmZlcnMgZnJvbSBDUFUgY2FjaGVkIG1lbW9yeS4gSWYgdGhlDQo+IGV4cGVj
dGF0aW9uIGlzIHRoYXQgdGhvc2UgYnVmZmVycyBhcmUgZGV2aWNlIGNvaGVyZW50IHdpdGhvdXQg
cmVseWluZw0KPiBvbiB0aGUgbWFwL3VubWFwX2F0dGFjaG1lbnQgY2FsbHMsIHRoZW4gVjRMMiBu
ZWVkcyB0byBhbHdheXMNCj4gc3luY2hyb25pemUgY2FjaGVzIG9uIERRQlVGIHdoZW4gdGhlwqAg
YnVmZmVyIGlzIGFsbG9jYXRlZCBmcm9tIENQVQ0KPiBjYWNoZWQgbWVtb3J5IGFuZCBhIHNpbmds
ZSBETUEtYnVmIGF0dGFjaG1lbnQgZXhpc3RzLiBBbmQgd2hpbGUgd3JpdGluZw0KPiB0aGlzIEkg
cmVhbGl6ZSB0aGF0IHRoaXMgaXMgcHJvYmFibHkgZXhhY3RseSB3aGF0IFY0TDIgc2hvdWxkIGRv
Li4uDQoNCkknbSBub3Qgc3VyZSB3ZSBhcmUgbWFraW5nIGFueSBwcm9ncmVzcyBoZXJlLiBEb2lu
ZyBzbyB3aWxsIGp1c3QgcmVncmVzcw0KcGVyZm9ybWFuY2Ugb2YgY29oZXJlbnQgZGV2aWNlcyB1
c2VkIHRvIHJlbmRlciBVVkMgdmlkZW8gZmVlZHMuIEluIGZhY3QsIHRoZXkNCmFyZSBhbGwgY29o
ZXJlbnQgZXhjZXB0IHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIgKG9uIEludGVsKS4gV2hhdCBteSBj
b2xsZWFndWUgd2FzDQpzdWdnZXN0aW5nIG1lIHRvIHRyeSAod2l0aCB0aGUgZXhwZWN0YXRpb24g
dGhhdCBzb21lIGFkYXB0YXRpb24gd2lsbCBiZSBuZWVkZWQsDQpwZXJoYXBzIG5ldyBzaWduYWxs
aW5nIGZsYWdzKSwgaXMgdG8gcmVhZCB0aGUgZG1hX2NvaGVyZW5jeV9tYXNrIHZhbHVlcyBvbiB0
aGUNCmRldmljZXMgdGhhdCBjYWxscyBhdHRhY2goKSBhbmQgYWRhcHQgdjRsMiBleHBvcnRlciBh
Y2NvcmRpbmdseS4NCg0KSXRzIGxpa2VseSB3cm9uZyBhcy1pcywgbm90IGludGVuZGVkIHRvIGJl
IHVzZWQgZm9yIHRoYXQsIGJ1dCB0aGUgdmFsdWUgaXMgdGhhdA0KaXQgdHJpZXMgdG8gZml4IHRo
ZSBwcm9ibGVtLCB1bmxpa2Ugd2hhdCBJJ20gcmVhZGluZyBoZXJlLg0KDQpOaWNvbGFzDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
