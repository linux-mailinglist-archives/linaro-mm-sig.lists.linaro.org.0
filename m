Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF163319D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Mar 2021 22:57:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9D54665AA
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Mar 2021 21:57:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DB66A66626; Mon,  8 Mar 2021 21:57:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B105B665E9;
	Mon,  8 Mar 2021 21:57:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A2A9B66596
 for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Mar 2021 21:57:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8310E665E9; Mon,  8 Mar 2021 21:57:17 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 by lists.linaro.org (Postfix) with ESMTPS id 674B966596
 for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Mar 2021 21:57:16 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id b8so10789589oti.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Mar 2021 13:57:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vBWk93dB6A/oALjtzEiM8cCSb4V0wTNQU+avL5sjbpk=;
 b=nYxhATphcDI3uEYz7rJxL19B4yE9/iLBUm/vYMwUIybtYxpTbHCrH2RczLZ0euhvcm
 rrXwIvm0m0JUHDkJiFHXIRk4vCMtqvJrvIx8GRkT33ojIoVjnwe+pUFCfRkURVek39Nw
 1+7N8BeUVFg9XWTZE/C+tTguuRAAp2L8B1aozaYDy2SAag9CKs2oDZPicwB4fQr+VSFd
 HmPzzlzOJBEvt3dldg9DKAF4pvHywqGT2ACMYZ5qwGRybwuJOaS2odDor0TnhM+V+As/
 PEBduMUZNcq9+Ky65Kq4ZRMifY7G/RWuSp4tw6Qm2Ib45xA+S0r5yjNNyOjAFh4Dt5Gb
 y58A==
X-Gm-Message-State: AOAM532QUWEBqVtG4w478cGOJPehizu3HN0Zx2uQOdgyIxJIXEq/ub9x
 4jY2zpObCZ3CnnwkLzS38Aevt61yTX5Xnncdzy0=
X-Google-Smtp-Source: ABdhPJxrYC5b+Bfy28dEBHW3FjF2qWGh0W9dW/P/7CoZ3wnlKV8yAc+scjpfhvvVoKtqiq7I17x9HGjyMxBJB0BvS80=
X-Received: by 2002:a05:6830:408f:: with SMTP id
 x15mr22421343ott.132.1615240635925; 
 Mon, 08 Mar 2021 13:57:15 -0800 (PST)
MIME-Version: 1.0
References: <1615173254-22078-1-git-send-email-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <1615173254-22078-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 8 Mar 2021 16:57:05 -0500
Message-ID: <CADnq5_NeAv5HeD=whn30Yu1hoMW2XfPxjeN53b995AzXOY1-dw@mail.gmail.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Dave Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: Remove unnecessary
	conversion to bool
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

T24gU3VuLCBNYXIgNywgMjAyMSBhdCAxMDoxNCBQTSBKaWFwZW5nIENob25nCjxqaWFwZW5nLmNo
b25nQGxpbnV4LmFsaWJhYmEuY29tPiB3cm90ZToKPgo+IEZpeCB0aGUgZm9sbG93aW5nIGNvY2Np
Y2hlY2sgd2FybmluZ3M6Cj4KPiAuL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVf
Mi5jOjE2MDA6NDAtNDU6IFdBUk5JTkc6IGNvbnZlcnNpb24KPiB0byBib29sIG5vdCBuZWVkZWQg
aGVyZS4KPgo+IC4vZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NV8yLmM6MTU5ODo0
MC00NTogV0FSTklORzogY29udmVyc2lvbgo+IHRvIGJvb2wgbm90IG5lZWRlZCBoZXJlLgo+Cj4g
UmVwb3J0ZWQtYnk6IEFiYWNpIFJvYm90IDxhYmFjaUBsaW51eC5hbGliYWJhLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBKaWFwZW5nIENob25nIDxqaWFwZW5nLmNob25nQGxpbnV4LmFsaWJhYmEuY29t
PgoKVGhpcyBwYXRjaCB3YXMgYWxyZWFkeSBhcHBsaWVkLgoKQWxleAoKPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NV8yLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y1XzIuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L3NkbWFfdjVfMi5jCj4gaW5kZXggNjkwYTUwOS4uYjM5ZTdkYiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y1XzIuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVfMi5jCj4gQEAgLTE1OTUsOSArMTU5NSw5IEBAIHN0
YXRpYyBpbnQgc2RtYV92NV8yX3NldF9jbG9ja2dhdGluZ19zdGF0ZSh2b2lkICpoYW5kbGUsCj4g
ICAgICAgICBjYXNlIENISVBfVkFOR09HSDoKPiAgICAgICAgIGNhc2UgQ0hJUF9ESU1HUkVZX0NB
VkVGSVNIOgo+ICAgICAgICAgICAgICAgICBzZG1hX3Y1XzJfdXBkYXRlX21lZGl1bV9ncmFpbl9j
bG9ja19nYXRpbmcoYWRldiwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXRl
ID09IEFNRF9DR19TVEFURV9HQVRFID8gdHJ1ZSA6IGZhbHNlKTsKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0YXRlID09IEFNRF9DR19TVEFURV9HQVRFKTsKPiAgICAgICAgICAg
ICAgICAgc2RtYV92NV8yX3VwZGF0ZV9tZWRpdW1fZ3JhaW5fbGlnaHRfc2xlZXAoYWRldiwKPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXRlID09IEFNRF9DR19TVEFURV9HQVRF
ID8gdHJ1ZSA6IGZhbHNlKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXRl
ID09IEFNRF9DR19TVEFURV9HQVRFKTsKPiAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAg
ICBkZWZhdWx0Ogo+ICAgICAgICAgICAgICAgICBicmVhazsKPiAtLQo+IDEuOC4zLjEKPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVs
IG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
