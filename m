Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6C150A65E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 18:57:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDD243EF8C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:57:53 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id DEB213E9E4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 13:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649336921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PYiG2jwpKviTbC79FBF6SS2JRtmy5ygo1J5oP0vh2gA=;
	b=HbR3t+YVYjSgn7o5loEbfr0XTV43e7/wu+kWI1RviXXiIChvrzUaNNSGwTLW2rRND4Hk4z
	vsVX4u0C9ZjfjpEJLBbWIpDpku+MbYYEfz3/lX+SObxn8w3ztAsqgcuN1u54GyirfPfhTY
	zf6t+42AkUTUgjAOSHUtPPWSl6FqSX4=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-ZTzKu-noMd2CqVdS0wJx3g-1; Thu, 07 Apr 2022 09:08:40 -0400
X-MC-Unique: ZTzKu-noMd2CqVdS0wJx3g-1
Received: by mail-wr1-f70.google.com with SMTP id j18-20020adfa552000000b002060a011303so1249717wrb.14
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 06:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PYiG2jwpKviTbC79FBF6SS2JRtmy5ygo1J5oP0vh2gA=;
        b=UAVryy9Pt9Uiea7R/NVSm/J/UiT1ieMtpxGAjlM+cAIBKbKTYY+E6wQkZNnpVApWcV
         rwRnDPswfb+lsMQ6/z68O0wCfTlP1txoiGHyG7wJhPP4S4vzqsxlLRIP+ZywMw6EYlEM
         83gctiqD9V4pQ8OsBSMuXBimmV6tP9ej+MLuclBOcghZFuKj4ZuqirXvsMpVb9INOpyG
         OUmMHIqyQihYZhgFUQ4THfShOmBUHs6xK/k/MHJ4tnIRxPd+ck5wFUZ9hLgE7FOw0eP5
         dBKbAYKmkO3nfHTdg8dc2KXh8afePb1VYVOV1Lu/cFG2AREICks91AyqvzraWRmuFMYl
         zEkQ==
X-Gm-Message-State: AOAM533xVe0D3jSm6eC4q1s2mPiDwATpsIGe3NU9aXIpw3pe7PytmA/P
	SqnKJKmdqcp+3ViPGmjWZCGk0+A8RLYDp7W80dN3dhyhaJdyw2E9oQOoI55S+KaLL+5WVHp0xwQ
	9FY26hqPjphtim5SnMxFHPAGMcBE=
X-Received: by 2002:adf:b60a:0:b0:206:4ba:395c with SMTP id f10-20020adfb60a000000b0020604ba395cmr10724761wre.447.1649336919221;
        Thu, 07 Apr 2022 06:08:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwusfCJViMsUP5Xtwk6CXg/MU53VnwwpUv0/qc7h8bleBl1fGekB+z/417y+QDwXAGl1LwU0w==
X-Received: by 2002:adf:b60a:0:b0:206:4ba:395c with SMTP id f10-20020adfb60a000000b0020604ba395cmr10724750wre.447.1649336919002;
        Thu, 07 Apr 2022 06:08:39 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id e3-20020a056000120300b002061837b5b4sm8531890wrx.85.2022.04.07.06.08.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 06:08:38 -0700 (PDT)
Message-ID: <29677a4e-42dc-d35e-f487-f8b344678bee@redhat.com>
Date: Thu, 7 Apr 2022 15:08:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 intel-gfx@lists.freedesktop.org
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-3-christian.koenig@amd.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220407085946.744568-3-christian.koenig@amd.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SDAKFOQHNAXY7ANNVCJFXLHNBAP5EKVF
X-Message-ID-Hash: SDAKFOQHNAXY7ANNVCJFXLHNBAP5EKVF
X-Mailman-Approved-At: Thu, 21 Apr 2022 16:57:49 +0000
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/15] dma-buf: specify usage while adding fences to dma_resv obj v7
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SDAKFOQHNAXY7ANNVCJFXLHNBAP5EKVF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQ2hyaXN0aWFuLA0KDQpPbiA0LzcvMjIgMTA6NTksIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6DQo+IEluc3RlYWQgb2YgZGlzdGluZ3RpbmcgYmV0d2VlbiBzaGFyZWQgYW5kIGV4Y2x1c2l2
ZSBmZW5jZXMgc3BlY2lmeQ0KPiB0aGUgZmVuY2UgdXNhZ2Ugd2hpbGUgYWRkaW5nIGZlbmNlcy4N
Cj4gDQo+IFJld29yayBhbGwgZHJpdmVycyB0byB1c2UgdGhpcyBpbnRlcmZhY2UgaW5zdGVhZCBh
bmQgZGVwcmVjYXRlIHRoZSBvbGQgb25lLg0KPiANCg0KVGhpcyBwYXRjaCBicm9rZSBjb21waWxh
dGlvbiBmb3IgdGhlIHZjNCBEUk0gZHJpdmVyLiBJJ3ZlIHRoaXMgcGF0Y2ggbG9jYWxseQ0Kd2hp
Y2ggc2VlbXMgdG8gd29yayBidXQgSSBkb24ndCBrbm93IGVub3VnaCBhYm91dCB0aGUgZmVuY2Ug
QVBJIHRvIGtub3cgaWYNCmlzIGNvcnJlY3QuDQoNCklmIHlvdSB0aGluayBpcyB0aGUgcHJvcGVy
IGZpeCB0aGVuIEkgY2FuIHBvc3QgaXQgYXMgYSBwYXRjaC4NCg0KPkZyb20gM2U5NmRiNDgyN2Vm
NjliMzg5Mjc0NzY2NTljYmI0NDY5YTAyNDZlNiBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDENCkZy
b206IEphdmllciBNYXJ0aW5leiBDYW5pbGxhcyA8amF2aWVybUByZWRoYXQuY29tPg0KRGF0ZTog
VGh1LCA3IEFwciAyMDIyIDE0OjU0OjA3ICswMjAwDQpTdWJqZWN0OiBbUEFUQ0hdIGRybS92YzQ6
IFVzZSBuZXdlciBmZW5jZSBBUEkgdG8gZml4IGJ1aWxkIGVycm9yDQoNClRoZSBjb21taXQgNzM1
MTFlZGY4YjE5ICgiZG1hLWJ1Zjogc3BlY2lmeSB1c2FnZSB3aGlsZSBhZGRpbmcgZmVuY2VzIHRv
DQpkbWFfcmVzdiBvYmogdjciKSBwb3J0ZWQgYWxsIHRoZSBEUk0gZHJpdmVycyB0byB1c2UgdGhl
IG5ld2VyIGZlbmNlIEFQSQ0KdGhhdCBzcGVjaWZpZXMgdGhlIHVzYWdlIHdpdGggdGhlIGVudW0g
ZG1hX3Jlc3ZfdXNhZ2UgcmF0aGVyIHRoYW4gZG9pbmcNCmFuIGV4cGxpY2l0IHNoYXJlZCAvIGV4
Y2x1c2l2ZSBkaXN0aW5jdGlvbi4NCg0KQnV0IHRoZSBjb21taXQgZGlkbid0IGRvIGl0IHByb3Bl
cmx5IGluIHR3byBjYWxsZXJzIG9mIHRoZSB2YzQgZHJpdmVyLA0KbGVhZGluZyB0byBidWlsZCBl
cnJvcnMuDQoNCkZpeGVzOiA3MzUxMWVkZjhiMTkgKCJkbWEtYnVmOiBzcGVjaWZ5IHVzYWdlIHdo
aWxlIGFkZGluZyBmZW5jZXMgdG8gZG1hX3Jlc3Ygb2JqIHY3IikNClNpZ25lZC1vZmYtYnk6IEph
dmllciBNYXJ0aW5leiBDYW5pbGxhcyA8amF2aWVybUByZWRoYXQuY29tPg0KLS0tDQogZHJpdmVy
cy9ncHUvZHJtL3ZjNC92YzRfZ2VtLmMgfCA2ICsrKystLQ0KIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vdmM0L3ZjNF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2dlbS5jDQppbmRleCAz
ODU1MDMxN2UwMjUuLjllYWYzMDRmYzIwZCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS92
YzQvdmM0X2dlbS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9nZW0uYw0KQEAgLTU0
Niw3ICs1NDYsOCBAQCB2YzRfdXBkYXRlX2JvX3NlcW5vcyhzdHJ1Y3QgdmM0X2V4ZWNfaW5mbyAq
ZXhlYywgdWludDY0X3Qgc2Vxbm8pDQogCQlibyA9IHRvX3ZjNF9ibygmZXhlYy0+Ym9baV0tPmJh
c2UpOw0KIAkJYm8tPnNlcW5vID0gc2Vxbm87DQogDQotCQlkbWFfcmVzdl9hZGRfZmVuY2UoYm8t
PmJhc2UuYmFzZS5yZXN2LCBleGVjLT5mZW5jZSk7DQorCQlkbWFfcmVzdl9hZGRfZmVuY2UoYm8t
PmJhc2UuYmFzZS5yZXN2LCBleGVjLT5mZW5jZSwNCisJCQkJICAgRE1BX1JFU1ZfVVNBR0VfUkVB
RCk7DQogCX0NCiANCiAJbGlzdF9mb3JfZWFjaF9lbnRyeShibywgJmV4ZWMtPnVucmVmX2xpc3Qs
IHVucmVmX2hlYWQpIHsNCkBAIC01NTcsNyArNTU4LDggQEAgdmM0X3VwZGF0ZV9ib19zZXFub3Mo
c3RydWN0IHZjNF9leGVjX2luZm8gKmV4ZWMsIHVpbnQ2NF90IHNlcW5vKQ0KIAkJYm8gPSB0b192
YzRfYm8oJmV4ZWMtPnJjbF93cml0ZV9ib1tpXS0+YmFzZSk7DQogCQliby0+d3JpdGVfc2Vxbm8g
PSBzZXFubzsNCiANCi0JCWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKGJvLT5iYXNlLmJhc2UucmVz
diwgZXhlYy0+ZmVuY2UpOw0KKwkJZG1hX3Jlc3ZfYWRkX2ZlbmNlKGJvLT5iYXNlLmJhc2UucmVz
diwgZXhlYy0+ZmVuY2UsDQorCQkJCSAgIERNQV9SRVNWX1VTQUdFX1dSSVRFKTsNCiAJfQ0KIH0N
CiANCi0tIA0KMi4zNS4xDQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KDQpKYXZpZXIgTWFydGluZXog
Q2FuaWxsYXMNCkxpbnV4IEVuZ2luZWVyaW5nDQpSZWQgSGF0DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
