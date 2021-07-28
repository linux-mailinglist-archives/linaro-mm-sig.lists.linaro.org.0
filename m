Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 259EB3D8CDB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 13:37:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 168986350F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 11:37:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 15D126350E; Wed, 28 Jul 2021 11:37:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17A3263500;
	Wed, 28 Jul 2021 11:37:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1F0B5634E6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 11:37:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 18DBE63500; Wed, 28 Jul 2021 11:37:42 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id EE6F4634E6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 11:37:39 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id m19so1216761wms.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 04:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=x7dQKoEiN4Y7R3Tqb5Hw/QxBWYnx2kMDibC8HqvNYe4=;
 b=IttcygM3lgAOG/DzUraZ/ph9DjRhdhcm5mywlsUE9uoi0hMi4ryiY6GYOw2NXFL0QZ
 f+FLjUVvyBXKIUuUHnSENXxwfLGAfSfLOyEk2l6ZT4uqTjMKSru+JMQZDA0lRdDcJ0Un
 Ky68Bg+47k8jjNNTIIA6Mnsvovkft0l8tw4lJbiSeSqYeVgZLy2hiR4iJRMdeIgMbVgt
 UEBa4xAV+YV/cd+RTnVA26DEaXihYJTj6EGgiZRDl2iW95RciZ2Q0gDwN8hrC/GH3umN
 Kd2QsMLjmile4nDz7TXWy715pQWt+XAtCOlsUfcquwdtteXSuTFXZi8xFa6yM57dH+pI
 JMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=x7dQKoEiN4Y7R3Tqb5Hw/QxBWYnx2kMDibC8HqvNYe4=;
 b=N/1Jsf2bAj+mU1vILMpZwXKb1nIj8P+bTjQ2ZrVnEn2zbiuB9F8aMfZ0YwxYokPPVz
 AKPLTQDQiQh8IUnsEqbxMl8IFe7I4N6yvF0fUT+YAtlhNalLg1WeFqLbyG0z43nWGMr/
 uPCSpYgSj1pgR+KVF1r0/xRv2RnZEOb3Z7z5IGdLiSsryA2N/8CC2jLkHNZ5r2gl5304
 0C8nVsaoOITJ7+Qoo7fMl5eUHDzai8hq/WRnNoe1mIfbnlz1He8eEOc3gBjTl7V/wx6w
 W0shdrkivxsud56ZRcsQbfqNIbvtL9t7z0XIxcy6airwtpDwzO2ra2f0X4IvxjlEQwKM
 Fpaw==
X-Gm-Message-State: AOAM533fzDhDbETOvmUoMvcJhITLaDmdVWBn+0vO4F9YN8d++CzU4lZ5
 ojPCT/FSMx9vcktzWVw1pE8=
X-Google-Smtp-Source: ABdhPJyhlRuWNCGP/fuxPdZohPZ4g+6Dy16iPJvG307/5zbdd028y8U6Li7ED60kcXewkVk/1E6s0A==
X-Received: by 2002:a7b:c181:: with SMTP id y1mr19380231wmi.82.1627472258968; 
 Wed, 28 Jul 2021 04:37:38 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:6a5d:b580:2891:cbac?
 ([2a02:908:1252:fb60:6a5d:b580:2891:cbac])
 by smtp.gmail.com with ESMTPSA id n11sm377546wrs.81.2021.07.28.04.37.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Jul 2021 04:37:38 -0700 (PDT)
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Rob Clark <robdclark@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <20210726233854.2453899-2-robdclark@gmail.com>
 <50b181fe-6605-b7ac-36a6-8bcda2930e6f@gmail.com>
 <CAF6AEGuNxi_aeYE37FT3a-atCUWgepxs-9EwxMfpiMaU7wgqdQ@mail.gmail.com>
 <9edd7083-e6b3-b230-c273-8f2fbe76ca17@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <703dc9c3-5657-432e-ca0b-25bdd67a2abd@gmail.com>
Date: Wed, 28 Jul 2021 13:37:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <9edd7083-e6b3-b230-c273-8f2fbe76ca17@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 1/4] dma-fence: Add deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Matthew Brost <matthew.brost@intel.com>, Rob Clark <robdclark@chromium.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjguMDcuMjEgdW0gMDk6MDMgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOgo+IEFtIDI3LjA3
LjIxIHVtIDE2OjI1IHNjaHJpZWIgUm9iIENsYXJrOgo+PiBPbiBUdWUsIEp1bCAyNywgMjAyMSBh
dCAxMjoxMSBBTSBDaHJpc3RpYW4gS8O2bmlnCj4+IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdt
YWlsLmNvbT4gd3JvdGU6Cj4+PiBBbSAyNy4wNy4yMSB1bSAwMTozOCBzY2hyaWViIFJvYiBDbGFy
azoKPj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4+Pj4KPj4+
PiBBZGQgYSB3YXkgdG8gaGludCB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgb2YgYW4gdXBjb21pbmcg
ZGVhZGxpbmUsIAo+Pj4+IHN1Y2ggYXMKPj4+PiB2YmxhbmssIHdoaWNoIHRoZSBmZW5jZSB3YWl0
ZXIgd291bGQgcHJlZmVyIG5vdCB0byBtaXNzLiBUaGlzIGlzIHRvIAo+Pj4+IGFpZAo+Pj4+IHRo
ZSBmZW5jZSBzaWduYWxlciBpbiBtYWtpbmcgcG93ZXIgbWFuYWdlbWVudCBkZWNpc2lvbnMsIGxp
a2UgYm9vc3RpbmcKPj4+PiBmcmVxdWVuY3kgYXMgdGhlIGRlYWRsaW5lIGFwcHJvYWNoZXMgYW5k
IGF3YXJlbmVzcyBvZiBtaXNzaW5nIAo+Pj4+IGRlYWRsaW5lcwo+Pj4+IHNvIHRoYXQgY2FuIGJl
IGZhY3RvcmVkIGluIHRvIHRoZSBmcmVxdWVuY3kgc2NhbGluZy4KPj4+Pgo+Pj4+IFNpZ25lZC1v
ZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4KPj4+PiAtLS0KPj4+PiDC
oMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDM5IAo+Pj4+ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKPj4+PiDCoMKgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmjCoMKgIHwgMTcgKysrKysrKysrKysrKysrKwo+Pj4+IMKgwqAgMiBmaWxlcyBjaGFuZ2VkLCA1
NiBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4+Pj4gaW5kZXggY2UwZjVl
ZmY1NzVkLi4yZTBkMjVhYjQ1N2UgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jCj4+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4+Pj4gQEAg
LTkxMCw2ICs5MTAsNDUgQEAgZG1hX2ZlbmNlX3dhaXRfYW55X3RpbWVvdXQoc3RydWN0IGRtYV9m
ZW5jZSAKPj4+PiAqKmZlbmNlcywgdWludDMyX3QgY291bnQsCj4+Pj4gwqDCoCB9Cj4+Pj4gwqDC
oCBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KTsKPj4+Pgo+Pj4+ICsK
Pj4+PiArLyoqCj4+Pj4gKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUgLSBzZXQgZGVzaXJlZCBm
ZW5jZS13YWl0IGRlYWRsaW5lCj4+Pj4gKyAqIEBmZW5jZTrCoMKgwqAgdGhlIGZlbmNlIHRoYXQg
aXMgdG8gYmUgd2FpdGVkIG9uCj4+Pj4gKyAqIEBkZWFkbGluZTogdGhlIHRpbWUgYnkgd2hpY2gg
dGhlIHdhaXRlciBob3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJlCj4+Pj4gKyAqwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzaWduYWxlZAo+Pj4+ICsgKgo+Pj4+ICsgKiBJbmZvcm0gdGhlIGZlbmNlIHNp
Z25hbGVyIG9mIGFuIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFzIAo+Pj4+IHZibGFuaywgYnkK
Pj4+PiArICogd2hpY2ggcG9pbnQgdGhlIHdhaXRlciB3b3VsZCBwcmVmZXIgdGhlIGZlbmNlIHRv
IGJlIHNpZ25hbGVkIAo+Pj4+IGJ5LsKgIFRoaXMKPj4+PiArICogaXMgaW50ZW5kZWQgdG8gZ2l2
ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBvd2VyCj4+Pj4gKyAq
IG1hbmFnZW1lbnQgZGVjaXNpb25zLCBzdWNoIGFzIGJvb3N0aW5nIEdQVSBmcmVxdWVuY3kgaWYg
YSBwZXJpb2RpYwo+Pj4+ICsgKiB2YmxhbmsgZGVhZGxpbmUgaXMgYXBwcm9hY2hpbmcuCj4+Pj4g
KyAqLwo+Pj4+ICt2b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UsIGt0aW1lX3QgCj4+Pj4gZGVhZGxpbmUpCj4+Pj4gK3sKPj4+PiArwqDCoMKgwqAgdW5z
aWduZWQgbG9uZyBmbGFnczsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgIGlmIChkbWFfZmVuY2VfaXNf
c2lnbmFsZWQoZmVuY2UpKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+
Pj4+ICsKPj4+PiArwqDCoMKgwqAgc3Bpbl9sb2NrX2lycXNhdmUoZmVuY2UtPmxvY2ssIGZsYWdz
KTsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgIC8qIElmIHdlIGFscmVhZHkgaGF2ZSBhbiBlYXJsaWVy
IGRlYWRsaW5lLCBrZWVwIGl0OiAqLwo+Pj4+ICvCoMKgwqDCoCBpZiAodGVzdF9iaXQoRE1BX0ZF
TkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmZlbmNlLT5mbGFncykgJiYKPj4+PiArwqDCoMKg
wqDCoMKgwqDCoCBrdGltZV9iZWZvcmUoZmVuY2UtPmRlYWRsaW5lLCBkZWFkbGluZSkpIHsKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2Ut
PmxvY2ssIGZsYWdzKTsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4+
PiArwqDCoMKgwqAgfQo+Pj4+ICsKPj4+PiArwqDCoMKgwqAgZmVuY2UtPmRlYWRsaW5lID0gZGVh
ZGxpbmU7Cj4+Pj4gK8KgwqDCoMKgIHNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5F
X0JJVCwgJmZlbmNlLT5mbGFncyk7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoCBzcGluX3VubG9ja19p
cnFyZXN0b3JlKGZlbmNlLT5sb2NrLCBmbGFncyk7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoCBpZiAo
ZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lKGZlbmNlLCBkZWFkbGluZSk7Cj4+Pj4gK30KPj4+PiAr
RVhQT1JUX1NZTUJPTChkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKTsKPj4+PiArCj4+Pj4gwqDCoCAv
KioKPj4+PiDCoMKgwqAgKiBkbWFfZmVuY2VfaW5pdCAtIEluaXRpYWxpemUgYSBjdXN0b20gZmVu
Y2UuCj4+Pj4gwqDCoMKgICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gaW5pdGlhbGl6ZQo+Pj4+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UuaAo+Pj4+IGluZGV4IDZmZmI0YjJjNjM3MS4uNGU2Y2ZlNGU2ZmJjIDEwMDY0NAo+Pj4+
IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKPj4+PiArKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oCj4+Pj4gQEAgLTg4LDYgKzg4LDcgQEAgc3RydWN0IGRtYV9mZW5jZSB7Cj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBAdGltZXN0YW1wIHJlcGxhY2VkIGJ5
IEByY3Ugb24gCj4+Pj4gZG1hX2ZlbmNlX3JlbGVhc2UoKSAqLwo+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgc3RydWN0IHJjdV9oZWFkIHJjdTsKPj4+PiDCoMKgwqDCoMKgwqAgfTsK
Pj4+PiArwqDCoMKgwqAga3RpbWVfdCBkZWFkbGluZTsKPj4+IE1obSwgYWRkaW5nIHRoZSBmbGFn
IHNvdW5kcyBvayB0byBtZSBidXQgSSdtIGEgYml0IGhlc2l0YXRpbmcgYWRkaW5nIAo+Pj4gdGhl
Cj4+PiBkZWFkbGluZSBhcyBleHRyYSBmaWVsZCBoZXJlLgo+Pj4KPj4+IFdlIHR1bmVkIHRoZSBk
bWFfZmVuY2Ugc3RydWN0dXJlIGludGVudGlvbmFsbHkgc28gdGhhdCBpdCBpcyBvbmx5IDY0IAo+
Pj4gYnl0ZXMuCj4+IEhtbSwgdGhlbiBJIGd1ZXNzIHlvdSB3b3VsZG4ndCBiZSBhIGZhbiBvZiBh
bHNvIGFkZGluZyBhbiBocnRpbWVyPwo+Pgo+PiBXZSBjb3VsZCBwdXNoIHRoZSBrdGltZV90IChh
bmQgdGltZXIpIGRvd24gaW50byB0aGUgZGVyaXZlZCBmZW5jZQo+PiBjbGFzcywgYnV0IEkgdGhp
bmsgdGhlcmUgaXMgZ29pbmcgdG8gbmVlZCB0byBiZSBzb21lIGV4dHJhIHN0b3JhZ2UKPj4gKnNv
bWV3aGVyZSouLiBtYXliZSB0aGUgZmVuY2Ugc2lnbmFsZXIgY291bGQgZ2V0IGF3YXkgd2l0aCBq
dXN0Cj4+IHN0b3JpbmcgdGhlIG5lYXJlc3QgdXBjb21pbmcgZGVhZGxpbmUgcGVyIGZlbmNlLWNv
bnRleHQgaW5zdGVhZD8KPgo+IEkgd291bGQganVzdCBwdXNoIHRoYXQgaW50byB0aGUgZHJpdmVy
IGluc3RlYWQuCj4KPiBZb3UgbW9zdCBsaWtlbHkgZG9uJ3Qgd2FudCB0aGUgZGVhZGxpbmUgcGVy
IGZlbmNlIGFueXdheSBpbiBjb21wbGV4IAo+IHNjZW5hcmlvcywgYnV0IHJhdGhlciBwZXIgZnJh
bWUuIEFuZCBhIGZyYW1lIGlzIHVzdWFsbHkgY29tcG9zZWQgZnJvbSAKPiBtdWx0aXBsZSBmZW5j
ZXMuCgpUaGlua2luZyBtb3JlIGFib3V0IGl0IHdlIGNvdWxkIHByb2JhYmx5IGtpbGwgdGhlIHNw
aW5sb2NrIHBvaW50ZXIgYW5kIAptYWtlIHRoZSBmbGFncyAzMmJpdCBpZiB3ZSBhYnNvbHV0ZWx5
IG5lZWQgdGhhdCBoZXJlLgoKQnV0IEkgc3RpbGwgZG9uJ3Qgc2VlIHRoZSBuZWVkIGZvciB0aGF0
LCBlc3BlY2lhbGx5IHNpbmNlIG1vc3QgZHJpdmVycyAKcHJvYmFibHkgd29uJ3QgaW1wbGVtZW50
IGl0LgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+IFJlZ2FyZHMsCj4gQ2hyaXN0aWFuLgo+Cj4+
Cj4+IEJSLAo+PiAtUgo+Pgo+Pj4gUmVnYXJkcywKPj4+IENocmlzdGlhbi4KPj4+Cj4+Pj4gwqDC
oMKgwqDCoMKgIHU2NCBjb250ZXh0Owo+Pj4+IMKgwqDCoMKgwqDCoCB1NjQgc2Vxbm87Cj4+Pj4g
wqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+Pj4gQEAgLTk5LDYgKzEwMCw3IEBA
IGVudW0gZG1hX2ZlbmNlX2ZsYWdfYml0cyB7Cj4+Pj4gwqDCoMKgwqDCoMKgIERNQV9GRU5DRV9G
TEFHX1NJR05BTEVEX0JJVCwKPj4+PiDCoMKgwqDCoMKgwqAgRE1BX0ZFTkNFX0ZMQUdfVElNRVNU
QU1QX0JJVCwKPj4+PiDCoMKgwqDCoMKgwqAgRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9C
SVQsCj4+Pj4gK8KgwqDCoMKgIERNQV9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQsCj4+Pj4g
wqDCoMKgwqDCoMKgIERNQV9GRU5DRV9GTEFHX1VTRVJfQklUUywgLyogbXVzdCBhbHdheXMgYmUg
bGFzdCBtZW1iZXIgKi8KPj4+PiDCoMKgIH07Cj4+Pj4KPj4+PiBAQCAtMjYxLDYgKzI2MywxOSBA
QCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB7Cj4+Pj4gwqDCoMKgwqDCoMKgwqAgKi8KPj4+PiDCoMKg
wqDCoMKgwqAgdm9pZCAoKnRpbWVsaW5lX3ZhbHVlX3N0cikoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UsCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgKnN0ciwgaW50IHNpemUpOwo+Pj4+ICsKPj4+PiArwqDC
oMKgwqAgLyoqCj4+Pj4gK8KgwqDCoMKgwqAgKiBAc2V0X2RlYWRsaW5lOgo+Pj4+ICvCoMKgwqDC
oMKgICoKPj4+PiArwqDCoMKgwqDCoCAqIENhbGxiYWNrIHRvIGFsbG93IGEgZmVuY2Ugd2FpdGVy
IHRvIGluZm9ybSB0aGUgZmVuY2UgCj4+Pj4gc2lnbmFsZXIgb2YgYW4KPj4+PiArwqDCoMKgwqDC
oCAqIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFzIHZibGFuaywgYnkgd2hpY2ggcG9pbnQgdGhl
IAo+Pj4+IHdhaXRlciB3b3VsZAo+Pj4+ICvCoMKgwqDCoMKgICogcHJlZmVyIHRoZSBmZW5jZSB0
byBiZSBzaWduYWxlZCBieS7CoCBUaGlzIGlzIGludGVuZGVkIHRvIAo+Pj4+IGdpdmUgZmVlZGJh
Y2sKPj4+PiArwqDCoMKgwqDCoCAqIHRvIHRoZSBmZW5jZSBzaWduYWxlciB0byBhaWQgaW4gcG93
ZXIgbWFuYWdlbWVudCAKPj4+PiBkZWNpc2lvbnMsIHN1Y2ggYXMKPj4+PiArwqDCoMKgwqDCoCAq
IGJvb3N0aW5nIEdQVSBmcmVxdWVuY3kuCj4+Pj4gK8KgwqDCoMKgwqAgKgo+Pj4+ICvCoMKgwqDC
oMKgICogVGhpcyBjYWxsYmFjayBpcyBvcHRpb25hbC4KPj4+PiArwqDCoMKgwqDCoCAqLwo+Pj4+
ICvCoMKgwqDCoCB2b2lkICgqc2V0X2RlYWRsaW5lKShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwg
a3RpbWVfdCBkZWFkbGluZSk7Cj4+Pj4gwqDCoCB9Owo+Pj4+Cj4+Pj4gwqDCoCB2b2lkIGRtYV9m
ZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgCj4+Pj4gZG1h
X2ZlbmNlX29wcyAqb3BzLAo+Pj4+IEBAIC01ODYsNiArNjAxLDggQEAgc3RhdGljIGlubGluZSBz
aWduZWQgbG9uZyBkbWFfZmVuY2Vfd2FpdChzdHJ1Y3QgCj4+Pj4gZG1hX2ZlbmNlICpmZW5jZSwg
Ym9vbCBpbnRyKQo+Pj4+IMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0IDwgMCA/IHJldCA6IDA7Cj4+
Pj4gwqDCoCB9Cj4+Pj4KPj4+PiArdm9pZCBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IAo+Pj4+IGRlYWRsaW5lKTsKPj4+PiArCj4+Pj4gwqDC
oCBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0X3N0dWIodm9pZCk7Cj4+Pj4gwqDCoCBz
dHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKHZvaWQpOwo+
Pj4+IMKgwqAgdTY0IGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKHVuc2lnbmVkIG51bSk7Cj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
