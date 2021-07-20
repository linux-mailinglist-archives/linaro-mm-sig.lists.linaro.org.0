Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5FC3D0197
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jul 2021 20:26:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6ADD61A48
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jul 2021 18:26:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BB1E762171; Tue, 20 Jul 2021 18:26:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0517061434;
	Tue, 20 Jul 2021 18:26:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EF71060C0C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 18:26:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E4E3761434; Tue, 20 Jul 2021 18:26:47 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by lists.linaro.org (Postfix) with ESMTPS id DCB9260C0C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 18:26:45 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id g12so12787914wme.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 11:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6pTsiDANPzE+73zIk+e131AENTpGYx6/K/T08KfKqSY=;
 b=rJHFVliEPX28A8ivueoovRHJCaPLx1JYakGI+Kltutr3lDY7jcMM0dlibAXtgsSlxx
 VNidQjxvWhTQSDem0TW46RIHJTCJfMcnIl9KgO77f4doAJuLSdJvRwR/MUaV8YWwZVJt
 Ntl1JK05U8LhxeQJwa07Deb0fyazNlHhgcjf5dyF2QMjMCrY7Elo9n+ZhP6ppBwqHrDP
 ByTvSHCMrXuF7YmWynnI2hl+1drw8/QUP2yjRR4bXZW9WschJmd3ggESfnAPMMaWShLh
 DWkp6xdJoV31GVjmyCNVYfiNAsmk2J2H14dSuoRLWqAXw4amZ1f9aE+uSocks9ogetOa
 ndug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6pTsiDANPzE+73zIk+e131AENTpGYx6/K/T08KfKqSY=;
 b=q14JFGsGaFhkVXADp8ikHp8RbfxRFvTGR3Vxqi/HkDqNnDyf0VWyox32HI56wknoNS
 x3QDS+tbIauTnCKiKohWS5slO12cGMxFlzWz+mxvfW8y2xKwyX+Xncysx7lemHLVIeZ7
 ZmZUM1KYiWBWXuMMPTlY4rV0+bYTIHJ/e2fyKswtJzXccAEIV+P7pbYMct2Uz5VhE8VD
 eyPnTRCB0wz7cCVVEc8krm/mvClUlm/xfzCFNLgt+LwEPgi3YvbzZ1eF1eDQ4BT+E5NH
 TQ74CBwVroKEQLPQdPq/s6pRLvYOVJON15A/RIONOuOyBlbXCBDWDoC+Trvq31W46ARt
 SWUw==
X-Gm-Message-State: AOAM530R0bcjf+QoQFzG9zSArxhbYBOT+U4xscKPCGS+43w/2HRyW32Z
 mgZLRgEFbHtxJAtEaUHN3h5exNJb7QdGtg8d+YU=
X-Google-Smtp-Source: ABdhPJy1XY32wnst0FtwN54MJ1oMF78e5Su0jyufLkmfk9sQSnHd9sq8CidwadgCIEKN1YZgSPzBhcVIfLMz1Nyg8fU=
X-Received: by 2002:a1c:7c05:: with SMTP id x5mr39566638wmc.123.1626805604844; 
 Tue, 20 Jul 2021 11:26:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210720150716.1213775-1-robdclark@gmail.com>
 <60ffb6f3-e932-d9af-3b90-81adf0c15250@gmail.com>
In-Reply-To: <60ffb6f3-e932-d9af-3b90-81adf0c15250@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 20 Jul 2021 11:30:53 -0700
Message-ID: <CAF6AEGtOW3EjZWo36ij8U1om=gAqvg8CSkJJq2GkyHFGWUH4kQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/msm: Add fence->wait() op
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
Cc: Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBKdWwgMjAsIDIwMjEgYXQgMTE6MDMgQU0gQ2hyaXN0aWFuIEvDtm5pZwo8Y2tvZW5p
Zy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgUm9iLAo+Cj4gQW0gMjAu
MDcuMjEgdW0gMTc6MDcgc2NocmllYiBSb2IgQ2xhcms6Cj4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJv
YmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4gPgo+ID4gU29tZWhvdyB3ZSBoYWQgbmVpdGhlciAtPndh
aXQoKSBub3IgZG1hX2ZlbmNlX3NpZ25hbCgpIGNhbGxzLCBhbmQgbm8KPiA+IG9uZSBub3RpY2Vk
LiAgT29wcy4KPgo+Cj4gSSdtIG5vdCBzdXJlIGlmIHRoYXQgaXMgYSBnb29kIGlkZWEuCj4KPiBU
aGUgZG1hX2ZlbmNlLT53YWl0KCkgY2FsbGJhY2sgaXMgcHJldHR5IG11Y2ggZGVwcmVjYXRlZCBh
bmQgc2hvdWxkIG5vdAo+IGJlIHVzZWQgYW55IG1vcmUuCj4KPiBXaGF0IGV4YWN0bHkgZG8geW91
IG5lZWQgdGhhdCBmb3I/CgpXZWxsLCB0aGUgYWx0ZXJuYXRpdmUgaXMgdG8gdHJhY2sgdGhlIHNl
dCBvZiBmZW5jZXMgd2hpY2ggaGF2ZQpzaWduYWxsaW5nIGVuYWJsZWQsIGFuZCB0aGVuIGZpZ3Vy
ZSBvdXQgd2hpY2ggb25lcyB0byBzaWduYWwsIHdoaWNoCnNlZW1zIGxpa2UgYSBsb3QgbW9yZSB3
b3JrLCB2cyBqdXN0IHJlLXB1cnBvc2luZyB0aGUgd2FpdAppbXBsZW1lbnRhdGlvbiB3ZSBhbHJl
YWR5IGhhdmUgZm9yIG5vbi1kbWFfZmVuY2UgY2FzZXMgOy0pCgpXaHkgaXMgdGhlIC0+d2FpdCgp
IGNhbGxiYWNrIChwcmV0dHkgbXVjaCkgZGVwcmVjYXRlZD8KCkJSLAotUgoKPiBSZWdhcmRzLAo+
IENocmlzdGlhbi4KPgo+ID4KPiA+IE5vdGUgdGhhdCB0aGlzIHJlbW92ZXMgdGhlICF0aW1lb3V0
IGNhc2UsIHdoaWNoIGhhcyBub3QgYmVlbiB1c2VkIGluCj4gPiBhIGxvbmcgdGltZS4KPgo+Cj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+
ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2ZlbmNlLmMgfCA1OSArKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDM0IGluc2Vy
dGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuYwo+
ID4gaW5kZXggY2Q1OWE1OTE4MDM4Li44ZWU5NmI5MGRlZDYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9mZW5jZS5jCj4gPiBAQCAtMzgsMTEgKzM4LDEwIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBm
ZW5jZV9jb21wbGV0ZWQoc3RydWN0IG1zbV9mZW5jZV9jb250ZXh0ICpmY3R4LCB1aW50MzJfdCBm
ZW5jCj4gPiAgICAgICByZXR1cm4gKGludDMyX3QpKGZjdHgtPmNvbXBsZXRlZF9mZW5jZSAtIGZl
bmNlKSA+PSAwOwo+ID4gICB9Cj4gPgo+ID4gLS8qIGxlZ2FjeSBwYXRoIGZvciBXQUlUX0ZFTkNF
IGlvY3RsOiAqLwo+ID4gLWludCBtc21fd2FpdF9mZW5jZShzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRl
eHQgKmZjdHgsIHVpbnQzMl90IGZlbmNlLAo+ID4gLSAgICAgICAgICAgICBrdGltZV90ICp0aW1l
b3V0LCBib29sIGludGVycnVwdGlibGUpCj4gPiArc3RhdGljIHNpZ25lZCBsb25nIHdhaXRfZmVu
Y2Uoc3RydWN0IG1zbV9mZW5jZV9jb250ZXh0ICpmY3R4LCB1aW50MzJfdCBmZW5jZSwKPiA+ICsg
ICAgICAgICAgICAgc2lnbmVkIGxvbmcgcmVtYWluaW5nX2ppZmZpZXMsIGJvb2wgaW50ZXJydXB0
aWJsZSkKPiA+ICAgewo+ID4gLSAgICAgaW50IHJldDsKPiA+ICsgICAgIHNpZ25lZCBsb25nIHJl
dDsKPiA+Cj4gPiAgICAgICBpZiAoZmVuY2UgPiBmY3R4LT5sYXN0X2ZlbmNlKSB7Cj4gPiAgICAg
ICAgICAgICAgIERSTV9FUlJPUl9SQVRFTElNSVRFRCgiJXM6IHdhaXRpbmcgb24gaW52YWxpZCBm
ZW5jZTogJXUgKG9mICV1KVxuIiwKPiA+IEBAIC01MCwzMyArNDksMzQgQEAgaW50IG1zbV93YWl0
X2ZlbmNlKHN0cnVjdCBtc21fZmVuY2VfY29udGV4dCAqZmN0eCwgdWludDMyX3QgZmVuY2UsCj4g
PiAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gICAgICAgfQo+ID4KPiA+IC0gICAg
IGlmICghdGltZW91dCkgewo+ID4gLSAgICAgICAgICAgICAvKiBuby13YWl0OiAqLwo+ID4gLSAg
ICAgICAgICAgICByZXQgPSBmZW5jZV9jb21wbGV0ZWQoZmN0eCwgZmVuY2UpID8gMCA6IC1FQlVT
WTsKPiA+ICsgICAgIGlmIChpbnRlcnJ1cHRpYmxlKSB7Cj4gPiArICAgICAgICAgICAgIHJldCA9
IHdhaXRfZXZlbnRfaW50ZXJydXB0aWJsZV90aW1lb3V0KGZjdHgtPmV2ZW50LAo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIGZlbmNlX2NvbXBsZXRlZChmY3R4LCBmZW5jZSksCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgcmVtYWluaW5nX2ppZmZpZXMpOwo+ID4gICAgICAgfSBlbHNlIHsKPiA+
IC0gICAgICAgICAgICAgdW5zaWduZWQgbG9uZyByZW1haW5pbmdfamlmZmllcyA9IHRpbWVvdXRf
dG9famlmZmllcyh0aW1lb3V0KTsKPiA+IC0KPiA+IC0gICAgICAgICAgICAgaWYgKGludGVycnVw
dGlibGUpCj4gPiAtICAgICAgICAgICAgICAgICAgICAgcmV0ID0gd2FpdF9ldmVudF9pbnRlcnJ1
cHRpYmxlX3RpbWVvdXQoZmN0eC0+ZXZlbnQsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBmZW5jZV9jb21wbGV0ZWQoZmN0eCwgZmVuY2UpLAo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVtYWluaW5nX2ppZmZpZXMpOwo+ID4gLSAgICAgICAgICAgICBlbHNlCj4g
PiAtICAgICAgICAgICAgICAgICAgICAgcmV0ID0gd2FpdF9ldmVudF90aW1lb3V0KGZjdHgtPmV2
ZW50LAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZmVuY2VfY29tcGxldGVkKGZj
dHgsIGZlbmNlKSwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbWFpbmluZ19q
aWZmaWVzKTsKPiA+IC0KPiA+IC0gICAgICAgICAgICAgaWYgKHJldCA9PSAwKSB7Cj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgREJHKCJ0aW1lb3V0IHdhaXRpbmcgZm9yIGZlbmNlOiAldSAoY29t
cGxldGVkOiAldSkiLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBm
ZW5jZSwgZmN0eC0+Y29tcGxldGVkX2ZlbmNlKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBy
ZXQgPSAtRVRJTUVET1VUOwo+ID4gLSAgICAgICAgICAgICB9IGVsc2UgaWYgKHJldCAhPSAtRVJF
U1RBUlRTWVMpIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICByZXQgPSAwOwo+ID4gLSAgICAg
ICAgICAgICB9Cj4gPiArICAgICAgICAgICAgIHJldCA9IHdhaXRfZXZlbnRfdGltZW91dChmY3R4
LT5ldmVudCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICBmZW5jZV9jb21wbGV0ZWQoZmN0eCwg
ZmVuY2UpLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJlbWFpbmluZ19qaWZmaWVzKTsKPiA+
ICsgICAgIH0KPiA+ICsKPiA+ICsgICAgIGlmIChyZXQgPT0gMCkgewo+ID4gKyAgICAgICAgICAg
ICBEQkcoInRpbWVvdXQgd2FpdGluZyBmb3IgZmVuY2U6ICV1IChjb21wbGV0ZWQ6ICV1KSIsCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmZW5jZSwgZmN0eC0+Y29tcGxldGVkX2Zl
bmNlKTsKPiA+ICsgICAgICAgICAgICAgcmV0ID0gLUVUSU1FRE9VVDsKPiA+ICsgICAgIH0gZWxz
ZSBpZiAocmV0ICE9IC1FUkVTVEFSVFNZUykgewo+ID4gKyAgICAgICAgICAgICByZXQgPSAwOwo+
ID4gICAgICAgfQo+ID4KPiA+ICAgICAgIHJldHVybiByZXQ7Cj4gPiAgIH0KPiA+Cj4gPiArLyog
bGVnYWN5IHBhdGggZm9yIFdBSVRfRkVOQ0UgaW9jdGw6ICovCj4gPiAraW50IG1zbV93YWl0X2Zl
bmNlKHN0cnVjdCBtc21fZmVuY2VfY29udGV4dCAqZmN0eCwgdWludDMyX3QgZmVuY2UsCj4gPiAr
ICAgICAgICAgICAgIGt0aW1lX3QgKnRpbWVvdXQsIGJvb2wgaW50ZXJydXB0aWJsZSkKPiA+ICt7
Cj4gPiArICAgICByZXR1cm4gd2FpdF9mZW5jZShmY3R4LCBmZW5jZSwgdGltZW91dF90b19qaWZm
aWVzKHRpbWVvdXQpLCBpbnRlcnJ1cHRpYmxlKTsKPiA+ICt9Cj4gPiArCj4gPiAgIC8qIGNhbGxl
ZCBmcm9tIHdvcmtxdWV1ZSAqLwo+ID4gICB2b2lkIG1zbV91cGRhdGVfZmVuY2Uoc3RydWN0IG1z
bV9mZW5jZV9jb250ZXh0ICpmY3R4LCB1aW50MzJfdCBmZW5jZSkKPiA+ICAgewo+ID4gQEAgLTEx
NCwxMCArMTE0LDE5IEBAIHN0YXRpYyBib29sIG1zbV9mZW5jZV9zaWduYWxlZChzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZSkKPiA+ICAgICAgIHJldHVybiBmZW5jZV9jb21wbGV0ZWQoZi0+ZmN0eCwg
Zi0+YmFzZS5zZXFubyk7Cj4gPiAgIH0KPiA+Cj4gPiArc3RhdGljIHNpZ25lZCBsb25nIG1zbV9m
ZW5jZV93YWl0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIsCj4gPiArICAgICAg
ICAgICAgIHNpZ25lZCBsb25nIHRpbWVvdXQpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IG1zbV9m
ZW5jZSAqZiA9IHRvX21zbV9mZW5jZShmZW5jZSk7Cj4gPiArCj4gPiArICAgICByZXR1cm4gd2Fp
dF9mZW5jZShmLT5mY3R4LCBmZW5jZS0+c2Vxbm8sIHRpbWVvdXQsIGludHIpOwo+ID4gK30KPiA+
ICsKPiA+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIG1zbV9mZW5jZV9vcHMg
PSB7Cj4gPiAgICAgICAuZ2V0X2RyaXZlcl9uYW1lID0gbXNtX2ZlbmNlX2dldF9kcml2ZXJfbmFt
ZSwKPiA+ICAgICAgIC5nZXRfdGltZWxpbmVfbmFtZSA9IG1zbV9mZW5jZV9nZXRfdGltZWxpbmVf
bmFtZSwKPiA+ICAgICAgIC5zaWduYWxlZCA9IG1zbV9mZW5jZV9zaWduYWxlZCwKPiA+ICsgICAg
IC53YWl0ID0gbXNtX2ZlbmNlX3dhaXQsCj4gPiAgIH07Cj4gPgo+ID4gICBzdHJ1Y3QgZG1hX2Zl
bmNlICoKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
