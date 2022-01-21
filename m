Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB19C495E12
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jan 2022 12:01:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D07FA401C2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jan 2022 11:01:09 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id DC9DE3EE15
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jan 2022 11:01:01 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id j5-20020a05600c1c0500b0034d2e956aadso21458374wms.4
        for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jan 2022 03:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=lLGSMeSTcWsRfSp17dIUaYIF6uHiKPgnKaoYj+UhetE=;
        b=Da5Q19RT9sKauGiAg5uihyv17alwbZ54wgYoty71gfOKsgSjcvl1QHE0j4h/QF3sSE
         LQdHA++y5BYhw2crsgOCTleptiWVqyIPKhQ67FssaZ/1omNhKwc82xeH6Wf/sxMQZvjw
         aZJ/hYUXAPRkLnb+dTyQbSOvyzJKWSrLUeFtpZeZqJmHe7yew+23KbEnRE19L+2LVxFK
         NYCgwz6eRJPUP3Hnz+DyqNlRKXjJ+G2H9MQOliWMo3D90paFHLfBltJX8UrYNERUKH8x
         tDTHsqQgQJem97kuDbPtDgtsyYstcE5VOZAlbHOl9Po1hd+vxtf/F5ZUJ2twkH/9c0On
         QGWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=lLGSMeSTcWsRfSp17dIUaYIF6uHiKPgnKaoYj+UhetE=;
        b=xxSwXJ9FSrMWow6d15PzL0/dBh9ADDzHQlpjgxwoFszGliEPK+vOjquIqx1OYrOTGC
         vxKnI/tHquAzjnkxOsR0upSDitrEMDgEwDLLqEr/2sXYz8GNWTGYca4i3qQ0GnhxN7GE
         w9Cab5GLWFHg4rplUQyZF8iBuwFymcW4zEje2e9NY1j277f5tGE5kwwMAkCq6wZSOPI4
         Zdcf8oQiVb7rqxvw/ldVz+ICoJPHl5DLnMFVLzL2VlmV63lvZuZYkKvqglaTSDYk3Z2u
         RaHm3UPCeJgyDYFt0O4J8aMFYTT/kOhpD04AgXdRfAz3XdjuE3TF9CpB2c0uk4BNiOeD
         DyjQ==
X-Gm-Message-State: AOAM531N8AlX+7efwYtXsLUKd03DKdACRXRV8NvsymGmOIr1m3kVvjhs
	MLwbdRrEH4nGXZdLhcPp36ULeQ3dw4Y=
X-Google-Smtp-Source: ABdhPJz/O/FAYxlPiiHWdB2t6V7yRcg/qlKlC3RhCYLkPqf5aKGXjCIDlVZU18GNA+ObqNxaxYjeyw==
X-Received: by 2002:adf:f94e:: with SMTP id q14mr3328004wrr.526.1642762860852;
        Fri, 21 Jan 2022 03:01:00 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:5ab7:6e01:32ef:2782? ([2a02:908:1252:fb60:5ab7:6e01:32ef:2782])
        by smtp.gmail.com with ESMTPSA id y15sm2413366wry.36.2022.01.21.03.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jan 2022 03:01:00 -0800 (PST)
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 sumit.semwal@linaro.org, gustavo@padovan.org, daniel.vetter@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20220120132747.2348-1-christian.koenig@amd.com>
 <20220120132747.2348-3-christian.koenig@amd.com>
 <be78e61c-992c-4fa6-7a2b-b9b93310a34d@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <532d9358-f5b2-73fb-5931-f14b2c264169@gmail.com>
Date: Fri, 21 Jan 2022 12:00:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <be78e61c-992c-4fa6-7a2b-b9b93310a34d@linux.intel.com>
Content-Language: en-US
Message-ID-Hash: ESMVRRYDDWWDBR3ZNHV6VSSPGGJ6TLUY
X-Message-ID-Hash: ESMVRRYDDWWDBR3ZNHV6VSSPGGJ6TLUY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/9] dma-buf: warn about dma_fence_array container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ESMVRRYDDWWDBR3ZNHV6VSSPGGJ6TLUY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDIxLjAxLjIyIHVtIDA4OjMxIHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06DQo+DQo+
IE9uIDEvMjAvMjIgMTQ6MjcsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBJdCdzIG5vdCBh
bGxvd2VkIHRvIG5lc3QgYW5vdGhlciBkbWFfZmVuY2UgY29udGFpbmVyIGludG8gYSANCj4+IGRt
YV9mZW5jZV9hcnJheQ0KPj4gb3Igb3RoZXJ3aXNlIHdlIGNhbiBydW4gaW50byByZWN1cnNpb24u
DQo+Pg0KPj4gV2FybiBhYm91dCB0aGF0IHdoZW4gd2UgY3JlYXRlIGEgZG1hX2ZlbmNlX2FycmF5
Lg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCj4+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGZmd2xsLmNoPg0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5
LmMgfCAxMyArKysrKysrKysrKysrDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9u
cygrKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5
LmMgDQo+PiBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KPj4gaW5kZXggM2Uw
N2Y5NjFlMmYzLi40YmZiY2I4ODViYmMgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLWFycmF5LmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJy
YXkuYw0KPj4gQEAgLTE3Niw2ICsxNzYsMTkgQEAgc3RydWN0IGRtYV9mZW5jZV9hcnJheSANCj4+
ICpkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGludCBudW1fZmVuY2VzLA0KPj4gwqAgwqDCoMKgwqDC
oCBhcnJheS0+YmFzZS5lcnJvciA9IFBFTkRJTkdfRVJST1I7DQo+PiDCoCArwqDCoMKgIC8qIGRt
YV9mZW5jZV9hcnJheSBvYmplY3RzIHNob3VsZCBuZXZlciBjb250YWluIGFueSBvdGhlciBmZW5j
ZQ0KPiBOaXQ6IEZpcnN0IGNvbW1lbnQgbGluZSBvZiBtdWx0aS1saW5lIGNvbW1lbnRzIHNob3Vs
ZG4ndCBjb250YWluIHRleHQuDQo+PiArwqDCoMKgwqAgKiBjb250YWluZXJzIG9yIG90aGVyd2lz
ZSB3ZSBydW4gaW50byByZWN1cnNpb24gYW5kIHBvdGVudGlhbCANCj4+IGtlcm5lbA0KPj4gK8Kg
wqDCoMKgICogc3RhY2sgb3ZlcmZsb3cgb24gb3BlcmF0aW9ucyBvbiB0aGUgZG1hX2ZlbmNlX2Fy
cmF5Lg0KPj4gK8KgwqDCoMKgICoNCj4+ICvCoMKgwqDCoCAqIFRoZSBjb3JyZWN0IHdheSBvZiBo
YW5kbGluZyB0aGlzIGlzIHRvIGZsYXR0ZW4gb3V0IHRoZSBhcnJheSANCj4+IGJ5IHRoZQ0KPj4g
K8KgwqDCoMKgICogY2FsbGVyIGluc3RlYWQuDQo+PiArwqDCoMKgwqAgKg0KPj4gK8KgwqDCoMKg
ICogRW5mb3JjZSB0aGlzIGhlcmUgYnkgY2hlY2tpbmcgdGhhdCB3ZSBkb24ndCBjcmVhdGUgYSAN
Cj4+IGRtYV9mZW5jZV9hcnJheQ0KPj4gK8KgwqDCoMKgICogd2l0aCBhbnkgY29udGFpbmVyIGlu
c2lkZS4NCj4+ICvCoMKgwqDCoCAqLw0KPj4gK8KgwqDCoCB3aGlsZSAoc2Vxbm8tLSkNCj4+ICvC
oMKgwqDCoMKgwqDCoCBXQVJOX09OKGRtYV9mZW5jZV9pc19jb250YWluZXIoZmVuY2VzW3NlcW5v
XSkpOw0KPj4gKw0KPg0KPiBzL3NlcW5vL251bV9mZW5jZXMvZyA/DQoNCkFoLCBvZiBjb3Vyc2Uh
IFR5cGluZyB0byBmYXN0Lg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4gVGhhbmtzLA0K
Pg0KPiBUaG9tYXMNCj4NCj4NCj4NCj4+IMKgwqDCoMKgwqAgcmV0dXJuIGFycmF5Ow0KPj4gwqAg
fQ0KPj4gwqAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKTsNCj4NCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
