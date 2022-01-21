Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA93496697
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jan 2022 21:48:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D49EB401C5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jan 2022 20:48:37 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by lists.linaro.org (Postfix) with ESMTPS id 248D13EE3A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jan 2022 20:48:25 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id e81so15268281oia.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jan 2022 12:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=WGjUTrV5mgHMzDhyvLsZZ8pd7X6AuuH7QuhfJeG9EgY=;
        b=kvmf2OSxp7vQKMwYR1dLgO6WSiX2+4nzHhjmW/Oz5Vx0F/DK5D1vuYufA1qJh9Hx8a
         LfHmpvcS+ayKbXU3K1KqQvhGyBD1/9voVd8xBJhLWdUkaeOtZNW8nOlj2NT51r791/iw
         C1yXy+49U6UWHQxbmVxO2gR3A0Ot1byMBQMNkzoEOFKlPDfLSYdkPZ3ueek84qDVORVm
         ItiKUCPqLuAw3+Ac8+8viaNyNaokKwZyq7tsXOPOs0ZJV8ts+QZSdT+X526m/fv2gVZA
         dvucmMp0dZvzSnL7KV3yLFjafRYSt+ieGp4YyxXF6N3JQnT2EjKZqCvaQdHGuocKInoQ
         /1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=WGjUTrV5mgHMzDhyvLsZZ8pd7X6AuuH7QuhfJeG9EgY=;
        b=GdQV6M2pqKIuOioexiTf+CPoizt2QO+fg0BS5y3XQ8+eTsMr+VFiv8o8F3eRU+1Ewy
         vy3A0G+6U9Y9m/sqn5aMv/RO0rAaiy+uw+64e4u3SAgU/NH8acRUtVwtYxcfmpytpIbA
         2Ygn6jEVuDSWIpfg6x/n/YVawUP5Fpl50vcgPuqw4tP4sIIyYRLAe25Nye7fM8oRjfOz
         zBx/hxeQuF5JBTYTGU9xWqdr+49aYMXs91P6XL12MadQoUHt1boSoKFjGPQWim9Oz4KP
         WfwQM9xG71wMKbqRXstJjipFxfYFw9GOQ7X1xqAeELqbxJn+wdxReAl/cvSAbDKDD6UQ
         5Nvw==
X-Gm-Message-State: AOAM531dv9/KJPbgWC54fP+Ss0z8iLxvYHHPJTX70O4s0qHWqDrtlPCK
	twblE5HvHs6aSIEjKB1dUfh/ZYX3Pkg+Ae/eVJ4=
X-Google-Smtp-Source: ABdhPJyFepdztr15jwXrbjkaZsAmzuoos6TQ9cMezqozHSl5K0Wmi1lv0sbBN6F1FVhtc6sl7qvKX2ON/nhJOnVhzbU=
X-Received: by 2002:a05:6808:300b:: with SMTP id ay11mr2012664oib.120.1642798104543;
 Fri, 21 Jan 2022 12:48:24 -0800 (PST)
MIME-Version: 1.0
References: <20220121052827.4384-1-xiongx18@fudan.edu.cn> <23d5251f-c910-aed3-5d9e-07d6e5e5add2@amd.com>
In-Reply-To: <23d5251f-c910-aed3-5d9e-07d6e5e5add2@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 21 Jan 2022 15:48:13 -0500
Message-ID: <CADnq5_N5Di8mxWDoVe5hdqPfrBnCw=gnDMzMyHeenk2gb=aSZw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Message-ID-Hash: FXG2I5WYBDEU6SGOTGT4FIAFRIIKTJW3
X-Message-ID-Hash: FXG2I5WYBDEU6SGOTGT4FIAFRIIKTJW3
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xin Xiong <xiongx18@fudan.edu.cn>, Alex Deucher <alexander.deucher@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, amd-gfx list <amd-gfx@lists.freedesktop.org>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, linux-media <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Xin Tan <tanxin.ctf@gmail.com>, yuanxzhang@fudan.edu.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amd/amdgpu/amdgpu_cs: fix refcount leak of a dma_fence obj
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FXG2I5WYBDEU6SGOTGT4FIAFRIIKTJW3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMjEsIDIwMjIgYXQgMjo0NSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMjEuMDEuMjIgdW0gMDY6Mjggc2No
cmllYiBYaW4gWGlvbmc6DQo+ID4gVGhpcyBpc3N1ZSB0YWtlcyBwbGFjZSBpbiBhbiBlcnJvciBw
YXRoIGluDQo+ID4gYW1kZ3B1X2NzX2ZlbmNlX3RvX2hhbmRsZV9pb2N0bCgpLiBXaGVuIGBpbmZv
LT5pbi53aGF0YCBmYWxscyBpbnRvDQo+ID4gZGVmYXVsdCBjYXNlLCB0aGUgZnVuY3Rpb24gc2lt
cGx5IHJldHVybnMgLUVJTlZBTCwgZm9yZ2V0dGluZyB0bw0KPiA+IGRlY3JlbWVudCB0aGUgcmVm
ZXJlbmNlIGNvdW50IG9mIGEgZG1hX2ZlbmNlIG9iaiwgd2hpY2ggaXMgYnVtcGVkDQo+ID4gZWFy
bGllciBieSBhbWRncHVfY3NfZ2V0X2ZlbmNlKCkuIFRoaXMgbWF5IHJlc3VsdCBpbiByZWZlcmVu
Y2UgY291bnQNCj4gPiBsZWFrcy4NCj4gPg0KPiA+IEZpeCBpdCBieSBkZWNyZWFzaW5nIHRoZSBy
ZWZjb3VudCBvZiBzcGVjaWZpYyBvYmplY3QgYmVmb3JlIHJldHVybmluZw0KPiA+IHRoZSBlcnJv
ciBjb2RlLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogWGluIFhpb25nIDx4aW9uZ3gxOEBmdWRh
bi5lZHUuY24+DQo+ID4gU2lnbmVkLW9mZi1ieTogWGluIFRhbiA8dGFueGluLmN0ZkBnbWFpbC5j
b20+DQo+DQo+IEdvb2QgY2F0Y2guIFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCkFwcGxpZWQgbWFudWFsbHkuICBTdHJhbmdlbHkgSSBu
ZXZlciBnb3QgdGhpcyBvbiBhbnkgb2YgbXkgZW1haWxzLCBhbmQNCkkgZG9uJ3Qgc2VlIGl0IGlu
IHRoZSBhcmNoaXZlcy4NCg0KQWxleA0KDQo+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyB8IDEgKw0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3Mu
Yw0KPiA+IGluZGV4IDAzMTFkNzk5YS4uODk0ODY5Nzg5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMNCj4gPiBAQCAtMTUxMCw2ICsxNTEwLDcgQEAgaW50
IGFtZGdwdV9jc19mZW5jZV90b19oYW5kbGVfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwNCj4gPiAgICAgICAgICAgICAgIHJldHVybiAwOw0KPiA+DQo+ID4gICAgICAg
ZGVmYXVsdDoNCj4gPiArICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOw0KPiA+ICAg
ICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4gICAgICAgfQ0KPiA+ICAgfQ0KPg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
