Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCF4351738
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Apr 2021 19:34:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36EF0617B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Apr 2021 17:34:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2BDA36186A; Thu,  1 Apr 2021 17:34:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F27B60B36;
	Thu,  1 Apr 2021 17:34:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 46D2A60642
 for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Apr 2021 17:34:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 29F3360B36; Thu,  1 Apr 2021 17:34:21 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id F07A460642
 for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Apr 2021 17:34:19 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id x13so2586642wrs.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 01 Apr 2021 10:34:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rK2LdS6ODAydJkNJDKUimZKMnsbdOM3cvA6asgW0c80=;
 b=k+pHmXMB8JmFbpdAQvAxxNogOhNd9KVjoYEQOy28qk3h58/QklUrajdiccf8pOcvCl
 G121sBT24+WpHSyOrvdZUNFGYfxU0j+t4bUSP0Iou00P2p42ei4EUb1ixJjvNhRlhlpG
 Ihb8k69Y0wRwVaTtxboaCyDPo5eHgUwyITyGeUoUG435PU9/WxROjamRwsKwO8Uo8e1u
 xnwME1H/3Z1kfntGGCjCkSS0vsMTRhLd0T9XzROy27GLS4amObGEoVsvdjsgBRhOTnGl
 lZZgK1cxrnBQd4Bl/mUNOiG2OBJJ4caVV0D/mFCG0ZiOLO8ggbTVAId0O9d6/7H3/9oC
 kJ9g==
X-Gm-Message-State: AOAM5314E2Wo8jAU0Dw6ijmtxLKj0FahXLxQZGpxU196oXpVtjoRj8Es
 GjTY2VfMrWl5UJVGPXwayKQQsZCI9uVsueS7Sr0=
X-Google-Smtp-Source: ABdhPJzTzb75Zq5lVKxlXsLtahJ+rLK1yT4ChASxTdyK4VvEYKWc/dOfoDSRkP8SuHFCh33/CUU6oLC581EOnJ+bucE=
X-Received: by 2002:adf:fb42:: with SMTP id c2mr11041823wrs.83.1617298459053; 
 Thu, 01 Apr 2021 10:34:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210331221630.488498-1-robdclark@gmail.com>
 <20210401012722.527712-1-robdclark@gmail.com>
 <20210401012722.527712-3-robdclark@gmail.com>
 <CAD=FV=XexfG9oQa8JndOgQ9JSNRmO4-xjmQdiA_9Rn9dJWxsow@mail.gmail.com>
In-Reply-To: <CAD=FV=XexfG9oQa8JndOgQ9JSNRmO4-xjmQdiA_9Rn9dJWxsow@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 1 Apr 2021 10:37:44 -0700
Message-ID: <CAF6AEGvQ3Ep4O_SKGiptq1BiMK0tUjJ=U84M2otvQtVfWHEzoQ@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Clark <robdclark@chromium.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU"
 <freedreno@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/4] drm/msm: Avoid mutex in
	shrinker_count()
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBBcHIgMSwgMjAyMSBhdCA4OjM0IEFNIERvdWcgQW5kZXJzb24gPGRpYW5kZXJzQGNo
cm9taXVtLm9yZz4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFdlZCwgTWFyIDMxLCAyMDIxIGF0IDY6
MjQgUE0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBAQCAt
NDUsNiArMzAsOSBAQCBtc21fZ2VtX3Nocmlua2VyX3NjYW4oc3RydWN0IHNocmlua2VyICpzaHJp
bmtlciwgc3RydWN0IHNocmlua19jb250cm9sICpzYykKPiA+ICAgICAgICAgbGlzdF9mb3JfZWFj
aF9lbnRyeShtc21fb2JqLCAmcHJpdi0+aW5hY3RpdmVfZG9udG5lZWQsIG1tX2xpc3QpIHsKPiA+
ICAgICAgICAgICAgICAgICBpZiAoZnJlZWQgPj0gc2MtPm5yX3RvX3NjYW4pCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICBicmVhazsKPiA+ICsgICAgICAgICAgICAgICAvKiBVc2UgdHJ5bG9j
aywgYmVjYXVzZSB3ZSBjYW5ub3QgYmxvY2sgb24gYSBvYmogdGhhdAo+ID4gKyAgICAgICAgICAg
ICAgICAqIG1pZ2h0IGJlIHRyeWluZyB0byBhY3F1aXJlIG1tX2xvY2sKPiA+ICsgICAgICAgICAg
ICAgICAgKi8KPgo+IG5pdDogSSB0aG91Z2h0IHRoZSBhYm92ZSBtdWx0aS1saW5lIGNvbW1lbnRp
bmcgc3R5bGUgd2FzIG9ubHkgZm9yCj4gIm5ldCIgc3Vic3lzdGVtPwoKd2UgZG8gdXNlIHRoZSAi
bmV0IiBzdHlsZSBhIGZhaXIgYml0IGFscmVhZHkuLiAoT1RPSCBJIHRlbmQgdG8gbm90CnJlYWxs
eSBjYXJlIHdoYXQgY2hlY2twYXRjaCBzYXlzKQoKPiA+ICAgICAgICAgICAgICAgICBpZiAoIW1z
bV9nZW1fdHJ5bG9jaygmbXNtX29iai0+YmFzZSkpCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICBjb250aW51ZTsKPiA+ICAgICAgICAgICAgICAgICBpZiAoaXNfcHVyZ2VhYmxlKG1zbV9vYmop
KSB7Cj4gPiBAQCAtNTYsOCArNDQsMTEgQEAgbXNtX2dlbV9zaHJpbmtlcl9zY2FuKHN0cnVjdCBz
aHJpbmtlciAqc2hyaW5rZXIsIHN0cnVjdCBzaHJpbmtfY29udHJvbCAqc2MpCj4gPgo+ID4gICAg
ICAgICBtdXRleF91bmxvY2soJnByaXYtPm1tX2xvY2spOwo+ID4KPiA+IC0gICAgICAgaWYgKGZy
ZWVkID4gMCkKPiA+ICsgICAgICAgaWYgKGZyZWVkID4gMCkgewo+ID4gICAgICAgICAgICAgICAg
IHRyYWNlX21zbV9nZW1fcHVyZ2UoZnJlZWQgPDwgUEFHRV9TSElGVCk7Cj4gPiArICAgICAgIH0g
ZWxzZSB7Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIFNIUklOS19TVE9QOwo+ID4gKyAgICAg
ICB9Cj4KPiBJdCBwcm9iYWJseSBkb2Vzbid0IG1hdHRlciwgYnV0IEkgd29uZGVyIGlmIHdlIHNo
b3VsZCBzdGlsbCBiZQo+IHJldHVybmluZyBTSFJJTktfU1RPUCBpZiB3ZSBnb3QgYW55IHRyeWxv
Y2sgZmFpbHVyZXMuIEl0IGNvdWxkCj4gcG9zc2libHkgYmUgd29ydGggcmV0dXJuaW5nIDAgaW4g
dGhhdCBjYXNlPwoKT24gdGhlIHN1cmZhY2UsIHlvdSdkIHRoaW5rIHRoYXQsIGJ1dCB0aGVyZSBi
ZSBtbSBkcmFnb25zLi4gd2UgY2FuIGhpdApzaHJpbmtlciBmcm9tIHRoZSBzdWJtaXQgcGF0aCB3
aGVuIHRoZSBvYmogaXMgbG9ja2VkIGFscmVhZHkgYW5kIHdlCmFyZSB0cnlpbmcgdG8gYWxsb2Nh
dGUgYmFja2luZyBwYWdlcy4gIFdlIGRvbid0IHdhbnQgdG8gdGVsbCB2bXNjYW4gdG8Ka2VlcCB0
cnlpbmcsIGJlY2F1c2Ugd2UnbGwga2VlcCBmYWlsaW5nIHRvIGdyYWIgdGhhdCBvYmplY3RzIGxv
Y2sKCj4KPiA+IEBAIC03NSw2ICs2Niw5IEBAIHZtYXBfc2hyaW5rKHN0cnVjdCBsaXN0X2hlYWQg
Km1tX2xpc3QpCj4gPiAgICAgICAgIHVuc2lnbmVkIHVubWFwcGVkID0gMDsKPiA+Cj4gPiAgICAg
ICAgIGxpc3RfZm9yX2VhY2hfZW50cnkobXNtX29iaiwgbW1fbGlzdCwgbW1fbGlzdCkgewo+ID4g
KyAgICAgICAgICAgICAgIC8qIFVzZSB0cnlsb2NrLCBiZWNhdXNlIHdlIGNhbm5vdCBibG9jayBv
biBhIG9iaiB0aGF0Cj4gPiArICAgICAgICAgICAgICAgICogbWlnaHQgYmUgdHJ5aW5nIHRvIGFj
cXVpcmUgbW1fbG9jawo+ID4gKyAgICAgICAgICAgICAgICAqLwo+Cj4gSWYgeW91IGVuZCB1cCBj
aGFuZ2luZyB0aGUgY29tbWVudGluZyBzdHlsZSBhYm92ZSwgc2hvdWxkIGFsc28gYmUgaGVyZS4K
Pgo+IEF0IHRoaXMgcG9pbnQgdGhpcyBzZWVtcyBmaW5lIHRvIGxhbmQgdG8gbWUuIFRob3VnaCBJ
J20gbm90IGFuIGV4cGVydAo+IG9uIGV2ZXJ5IGludGVyYWN0aW9uIGluIHRoaXMgY29kZSwgSSd2
ZSBzcGVudCBlbm91Z2ggdGltZSBzdGFydGluZyBhdAo+IGl0IHRoYXQgSSdtIGNvbWZvcnRhYmxl
IHdpdGg6Cj4KPiBSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21p
dW0ub3JnPgoKdGhhbmtzCgpCUiwKLVIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
