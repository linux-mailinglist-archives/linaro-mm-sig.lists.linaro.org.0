Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A2C532AD1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 15:07:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC3DC3F8C6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 13:07:20 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by lists.linaro.org (Postfix) with ESMTPS id 8EE544048B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 May 2022 14:53:37 +0000 (UTC)
Received: by mail-lj1-f178.google.com with SMTP id bx33so22029263ljb.12
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 May 2022 07:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=98lrMyDx9nA58tX+jL8WsvjaXFJ5bPfTC4nB38BPHxA=;
        b=x9dx0SlO4F+EkMbBg+vshW88M1gEMckHm0L13WDfzZo5c4+BVCTmrbAdnJ98gufYJe
         Qmf4hd07LDsg6x1ZYTY8fQRD+qwnKQqEaqSHOxwf8CwwGwozgEkqQ5wn3k297ne+94Lu
         10/RKKdcjfqL7DzHy/z/Kh5cWmJ1mh2DFzqTnLTS5JSAlOcy6yTHk745eI1I16HuRLPi
         +BPF/07xb2jWxwr35+dsqwKrBN7oLLmgdIR1oo1SaIAIZDK5CTJXESaVi55t+rvO8Woh
         Cyh4OYqy/lTKbOr0y3+SFEmVPs6wxSz+h7W+MS30+uUq3kWSwySQimWQ04pqLHNAe3ij
         HKNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=98lrMyDx9nA58tX+jL8WsvjaXFJ5bPfTC4nB38BPHxA=;
        b=hZKGcJhB/f6gAa+Zd98W8dgUayVk3n45+d5TThVwEhrzmDO0ievmh+WTmwoW89qolw
         mtPeXvDUqF+JWKJSZGMMm7nI0BsXc4T4Ck7Lfj42IcevTtztJ3wBdJqMS8SQqX2SwaAo
         HMpqITaTcDGRUSRfWWRTiVk14Tm6f/7DUifWQhvOuMQLd61RXgUo1UWTmFHef2An4v/d
         j7EpkH3M36kZBFRaFid8ipPTRRCzOe6E9Q45pmw7oZcV6fKLqaodkw9S8FQRn/6EvasU
         +s1BB8Bz3MFY9nGENp7YhVnAfVFklF+f82FVpUBQlVMxa+YdNMvo0mWf3RQhgUaDKQMj
         ydeg==
X-Gm-Message-State: AOAM530/q8l2ct9By4CJPFhJI00yFvvdHiWVvwQnSUrVpk8FoWCrCaOd
	YlOYxm7BxiymV8RbYxxMV05xjfnF
X-Google-Smtp-Source: ABdhPJyWvHzwFXV4y4dwE1Mg+4vxEcyCuwAK4eajYXdjTegf080biutfjdxui5eX5IbFoPm6jzW9uQ==
X-Received: by 2002:a2e:9d08:0:b0:250:d483:d734 with SMTP id t8-20020a2e9d08000000b00250d483d734mr14679734lji.406.1652799215969;
        Tue, 17 May 2022 07:53:35 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w17-20020ac254b1000000b0047255d210f8sm1611527lfk.39.2022.05.17.07.53.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:53:35 -0700 (PDT)
Message-ID: <0bc5ba24-5bfb-593e-cbd0-828ef44aabc5@linaro.org>
Date: Tue, 17 May 2022 16:53:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Neal Liu <neal_liu@aspeedtech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Felipe Balbi <balbi@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Li Yang <leoyang.li@nxp.com>
References: <20220517082558.3534161-1-neal_liu@aspeedtech.com>
 <20220517082558.3534161-3-neal_liu@aspeedtech.com>
 <96973d1d-c52c-d190-6989-3f7996dae70b@linaro.org>
 <HK0PR06MB32027CAC4BEE443F426F587380CE9@HK0PR06MB3202.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <HK0PR06MB32027CAC4BEE443F426F587380CE9@HK0PR06MB3202.apcprd06.prod.outlook.com>
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QIPMN4SIF7HXJQUMS654LHIKZSM7ILM2
X-Message-ID-Hash: QIPMN4SIF7HXJQUMS654LHIKZSM7ILM2
X-Mailman-Approved-At: Tue, 24 May 2022 13:07:16 +0000
CC: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/3] ARM: dts: aspeed: Add USB2.0 device controller node
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QIPMN4SIF7HXJQUMS654LHIKZSM7ILM2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTcvMDUvMjAyMiAxNjo1MCwgTmVhbCBMaXUgd3JvdGU6DQo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPj4gRnJvbTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxv
d3NraUBsaW5hcm8ub3JnPg0KPj4gU2VudDogVHVlc2RheSwgTWF5IDE3LCAyMDIyIDg6MDAgUE0N
Cj4+IFRvOiBOZWFsIExpdSA8bmVhbF9saXVAYXNwZWVkdGVjaC5jb20+OyBHcmVnIEtyb2FoLUhh
cnRtYW4NCj4+IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz47IFJvYiBIZXJyaW5nIDxyb2Jo
K2R0QGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YNCj4+IEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxv
d3NraStkdEBsaW5hcm8ub3JnPjsgSm9lbCBTdGFubGV5IDxqb2VsQGptcy5pZC5hdT47DQo+PiBB
bmRyZXcgSmVmZmVyeSA8YW5kcmV3QGFqLmlkLmF1PjsgRmVsaXBlIEJhbGJpIDxiYWxiaUBrZXJu
ZWwub3JnPjsgU3VtaXQNCj4+IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+OyBDaHJp
c3RpYW4gS8O2bmlnDQo+PiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPjsgR2VlcnQgVXl0dGVy
aG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz47DQo+PiBMaSBZYW5nIDxsZW95YW5nLmxpQG54
cC5jb20+DQo+PiBDYzogbGludXgtYXNwZWVkQGxpc3RzLm96bGFicy5vcmc7IGxpbnV4LXVzYkB2
Z2VyLmtlcm5lbC5vcmc7DQo+PiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPj4gbGludXgta2VybmVsQHZnZXIua2VybmVs
Lm9yZzsgbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnOw0KPj4gZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+PiBTdWJqZWN0
OiBSZTogW1BBVENIIHYyIDIvM10gQVJNOiBkdHM6IGFzcGVlZDogQWRkIFVTQjIuMCBkZXZpY2Ug
Y29udHJvbGxlcg0KPj4gbm9kZQ0KPj4NCj4+IE9uIDE3LzA1LzIwMjIgMTA6MjUsIE5lYWwgTGl1
IHdyb3RlOg0KPj4+IEFkZCBVU0IyLjAgZGV2aWNlIGNvbnRyb2xsZXIodWRjKSBub2RlIHRvIGRl
dmljZSB0cmVlIGZvciBBU1QyNjAwLg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogTmVhbCBMaXUg
PG5lYWxfbGl1QGFzcGVlZHRlY2guY29tPg0KPj4+IC0tLQ0KPj4+ICBhcmNoL2FybS9ib290L2R0
cy9hc3BlZWQtZzYuZHRzaSB8IDEwICsrKysrKysrKysNCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEw
IGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9h
c3BlZWQtZzYuZHRzaQ0KPj4+IGIvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkLWc2LmR0c2kNCj4+
PiBpbmRleCAzZDVjZTlkYTQyYzMuLjU1MTczMTNlYjJiNSAxMDA2NDQNCj4+PiAtLS0gYS9hcmNo
L2FybS9ib290L2R0cy9hc3BlZWQtZzYuZHRzaQ0KPj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2FzcGVlZC1nNi5kdHNpDQo+Pj4gQEAgLTI5OCw2ICsyOTgsMTYgQEAgdmh1YjogdXNiLXZodWJA
MWU2YTAwMDAgew0KPj4+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPj4+ICAJCX07DQo+Pj4N
Cj4+PiArCQl1ZGM6IHVkY0AxZTZhMjAwMCB7DQo+Pg0KPj4gVGhlIHNhbWUgYXMgRFRTIGluIGJp
bmRpbmdzIC0gZ2VuZXJpYyBub2RlIG5hbWUsIHBsZWFzZS4NCj4+DQo+IA0KPiBJcyBpdCBwb3Nz
aWJsZSB0byB1c2UgInVkYzogdXNiLXVkY0AxZTZhMjAwMCIgdG8gZGlzdGluZ3Vpc2ggaXQgYmV0
d2VlbiAidmh1YjogdXNiLXZodWJAMWU2YTAwMDAiPw0KDQpQb3NzaWJsZSB5ZXMgOiksIGJ1dCBu
b3QgcmVjb21tZW5kZWQgYW5kIG5vdCB3YW50ZWQuIE5vZGVzIHNob3VsZCBiZQ0KZ2VuZXJpYyBh
bmQgcHJlZml4ZXMgYXJlIGFkZGVkIG9ubHkgaWYgdGhlcmUgaXMgbm8gdW5pdCBhZGRyZXNzLiBZ
b3UgY2FuDQp0aG91Z2ggdXNlIHNvbWUgbW9yZSBkZXNjcmlwdGl2ZSBsYWJlbC4NCg0KDQpCZXN0
IHJlZ2FyZHMsDQpLcnp5c3p0b2YNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
