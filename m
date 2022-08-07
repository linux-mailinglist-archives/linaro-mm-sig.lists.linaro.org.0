Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8722F58BC12
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 19:38:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BED7D47F13
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 17:38:18 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id 10E0C3F47D
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Aug 2022 17:38:16 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id y13so12731061ejp.13
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Aug 2022 10:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=AgdBOmzjWEHkV7rEo+KUxlFzWKgAveUFyWtzbLgYCE4=;
        b=H6x1G3E8YlQ7qZcLon5c36k6rvHgNPnHCfXDb79aFWTxoHFetm1MxwrOqlofZGnEbu
         6O298fcYKrrAI4Zj8RcrbZMC7xIa1DWtVUgjF45eeXolcrBaGxsyUpOTPxvKK5SAVCYe
         hMqM0l4rigjWrBBvl7iaqpHLYLNeAJQQm8S88f+AIHkH4OR9B5KomncKOc74q3sPGVSi
         v8mMc+NIhKfLTUPBnK3xu23YFggdnYcel4NnbMFjIfgIysII7OXKD3gfDv8Pk8CVG5lr
         wZJB8X3wehYz953PkjbB6bO6l4rUdt4MXjXZhZ+h45KtqNfgofYkxyUYH2BXvv/68/xz
         4d3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=AgdBOmzjWEHkV7rEo+KUxlFzWKgAveUFyWtzbLgYCE4=;
        b=FlUy27lDHKjoiYhG4BeFb+5hxEnQN9dsGd4lHsz97AV2jt4oJW2EY8vqM+4YNF4I7e
         prn2MwvARcWxGFKAUWwv502an9TaptfySRmfoJj3MCleVm9cooZrIooZ12vgRzxjmuav
         rxpuSx46KyFsF72144AVEcqMVEHK5j1k+jPII7MRIm5vYYKcGCb4mwQMXHHwe+hGwVC8
         X/j7mZt9lAS7/erhhXKuGEFGxAS9dlk9VIDZ/j+od0UnUEKe6fRm8Oo4W4iNfqFGBp9P
         vp1Tz15SJardC1dVg/N11um6Qur3U7TrE2clKgi0tLe3j96z86PDs4DVJSpP9O0Ficbv
         C96w==
X-Gm-Message-State: ACgBeo3Ze+LzFPo73jr/tDzg1zPQKSQRU4hwHvPzJFDRZGyUAIkivt0c
	h/dtlWX7Eza6XiHNkS7P2Ng=
X-Google-Smtp-Source: AA6agR4NqIfQVCLi7yaL0plDEd9R+3QXOrkjTbmC4IFeD/Z6uIkIYJmphiUY+nclKk/Pwmey+JCedQ==
X-Received: by 2002:a17:906:93f0:b0:730:6d4e:970c with SMTP id yl16-20020a17090693f000b007306d4e970cmr11648327ejb.188.1659893894955;
        Sun, 07 Aug 2022 10:38:14 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:f019:ef7b:173c:a9d2? ([2a02:908:1256:79a0:f019:ef7b:173c:a9d2])
        by smtp.gmail.com with ESMTPSA id dc3-20020a170906c7c300b0073093eaf53esm3964625ejb.131.2022.08.07.10.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Aug 2022 10:38:14 -0700 (PDT)
Message-ID: <2fc74efe-220f-b57a-e804-7d2b3880d14f@gmail.com>
Date: Sun, 7 Aug 2022 19:38:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220729170744.1301044-1-robdclark@gmail.com>
 <20220729170744.1301044-2-robdclark@gmail.com>
 <3d2083aa-fc6c-6875-3daf-e5abe45fb762@gmail.com>
 <CAF6AEGvKdM3vyCvBZK=ZcdGmak7tsrP1b8ANyyaMjVfNDViqyw@mail.gmail.com>
 <973de2f8-75e4-d4c7-a13a-c541a6cf7c77@amd.com>
 <CAF6AEGuhQT6A_jh8kLWh5xMoUGc1osdewyBk-8NoprtWOHseaQ@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAF6AEGuhQT6A_jh8kLWh5xMoUGc1osdewyBk-8NoprtWOHseaQ@mail.gmail.com>
Message-ID-Hash: HO2G2YYFUN3OJ6T3YCGLY6F3QAMX4DL4
X-Message-ID-Hash: HO2G2YYFUN3OJ6T3YCGLY6F3QAMX4DL4
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: Add ioctl to query mmap info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HO2G2YYFUN3OJ6T3YCGLY6F3QAMX4DL4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDcuMDguMjIgdW0gMTk6MzUgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFN1biwgQXVnIDcs
IDIwMjIgYXQgMTA6MTQgQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPiB3cm90ZToNCj4+IEFtIDA3LjA4LjIyIHVtIDE5OjAyIHNjaHJpZWIgUm9iIENsYXJr
Og0KPj4+IE9uIFN1biwgQXVnIDcsIDIwMjIgYXQgOTowOSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo+
Pj4gPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToNCj4+Pj4gQW0gMjku
MDcuMjIgdW0gMTk6MDcgc2NocmllYiBSb2IgQ2xhcms6DQo+Pj4+PiBGcm9tOiBSb2IgQ2xhcmsg
PHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+Pj4+Pg0KPj4+Pj4gVGhpcyBpcyBhIGZhaXJseSBu
YXJyb3dseSBmb2N1c2VkIGludGVyZmFjZSwgcHJvdmlkaW5nIGEgd2F5IGZvciBhIFZNTQ0KPj4+
Pj4gaW4gdXNlcnNwYWNlIHRvIHRlbGwgdGhlIGd1ZXN0IGtlcm5lbCB3aGF0IHBncHJvdCBzZXR0
aW5ncyB0byB1c2Ugd2hlbg0KPj4+Pj4gbWFwcGluZyBhIGJ1ZmZlciB0byBndWVzdCB1c2Vyc3Bh
Y2UuDQo+Pj4+Pg0KPj4+Pj4gRm9yIGJ1ZmZlcnMgdGhhdCBnZXQgbWFwcGVkIGludG8gZ3Vlc3Qg
dXNlcnNwYWNlLCB2aXJnbHJlbmRlcmVyIHJldHVybnMNCj4+Pj4+IGEgZG1hLWJ1ZiBmZCB0byB0
aGUgVk1NIChjcm9zdm0gb3IgcWVtdSkuDQo+Pj4+IFdvdywgd2FpdCBhIHNlY29uZC4gV2hvIGlz
IGdpdmluZyB3aG9tIHRoZSBETUEtYnVmIGZkIGhlcmU/DQo+Pj4gTm90IHN1cmUgSSB1bmRlcnN0
YW5kIHRoZSBxdWVzdGlvbi4uIHRoZSBkbWEtYnVmIGZkIGNvdWxkIGNvbWUgZnJvbQ0KPj4+IEVH
TF9NRVNBX2ltYWdlX2RtYV9idWZfZXhwb3J0LCBnYm0sIG9yIHNpbWlsYXIuDQo+Pj4NCj4+Pj4g
TXkgbGFzdCBzdGF0dXMgd2FzIHRoYXQgdGhpcyBkZXNpZ24gd2FzIGlsbGVnYWwgYW5kIGNvdWxk
bid0IGJlDQo+Pj4+IGltcGxlbWVudGVkIGJlY2F1c2UgaXQgcmVxdWlyZXMgaW50ZXJuYWwga25v
d2xlZGdlIG9ubHkgdGhlIGV4cG9ydGluZw0KPj4+PiBkcml2ZXIgY2FuIGhhdmUuDQo+Pj4gVGhp
cyBpb2N0bCBwcm92aWRlcyB0aGF0IGluZm9ybWF0aW9uIGZyb20gdGhlIGV4cG9ydGluZyBkcml2
ZXIgc28gdGhhdA0KPj4+IGEgVk1NIGRvZXNuJ3QgaGF2ZSB0byBtYWtlIGFzc3VtcHRpb25zIDst
KQ0KPj4gQW5kIGV4YWN0bHkgdGhhdCB3YXMgTkFLZWQgdGhlIGxhc3QgdGltZSBpdCBjYW1lIHVw
LiBPbmx5IHRoZSBleHBvcnRpbmcNCj4+IGRyaXZlciBpcyBhbGxvd2VkIHRvIG1tYXAoKSB0aGUg
RE1BLWJ1ZiBpbnRvIHRoZSBndWVzdC4NCj4gZXhjZXB0IHRoZSBleHBvcnRpbmcgZHJpdmVyIGlz
IGluIHRoZSBob3N0IDstKQ0KPg0KPj4gVGhpcyB3YXkgeW91IGFsc28gZG9uJ3QgbmVlZCB0byB0
cmFuc3BvcnQgYW55IGNhY2hpbmcgaW5mb3JtYXRpb24gYW55d2hlcmUuDQo+Pg0KPj4+IEN1cnJl
bnRseSBjcm9zdm0gYXNzdW1lcyBpZiAoZHJpdmVybmFtZSA9PSAiaTkxNSIpIHRoZW4gaXQgaXMg
YSBjYWNoZWQNCj4+PiBtYXBwaW5nLCBvdGhlcndpc2UgaXQgaXMgd2MuICBJJ20gdHJ5aW5nIHRv
IGZpbmQgYSB3YXkgdG8gZml4IHRoaXMuDQo+Pj4gU3VnZ2VzdGlvbnMgd2VsY29tZSwgYnV0IGJl
Y2F1c2Ugb2YgaG93IG1hcHBpbmcgdG8gYSBndWVzdCBWTSB3b3JrcywgYQ0KPj4+IFZNTSBpcyBh
IHNvbWV3aGF0IHNwZWNpYWwgY2FzZSB3aGVyZSB0aGlzIGluZm9ybWF0aW9uIGlzIG5lZWRlZCBp
bg0KPj4+IHVzZXJzcGFjZS4NCj4+IE9rIHRoYXQgbGVhdmVzIG1lIGNvbXBsZXRlbHkgcHV6emxl
ZC4gSG93IGRvZXMgdGhhdCB3b3JrIGluIHRoZSBmaXJzdCBwbGFjZT8NCj4+DQo+PiBJbiBvdGhl
ciB3b3JkcyBob3cgZG9lcyB0aGUgbWFwcGluZyBpbnRvIHRoZSBndWVzdCBwYWdlIHRhYmxlcyBo
YXBwZW4/DQo+IFRoZXJlIGFyZSBtdWx0aXBsZSBsZXZlbHMgdG8gdGhpcywgYnV0IGluIHNob3J0
IG1hcHBpbmcgdG8gZ3Vlc3QNCj4gdXNlcnNwYWNlIGhhcHBlbnMgdmlhIGRybS92aXJ0aW8gKGFr
YSAidmlydGlvX2dwdSIgb3IgInZpcnRncHUiKSwgdGhlDQo+IGNhY2hlIGF0dHJpYnV0ZXMgYXJl
IHNldCB2aWEgIm1hcF9pbmZvIiBhdHRyaWJ1dGUgcmV0dXJuZWQgZnJvbSB0aGUNCj4gaG9zdCBW
TU0gKGhvc3QgdXNlcnNwYWNlLCBoZW5jZSB0aGUgbmVlZCBmb3IgdGhpcyBpb2N0bCkuDQo+DQo+
IEluIHRoZSBob3N0LCB0aGUgaG9zdCBrZXJuZWwgZHJpdmVyIG1tYXBzIHRvIGhvc3QgdXNlcnNw
YWNlIChWTU0pLg0KPiBIZXJlIHRoZSBleHBvcnRpbmcgZHJpdmVyIGlzIHBlcmZvcm1pbmcgdGhl
IG1tYXAgd2l0aCBjb3JyZWN0IGNhY2hlDQo+IGF0dHJpYnV0ZXMuDQoNCj4gVGhlIFZNTSB1c2Vz
IEtWTSB0byBtYXAgdGhlc2UgcGFnZXMgaW50byB0aGUgZ3Vlc3Qgc28NCg0KQW5kIGV4YWN0bHkg
dGhhdCB3YXMgZGVjbGFyZWQgY29tcGxldGVseSBpbGxlZ2FsIHRoZSBsYXN0IHRpbWUgaXQgY2Ft
ZSANCnVwIG9uIHRoZSBtYWlsaW5nIGxpc3QuDQoNCkRhbmllbCBpbXBsZW1lbnRlZCBhIHdob2xl
IGJ1bmNoIG9mIHBhdGNoZXMgaW50byB0aGUgRE1BLWJ1ZiBsYXllciB0byANCm1ha2UgaXQgaW1w
b3NzaWJsZSBmb3IgS1ZNIHRvIGRvIHRoaXMuDQoNCkkgaGF2ZSBhYnNvbHV0ZWx5IG5vIGlkZWEg
d2h5IHRoYXQgaXMgbm93IGEgdG9waWMgYWdhaW4gYW5kIHdoeSBhbnlib2R5IA0KaXMgc3RpbGwg
dXNpbmcgdGhpcyBhcHByb2FjaC4NCg0KQERhbmllbCBjYW4geW91IGNsYXJpZnkuDQoNClRoYW5r
cywNCkNocmlzdGlhbi4NCg0KPiB0aGV5IGFwcGVhciBhcyBwaHlzaWNhbCBwYWdlcyB0byB0aGUg
Z3Vlc3Qga2VybmVsLiAgVGhlIGd1ZXN0IGtlcm5lbA0KPiAodmlydGdwdSkgaW4gdHVybiBtYXBz
IHRoZW0gdG8gZ3Vlc3QgdXNlcnNwYWNlLg0KPg0KPiBCUiwNCj4gLVINCj4NCj4+IFJlZ2FyZHMs
DQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+IEJSLA0KPj4+IC1SDQo+Pj4NCj4+Pj4gQERhbmllbCBo
YXMgYW55dGhpbmcgY2hhbmdlZCBvbiB0aGF0IGlzIG9yIG15IHN0YXR1cyBzdGlsbCB2YWxpZD8N
Cj4+Pj4NCj4+Pj4gUmVnYXJkcywNCj4+Pj4gQ2hyaXN0aWFuLg0KPj4+Pg0KPj4+Pj4gICAgICBJ
biBhZGRpdGlvbiB0byBtYXBwaW5nIHRoZQ0KPj4+Pj4gcGFnZXMgaW50byB0aGUgZ3Vlc3QgVk0s
IGl0IG5lZWRzIHRvIHJlcG9ydCB0byBkcm0vdmlydGlvIGluIHRoZSBndWVzdA0KPj4+Pj4gdGhl
IGNhY2hlIHNldHRpbmdzIHRvIHVzZSBmb3IgZ3Vlc3QgdXNlcnNwYWNlLiAgSW4gcGFydGljdWxh
ciwgb24gc29tZQ0KPj4+Pj4gYXJjaGl0ZWN0dXJlcywgY3JlYXRpbmcgYWxpYXNlZCBtYXBwaW5n
cyB3aXRoIGRpZmZlcmVudCBjYWNoZSBhdHRyaWJ1dGVzDQo+Pj4+PiBpcyBmcm93bmVkIHVwb24s
IHNvIGl0IGlzIGltcG9ydGFudCB0aGF0IHRoZSBndWVzdCBtYXBwaW5ncyBoYXZlIHRoZQ0KPj4+
Pj4gc2FtZSBjYWNoZSBhdHRyaWJ1dGVzIGFzIGFueSBwb3RlbnRpYWwgaG9zdCBtYXBwaW5ncy4N
Cj4+Pj4+DQo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1
bS5vcmc+DQo+Pj4+PiAtLS0NCj4+Pj4+ICAgICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAg
IHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+Pj4+ICAgICBpbmNsdWRlL2xpbnV4
L2RtYS1idWYuaCAgICAgIHwgIDcgKysrKysrKw0KPj4+Pj4gICAgIGluY2x1ZGUvdWFwaS9saW51
eC9kbWEtYnVmLmggfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+Pj4+PiAgICAg
MyBmaWxlcyBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspDQo+Pj4+Pg0KPj4+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
DQo+Pj4+PiBpbmRleCAzMmY1NTY0MDg5MGMuLmQwMmQ2YzJhM2I0OSAxMDA2NDQNCj4+Pj4+IC0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMNCj4+Pj4+IEBAIC0zMjYsNiArMzI2LDI5IEBAIHN0YXRpYyBsb25nIGRtYV9i
dWZfc2V0X25hbWUoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwgY29uc3QgY2hhciBfX3VzZXIgKmJ1
ZikNCj4+Pj4+ICAgICAgICAgcmV0dXJuIDA7DQo+Pj4+PiAgICAgfQ0KPj4+Pj4NCj4+Pj4+ICtz
dGF0aWMgbG9uZyBkbWFfYnVmX2luZm8oc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwgY29uc3Qgdm9p
ZCBfX3VzZXIgKnVhcmcpDQo+Pj4+PiArew0KPj4+Pj4gKyAgICAgc3RydWN0IGRtYV9idWZfaW5m
byBhcmc7DQo+Pj4+PiArDQo+Pj4+PiArICAgICBpZiAoY29weV9mcm9tX3VzZXIoJmFyZywgdWFy
Zywgc2l6ZW9mKGFyZykpKQ0KPj4+Pj4gKyAgICAgICAgICAgICByZXR1cm4gLUVGQVVMVDsNCj4+
Pj4+ICsNCj4+Pj4+ICsgICAgIHN3aXRjaCAoYXJnLnBhcmFtKSB7DQo+Pj4+PiArICAgICBjYXNl
IERNQV9CVUZfSU5GT19WTV9QUk9UOg0KPj4+Pj4gKyAgICAgICAgICAgICBpZiAoIWRtYWJ1Zi0+
b3BzLT5tbWFwX2luZm8pDQo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9T
WVM7DQo+Pj4+PiArICAgICAgICAgICAgIGFyZy52YWx1ZSA9IGRtYWJ1Zi0+b3BzLT5tbWFwX2lu
Zm8oZG1hYnVmKTsNCj4+Pj4+ICsgICAgICAgICAgICAgYnJlYWs7DQo+Pj4+PiArICAgICBkZWZh
dWx0Og0KPj4+Pj4gKyAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4+Pj4+ICsgICAgIH0N
Cj4+Pj4+ICsNCj4+Pj4+ICsgICAgIGlmIChjb3B5X3RvX3VzZXIodWFyZywgJmFyZywgc2l6ZW9m
KGFyZykpKQ0KPj4+Pj4gKyAgICAgICAgICAgICByZXR1cm4gLUVGQVVMVDsNCj4+Pj4+ICsNCj4+
Pj4+ICsgICAgIHJldHVybiAwOw0KPj4+Pj4gK30NCj4+Pj4+ICsNCj4+Pj4+ICAgICBzdGF0aWMg
bG9uZyBkbWFfYnVmX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLA0KPj4+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgY21kLCB1bnNpZ25lZCBsb25nIGFyZykNCj4+Pj4+
ICAgICB7DQo+Pj4+PiBAQCAtMzY5LDYgKzM5Miw5IEBAIHN0YXRpYyBsb25nIGRtYV9idWZfaW9j
dGwoc3RydWN0IGZpbGUgKmZpbGUsDQo+Pj4+PiAgICAgICAgIGNhc2UgRE1BX0JVRl9TRVRfTkFN
RV9COg0KPj4+Pj4gICAgICAgICAgICAgICAgIHJldHVybiBkbWFfYnVmX3NldF9uYW1lKGRtYWJ1
ZiwgKGNvbnN0IGNoYXIgX191c2VyICopYXJnKTsNCj4+Pj4+DQo+Pj4+PiArICAgICBjYXNlIERN
QV9CVUZfSU9DVExfSU5GTzoNCj4+Pj4+ICsgICAgICAgICAgICAgcmV0dXJuIGRtYV9idWZfaW5m
byhkbWFidWYsIChjb25zdCB2b2lkIF9fdXNlciAqKWFyZyk7DQo+Pj4+PiArDQo+Pj4+PiAgICAg
ICAgIGRlZmF1bHQ6DQo+Pj4+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9UVFk7DQo+Pj4+
PiAgICAgICAgIH0NCj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBi
L2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4+PiBpbmRleCA3MTczMTc5NmM4YzMuLjZmNGRl
NjRhNTkzNyAxMDA2NDQNCj4+Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4+
PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPj4+Pj4gQEAgLTI4Myw2ICsyODMsMTMg
QEAgc3RydWN0IGRtYV9idWZfb3BzIHsNCj4+Pj4+ICAgICAgICAgICovDQo+Pj4+PiAgICAgICAg
IGludCAoKm1tYXApKHN0cnVjdCBkbWFfYnVmICosIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1h
KTsNCj4+Pj4+DQo+Pj4+PiArICAgICAvKioNCj4+Pj4+ICsgICAgICAqIEBtbWFwX2luZm86DQo+
Pj4+PiArICAgICAgKg0KPj4+Pj4gKyAgICAgICogUmV0dXJuIG1tYXBwaW5nIGluZm8gZm9yIHRo
ZSBidWZmZXIuICBTZWUgRE1BX0JVRl9JTkZPX1ZNX1BST1QuDQo+Pj4+PiArICAgICAgKi8NCj4+
Pj4+ICsgICAgIGludCAoKm1tYXBfaW5mbykoc3RydWN0IGRtYV9idWYgKik7DQo+Pj4+PiArDQo+
Pj4+PiAgICAgICAgIGludCAoKnZtYXApKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBp
b3N5c19tYXAgKm1hcCk7DQo+Pj4+PiAgICAgICAgIHZvaWQgKCp2dW5tYXApKHN0cnVjdCBkbWFf
YnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCk7DQo+Pj4+PiAgICAgfTsNCj4+Pj4+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS91YXBp
L2xpbnV4L2RtYS1idWYuaA0KPj4+Pj4gaW5kZXggYjE1MjNjYjhhYjMwLi5hNDFhZGFjMGY0NmEg
MTAwNjQ0DQo+Pj4+PiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oDQo+Pj4+PiAr
KysgYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oDQo+Pj4+PiBAQCAtODUsNiArODUsMzIg
QEAgc3RydWN0IGRtYV9idWZfc3luYyB7DQo+Pj4+Pg0KPj4+Pj4gICAgICNkZWZpbmUgRE1BX0JV
Rl9OQU1FX0xFTiAgICAzMg0KPj4+Pj4NCj4+Pj4+ICsNCj4+Pj4+ICsvKioNCj4+Pj4+ICsgKiBz
dHJ1Y3QgZG1hX2J1Zl9pbmZvIC0gUXVlcnkgaW5mbyBhYm91dCB0aGUgYnVmZmVyLg0KPj4+Pj4g
KyAqLw0KPj4+Pj4gK3N0cnVjdCBkbWFfYnVmX2luZm8gew0KPj4+Pj4gKw0KPj4+Pj4gKyNkZWZp
bmUgRE1BX0JVRl9JTkZPX1ZNX1BST1QgICAgICAxDQo+Pj4+PiArIyAgZGVmaW5lIERNQV9CVUZf
Vk1fUFJPVF9XQyAgICAgIDANCj4+Pj4+ICsjICBkZWZpbmUgRE1BX0JVRl9WTV9QUk9UX0NBQ0hF
RCAgMQ0KPj4+Pj4gKw0KPj4+Pj4gKyAgICAgLyoqDQo+Pj4+PiArICAgICAgKiBAcGFyYW06IFdo
aWNoIHBhcmFtIHRvIHF1ZXJ5DQo+Pj4+PiArICAgICAgKg0KPj4+Pj4gKyAgICAgICogRE1BX0JV
Rl9JTkZPX0JNX1BST1Q6DQo+Pj4+PiArICAgICAgKiAgICAgUXVlcnkgdGhlIGFjY2VzcyBwZXJt
aXNzaW9ucyBvZiB1c2Vyc3BhY2UgbW1hcCdzIG9mIHRoaXMgYnVmZmVyLg0KPj4+Pj4gKyAgICAg
ICogICAgIFJldHVybnMgb25lIG9mIERNQV9CVUZfVk1fUFJPVF94DQo+Pj4+PiArICAgICAgKi8N
Cj4+Pj4+ICsgICAgIF9fdTMyIHBhcmFtOw0KPj4+Pj4gKyAgICAgX191MzIgcGFkOw0KPj4+Pj4g
Kw0KPj4+Pj4gKyAgICAgLyoqDQo+Pj4+PiArICAgICAgKiBAdmFsdWU6IFJldHVybiB2YWx1ZSBv
ZiB0aGUgcXVlcnkuDQo+Pj4+PiArICAgICAgKi8NCj4+Pj4+ICsgICAgIF9fdTY0IHZhbHVlOw0K
Pj4+Pj4gK307DQo+Pj4+PiArDQo+Pj4+PiAgICAgI2RlZmluZSBETUFfQlVGX0JBU0UgICAgICAg
ICAgICAgICAgJ2InDQo+Pj4+PiAgICAgI2RlZmluZSBETUFfQlVGX0lPQ1RMX1NZTkMgIF9JT1co
RE1BX0JVRl9CQVNFLCAwLCBzdHJ1Y3QgZG1hX2J1Zl9zeW5jKQ0KPj4+Pj4NCj4+Pj4+IEBAIC05
NSw0ICsxMjEsNiBAQCBzdHJ1Y3QgZG1hX2J1Zl9zeW5jIHsNCj4+Pj4+ICAgICAjZGVmaW5lIERN
QV9CVUZfU0VUX05BTUVfQSAgX0lPVyhETUFfQlVGX0JBU0UsIDEsIF9fdTMyKQ0KPj4+Pj4gICAg
ICNkZWZpbmUgRE1BX0JVRl9TRVRfTkFNRV9CICBfSU9XKERNQV9CVUZfQkFTRSwgMSwgX191NjQp
DQo+Pj4+Pg0KPj4+Pj4gKyNkZWZpbmUgRE1BX0JVRl9JT0NUTF9JTkZPICAgX0lPV1IoRE1BX0JV
Rl9CQVNFLCAyLCBzdHJ1Y3QgZG1hX2J1Zl9pbmZvKQ0KPj4+Pj4gKw0KPj4+Pj4gICAgICNlbmRp
Zg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
