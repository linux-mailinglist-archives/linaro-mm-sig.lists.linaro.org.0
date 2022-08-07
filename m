Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4126D58BCA4
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 21:09:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39F5B47F30
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 19:09:46 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by lists.linaro.org (Postfix) with ESMTPS id B012747EE8
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Aug 2022 19:09:42 +0000 (UTC)
Received: by mail-io1-f50.google.com with SMTP id e69so5618510iof.5
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Aug 2022 12:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=mL5GgcWfstWeGYJhJ68nNeLCVdUqveKpU3sfQrU4jS8=;
        b=dvGrmV5h9eO2wJVSL0XJhv1Gt/WJj0w//G0Gg6m1x9dhjd2Q8sgsgXxLilTvQN8kxr
         h6CR9GvgcqTRcdkfBgffcRaIH/mUkuoagRRMaMIoJjUK28IcYqSO4/je/HSI+etgG/w6
         coSfq8qxu+SHXlikM01+KZPY5AeJFgKaYfbCOuwMAd32iCOCxnRzU+woX4yklkY56Zv+
         T1+zdls2pLhfKINUz+g2kRI8IAgQslnLcPdll1vXs+QDV3IYbkNuthh6VkfKbfJ61eNt
         gCblRM3ng5kDS398+lAO461ZV/3nOe6RIVogM37JCukLRUorWdrIKXKsM3jcZBMFgflG
         gMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=mL5GgcWfstWeGYJhJ68nNeLCVdUqveKpU3sfQrU4jS8=;
        b=k9zakMIZT3zKE20MSH9rm0z5BSwgMZxbTq7R6sBq+TokBelraYZGwjKUeklM5Cvlk3
         UH4RsHb4a7ZbpTdpmynKcTWHu4M+9uXIvyjryYdNAeZXa66mowdjOICrptg2NQ7HJzu7
         zDCRE3q/CEPzCpA3q6K95hVUPmFJC5szq4EK0mJMaIgW6G3Y0iJl6D4vC9WUbP7ofJFL
         4IFsMklqHrtDitcHsHwCDNd5RttqQsrZQJxtpihbFUPVAh40QcPJLMLPDKn7Gb9qQpQq
         TO264x03/FLFm/DkIwWySV1TRDAhyna0eMRoSMO5XOCnJAzMajx5/dfo5/XgPIhak4ld
         K33w==
X-Gm-Message-State: ACgBeo11D1akABubvWmY0iPcO/YdEb/MU/mL743fW7lbEcT5Ldu1z77q
	09yfMk6q4fCUSlRHZ6MLiDanJBBc9MpbjryPbhw=
X-Google-Smtp-Source: AA6agR4/h1SXw70tF50lChS9ED9MW5RLqXWMAX8bbOCiqDbjN0hp6NCcgS07c7xUttCKzfkifIBj3euZP66AmPA80ww=
X-Received: by 2002:a05:6638:2642:b0:33f:5172:e77 with SMTP id
 n2-20020a056638264200b0033f51720e77mr6852089jat.85.1659899382051; Sun, 07 Aug
 2022 12:09:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220729170744.1301044-1-robdclark@gmail.com> <20220729170744.1301044-2-robdclark@gmail.com>
 <3d2083aa-fc6c-6875-3daf-e5abe45fb762@gmail.com> <CAF6AEGvKdM3vyCvBZK=ZcdGmak7tsrP1b8ANyyaMjVfNDViqyw@mail.gmail.com>
 <973de2f8-75e4-d4c7-a13a-c541a6cf7c77@amd.com> <CAF6AEGuhQT6A_jh8kLWh5xMoUGc1osdewyBk-8NoprtWOHseaQ@mail.gmail.com>
 <2fc74efe-220f-b57a-e804-7d2b3880d14f@gmail.com> <CAF6AEGv9H+fSFKPNqwPxYUjkgj05AimpXbp-p_JL8nKLnzON=w@mail.gmail.com>
 <e2423bd7-ef73-8d43-c661-a19c80ad1a26@gmail.com>
In-Reply-To: <e2423bd7-ef73-8d43-c661-a19c80ad1a26@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Sun, 7 Aug 2022 12:10:08 -0700
Message-ID: <CAF6AEGsoYaXe2+qug_TfT99KXuXh9Ez2L2HjQZroE6c6GSW4SQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID-Hash: I7H37VNXJDCXUYDULNPVJOIUMSHTJLY2
X-Message-ID-Hash: I7H37VNXJDCXUYDULNPVJOIUMSHTJLY2
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: Add ioctl to query mmap info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I7H37VNXJDCXUYDULNPVJOIUMSHTJLY2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBBdWcgNywgMjAyMiBhdCAxMTowNSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2tvZW5p
Zy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBBbSAwNy4wOC4yMiB1bSAx
OTo1NiBzY2hyaWViIFJvYiBDbGFyazoNCj4gPiBPbiBTdW4sIEF1ZyA3LCAyMDIyIGF0IDEwOjM4
IEFNIENocmlzdGlhbiBLw7ZuaWcNCj4gPiA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5j
b20+IHdyb3RlOg0KPiA+PiBbU05JUF0NCj4gPj4gQW5kIGV4YWN0bHkgdGhhdCB3YXMgZGVjbGFy
ZWQgY29tcGxldGVseSBpbGxlZ2FsIHRoZSBsYXN0IHRpbWUgaXQgY2FtZQ0KPiA+PiB1cCBvbiB0
aGUgbWFpbGluZyBsaXN0Lg0KPiA+Pg0KPiA+PiBEYW5pZWwgaW1wbGVtZW50ZWQgYSB3aG9sZSBi
dW5jaCBvZiBwYXRjaGVzIGludG8gdGhlIERNQS1idWYgbGF5ZXIgdG8NCj4gPj4gbWFrZSBpdCBp
bXBvc3NpYmxlIGZvciBLVk0gdG8gZG8gdGhpcy4NCj4gPiBUaGlzIGlzc3VlIGlzbid0IHJlYWxs
eSB3aXRoIEtWTSwgaXQgaXMgbm90IG1ha2luZyBhbnkgQ1BVIG1hcHBpbmdzDQo+ID4gaXRzZWxm
LiAgS1ZNIGlzIGp1c3QgbWFraW5nIHRoZSBwYWdlcyBhdmFpbGFibGUgdG8gdGhlIGd1ZXN0Lg0K
Pg0KPiBXZWxsIEkgY2FuIG9ubHkgcmVwZWF0IG15c2VsZjogVGhpcyBpcyBzdHJpY3RseSBpbGxl
Z2FsLg0KPg0KPiBQbGVhc2UgdHJ5IHRoaXMgYXBwcm9hY2ggd2l0aCBDT05GSUdfRE1BQlVGX0RF
QlVHIHNldC4gSSdtIHByZXR0eSBzdXJlDQo+IHlvdSB3aWxsIGltbWVkaWF0ZWx5IHJ1biBpbnRv
IGEgY3Jhc2guDQo+DQo+IFNlZSB0aGlzIGhlcmUgYXMgd2VsbA0KPiBodHRwczovL2VsaXhpci5i
b290bGluLmNvbS9saW51eC92NS4xOS9zb3VyY2UvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyNM
NjUzDQo+DQo+IERhbmllbCBpbnRlbnRpb25hbGx5IGFkZGVkIGNvZGUgdG8gbWFuZ2xlIHRoZSBw
YWdlIHBvaW50ZXJzIHRvIG1ha2UgaXQNCj4gaW1wb3NzaWJsZSBmb3IgS1ZNIHRvIGRvIHRoaXMu
DQoNCkkgZG9uJ3QgYmVsaWV2ZSBLVk0gaXMgdXNpbmcgdGhlIHNnIHRhYmxlLCBzbyB0aGlzIGlz
bid0IGdvaW5nIHRvIHN0b3ANCmFueXRoaW5nIDstKQ0KDQo+IElmIHRoZSB2aXJ0aW8vdmlydGdw
dSBVQVBJIHdhcyBidWlsZCBhcm91bmQgdGhlIGlkZWEgdGhhdCB0aGlzIGlzDQo+IHBvc3NpYmxl
IHRoZW4gaXQgaXMgbW9zdCBsaWtlbHkgZnVuZGFtZW50YWwgYnJva2VuLg0KDQpIb3cgZWxzZSBj
YW4geW91IGVudmlzaW9uIG1tYXAnaW5nIHRvIGd1ZXN0IHVzZXJzcGFjZSB3b3JraW5nPyAgVGhl
DQpndWVzdCBrZXJuZWwgaXMgdGhlIG9uZSB0aGF0IGNvbnRyb2xzIHRoZSBndWVzdCB1c2Vyc3Bh
Y2UgcGFnZXRhYmxlcywNCm5vdCB0aGUgaG9zdCBrZXJuZWwuICBJIGd1ZXNzIHlvdXIgY29tcGxh
aW50IGlzIGFib3V0IFZNcyBpbiBnZW5lcmFsLA0KYnV0IHVuZm9ydHVuYXRlbHkgSSBkb24ndCB0
aGluayB5b3UnbGwgY29udmluY2UgdGhlIHJlc3Qgb2YgdGhlDQppbmR1c3RyeSB0byBhYmFuZG9u
IFZNcyA7LSkNCg0KQnV0IG1vcmUgc2VyaW91c2x5LCBsZXQncyB0YWtlIGEgc3RlcCBiYWNrIGhl
cmUuLiB3aGF0IHNjZW5hcmlvcyBhcmUNCnlvdSBzZWVpbmcgdGhpcyBiZWluZyBwcm9ibGVtYXRp
YyBmb3I/ICBUaGVuIHdlIGNhbiBzZWUgaG93IHRvIGNvbWUgdXANCndpdGggc29sdXRpb25zLiAg
VGhlIGN1cnJlbnQgc2l0dWF0aW9uIG9mIGhvc3QgdXNlcnNwYWNlIFZNTSBqdXN0DQpndWVzc2lu
ZyBpc24ndCBncmVhdC4gIEFuZCBzdGlja2luZyBvdXIgaGVhZHMgaW4gdGhlIHNhbmQgYW5kDQpw
cmV0ZW5kaW5nIFZNcyBkb24ndCBleGlzdCBpc24ndCBncmVhdC4gIFNvIHdoYXQgY2FuIHdlIGRv
PyAgSSBjYW4NCmluc3RlYWQgYWRkIGEgbXNtIGlvY3RsIHRvIHJldHVybiB0aGlzIGluZm8gYW5k
IHNvbHZlIHRoZSBwcm9ibGVtIGV2ZW4NCm1vcmUgbmFycm93bHkgZm9yIGEgc2luZ2xlIHBsYXRm
b3JtLiAgQnV0IHRoZW4gdGhlIHByb2JsZW0gc3RpbGwNCnJlbWFpbnMgb24gb3RoZXIgcGxhdGZv
cm1zLg0KDQpTbGlnaHRseSBpbXBsaWNpdCBpbiB0aGlzIGlzIHRoYXQgbWFwcGluZyBkbWEtYnVm
cyB0byB0aGUgZ3Vlc3Qgd29uJ3QNCndvcmsgZm9yIGFueXRoaW5nIHRoYXQgcmVxdWlyZXMgRE1B
X0JVRl9JT0NUTF9TWU5DIGZvciBjb2hlcmVuY3kuLiB3ZQ0KY291bGQgYWRkIGEgcG9zc2libGUg
cmV0dXJuIHZhbHVlIGZvciBETUFfQlVGX0lORk9fVk1fUFJPVCBpbmRpY2F0aW5nDQp0aGF0IHRo
ZSBidWZmZXIgZG9lcyBub3Qgc3VwcG9ydCBtYXBwaW5nIHRvIGd1ZXN0IG9yIENQVSBhY2Nlc3MN
CndpdGhvdXQgRE1BX0JVRl9JT0NUTF9TWU5DLiAgVGhlbiBhdCBsZWFzdCB0aGUgVk1NIGNhbiBm
YWlsIGdyYWNlZnVsbHkNCmluc3RlYWQgb2Ygc3VidGx5Lg0KDQpCUiwNCi1SDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
