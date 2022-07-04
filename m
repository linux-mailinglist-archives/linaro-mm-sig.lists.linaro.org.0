Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 224BD5657BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jul 2022 15:48:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5493F3F2F7
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jul 2022 13:48:11 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 8644B3EC46
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Jul 2022 13:48:06 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id lw20so16883781ejb.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 04 Jul 2022 06:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=DuezbfYQsU3qAlG2AxqJIX7invg2mFOX4CCrrytmnWI=;
        b=TvlAjzeC17n6fwvxmrdz+AxjF1IvjtYSWiEkoRkZ4yqDqhESkN5YdquUtdWvwfvA5m
         pL/cK6b9ig8/s4q3rtOVVMwmvl9JlQ1G/KFac0kZZePNU6UAYGbk4PNC+ywqdxbwLyMt
         tVkKVPQse+TTQ2/Hi0+JA/qYytY0q+y4tq/oYAKY4xLE27v9nIpyW3dMr+VP3g5xXbhP
         QvWSQf5aEB7U7XpM5DT6Rnvl9LRNVjABc0uxxaO84ENPCkXaF+ounlcPkyr0XZnyx+HH
         +tc+VLDDwxxXy8WqaJxPOLWwe456ylSmi9LfhssKnfzAdjOsufMunMFIFZQo90IKFRAy
         O9sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DuezbfYQsU3qAlG2AxqJIX7invg2mFOX4CCrrytmnWI=;
        b=6UdKDz/Nn5lphGmvJGQqeGqBE3lg3cxm3A5z2jH4EQC/V6tjL9Dp4tPW5hPoJPo+4R
         NHVCPeXDFKkDOfwgec+s5P9JiG6FLXuVqI0DuwEexFllDtUrVahUFkZyyDhzqJ6SzviY
         XS2sJLUEN0cGU+kWzKRY21qqZMj8sT6jyTSG4YbK28N2gQEPhlG3s4wKUSOTUnB58e5I
         nKSOrM3E71iyQBUGJ2c3bkFjKOyDEZyAhxnr6SpzVBzNezwVNiTs2n2m9QvxKUZc67kc
         +Ff0QyoE8Sr9u/3GHnOuleTuCyhH+pMOPZTANm0Ierd/A9bh9SzS9FqhroPDveKiKPls
         I9cA==
X-Gm-Message-State: AJIora8UETWLj5r+RrABzFkG95uWhmLstbWSvyn6T0afzO2fnI/HK2xX
	ChIz9x0VzeLU+lUDcbptIpU=
X-Google-Smtp-Source: AGRyM1uI88ycJrc/hJ300rpJYQ5RUDcELFrq4VEsCVgtbZPW073pyy7a2yo6Tc+WoJSmxdOx2LMBYQ==
X-Received: by 2002:a17:907:72d2:b0:722:f9c8:c3fa with SMTP id du18-20020a17090772d200b00722f9c8c3famr27113222ejc.608.1656942485452;
        Mon, 04 Jul 2022 06:48:05 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:601b:af42:6b18:b5ef? ([2a02:908:1256:79a0:601b:af42:6b18:b5ef])
        by smtp.gmail.com with ESMTPSA id h18-20020a1709060f5200b006fe9e717143sm14340094ejj.94.2022.07.04.06.48.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 06:48:04 -0700 (PDT)
Message-ID: <5eeefadd-7804-3876-c8da-3e6f1bcb9dc0@gmail.com>
Date: Mon, 4 Jul 2022 15:48:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Daniel Stone <daniel@fooishbar.org>, Pekka Paalanen <ppaalanen@gmail.com>,
 "Sharma, Shashank" <Shashank.Sharma@amd.com>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, linaro-mm-sig@lists.linaro.org,
 Sumit Semwal <sumit.semwal@linaro.org>,
 linux-media <linux-media@vger.kernel.org>
References: <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
 <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com>
 <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
 <e691bccc-171d-f674-2817-13a945970f4a@amd.com>
 <95cca943bbfda6af07339fb8d2dc7f4da3aa0280.camel@pengutronix.de>
 <05814ddb-4f3e-99d8-025a-c31db7b2c46b@amd.com>
 <708e27755317a7650ca08ba2e4c14691ac0d6ba2.camel@pengutronix.de>
 <6287f5f8-d9af-e03d-a2c8-ea8ddcbdc0d8@amd.com>
 <CAPj87rOykZv7bjNhHPT4StrsPz8Y_DWqab4Ryq=Qqh77LS2e=Q@mail.gmail.com>
 <578953dd-6298-2bfe-a8fb-52004b84fd17@amd.com>
 <YrY0cQY1BTL5H7Xp@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <YrY0cQY1BTL5H7Xp@phenom.ffwll.local>
Message-ID-Hash: OQ577J3HMMYOMSOGFNB2TD6JAQ6UGQMN
X-Message-ID-Hash: OQ577J3HMMYOMSOGFNB2TD6JAQ6UGQMN
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OQ577J3HMMYOMSOGFNB2TD6JAQ6UGQMN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgRGFuaWVsLA0KDQpBbSAyNS4wNi4yMiB1bSAwMDowMiBzY2hyaWViIERhbmllbCBWZXR0ZXI6
DQo+IE9uIFRodSwgSnVuIDIzLCAyMDIyIGF0IDAxOjMyOjE4UE0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6DQo+PiBBbSAyMy4wNi4yMiB1bSAxMzoyNyBzY2hyaWViIERhbmllbCBTdG9u
ZToNCj4+PiBbU05JUF0NCj4+PiBJZiBpdCdzIHJlYWxseSB5b3VyIGJlbGllZiB0aGF0IGRtYWJ1
ZiByZXF1aXJlcyB1bml2ZXJzYWwgc25vb3BpbmcsIEkNCj4+PiByZWNvbW1lbmQgeW91IHNlbmQg
dGhlIHBhdGNoIHRvIHVwZGF0ZSB0aGUgZG9jdW1lbnRhdGlvbiwgYXMgd2VsbCBhcw0KPj4+IHRv
IHJlbW92ZSBEUklWRVJfUFJJTUUgZnJvbSwgcmVhbGlzdGljYWxseSwgbW9zdCBub24tUENJRSBk
cml2ZXJzLg0KPj4gV2VsbCwgdG8gYmUgaG9uZXN0IEkgdGhpbmsgdGhhdCB3b3VsZCBpbmRlZWQg
YmUgbmVjZXNzYXJ5Lg0KPj4NCj4+IFdoYXQgd2UgaGF2ZSBjcmVhdGVkIGFyZSBlc3NlbnRpYWxs
eSB0d28gZGlmZmVyZW50IHdvcmxkcywgb25lIGZvciBQQ0kNCj4+IGRldmljZXMgYW5kIG9uZSBm
b3IgdGhlIHJlc3QuDQo+Pg0KPj4gVGhpcyB3YXMgaW5kZWVkIG5vdCB0aGUgaW50ZW50aW9uLCBi
dXQgaXQncyBhIGZhY3QgdGhhdCBiYXNpY2FsbHkgYWxsDQo+PiBETUEtYnVmIGJhc2VkIFBDSSBk
cml2ZXJzIGFzc3VtZSBjb2hlcmVudCBhY2Nlc3MuDQo+IGRtYS1idWYgZG9lcyBub3QgcmVxdWly
ZSB1bml2ZXJzYWwgc25vb3BpbmcuDQo+DQo+IEl0IGRvZXMgZGVmYWN0byByZXF1aXJlIHRoYXQg
YWxsIGRldmljZSBhY2Nlc3MgaXMgY29oZXJlbnQgd2l0aCBhbGwgb3RoZXINCj4gZGV2aWNlIGFj
Y2VzcywgYW5kIGNvbnNpc3RlbnQgd2l0aCB0aGUgZXhwb3J0ZXJzIG5vdGlvbiBvZiBob3cgY3B1
DQo+IGNvaGVyZW5jeSBpcyBhY2hpZXZlZC4gTm90IHRoYXQgY29oZXJlbnQgZG9lcyBub3QgbWVh
biBzbm9vcGluZywgYXMgbG9uZw0KPiBhcyBhbGwgZGV2aWNlcyBkbyB1bnNub29wZWQgYWNjZXNz
IGFuZCB0aGUgZXhwb3J0ZXIgZWl0aGVyIGRvZXMgd2MvdWMgb3INCj4gZmx1c2hlcyBjYWNoZXMg
dGhhdCdzIHBlcmZlY3RseSBmaW5lLCBhbmQgaG93IGFsbCB0aGUgYXJtIHNvYyBkbWEtYnVmDQo+
IHNoYXJpbmcgd29ya3MuDQoNCldlIHNob3VsZCBwcm9iYWJseSBzdGFydCBkb2N1bWVudGluZyB0
aGF0IGJldHRlci4NCg0KPiBXZSBkaWQgb3JpZ2luYWxseSBoYXZlIHRoZSB3b3JkaW5nIGluIHRo
ZXJlIHRoYXQgeW91IGhhdmUgdG8gbWFwL3VuYW1wDQo+IGFyb3VuZCBldmVyeSBkZXZpY2UgYWNj
ZXNzLCBidXQgdGhhdCBnb3QgZHJvcHBlZCBiZWNhdXNlIG5vIG9uZSB3YXMgZG9pbmcNCj4gdGhh
dCBhbnl3YXkuDQo+DQo+IE5vdyB3aGVyZSB0aGlzIHRvdGFsbHkgYnJlYWtzIGRvd24gaXMgaG93
IHdlIG1ha2UgdGhpcyB3b3JrLCBiZWNhdXNlIHRoZQ0KPiBpZGVhIHdhcyB0aGF0IGRtYV9idWZf
YXR0YWNoIHZhbGlkYXRlcyB0aGlzIGFsbC4gV2hlcmUgdGhpcyBtZWFucyBhbGwgdGhlDQo+IGhp
bGFyaW91cyByZWFzb25zIGJ1ZmZlciBzaGFyaW5nIG1pZ2h0IG5vdCB3b3JrOg0KPiAtIHdyb25n
IGNvaGVyZW5jeSBtb2RlIChjcHUgY2FjaGVkIG9yIG5vdCkNCj4gLSBub3QgY29udGlndW91cyAo
d2UgZG8gY2hlY2sgdGhhdCwgYnV0IG9ubHkgb25jZSB3ZSBnZXQgdGhlIHNnIGZyb20NCj4gICAg
ZG1hX2J1Zl9hdHRhY2htZW50X21hcCwgd2hpY2ggc3RyaWN0bHkgc3BlYWtpbmcgaXMgYSBiaXQg
dG9vIGxhdGUgYnV0DQo+ICAgIG1vc3QgZHJpdmVycyBkbyBhdHRhY2gmbWFwIGFzIG9uZSBzdGVw
IHNvIG5vdCB0aGF0IGJhZCBpbiBwcmFjdGljZSkNCj4gLSB3aGV0aGVyIHRoZSBkbWEgYXBpIHdp
bGwgdGhyb3cgaW4gYm91bmNlIGJ1ZmZlcnMgb3Igbm90DQo+IC0gcmFuZG9tIHNoaXQgbGlrZSAi
b2ggdGhpcyBpcyBpbiB0aGUgd3JvbmcgbWVtb3J5IGJhbmsiLCB3aGljaCBJIHRoaW5rDQo+ICAg
IG5ldmVyIGxhbmRlZCBpbiB1cHN0cmVhbQ0KPg0KPiBwMnAgY29ubmVjdGl2aXR5IGlzIGFib3V0
IHRoZSBvbmx5IG9uZSB0aGF0IGdldHMgdGhpcyByaWdodCwgeWF5LiBBbmQgdGhlDQo+IG9ubHkg
cmVhc29uIHdlIGNhbiBldmVuIGdldCBpdCByaWdodCBpcyBiZWNhdXNlIGFsbCB0aGUgaW5mb3Jt
YXRpb24gaXMNCj4gZXhwb3NlZCB0byBkcml2ZXJzIGZ1bGx5Lg0KDQpZZWFoLCB0aGF0J3Mgd2h5
IEkgZGVzaWduZWQgUDJQIHRoYXQgd2F5IDopDQoNCkkgYWxzbyBkb24ndCB0aGluayBpdCdzIHRo
YXQgYmFkLCBhdCBsZWFzdCBmb3IgcmFkZW9uLCBub3V2ZWF1IGFuZCANCmFtZGdwdSBhbGwgdGhl
IG1pZ3JhdGlvbiByZXN0cmljdGlvbnMgYXJlIGFjdHVhbGx5IGhhbmRsZWQgY29ycmVjdGx5Lg0K
DQpJbiBvdGhlciB3b3JkcyB3aGVuIGEgRE1BLWJ1ZiBpcyBhYm91dCB0byBiZSB1c2VkIGJ5IGFu
b3RoZXIgZGV2aWNlIHdlIA0KdXNlIFRUTSB0byBtb3ZlIHRoZSBidWZmZXIgYXJvdW5kIHNvIHRo
YXQgaXQgY2FuIGFjdHVhbGx5IGJlIGFjY2Vzc2VkIGJ5IA0KdGhhdCBkZXZpY2UuDQoNCldoYXQg
SSBoYXZlbid0IGZvcmVzZWVuIGluIGhlcmUgaXMgdGhhdCB3ZSBuZWVkIHRvIGRlYWwgd2l0aCBk
aWZmZXJlbnQgDQpjYWNoaW5nIGJlaGF2aW9ycyBiZXR3ZWVuIGV4cG9ydGVyIGFuZCBpbXBvcnRl
ci4NCg0KDQo+IFRoZSBpc3N1ZSBpcyB0aGF0IHRoZSBkZXZpY2UgZG1hIGFwaSByZWZ1c2VzIHRv
IHNoYXJlIHRoaXMgaW5mb3JtYXRpb24NCj4gYmVjYXVzZSBpdCB3b3VsZCAibGVhayIuIFdoaWNo
IHN1Y2tzLCBiZWNhdXNlIHdlIGhhdmUgZGVmYWN0byBidWlsZCBldmVyeQ0KPiBzaW5nbGUgY3Jv
c3MtZGV2aWNlIHVzZS1jYXNlIG9mIGRtYS1idWYgb24gdGhlIGFzc3VtcHRpb24gd2UgY2FuIGNo
ZWNrDQo+IHRoaXMgKHVwIHRvIGdsL3ZrIHNwZWNzKSwgYnV0IG9oIHdlbGwuDQo+DQo+IFNvIGlu
IHByYWN0aWNlIHRoaXMgZ2V0cyBzb3J0ZWQgb3V0IGJ5IGVuZGxlc3MgcGlsZXMgb2YgaGFja3Mg
dG8gbWFrZQ0KPiBpbmRpdmlkdWFsIHVzZS1jYXNlcyB3b3JrLg0KPg0KPiBPaCBhbmQ6IFRoaXMg
aXMgZGVmaW5pdGVseSBub3QgbGltaXRlZCB0byBhcm0gc29jcy4geDg2IHNvY3Mgd2l0aCBpbnRl
bA0KPiBhdCBsZWFzdCBoYXZlIGV4YWN0bHkgYWxsIHRoZSBzYW1lIGlzc3VlcywgYW5kIHRoZXkg
Z2V0IHNvbHZlZCBieSBhZGRpbmcNCj4gdmFyaW91cyBzaGl0dHkgaGFja3MgdG8gdGhlIGludm9s
dmVkIGRyaXZlcnMgKGxpa2UgaTkxNSthbWRncHUpLiBMdWNraWx5DQo+IHRoZSBpbnRlbCBjYW1l
cmEgZHJpdmVyIGlzbid0IGluIHVwc3RyZWFtIHlldCwgc2luY2UgdGhhdCB3b3VsZCBicmVhayBh
DQo+IGJ1bmNoIG9mIHRoZSBoYWNrcyBzaW5jZSBzdWRkZW50bHkgdGhlcmUgd2lsbCBiZSBub3cg
MiBjcHUgY2FjaGUNCj4gaW5jb2hlcmVudCBkZXZpY2VzIGluIGFuIHg4NiBzeXN0ZW0uDQo+DQo+
IElkZWFsbHkgc29tZW9uZSBmaXhlcyB0aGlzLCBidXQgSSdtIG5vdCBob3BlZnVsLg0KPg0KPiBJ
IHJlY29tbWVuZCBwb3VyaW5nIG1vcmUgZHJpbmtzLg0KPg0KPiBXaGF0IGlzIGRlZmluaXRlbHkg
bm90IGNvcnJlY3QgaXMgY2xhaW1pbmcgdGhhdCBkbWEtYnVmIHdhc24ndCBtZWFudCBmb3INCj4g
dGhpcy4gV2UgZGlzY3Vzc2VkIGNhY2hlIGNvaGVyZW5jeSBpc3N1ZXMgZW5kbGVzcyBpbiBidWRh
cGVzdCAxMiBvciBzbw0KPiB5ZWFycyBhZ28sIEkgd2FzIHRoZXJlLiBJdCdzIGp1c3QgdGhhdCB0
aGUgcmVhbGl0eSBvZiB0aGUgY3VycmVudA0KPiBpbXBsZW1lbnRhdGlvbiBpcyBmYWxsaW5nIHNo
b3J0LCBhbmQgZXZlcnkgdGltZSBzb21lb25lIHRyaWVzIHRvIGZpeCBpdCB3ZQ0KPiBnZXQgc2hv
dXRlZCBkb3duIGJ5IGRtYSBhcGkgbWFpbnRhaW5lcnMgZm9yIGxvb2tpbmcgYmVoaW5kIHRoZWly
IGN1cnJlbnQuDQoNCldlbGwgdGhhdCBleHBsYWlucyB0aGlzLCBJJ3ZlIGpvaW5lZCB0aGUgcGFy
dHkgYSB5ZWFyIGxhdGVyIGFuZCBoYXZlbid0IA0Kd2l0bmVzc2VkIGFsbCBvZiB0aGlzLg0KDQo+
IHRsZHI7IFlvdSBoYXZlIHRvIG1hZ2ljYWxseSBrbm93IHRvIG5vdCB1c2UgY3B1IGNhY2hlZCBh
bGxvY2F0b3JzIG9uIHRoZXNlDQo+IG1hY2hpbmVzLg0KDQpPciByZWplY3QgdGhlIGF0dGFjaG1l
bnQuIEFzIGZhciBhcyBJIGNhbiBzZWUgdGhhdCBpcyBzdGlsbCB0aGUgY2xlYW5lc3QgDQpvcHRp
b24uDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gQXNpZGU6IFRoaXMgaXMgYWxzbyB3
aHkgdmdlbSBhbGxvYXRlcyB3YyBtZW1vcnkgb24geDg2LiBJdCdzIHRoZSBsZWFzdA0KPiBjb21t
b24gZGVub21pbmF0b3IgdGhhdCB3b3Jrcy4gYXJtIHVuZm9ydHVuYXRlbHkgZG9lc24ndCBhbGxv
dyB5b3UgdG8NCj4gYWxsb2NhdGUgd2MgbWVtb3J5LCBzbyB0aGVyZSBzdHVmZiBpcyBzaW1wbHkg
c29tZXdoYXQgYnJva2VuLg0KPiAtRGFuaWVsDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
