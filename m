Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 043163ED1C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Aug 2021 12:15:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C88060ECA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Aug 2021 10:15:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2624060A52; Mon, 16 Aug 2021 10:15:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 161696098B;
	Mon, 16 Aug 2021 10:15:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 72948608D5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 10:15:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 702236098B; Mon, 16 Aug 2021 10:15:41 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 6877C608D5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 10:15:39 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id k29so22762195wrd.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 03:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=nDZLANJ3zjlg8qcpDpXtNW0+CSx2CqBvgsXtfDv7fxs=;
 b=a/F/Vq9X+EDkGfRQYvnolgy0ATVt0DQj+nTWLadLpXs9i9dRONlzYsbyUR3LE4RUne
 0XjJgfQxs6WiHfEe00FVZv5ejpNnrx8Fq9DltiIcn/3eTZSzMQt9PKOUFroGjXpdpCI9
 yHs4QgFtS1hlhcRaW2k1L5QJLI2LIzm2zP6b4s/4lRytVjdr6J3VXtraDSxE2l8VYFWP
 pcS6L4s7k7yf2HB2wnvsn4J3k/FyQHkSDPubs8HZpDP9ez9fS2k6YEER52bK9+YKKFiI
 LhPQTj82/BAjxQ/7nwMX2ns0GSYvEJT5HOmPyRFpZmi0o8YZ+0U94FqhxHh37fvklflL
 n19g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=nDZLANJ3zjlg8qcpDpXtNW0+CSx2CqBvgsXtfDv7fxs=;
 b=VK4eWWBYjmADVjwhUFUT+nZ2CBCEpRKKcTBlad5ctlZXnZJ3XUX6anzoF00N8U2bq1
 KgyQD1mnpyXeYKc2xdj0hIfpnHVe47WAItmHEzgxWiePwadwr6vVoJVKvztlsbWXGr3c
 SAeHFPt/u4DPEHywx0ndZBbTHD6ugmZAO7SOtomPgOWahKMa/dp6qqQfVA7+Me1xEPKL
 vgXPfB2RuGuTu2O+wphKcmI+O8hwQ5BRcf6rECLLRCECkP0Xy/XCL3SAOyyINM2x2Eyr
 MZlVoRw2FqnfRAu6rRR7EhhJdbmtf46bga0cAtQiSlamw6iNUjNT4a1mkQzbvTQg9/jw
 ZUXA==
X-Gm-Message-State: AOAM532wo7tiydyKW0UDXPp+dCQQvpugoa34Kioe29HGQCzCT7EZofOP
 Son+h8KzsG8RlrcaaYgcg5A=
X-Google-Smtp-Source: ABdhPJwqpYeHZyOoy+wLcE4jxrRof3XjuC8nnDGcK+VlCLMybiY6T7Z/PRxoS5A46oIm810V65WsCg==
X-Received: by 2002:adf:fb44:: with SMTP id c4mr17047849wrs.179.1629108938443; 
 Mon, 16 Aug 2021 03:15:38 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:7d83:fd8:eb16:8605?
 ([2a02:908:1252:fb60:7d83:fd8:eb16:8605])
 by smtp.gmail.com with ESMTPSA id a18sm9498664wmg.43.2021.08.16.03.15.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Aug 2021 03:15:38 -0700 (PDT)
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20210807183804.459850-1-robdclark@gmail.com>
 <20210807183804.459850-2-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <354a3118-c7ce-c1ff-60eb-788f3fa4b48d@gmail.com>
Date: Mon, 16 Aug 2021 12:15:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210807183804.459850-2-robdclark@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2 1/5] dma-fence: Add deadline awareness
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
Cc: Rob Clark <robdclark@chromium.org>, linux-arm-msm@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 freedreno@lists.freedesktop.org,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDcuMDguMjEgdW0gMjA6Mzcgc2NocmllYiBSb2IgQ2xhcms6Cj4gRnJvbTogUm9iIENsYXJr
IDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+Cj4gQWRkIGEgd2F5IHRvIGhpbnQgdG8gdGhlIGZl
bmNlIHNpZ25hbGVyIG9mIGFuIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFzCj4gdmJsYW5rLCB3
aGljaCB0aGUgZmVuY2Ugd2FpdGVyIHdvdWxkIHByZWZlciBub3QgdG8gbWlzcy4gIFRoaXMgaXMg
dG8gYWlkCj4gdGhlIGZlbmNlIHNpZ25hbGVyIGluIG1ha2luZyBwb3dlciBtYW5hZ2VtZW50IGRl
Y2lzaW9ucywgbGlrZSBib29zdGluZwo+IGZyZXF1ZW5jeSBhcyB0aGUgZGVhZGxpbmUgYXBwcm9h
Y2hlcyBhbmQgYXdhcmVuZXNzIG9mIG1pc3NpbmcgZGVhZGxpbmVzCj4gc28gdGhhdCBjYW4gYmUg
ZmFjdG9yZWQgaW4gdG8gdGhlIGZyZXF1ZW5jeSBzY2FsaW5nLgo+Cj4gdjI6IERyb3AgZG1hX2Zl
bmNlOjpkZWFkbGluZSBhbmQgcmVsYXRlZCBsb2dpYyB0byBmaWx0ZXIgZHVwbGljYXRlCj4gICAg
ICBkZWFkbGluZXMsIHRvIGF2b2lkIGluY3JlYXNpbmcgZG1hX2ZlbmNlIHNpemUuICBUaGUgZmVu
Y2UtY29udGV4dAo+ICAgICAgaW1wbGVtZW50YXRpb24gd2lsbCBuZWVkIHNpbWlsYXIgbG9naWMg
dG8gdHJhY2sgZGVhZGxpbmVzIG9mIGFsbAo+ICAgICAgdGhlIGZlbmNlcyBvbiB0aGUgc2FtZSB0
aW1lbGluZS4gIFtja29lbmlnXQo+Cj4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xh
cmtAY2hyb21pdW0ub3JnPgoKUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
fCAyMCArKysrKysrKysrKysrKysrKysrKwo+ICAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCAg
IHwgMTYgKysrKysrKysrKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25z
KCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4gaW5kZXggY2UwZjVlZmY1NzVkLi4xZjQ0NDg2M2I5NGQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4gQEAgLTkxMCw2ICs5MTAsMjYgQEAgZG1hX2ZlbmNlX3dh
aXRfYW55X3RpbWVvdXQoc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywgdWludDMyX3QgY291bnQs
Cj4gICB9Cj4gICBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KTsKPiAg
IAo+ICsKPiArLyoqCj4gKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUgLSBzZXQgZGVzaXJlZCBm
ZW5jZS13YWl0IGRlYWRsaW5lCj4gKyAqIEBmZW5jZTogICAgdGhlIGZlbmNlIHRoYXQgaXMgdG8g
YmUgd2FpdGVkIG9uCj4gKyAqIEBkZWFkbGluZTogdGhlIHRpbWUgYnkgd2hpY2ggdGhlIHdhaXRl
ciBob3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJlCj4gKyAqICAgICAgICAgICAgc2lnbmFsZWQKPiAr
ICoKPiArICogSW5mb3JtIHRoZSBmZW5jZSBzaWduYWxlciBvZiBhbiB1cGNvbWluZyBkZWFkbGlu
ZSwgc3VjaCBhcyB2YmxhbmssIGJ5Cj4gKyAqIHdoaWNoIHBvaW50IHRoZSB3YWl0ZXIgd291bGQg
cHJlZmVyIHRoZSBmZW5jZSB0byBiZSBzaWduYWxlZCBieS4gIFRoaXMKPiArICogaXMgaW50ZW5k
ZWQgdG8gZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBvd2Vy
Cj4gKyAqIG1hbmFnZW1lbnQgZGVjaXNpb25zLCBzdWNoIGFzIGJvb3N0aW5nIEdQVSBmcmVxdWVu
Y3kgaWYgYSBwZXJpb2RpYwo+ICsgKiB2YmxhbmsgZGVhZGxpbmUgaXMgYXBwcm9hY2hpbmcuCj4g
KyAqLwo+ICt2b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UsIGt0aW1lX3QgZGVhZGxpbmUpCj4gK3sKPiArCWlmIChmZW5jZS0+b3BzLT5zZXRfZGVhZGxp
bmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpCj4gKwkJZmVuY2UtPm9wcy0+c2V0
X2RlYWRsaW5lKGZlbmNlLCBkZWFkbGluZSk7Cj4gK30KPiArRVhQT1JUX1NZTUJPTChkbWFfZmVu
Y2Vfc2V0X2RlYWRsaW5lKTsKPiArCj4gICAvKioKPiAgICAqIGRtYV9mZW5jZV9pbml0IC0gSW5p
dGlhbGl6ZSBhIGN1c3RvbSBmZW5jZS4KPiAgICAqIEBmZW5jZTogdGhlIGZlbmNlIHRvIGluaXRp
YWxpemUKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUv
bGludXgvZG1hLWZlbmNlLmgKPiBpbmRleCA2ZmZiNGIyYzYzNzEuLjljODA5ZjBkNWQwYSAxMDA2
NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCj4gKysrIGIvaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UuaAo+IEBAIC05OSw2ICs5OSw3IEBAIGVudW0gZG1hX2ZlbmNlX2ZsYWdfYml0
cyB7Cj4gICAJRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULAo+ICAgCURNQV9GRU5DRV9GTEFH
X1RJTUVTVEFNUF9CSVQsCj4gICAJRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsCj4g
KwlETUFfRkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULAo+ICAgCURNQV9GRU5DRV9GTEFHX1VT
RVJfQklUUywgLyogbXVzdCBhbHdheXMgYmUgbGFzdCBtZW1iZXIgKi8KPiAgIH07Cj4gICAKPiBA
QCAtMjYxLDYgKzI2MiwxOSBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB7Cj4gICAJICovCj4gICAJ
dm9pZCAoKnRpbWVsaW5lX3ZhbHVlX3N0cikoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsCj4gICAJ
CQkJICAgY2hhciAqc3RyLCBpbnQgc2l6ZSk7Cj4gKwo+ICsJLyoqCj4gKwkgKiBAc2V0X2RlYWRs
aW5lOgo+ICsJICoKPiArCSAqIENhbGxiYWNrIHRvIGFsbG93IGEgZmVuY2Ugd2FpdGVyIHRvIGlu
Zm9ybSB0aGUgZmVuY2Ugc2lnbmFsZXIgb2YgYW4KPiArCSAqIHVwY29taW5nIGRlYWRsaW5lLCBz
dWNoIGFzIHZibGFuaywgYnkgd2hpY2ggcG9pbnQgdGhlIHdhaXRlciB3b3VsZAo+ICsJICogcHJl
ZmVyIHRoZSBmZW5jZSB0byBiZSBzaWduYWxlZCBieS4gIFRoaXMgaXMgaW50ZW5kZWQgdG8gZ2l2
ZSBmZWVkYmFjawo+ICsJICogdG8gdGhlIGZlbmNlIHNpZ25hbGVyIHRvIGFpZCBpbiBwb3dlciBt
YW5hZ2VtZW50IGRlY2lzaW9ucywgc3VjaCBhcwo+ICsJICogYm9vc3RpbmcgR1BVIGZyZXF1ZW5j
eS4KPiArCSAqCj4gKwkgKiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLgo+ICsJICovCj4gKwl2
b2lkICgqc2V0X2RlYWRsaW5lKShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFk
bGluZSk7Cj4gICB9Owo+ICAgCj4gICB2b2lkIGRtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLAo+IEBAIC01ODYsNiAr
NjAwLDggQEAgc3RhdGljIGlubGluZSBzaWduZWQgbG9uZyBkbWFfZmVuY2Vfd2FpdChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwgYm9vbCBpbnRyKQo+ICAgCXJldHVybiByZXQgPCAwID8gcmV0IDog
MDsKPiAgIH0KPiAgIAo+ICt2b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpOwo+ICsKPiAgIHN0cnVjdCBkbWFfZmVuY2Ug
KmRtYV9mZW5jZV9nZXRfc3R1Yih2b2lkKTsKPiAgIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5j
ZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIodm9pZCk7Cj4gICB1NjQgZG1hX2ZlbmNlX2NvbnRleHRf
YWxsb2ModW5zaWduZWQgbnVtKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
