Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B965532473
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 09:52:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 380463F8BE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 07:52:39 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by lists.linaro.org (Postfix) with ESMTPS id 79A813ED2B
	for <linaro-mm-sig@lists.linaro.org>; Sat, 14 May 2022 20:21:59 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id bx33so13923244ljb.12
        for <linaro-mm-sig@lists.linaro.org>; Sat, 14 May 2022 13:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Y5VRY1Vg5U7FZOYxaP3jhw1GgftqMUz+kaXgWZO/zzo=;
        b=a9IbvRUaYC8Wc0vyxgFwHAxgU9mSVnhYPrySypKYv+QMWSeS0lIY4wxVjb/+x54LWq
         Ldc1cXpfGj905mcwbZhrOB2SdRWkkkJTcN8XmsLxZM3o1iVoUToVGPQqNwOLRWQqNkFV
         hvbA4emBw/8q79PftXEPsH+kSyqRfafhujdgE+P8fJGteGOcK7xMkyuufwBAw8bIrRFa
         gJuSbkhJHloXm+OQ9D+IZ7DsfUCXfPkNBD+eHfglA2cDMFd0vT8MnG+Zmj8mMlPJwnb4
         yTLeFaHM+EYpglB82UoRIxyn6Isw1Z9/jYS70nsrx3FRo+XYLmINHoUjvQQkh8OJSE4S
         gzNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Y5VRY1Vg5U7FZOYxaP3jhw1GgftqMUz+kaXgWZO/zzo=;
        b=PGSJdopIDab2jL75MTW+PzycKw04Xf75hzBMFBGTyPia1klFLhqQxWoVw3PbgbEotC
         cO3isL0/WE+f16CXwhgIMP6acI022NOZ5EuCQ8ttY0wKhluewzjPGrt/ez4ZwQdFdvy4
         MYx0GpoTKwStsHksLcb0qgsNCg0GLV4IplAvZmgbgMUIKEFkBtztnD/dIAn3wh2pzswj
         KqXEiiRcUnzcJS7ZMfh/XgHm0WBAj81rkOtfgrWx2LPK4yu119610GlmQkaZAP2mhhXq
         t4lkQ6LtWMlq3x4ujnEZ91aWr0L6ByGRVGfV4DcjsarJhLIe02GjZ5btWrTRVaRjbtar
         m7+g==
X-Gm-Message-State: AOAM530njHpOWi8r9/YvRr2vyYtK6Fm4atUlppuBZ1gEUu0c/kkk6Lk/
	iydso/PwTViyzDZX1ebrKP8n2Ug4
X-Google-Smtp-Source: ABdhPJzLyuqdkaQnJF2ClXg0Jx1DgHwKnG2ziP/ISkfSmc674JtqB4hc3nDy/CLvL1Xr59yD6peNiw==
X-Received: by 2002:a05:651c:98d:b0:250:976b:4a0e with SMTP id b13-20020a05651c098d00b00250976b4a0emr6642090ljq.494.1652559718267;
        Sat, 14 May 2022 13:21:58 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z2-20020a2e9b82000000b0024f3d1daeaesm942625lji.54.2022.05.14.13.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 13:21:57 -0700 (PDT)
Message-ID: <567d135b-3d40-9958-e000-1357020b5650@linaro.org>
Date: Sat, 14 May 2022 22:21:56 +0200
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
References: <20220513065728.857722-1-neal_liu@aspeedtech.com>
 <20220513065728.857722-4-neal_liu@aspeedtech.com>
 <da78aaf6-c9ae-d591-fdc4-723f097ace2c@linaro.org>
 <HK0PR06MB3202679A7FABAF7D0D045F0880CA9@HK0PR06MB3202.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <HK0PR06MB3202679A7FABAF7D0D045F0880CA9@HK0PR06MB3202.apcprd06.prod.outlook.com>
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GZU24PHIJVWX3UD5AI53Z5VQMTXD6IMH
X-Message-ID-Hash: GZU24PHIJVWX3UD5AI53Z5VQMTXD6IMH
X-Mailman-Approved-At: Tue, 24 May 2022 07:52:35 +0000
CC: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, BMC-SW <BMC-SW@aspeedtech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] dt-bindings: usb: add documentation for aspeed udc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GZU24PHIJVWX3UD5AI53Z5VQMTXD6IMH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTMvMDUvMjAyMiAxNzozOSwgTmVhbCBMaXUgd3JvdGU6DQo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPj4gRnJvbTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxv
d3NraUBsaW5hcm8ub3JnPg0KPj4gU2VudDogRnJpZGF5LCBNYXkgMTMsIDIwMjIgNTowNyBQTQ0K
Pj4gVG86IE5lYWwgTGl1IDxuZWFsX2xpdUBhc3BlZWR0ZWNoLmNvbT47IEdyZWcgS3JvYWgtSGFy
dG1hbg0KPj4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsgUm9iIEhlcnJpbmcgPHJvYmgr
ZHRAa2VybmVsLm9yZz47DQo+PiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93
c2tpK2R0QGxpbmFyby5vcmc+OyBKb2VsIFN0YW5sZXkNCj4+IDxqb2VsQGptcy5pZC5hdT47IEFu
ZHJldyBKZWZmZXJ5IDxhbmRyZXdAYWouaWQuYXU+OyBGZWxpcGUgQmFsYmkNCj4+IDxiYWxiaUBr
ZXJuZWwub3JnPjsgU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz47IENocmlz
dGlhbg0KPj4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+OyBHZWVydCBVeXR0ZXJo
b2V2ZW4gPGdlZXJ0QGxpbnV4LQ0KPj4gbTY4ay5vcmc+OyBMaSBZYW5nIDxsZW95YW5nLmxpQG54
cC5jb20+DQo+PiBDYzogbGludXgtYXNwZWVkQGxpc3RzLm96bGFicy5vcmc7IGxpbnV4LXVzYkB2
Z2VyLmtlcm5lbC5vcmc7DQo+PiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC0NCj4+IGtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc7IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZzsgZHJpLQ0KPj4gZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc7IEJNQy1TVyA8
Qk1DLQ0KPj4gU1dAYXNwZWVkdGVjaC5jb20+DQo+PiBTdWJqZWN0OiBSZTogW1BBVENIIDMvM10g
ZHQtYmluZGluZ3M6IHVzYjogYWRkIGRvY3VtZW50YXRpb24gZm9yIGFzcGVlZA0KPj4gdWRjDQo+
Pg0KPj4gT24gMTMvMDUvMjAyMiAwODo1NywgTmVhbCBMaXUgd3JvdGU6DQo+Pj4gQWRkIGRldmlj
ZSB0cmVlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIEFzcGVlZCBVU0IyLjAgRGV2aWNl
DQo+Pj4gQ29udHJvbGxlci4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IE5lYWwgTGl1IDxuZWFs
X2xpdUBhc3BlZWR0ZWNoLmNvbT4NCj4+PiAtLS0NCj4+PiAgLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvdXNiL2FzcGVlZCx1ZGMueWFtbCAgIHwgNTINCj4+ICsrKysrKysrKysrKysrKysrKysNCj4+
PiAgMSBmaWxlIGNoYW5nZWQsIDUyIGluc2VydGlvbnMoKykNCj4+PiAgY3JlYXRlIG1vZGUgMTAw
NjQ0DQo+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9hc3BlZWQsdWRj
LnlhbWwNCj4+DQo+PiBQbGVhc2UgbmFtZSB0aGUgZmlsZSBhcyBmaXJzdCBjb21wYXRpYmxlLCBz
byAiYXNwZWVkLGFzdDI2MDAtdWRjLnlhbWwiDQo+IA0KPiBPa2F5LCBJIGNvdWxkIHJlbmFtZSBp
dCBmb3IgbmV4dCBwYXRjaCBpZiB5b3UgcHJlZmVycmVkLg0KPiBCdXQgdGhlcmUgYXJlIGxvdHMg
b2YgeWFtbCBmaWxlcyB3aGljaCBhcmUgbm90IG5hbWVkIGFzIGZpcnN0IGNvbXBhdGlibGUuDQoN
ClllcywgSSBrbm93LCBJIHF1aXRlIGxpa2VseSBJIGFsc28gcHJvZHVjZWQgc3VjaCBiaW5kaW5n
cywgYnV0IGENCnNwZWNpZmljIG5hbWUgaXMgcmF0aGVyIHByZWZlcnJlZC4gT3RoZXJ3aXNlIHlv
dSB3aWxsIGhhdmUgYSBkaWZmaWN1bHQNCm5hbWluZyBjaG9pY2Ugd2hlbiB5b3VyIG5leHQgQXNw
ZWVkIFVEQyByZXF1aXJlcyBuZXcgYmluZGluZ3MgZmlsZQ0KYmVjYXVzZSBvZiBzb21lIGRpZmZl
cmVuY2VzIChub3QgeWV0IGtub3duIG5vdykuDQoNCj4gDQo+Pg0KPj4+DQo+Pj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvYXNwZWVkLHVkYy55YW1s
DQo+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2FzcGVlZCx1ZGMu
eWFtbA0KPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi5k
MWQyZjc3ZDFjNTQNCj4+PiAtLS0gL2Rldi9udWxsDQo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9hc3BlZWQsdWRjLnlhbWwNCj4+PiBAQCAtMCwwICsxLDUy
IEBADQo+Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNE
LTItQ2xhdXNlKSAjIENvcHlyaWdodA0KPj4+ICsoYykgMjAyMCBGYWNlYm9vayBJbmMuDQo+Pj4g
KyVZQU1MIDEuMg0KPj4+ICstLS0NCj4+PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2No
ZW1hcy91c2IvYXNwZWVkLHVkYy55YW1sIw0KPj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJl
ZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMNCj4+PiArDQo+Pj4gK3RpdGxlOiBBU1BFRUQg
VVNCIDIuMCBEZXZpY2UgQ29udHJvbGxlcg0KPj4+ICsNCj4+PiArbWFpbnRhaW5lcnM6DQo+Pj4g
KyAgLSBOZWFsIExpdSA8bmVhbF9saXVAYXNwZWVkdGVjaC5jb20+DQo+Pj4gKw0KPj4+ICtkZXNj
cmlwdGlvbjogfCsNCj4+PiArICBUaGUgQVNQRUVEIFVTQiAyLjAgRGV2aWNlIENvbnRyb2xsZXIg
aW1wbGVtZW50cyAxIGNvbnRyb2wgZW5kcG9pbnQNCj4+PiArYW5kDQo+Pj4gKyAgNCBnZW5lcmlj
IGVuZHBvaW50cyBmb3IgQVNUMjYweC4NCj4+PiArDQo+Pj4gKyAgU3VwcG9ydHMgaW5kZXBlbmRl
bnQgRE1BIGNoYW5uZWwgZm9yIGVhY2ggZ2VuZXJpYyBlbmRwb2ludC4NCj4+PiArICBTdXBwb3J0
cyAzMi8yNTYgc3RhZ2VzIGRlc2NyaXB0b3IgbW9kZSBmb3IgYWxsIGdlbmVyaWMgZW5kcG9pbnRz
Lg0KPj4+ICsNCj4+PiArcHJvcGVydGllczoNCj4+PiArICBjb21wYXRpYmxlOg0KPj4+ICsgICAg
ZW51bToNCj4+PiArICAgICAgLSBhc3BlZWQsYXN0MjYwMC11ZGMNCj4+PiArDQo+Pj4gKyAgcmVn
Og0KPj4+ICsgICAgbWF4SXRlbXM6IDENCj4+PiArDQo+Pj4gKyAgY2xvY2tzOg0KPj4+ICsgICAg
bWF4SXRlbXM6IDENCj4+PiArDQo+Pj4gKyAgaW50ZXJydXB0czoNCj4+PiArICAgIG1heEl0ZW1z
OiAxDQo+Pg0KPj4gTm8gY2hpbGQgcHJvcGVydGllcz8gTm8gcG9ydHMgb3IgYW55IG90aGVyIGRl
dmljZXM/IE5vIHVzYi1oY2QueWFtbD8NCj4gDQo+IEFzcGVlZCB1ZGMgb25seSBoYXMgMSBwb3J0
LCBubyBuZWVkIGV4dHJhIHByb3BlcnRpZXMgZm9yIG5vdy4NCg0KT0sNCg0KPiANCj4+PiArDQo+
Pj4gK3JlcXVpcmVkOg0KPj4+ICsgIC0gY29tcGF0aWJsZQ0KPj4+ICsgIC0gcmVnDQo+Pj4gKyAg
LSBjbG9ja3MNCj4+PiArICAtIGludGVycnVwdHMNCj4+PiArDQo+Pj4gK2FkZGl0aW9uYWxQcm9w
ZXJ0aWVzOiBmYWxzZQ0KPj4+ICsNCj4+PiArZXhhbXBsZXM6DQo+Pj4gKyAgLSB8DQo+Pj4gKyAg
ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svYXNwZWVkLWNsb2NrLmg+DQo+Pj4gKyAgICB1
ZGM6IHVkY0AxZTZhMjAwMCB7DQo+Pg0KPj4gTm9kZSBuYW1lOiB1c2INCj4gIA0KPiAidWRjIiBp
cyBtb3JlIHJlY29nbml6YWJsZSB0aGFuICJ1c2IiIEkgdGhpbmsuICJ1c2IiIGlzIHRvbyBnZW5l
cmFsLCBjYW4gYmUgdmFyaW91cyBsaWtlIGhvc3Qgb3IgZGV2aWNlLg0KDQpJdCdzIHN0aWxsIHJl
cXVpcmVkIGJ5IHNjaGVtYSBmb3IgbW9zdCBvZiBVU0IgaG9zdCBjb250cm9sbGVycy4gRXhpc3Rp
bmcNClVTQiBkZXZpY2UgY29udHJvbGxlcnMgdXNlIHVzYiBhcyB3ZWxsIChleGNlcHQgQXRtZWwg
bWVudGlvbmluZyBnYWRnZXQpDQpHZW5lcmljIG5hbWUgaXMgYWxzbyBleHBlY3RlZCBieSBEZXZp
Y2V0cmVlIHNwZWMgYW5kICJ1ZGMiIGlzIG5vdCBvbiBhDQpsaXN0IG9mIGV4YW1wbGVzIG9mIGdl
bmVyaWMgbmFtZXMgKHVzYiBpcykuDQoNCg0KQmVzdCByZWdhcmRzLA0KS3J6eXN6dG9mDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
