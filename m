Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB952AE266
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:00:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66B40665EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:00:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5A32B665F2; Tue, 10 Nov 2020 22:00:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9FCD665E9;
	Tue, 10 Nov 2020 22:00:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A34F86192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:00:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 86B2D665CF; Tue, 10 Nov 2020 22:00:04 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 74741665CF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:00:02 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c9so4697800wml.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 14:00:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kQXXRFyXwxRS/I2RgZpEGIowDOXzMpZPv5s9Y3k7QhI=;
 b=DWIdCs7rbztBTNoVZq0jcxZK0UnjUIhWN294SKTYIUG812M27hik0tVjNdQlrlHSC6
 hVC0B09TO10iZneXjH19PPAmjhOnKTPFu+qPHIUiAnDv8qcBXPEeEzG9+gSm2S5HjZSv
 Pwl83RcK2ADRtNhxtwU8oWRNRRBmSawpvzxCQnB7tg1OyWFOHOp1IrdMSZsTdFS9oGdJ
 hJfomomg2J4NKeRyhlmEx1iHCyxqXdbQH8fSp75D7wOwCS+gUhFNTLyOng7Tdq25QcWF
 q2Z+jPTLKJOA4pdLJYAd2yi+1jU0Yyx9D7pbV7K0t0GrOLRN51DTxdokn24dy2kqkBla
 8BtQ==
X-Gm-Message-State: AOAM531s6Mc2Ll+32wWE+0eQP3k4wpzXoanlKmPXOlPm6J0OxvO4zRvp
 vuckLNRh3+EqZ6J73W3xB5xciKaCDxWOTfcb/Vs=
X-Google-Smtp-Source: ABdhPJyA6KMQLGspxDQuMB3AJjwy1n4N6vTF1NTBv7oDFWmt8buswnwQw/m1E/kYfC65a/uWB9XotDCuHrLZ3DbVAI0=
X-Received: by 2002:a1c:46c6:: with SMTP id t189mr192270wma.79.1605045601646; 
 Tue, 10 Nov 2020 14:00:01 -0800 (PST)
MIME-Version: 1.0
References: <20201106214949.2042120-1-lee.jones@linaro.org>
 <20201106214949.2042120-16-lee.jones@linaro.org>
In-Reply-To: <20201106214949.2042120-16-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 16:59:50 -0500
Message-ID: <CADnq5_MYU0FMVm-ALPRAeF1O29TnZc83xpY+W-=iiSJY2AX2LQ@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 15/19] drm/radeon: Move prototypes to
	shared header
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

T24gRnJpLCBOb3YgNiwgMjAyMCBhdCA0OjUwIFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fa21zLmM6NzU2OjU6
IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYcmFkZW9uX2dldF92Ymxhbmtf
Y291bnRlcl9rbXPigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+ICA3NTYgfCB1MzIgcmFkZW9u
X2dldF92YmxhbmtfY291bnRlcl9rbXMoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+ICB8IF5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9u
X2ttcy5jOjgyNjo1OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmHJhZGVv
bl9lbmFibGVfdmJsYW5rX2ttc+KAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCj4gIDgyNiB8IGlu
dCByYWRlb25fZW5hYmxlX3ZibGFua19rbXMoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+ICB8IF5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9r
bXMuYzo4NTM6Njogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhyYWRlb25f
ZGlzYWJsZV92Ymxhbmtfa21z4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KPiAgODUzIHwgdm9p
ZCByYWRlb25fZGlzYWJsZV92Ymxhbmtfa21zKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKPiAgfCBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIu
ZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQu
c2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
Q2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdl
ci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25l
ZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgpBcHBsaWVkLiAgVGhh
bmtzIQoKQWxleAoKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uLmggICAg
ICAgICB8IDYgKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rpc3BsYXku
YyB8IDQgLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbi5oIGIv
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb24uaAo+IGluZGV4IGUxMTMyZDg2ZDI1MDcuLjk2
MWEzMWI4ODA1YzIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb24u
aAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uLmgKPiBAQCAtMjgzMiw2ICsy
ODMyLDEyIEBAIGV4dGVybiB2b2lkIHJhZGVvbl9wcm9ncmFtX3JlZ2lzdGVyX3NlcXVlbmNlKHN0
cnVjdCByYWRlb25fZGV2aWNlICpyZGV2LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnN0IHUzMiBhcnJheV9zaXplKTsKPiAgc3RydWN0IHJhZGVvbl9k
ZXZpY2UgKnJhZGVvbl9nZXRfcmRldihzdHJ1Y3QgdHRtX2JvX2RldmljZSAqYmRldik7Cj4KPiAr
LyogS01TICovCj4gKwo+ICt1MzIgcmFkZW9uX2dldF92YmxhbmtfY291bnRlcl9rbXMoc3RydWN0
IGRybV9jcnRjICpjcnRjKTsKPiAraW50IHJhZGVvbl9lbmFibGVfdmJsYW5rX2ttcyhzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMpOwo+ICt2b2lkIHJhZGVvbl9kaXNhYmxlX3ZibGFua19rbXMoc3RydWN0
IGRybV9jcnRjICpjcnRjKTsKPiArCj4gIC8qCj4gICAqIHZtCj4gICAqLwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL3JhZGVvbl9kaXNwbGF5LmMKPiBpbmRleCBiNzk2ODZjZjhiZGJkLi5iZDYwZjE2
ZmQwZDc4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rpc3Bs
YXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rpc3BsYXkuYwo+IEBA
IC00NSwxMCArNDUsNiBAQAo+ICAjaW5jbHVkZSAiYXRvbS5oIgo+ICAjaW5jbHVkZSAicmFkZW9u
LmgiCj4KPiAtdTMyIHJhZGVvbl9nZXRfdmJsYW5rX2NvdW50ZXJfa21zKHN0cnVjdCBkcm1fY3J0
YyAqY3J0Yyk7Cj4gLWludCByYWRlb25fZW5hYmxlX3ZibGFua19rbXMoc3RydWN0IGRybV9jcnRj
ICpjcnRjKTsKPiAtdm9pZCByYWRlb25fZGlzYWJsZV92Ymxhbmtfa21zKHN0cnVjdCBkcm1fY3J0
YyAqY3J0Yyk7Cj4gLQo+ICBzdGF0aWMgdm9pZCBhdml2b19jcnRjX2xvYWRfbHV0KHN0cnVjdCBk
cm1fY3J0YyAqY3J0YykKPiAgewo+ICAgICAgICAgc3RydWN0IHJhZGVvbl9jcnRjICpyYWRlb25f
Y3J0YyA9IHRvX3JhZGVvbl9jcnRjKGNydGMpOwo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5n
IGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
