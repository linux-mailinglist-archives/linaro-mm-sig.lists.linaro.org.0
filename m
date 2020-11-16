Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AAE2B5280
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 21:27:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79474619B0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:27:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5F0D1666D5; Mon, 16 Nov 2020 20:27:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B6FE665FA;
	Mon, 16 Nov 2020 20:27:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CC4BC60900
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:27:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AA73F665FA; Mon, 16 Nov 2020 20:27:14 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 773DD60900
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:27:13 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id c9so553290wml.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 12:27:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yPSHVRwDrtKOH5ZvQYGGfQXjoa9CykJhcor/FvEpDF0=;
 b=rkVoK4I3cCRBOy6+LtMOF91f+ddw1WEgWQsdZQVI+JMKTb0LxC9GTjXnZCimAgUulg
 WTrzk876jr2c6V/mINsxMItIRmv0ZDPxJ9bexC6nA1Dz+PE13pIynHcnHcpnG4MjYCdt
 +HtBgBcES1jbwNJb0r1Jb8Cb3i08L0PnPpcMPu6+C9AZnP8Wy9+noNHXY4XDw1Jkiym0
 jXvaS8V+Eo4GjGtoI36Htp3G5mnwQ56ea6rBaY613ew7cQE5heddYHrTwq3BOYjBC03z
 DUp1hI8leWlvVGh7g7x5UyJbhA2SdlLHspYQHc0QHbkoCbSWM1QmCXkDLR1tsCfZOXAI
 c4PA==
X-Gm-Message-State: AOAM5339s3sLbLCV2ryQm1VGIPxBG8dHu87848e6aXOWlG+dJO4PvXQl
 drWe6QMnX6E2mhAZzokdYT+M/VDDCu8o0GNY6SE=
X-Google-Smtp-Source: ABdhPJwdydcBHg2wjcl0XsYoZ/4RLPKqFkbduOLt/w1cjPcwEnharCbPaEZj4l6GMHsJtygKeO4DzXTO9xXkh9F/csQ=
X-Received: by 2002:a7b:c157:: with SMTP id z23mr669394wmi.70.1605558432593;
 Mon, 16 Nov 2020 12:27:12 -0800 (PST)
MIME-Version: 1.0
References: <20201116173700.1830487-1-lee.jones@linaro.org>
 <20201116173700.1830487-32-lee.jones@linaro.org>
In-Reply-To: <20201116173700.1830487-32-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 15:27:01 -0500
Message-ID: <CADnq5_NaWcxV-J22w4fg7kNEx=s9XwLcBOdQ8uCQNv1H5jNBrw@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 31/43] drm/radeon/cik: Move 'si_*()'s
	prototypes to shared header
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

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMTI6MzggUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQg
d2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3NpLmM6NDE4Njo2OiB3YXJu
aW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmHNpX3ZyYW1fZ3R0X2xvY2F0aW9u4oCZ
IFstV21pc3NpbmctcHJvdG90eXBlc10KPiAgNDE4NiB8IHZvaWQgc2lfdnJhbV9ndHRfbG9jYXRp
b24oc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsCj4gIHwgXn5+fn5+fn5+fn5+fn5+fn5+fn4K
PiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9zaS5jOjUxODY6Njogd2FybmluZzogbm8gcHJldmlv
dXMgcHJvdG90eXBlIGZvciDigJhzaV9pbml0X3V2ZF9pbnRlcm5hbF9jZ+KAmSBbLVdtaXNzaW5n
LXByb3RvdHlwZXNdCj4gIDUxODYgfCB2b2lkIHNpX2luaXRfdXZkX2ludGVybmFsX2NnKHN0cnVj
dCByYWRlb25fZGV2aWNlICpyZGV2KQo+ICB8IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gIGRy
aXZlcnMvZ3B1L2RybS9yYWRlb24vc2kuYzo1ODAxOjY6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHBy
b3RvdHlwZSBmb3Ig4oCYc2lfcmxjX3Jlc2V04oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KPiAg
NTgwMSB8IHZvaWQgc2lfcmxjX3Jlc2V0KHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2KQo+ICB8
IF5+fn5+fn5+fn5+fgo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1k
LmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5h
cm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9y
Zwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBM
ZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgK
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMgfCA0ICstLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9zaS5oICB8IDQgKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL2Npay5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWsuYwo+IGluZGV4IGFl
MDIwYWQ3YjMxODUuLmNlZjBmMzExMWNkM2EgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9jaWsuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMKPiBAQCAt
NDAsNiArNDAsNyBAQAo+ICAjaW5jbHVkZSAicmFkZW9uX2FzaWMuaCIKPiAgI2luY2x1ZGUgInJh
ZGVvbl9hdWRpby5oIgo+ICAjaW5jbHVkZSAicmFkZW9uX3Vjb2RlLmgiCj4gKyNpbmNsdWRlICJz
aS5oIgo+Cj4gICNkZWZpbmUgU0hfTUVNX0NPTkZJR19HRlhfREVGQVVMVCBcCj4gICAgICAgICBB
TElHTk1FTlRfTU9ERShTSF9NRU1fQUxJR05NRU5UX01PREVfVU5BTElHTkVEKQo+IEBAIC0xMjcs
OSArMTI4LDYgQEAgTU9EVUxFX0ZJUk1XQVJFKCJyYWRlb24vbXVsbGluc19tZWMuYmluIik7Cj4g
IE1PRFVMRV9GSVJNV0FSRSgicmFkZW9uL211bGxpbnNfcmxjLmJpbiIpOwo+ICBNT0RVTEVfRklS
TVdBUkUoInJhZGVvbi9tdWxsaW5zX3NkbWEuYmluIik7Cj4KPiAtZXh0ZXJuIHZvaWQgc2lfdnJh
bV9ndHRfbG9jYXRpb24oc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsIHN0cnVjdCByYWRlb25f
bWMgKm1jKTsKPiAtZXh0ZXJuIHZvaWQgc2lfcmxjX3Jlc2V0KHN0cnVjdCByYWRlb25fZGV2aWNl
ICpyZGV2KTsKPiAtZXh0ZXJuIHZvaWQgc2lfaW5pdF91dmRfaW50ZXJuYWxfY2coc3RydWN0IHJh
ZGVvbl9kZXZpY2UgKnJkZXYpOwo+ICBzdGF0aWMgdTMyIGNpa19nZXRfY3VfYWN0aXZlX2JpdG1h
cChzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldiwgdTMyIHNlLCB1MzIgc2gpOwo+ICBleHRlcm4g
aW50IGNpa19zZG1hX3Jlc3VtZShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4gIGV4dGVy
biB2b2lkIGNpa19zZG1hX2VuYWJsZShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldiwgYm9vbCBl
bmFibGUpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3NpLmggYi9kcml2
ZXJzL2dwdS9kcm0vcmFkZW9uL3NpLmgKPiBpbmRleCBhMTc1MWFlNTYwZjAyLi5mNDgzYTY0ZDE3
MDUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vc2kuaAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yYWRlb24vc2kuaAo+IEBAIC0yNSw4ICsyNSwxMiBAQAo+ICAjZGVmaW5l
IF9fU0lfSF9fCj4KPiAgc3RydWN0IHJhZGVvbl9kZXZpY2U7Cj4gK3N0cnVjdCByYWRlb25fbWM7
Cj4KPiAgaW50IHNpX21jX2xvYWRfbWljcm9jb2RlKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2
KTsKPiAgdTMyIHNpX2dwdV9jaGVja19zb2Z0X3Jlc2V0KHN0cnVjdCByYWRlb25fZGV2aWNlICpy
ZGV2KTsKPiArdm9pZCBzaV92cmFtX2d0dF9sb2NhdGlvbihzdHJ1Y3QgcmFkZW9uX2RldmljZSAq
cmRldiwgc3RydWN0IHJhZGVvbl9tYyAqbWMpOwo+ICt2b2lkIHNpX3JsY19yZXNldChzdHJ1Y3Qg
cmFkZW9uX2RldmljZSAqcmRldik7Cj4gK3ZvaWQgc2lfaW5pdF91dmRfaW50ZXJuYWxfY2coc3Ry
dWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+Cj4gICNlbmRpZiAgICAgICAgICAgICAgICAgICAg
ICAgICAvKiBfX1NJX0hfXyAqLwo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
