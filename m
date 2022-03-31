Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDDF4ED3DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 31 Mar 2022 08:23:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 642E83EC5B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 31 Mar 2022 06:23:38 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id 7314F3E829
	for <linaro-mm-sig@lists.linaro.org>; Thu, 31 Mar 2022 06:23:35 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id p15so45882619ejc.7
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Mar 2022 23:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=w5BXLzExPvLy27DAJ3ZamzJyzqTGo81JxFpaPVP/VLA=;
        b=olJo5YdOtfqTBQM9Ub3iNkh8oeIA86UqihpWIbCdVSf2biR8yB7EzT3Td1z6nidWJl
         hXbVwamwSal2W0CcQVDh8JHBHRDUU7cHYk4yX2/2JI9dLA7MfY95oe03qAGgTjF5H783
         LLQ2VH/g9H9OPMOGog4thFk3jzupi0V2On9pTBSKgDXK+P9tHSIMfSKbiKI3T5iFi5XT
         U3vyA7lQoBnpsbW+cPWChWWwHVMD5+9MgEBqJ6mZI0p1GBuadVl1qaDG8M6spVZH48gw
         GTvKV+t+yMt0x8QwdmRvP4U1WaDBAsnwGQCpdIs6VBlGHwcCCbw0KKo2AbKsx0nm8mQ1
         Tk6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w5BXLzExPvLy27DAJ3ZamzJyzqTGo81JxFpaPVP/VLA=;
        b=vhwfiYDZYX5ztY17DRyRThXpNsNN2jV6eEMuTLjHepsssDlqigzPGPkcMF1299mYAF
         cR51uqS2V9bw7/ZdvHjGMf1vx353uOnQWt1GW5JnpHwJoTGdp2rmjGU7WW6J17xncLKC
         dKOFOPp3jD59MwLydVDLlnVuNWtHsI9aDun081J9IWhKxoPBbZG0cmIwv6RitVh+ATzM
         kgFAHoHDMUvRETOqflbfCsnMCPG50Ndh8XRjPzzkrAyRknCwBmwgkdV5f6CWtLfaZdVY
         hg7pTyefRu2SfQpDiARl5LuWnfkFd+fAgxnNeADmB0Aag4HvoWHCWElBMYvGicmPd3vr
         BZmQ==
X-Gm-Message-State: AOAM533MIxLspnkcwBRJRQ6OfeKQ3bldToWdNhcNoJKwn/aBlKS44blb
	TbcYSmI4QeV7G2Vjb6PlewI=
X-Google-Smtp-Source: ABdhPJxO80/M/f7BqS/olgn8Kzmn3xXrn20lQSM53d9a1FvcAf1W9tQ77sqsf7hkTpHjWEUDxo1xCA==
X-Received: by 2002:a17:907:1614:b0:6df:678a:a7d5 with SMTP id hb20-20020a170907161400b006df678aa7d5mr3507506ejc.719.1648707814453;
        Wed, 30 Mar 2022 23:23:34 -0700 (PDT)
Received: from [192.168.178.21] (p5b0eab60.dip0.t-ipconnect.de. [91.14.171.96])
        by smtp.gmail.com with ESMTPSA id hp11-20020a1709073e0b00b006dfd53a0e39sm9004473ejc.135.2022.03.30.23.23.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 23:23:33 -0700 (PDT)
Message-ID: <2d1f9ba9-ea2a-e41c-eae6-0ba348cdf202@gmail.com>
Date: Thu, 31 Mar 2022 08:23:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Pavel Skripkin <paskripkin@gmail.com>, sumit.semwal@linaro.org,
 gustavo@padovan.org, christian.koenig@amd.com, daniel.vetter@ffwll.ch
References: <20220329221425.22691-1-paskripkin@gmail.com>
 <8af3d213-6cb7-a021-c198-e1bd37c47e7c@gmail.com>
 <ecf7ccdd-0d6f-9407-6778-ae7f0a6bf538@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <ecf7ccdd-0d6f-9407-6778-ae7f0a6bf538@gmail.com>
Message-ID-Hash: APLT2HLBR7VO66HGKS4TU5RY4QV5N3JY
X-Message-ID-Hash: APLT2HLBR7VO66HGKS4TU5RY4QV5N3JY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzbot+5c943fe38e86d615cac2@syzkaller.appspotmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH next] dma-buf/sync-file: do not allow zero size allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/APLT2HLBR7VO66HGKS4TU5RY4QV5N3JY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDMwLjAzLjIyIHVtIDIwOjI0IHNjaHJpZWIgUGF2ZWwgU2tyaXBraW46DQo+IEhpIENo
cmlzdGlhbiwNCj4NCj4gT24gMy8zMC8yMiAxMDowOSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToN
Cj4+IFRoYXQgcHJvYmxlbSBpcyBhbHJlYWR5IGZpeGVkIHdpdGggcGF0Y2ggMjFkMTM5ZDczZjc3
IGRtYS1idWYvc3luYy1maWxlOg0KPj4gZml4IGxvZ2ljIGVycm9yIGluIG5ldyBmZW5jZSBtZXJn
ZSBjb2RlLg0KPj4NCj4+IEFtIDMwLjAzLjIyIHVtIDAwOjE0IHNjaHJpZWIgUGF2ZWwgU2tyaXBr
aW46DQo+Pj4gc3l6Ym90IHJlcG9ydGVkIEdQRiBpbiBkbWFfZmVuY2VfYXJyYXlfZmlyc3QoKSwg
d2hpY2ggaXMgY2F1c2VkIGJ5DQo+Pj4gZGVyZWZlcmVuY2luZyBaRVJPX1BUUiBpbiBkbWEtYnVm
IGludGVybmFscy4NCj4+Pg0KPj4+IFpFUk9fUFRSIHdhcyBnZW5lcmF0ZWQgaW4gc3luY19maWxl
X21lcmdlKCkuIFRoaXMgZnVuY3R1aW9uIHRyaWVzIHRvDQo+Pj4gcmVkdWNlIGFsbG9jYXRpb24g
c2l6ZSwgYnV0IGRvZXMgbm90IGNoZWNrIGlmIGl0IHJlZHVjaW5nIHRvIDAuDQo+Pg0KPj4gVGhp
cyBpcyBhY3R1YWxseSBwZXJmZWN0bHkgb2suIFRoZSBjb2RlIGFib3ZlIHNob3VsZCBoYXZlIHBy
ZXZlbnRlZCB0aGUNCj4+IHNpemUgdG8gYmVjb21lIDAuDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENo
cmlzdGlhbi4NCj4+DQo+DQo+IFRoYW5rcyBmb3IgeW91ciByZXBseSEgSSBzZWUgdGhhdCAyMWQx
MzlkNzNmNzcgZml4ZXMgR1BGIGluIA0KPiBkbWFfZmVuY2VfYXJyYXlfZmlyc3QoKSwgYnV0IHdo
YXQgYWJvdXQgdGhpcyBwYXJ0Og0KPg0KPj4+IMKgIC3CoMKgwqAgaWYgKG51bV9mZW5jZXMgPiBJ
TlRfTUFYKQ0KPj4+ICvCoMKgwqAgaWYgKG51bV9mZW5jZXMgPiBJTlRfTUFYIHx8ICFudW1fZmVu
Y2VzKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9mcmVlX3N5bmNfZmlsZTsNCj4+
PiDCoCDCoMKgwqDCoMKgIGZlbmNlcyA9IGtjYWxsb2MobnVtX2ZlbmNlcywgc2l6ZW9mKCpmZW5j
ZXMpLCBHRlBfS0VSTkVMKTsNCj4+PiBAQCAtMjY0LDcgKzI2NCw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
c3luY19maWxlICpzeW5jX2ZpbGVfbWVyZ2UoY29uc3QgDQo+Pj4gY2hhciAqbmFtZSwgc3RydWN0
IHN5bmNfZmlsZSAqYSwNCj4+PiDCoMKgwqDCoMKgIGlmIChpbmRleCA9PSAwKQ0KPg0KPiBJZiBu
dW1fZmVuY2VzIGlzIGVxdWFsIHRvIHplcm8gdGhlbiBmZW5jZXMgZGVyZWZlcmVuY2Ugd2lsbCBj
YXVzZSBhbiANCj4gb29wcy4gT3IgdGhpcyBvbmUgaXMgYWxzbyBmaXhlZCBpbiB5b3VyIHRyZWU/
DQoNCldlbGwgaXQgaXMgaWxsZWdhbCBmb3Igc3luY19maWxlLT5mZW5jZSB0byBiZSBOVUxMIG9y
IHdlIHdvdWxkIHJ1biBpbnRvIA0KTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG11Y2ggbW9yZSBv
ZnRlbiwgc28gbnVtX2ZlbmNlcyBjYW4ndCBiZSB6ZXJvIA0KaGVyZSBlaXRoZXIuDQoNClJlZ2Fy
ZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4NCj4gVGhhbmtzIQ0KPg0KPg0KPg0KPg0KPiBXaXRoIHJl
Z2FyZHMsDQo+IFBhdmVsIFNrcmlwa2luDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
