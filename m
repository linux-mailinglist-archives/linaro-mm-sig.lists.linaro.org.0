Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 810A83EDFE7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Aug 2021 00:21:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26C5B60B4F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Aug 2021 22:21:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 52EAF61951; Mon, 16 Aug 2021 22:21:08 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E22B76093A;
	Mon, 16 Aug 2021 22:21:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 228C6608D5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 22:21:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1F8D06093A; Mon, 16 Aug 2021 22:21:05 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 14BFF608D5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 22:21:03 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id
 q11-20020a7bce8b0000b02902e6880d0accso502447wmj.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 15:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MD79y8jzRWUs3Lb63ir/9Z7YXREjW2AbOeDZQfYBwAY=;
 b=ugjLgS1SYCinwoxSubl122blXZUlhE1G5WredQD0xopGMNFOzMPiOp67DuKNE81PUM
 PYLk7BQMupvkdwFt5fX0QQ+EWpDIlS8VrZs8qi/rYMKubAjkXqD5AwQJXoY2LcWMk2iE
 +OeWAi8t49LfB5Boh0PJoXlmZf5XviDE0v0udsa+cSbvLIwJHeRKVEswQuf8Srkh95UL
 cx7dblIlthEvXUzdBWEjfLj0B0ElI84hfn33WSSTG6r3ZJxYyONcRB4JEz0YwCY/VOnp
 4uTCLXK+DQkCqfvDz6/jq5x4kxw2AI7q2GBrFUKBtiGLzxy3eNnYC+XL/0kEAydHrLK0
 az2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MD79y8jzRWUs3Lb63ir/9Z7YXREjW2AbOeDZQfYBwAY=;
 b=P05fsbT1D9MOyurXJ3BsvRQKiGzE271vel/TwhtaVLixAx6LnjDLr9W6kyaWCKOOiz
 EKC/5R77cO4XmV/XiNrKZZ+0C1R2f+bQ39rjcjne/6Sefk6XHQBOtjqTVYcb8WtPdd0N
 YcXo/S1otUwhrfHUR734jOdmFab5Acz47TPb81tj1Nh2hMM1DvfDbPTPSTLCoBY6Ipq1
 9vxfkzP5NuCxHeOilhvaqWlKka+oXM185DvazeP4kdRcIH9WNHDT2yOAk0XWIHCsnPe1
 xn3/j6PR7SjyF3+R8WGT8UB8tTOCenxOHxW2waR8dqYIod/E7Ifz7Z7NtAGzUvvyTru7
 lF9A==
X-Gm-Message-State: AOAM532xQpXKTvmPB+nRZZsyHFJ00NYWkc0Iz1Tljl4LHU4QDJgacTOE
 SSrJNHgeTTZsD8ze/j5zVtZxfXdl7y41BDaR31w=
X-Google-Smtp-Source: ABdhPJxcwI5NX0yTJwhaks0eDKYsxDJoy28PKEeAcGDKp+JI9zbCEcdxqA0pFxhb4hDbfFEJyCzBMmpbuQKLPMvgMH8=
X-Received: by 2002:a05:600c:35d1:: with SMTP id
 r17mr264901wmq.175.1629152462126; 
 Mon, 16 Aug 2021 15:21:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210807183804.459850-1-robdclark@gmail.com>
 <20210807183804.459850-5-robdclark@gmail.com>
 <e28020c5-3da3-c721-96df-9a115f105bf7@gmail.com>
 <YRqGazgGJ2NAIzg2@phenom.ffwll.local>
In-Reply-To: <YRqGazgGJ2NAIzg2@phenom.ffwll.local>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 16 Aug 2021 15:25:20 -0700
Message-ID: <CAF6AEGtyA2ovPcsP_3wbD-KfJFZosc=qf=SMkE2BVMq5+=cxWw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 Rob Clark <robdclark@gmail.com>, dri-devel <dri-devel@lists.freedesktop.org>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>, 
 Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>, 
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Tian Tao <tiantao6@hisilicon.com>, Alex Deucher <alexander.deucher@amd.com>, 
 Luben Tuikov <luben.tuikov@amd.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>, 
 Steven Price <steven.price@arm.com>, Roy Sun <Roy.Sun@amd.com>,
 Lee Jones <lee.jones@linaro.org>, 
 Jack Zhang <Jack.Zhang1@amd.com>, open list <linux-kernel@vger.kernel.org>, 
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, 
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2 4/5] drm/scheduler: Add fence
 deadline support
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gTW9uLCBBdWcgMTYsIDIwMjEgYXQgODozOCBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gTW9uLCBBdWcgMTYsIDIwMjEgYXQgMTI6MTQ6MzVQTSArMDIw
MCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+IEFtIDA3LjA4LjIxIHVtIDIwOjM3IHNjaHJp
ZWIgUm9iIENsYXJrOgo+ID4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5v
cmc+Cj4gPiA+Cj4gPiA+IEFzIHRoZSBmaW5pc2hlZCBmZW5jZSBpcyB0aGUgb25lIHRoYXQgaXMg
ZXhwb3NlZCB0byB1c2Vyc3BhY2UsIGFuZAo+ID4gPiB0aGVyZWZvcmUgdGhlIG9uZSB0aGF0IG90
aGVyIG9wZXJhdGlvbnMsIGxpa2UgYXRvbWljIHVwZGF0ZSwgd291bGQKPiA+ID4gYmxvY2sgb24s
IHdlIG5lZWQgdG8gcHJvcGFnYXRlIHRoZSBkZWFkbGluZSBmcm9tIGZyb20gdGhlIGZpbmlzaGVk
Cj4gPiA+IGZlbmNlIHRvIHRoZSBhY3R1YWwgaHcgZmVuY2UuCj4gPiA+Cj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4KPgo+IEkgZ3Vlc3MgeW91
J3JlIGFscmVhZHkgbGV0dGluZyB0aGUgY29tcG9zaXRvciBydW4gYXQgYSBoaWdoZXIgZ3B1IHBy
aW9yaXR5Cj4gc28gdGhhdCB5b3VyIGRlYWRsaW5lJ2QgZHJtX3NjaGVkX2pvYiBpc24ndCBzdHVj
ayBiZWhpbmQgdGhlIGFwcCByZW5kZXJpbmcKPiB0aGUgbmV4dCBmcmFtZT8KCldpdGggdGhlIHNj
aGVkdWxlciBjb252ZXJzaW9uIHdlIGRvIGhhdmUgbXVsdGlwbGUgcHJpb3JpdGllcyAocHJvdmlk
ZWQKYnkgc2NoZWR1bGVyKSBmb3IgYWxsIGdlbmVyYXRpb25zLi4gYnV0IG5vdCB5ZXQgcHJlZW1w
dGlvbiBmb3IgYWxsCmdlbmVyYXRpb25zLgoKQnV0IHRoZSBtb3N0IGNvbW1vbiB1c2UtY2FzZSB3
aGVyZSB3ZSBuZWVkIHRoaXMgZW5kcyB1cCBiZWluZyBkaXNwbGF5CmNvbXBvc2l0aW9uIChlaXRo
ZXIgZnVsbHNjcmVlbiBhcHAvZ2FtZSBvciBmb3JlZ3JvdW5kIGFwcC9nYW1lCmNvbXBvc2l0ZWQg
dmlhIG92ZXJsYXkpIHNvIEkgaGF2ZW4ndCB0aG91Z2h0IHRvbyBtdWNoIGFib3V0IHRoZSBuZXh0
CnN0ZXAgb2YgYm9vc3Rpbmcgam9iIHByaW9yaXR5LiAgSSBtaWdodCBsZWF2ZSB0aGF0IHRvIHNv
bWVvbmUgd2hvCmFscmVhZHkgaGFzIHByZWVtcHRpb24gd2lyZWQgdXAgOy0pCgpCUiwKLVIKCj4g
SSdtIG5vdCBzdXJlIHdoZXRoZXIgeW91IHdpcmUgdGhhdCBvbmUgdXAgYXMgcGFydCBvZiB0aGUg
Y29udmVyc2lvbiB0bwo+IGRybS9zY2hlZC4gV2l0aG91dCB0aGF0IEkgdGhpbmsgd2UgbWlnaHQg
bmVlZCB0byBwb25kZXIgaG93IHdlIGNhbiBkbyBhCj4gcHJpby1ib29zdCBmb3IgdGhlc2UsIGUu
Zy4gd2l0aGluIGEgc2NoZWR1bGluZyBjbGFzcyB3ZSBwaWNrIHRoZSBqb2JzIHdpdGgKPiB0aGUg
bmVhcmVzdCBkZWFkbGluZSBmaXJzdCwgYmVmb3JlIHdlIHBpY2sgb3RoZXJzLgo+IC1EYW5pZWwK
Pgo+ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNl
LmMgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ICAgZHJpdmVycy9ncHUvZHJt
L3NjaGVkdWxlci9zY2hlZF9tYWluLmMgIHwgIDMgKysrCj4gPiA+ICAgaW5jbHVkZS9kcm0vZ3B1
X3NjaGVkdWxlci5oICAgICAgICAgICAgIHwgIDYgKysrKysrCj4gPiA+ICAgMyBmaWxlcyBjaGFu
Z2VkLCAzNCBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVy
L3NjaGVkX2ZlbmNlLmMKPiA+ID4gaW5kZXggNjlkZTJjNzY3MzFmLi5mMzg5ZGNhNDQxODUgMTAw
NjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYwo+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMKPiA+ID4g
QEAgLTEyOCw2ICsxMjgsMzAgQEAgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2ZlbmNlX3JlbGVhc2Vf
ZmluaXNoZWQoc3RydWN0IGRtYV9mZW5jZSAqZikKPiA+ID4gICAgIGRtYV9mZW5jZV9wdXQoJmZl
bmNlLT5zY2hlZHVsZWQpOwo+ID4gPiAgIH0KPiA+ID4gK3N0YXRpYyB2b2lkIGRybV9zY2hlZF9m
ZW5jZV9zZXRfZGVhZGxpbmVfZmluaXNoZWQoc3RydWN0IGRtYV9mZW5jZSAqZiwKPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGt0aW1lX3QgZGVhZGxp
bmUpCj4gPiA+ICt7Cj4gPiA+ICsgICBzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpmZW5jZSA9IHRv
X2RybV9zY2hlZF9mZW5jZShmKTsKPiA+ID4gKyAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPiA+
ICsKPiA+ID4gKyAgIHNwaW5fbG9ja19pcnFzYXZlKCZmZW5jZS0+bG9jaywgZmxhZ3MpOwo+ID4g
PiArCj4gPiA+ICsgICAvKiBJZiB3ZSBhbHJlYWR5IGhhdmUgYW4gZWFybGllciBkZWFkbGluZSwg
a2VlcCBpdDogKi8KPiA+ID4gKyAgIGlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19IQVNfREVB
RExJTkVfQklULCAmZi0+ZmxhZ3MpICYmCj4gPiA+ICsgICAgICAga3RpbWVfYmVmb3JlKGZlbmNl
LT5kZWFkbGluZSwgZGVhZGxpbmUpKSB7Cj4gPiA+ICsgICAgICAgICAgIHNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoJmZlbmNlLT5sb2NrLCBmbGFncyk7Cj4gPiA+ICsgICAgICAgICAgIHJldHVybjsK
PiA+ID4gKyAgIH0KPiA+ID4gKwo+ID4gPiArICAgZmVuY2UtPmRlYWRsaW5lID0gZGVhZGxpbmU7
Cj4gPiA+ICsgICBzZXRfYml0KERNQV9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQsICZmLT5m
bGFncyk7Cj4gPiA+ICsKPiA+ID4gKyAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmZlbmNlLT5s
b2NrLCBmbGFncyk7Cj4gPiA+ICsKPiA+ID4gKyAgIGlmIChmZW5jZS0+cGFyZW50KQo+ID4gPiAr
ICAgICAgICAgICBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKGZlbmNlLT5wYXJlbnQsIGRlYWRsaW5l
KTsKPiA+ID4gK30KPiA+ID4gKwo+ID4gPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNl
X29wcyBkcm1fc2NoZWRfZmVuY2Vfb3BzX3NjaGVkdWxlZCA9IHsKPiA+ID4gICAgIC5nZXRfZHJp
dmVyX25hbWUgPSBkcm1fc2NoZWRfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLAo+ID4gPiAgICAgLmdl
dF90aW1lbGluZV9uYW1lID0gZHJtX3NjaGVkX2ZlbmNlX2dldF90aW1lbGluZV9uYW1lLAo+ID4g
PiBAQCAtMTM4LDYgKzE2Miw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBk
cm1fc2NoZWRfZmVuY2Vfb3BzX2ZpbmlzaGVkID0gewo+ID4gPiAgICAgLmdldF9kcml2ZXJfbmFt
ZSA9IGRybV9zY2hlZF9mZW5jZV9nZXRfZHJpdmVyX25hbWUsCj4gPiA+ICAgICAuZ2V0X3RpbWVs
aW5lX25hbWUgPSBkcm1fc2NoZWRfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUsCj4gPiA+ICAgICAu
cmVsZWFzZSA9IGRybV9zY2hlZF9mZW5jZV9yZWxlYXNlX2ZpbmlzaGVkLAo+ID4gPiArICAgLnNl
dF9kZWFkbGluZSA9IGRybV9zY2hlZF9mZW5jZV9zZXRfZGVhZGxpbmVfZmluaXNoZWQsCj4gPiA+
ICAgfTsKPiA+ID4gICBzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICp0b19kcm1fc2NoZWRfZmVuY2Uo
c3RydWN0IGRtYV9mZW5jZSAqZikKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9t
YWluLmMKPiA+ID4gaW5kZXggYTJhOTUzNjkzYjQ1Li4zYWIwOTAwZDM1OTYgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCj4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCj4gPiA+IEBAIC04MTgsNiAr
ODE4LDkgQEAgc3RhdGljIGludCBkcm1fc2NoZWRfbWFpbih2b2lkICpwYXJhbSkKPiA+ID4gICAg
ICAgICAgICAgaWYgKCFJU19FUlJfT1JfTlVMTChmZW5jZSkpIHsKPiA+ID4gICAgICAgICAgICAg
ICAgICAgICBzX2ZlbmNlLT5wYXJlbnQgPSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICBpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5F
X0JJVCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnNfZmVuY2UtPmZp
bmlzaGVkLmZsYWdzKSkKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9mZW5j
ZV9zZXRfZGVhZGxpbmUoZmVuY2UsIHNfZmVuY2UtPmRlYWRsaW5lKTsKPiA+Cj4gPiBNYXliZSBt
b3ZlIHRoaXMgaW50byBhIGRtYV9zY2hlZF9mZW5jZV9zZXRfcGFyZW50KCkgZnVuY3Rpb24uCj4g
Pgo+ID4gQXBhcnQgZnJvbSB0aGF0IGxvb2tzIGdvb2QgdG8gbWUuCj4gPgo+ID4gUmVnYXJkcywK
PiA+IENocmlzdGlhbi4KPiA+Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgciA9IGRtYV9mZW5j
ZV9hZGRfY2FsbGJhY2soZmVuY2UsICZzY2hlZF9qb2ItPmNiLAo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRybV9zY2hlZF9qb2JfZG9uZV9jYik7
Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgaWYgKHIgPT0gLUVOT0VOVCkKPiA+ID4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUvZHJtL2dwdV9zY2hl
ZHVsZXIuaAo+ID4gPiBpbmRleCBkMThhZjQ5ZmQwMDkuLjBmMDhhZGU2MTRhZSAxMDA2NDQKPiA+
ID4gLS0tIGEvaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oCj4gPiA+ICsrKyBiL2luY2x1ZGUv
ZHJtL2dwdV9zY2hlZHVsZXIuaAo+ID4gPiBAQCAtMTQ0LDYgKzE0NCwxMiBAQCBzdHJ1Y3QgZHJt
X3NjaGVkX2ZlbmNlIHsKPiA+ID4gICAgICAgICAgICAqLwo+ID4gPiAgICAgc3RydWN0IGRtYV9m
ZW5jZSAgICAgICAgICAgICAgICBmaW5pc2hlZDsKPiA+ID4gKyAgIC8qKgo+ID4gPiArICAgICog
QGRlYWRsaW5lOiBkZWFkbGluZSBzZXQgb24gJmRybV9zY2hlZF9mZW5jZS5maW5pc2hlZCB3aGlj
aAo+ID4gPiArICAgICogcG90ZW50aWFsbHkgbmVlZHMgdG8gYmUgcHJvcGFnYXRlZCB0byAmZHJt
X3NjaGVkX2ZlbmNlLnBhcmVudAo+ID4gPiArICAgICovCj4gPiA+ICsgICBrdGltZV90ICAgICAg
ICAgICAgICAgICAgICAgICAgIGRlYWRsaW5lOwo+ID4gPiArCj4gPiA+ICAgICAgICAgICAvKioK
PiA+ID4gICAgICAgICAgICAqIEBwYXJlbnQ6IHRoZSBmZW5jZSByZXR1cm5lZCBieSAmZHJtX3Nj
aGVkX2JhY2tlbmRfb3BzLnJ1bl9qb2IKPiA+ID4gICAgICAgICAgICAqIHdoZW4gc2NoZWR1bGlu
ZyB0aGUgam9iIG9uIGhhcmR3YXJlLiBXZSBzaWduYWwgdGhlCj4gPgo+Cj4gLS0KPiBEYW5pZWwg
VmV0dGVyCj4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gaHR0cDovL2Js
b2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
