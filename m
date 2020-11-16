Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAB32B52DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 21:43:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BF78619B0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:43:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2D528666D5; Mon, 16 Nov 2020 20:43:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08907666E0;
	Mon, 16 Nov 2020 20:42:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F05BF619B0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:42:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E1328666E0; Mon, 16 Nov 2020 20:42:36 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 9546B619B0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:42:35 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 10so599915wml.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 12:42:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3z+NbxLCoSUpXc6qIVJmm/Cby6IwqNHb9FTQiHAyLpQ=;
 b=WRYnpK0NWIwoUHpVxe0MMo7tNPGRObl2uIIOGbIQIuXwfgZ3vQSlNr9Pp8d7ntxKHz
 LiEP8sp/vONkWVw1Qx31TwZ9ZpODdirkANyOoxmX/Bd0qk05wf5Da53px+0eWTOJQm/O
 CdTiBwOvMfAqZb9vwN05McYkWW9AcZHQG9IJ8o8yAAymkWHmK4ER4eQF8RJbyK77g/j7
 sL9LU6CyN5ZbTS1J0H/S7BwR/U6uzUz+fr6FhgsuMCAy03WDQcrsV4D8wbtcab834B10
 9eiUmaIpJCt/h5WWU5NjdIgEvPMPVqe3GjLux3VFRmHBoD1OQ+ZLfUICSqUMbqZKVeXB
 t34w==
X-Gm-Message-State: AOAM532zkEUMQakeLKwLxFXVXflWkWSQP/5HnH2AmXOYNQaAEOqYxsgZ
 bTc04mlFiw9pFlqte7GPUO3OOZnOd0pr2L1dXFc=
X-Google-Smtp-Source: ABdhPJzMitW7KoFSksU/zt+YNQhzbtPynx2aS+dOwmPuAI1Vbj8yIE/6ayztvfblfVaSIEsfQFY+bJuDWGnscmxiEAk=
X-Received: by 2002:a7b:c015:: with SMTP id c21mr705614wmb.79.1605559354802;
 Mon, 16 Nov 2020 12:42:34 -0800 (PST)
MIME-Version: 1.0
References: <20201116173700.1830487-1-lee.jones@linaro.org>
 <20201116173700.1830487-39-lee.jones@linaro.org>
In-Reply-To: <20201116173700.1830487-39-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 15:42:23 -0500
Message-ID: <CADnq5_NdY-vbn74Qzp8X04y_eozZVFiOXwepSP2+iABRzUOTxA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 38/43] drm/radeon/cik: Move 'Move
 'cik_sdma_*()'s prototypes to shared header
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
d2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2Npa19zZG1hLmM6MzMxOjY6
IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYY2lrX3NkbWFfZW5hYmxl4oCZ
IFstV21pc3NpbmctcHJvdG90eXBlc10KPiAgMzMxIHwgdm9pZCBjaWtfc2RtYV9lbmFibGUoc3Ry
dWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsIGJvb2wgZW5hYmxlKQo+ICB8IF5+fn5+fn5+fn5+fn5+
fgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2Npa19zZG1hLmM6NTI4OjU6IHdhcm5pbmc6IG5v
IHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYY2lrX3NkbWFfcmVzdW1l4oCZIFstV21pc3Npbmct
cHJvdG90eXBlc10KPiAgNTI4IHwgaW50IGNpa19zZG1hX3Jlc3VtZShzdHJ1Y3QgcmFkZW9uX2Rl
dmljZSAqcmRldikKPiAgfCBefn5+fn5+fn5+fn5+fn4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9jaWtfc2RtYS5jOjU1Nzo2OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKA
mGNpa19zZG1hX2ZpbmnigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+ICA1NTcgfCB2b2lkIGNp
a19zZG1hX2Zpbmkoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpCj4gIHwgXn5+fn5+fn5+fn5+
fgo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzog
IkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlk
IEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENj
OiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxl
ZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMgfCAzIC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFk
ZW9uL2Npay5oIHwgMyArKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWsu
YyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMKPiBpbmRleCBjZWYwZjMxMTFjZDNhLi4y
YWY3NjQ2MzkwNmFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2Npay5jCj4gQEAgLTEyOSw5ICsxMjksNiBA
QCBNT0RVTEVfRklSTVdBUkUoInJhZGVvbi9tdWxsaW5zX3JsYy5iaW4iKTsKPiAgTU9EVUxFX0ZJ
Uk1XQVJFKCJyYWRlb24vbXVsbGluc19zZG1hLmJpbiIpOwo+Cj4gIHN0YXRpYyB1MzIgY2lrX2dl
dF9jdV9hY3RpdmVfYml0bWFwKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2LCB1MzIgc2UsIHUz
MiBzaCk7Cj4gLWV4dGVybiBpbnQgY2lrX3NkbWFfcmVzdW1lKHN0cnVjdCByYWRlb25fZGV2aWNl
ICpyZGV2KTsKPiAtZXh0ZXJuIHZvaWQgY2lrX3NkbWFfZW5hYmxlKHN0cnVjdCByYWRlb25fZGV2
aWNlICpyZGV2LCBib29sIGVuYWJsZSk7Cj4gLWV4dGVybiB2b2lkIGNpa19zZG1hX2Zpbmkoc3Ry
dWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+ICBleHRlcm4gdm9pZCB2Y2VfdjJfMF9lbmFibGVf
bWdjZyhzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldiwgYm9vbCBlbmFibGUpOwo+ICBzdGF0aWMg
dm9pZCBjaWtfcmxjX3N0b3Aoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+ICBzdGF0aWMg
dm9pZCBjaWtfcGNpZV9nZW4zX2VuYWJsZShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmggYi9kcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL2Npay5oCj4gaW5kZXggNDIwMjA3ZDE5ZGU1Mi4uZDFiZjU0MWRhNTkyMyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2Npay5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9jaWsuaAo+IEBAIC0zNCw0ICszNCw3IEBAIHZvaWQgY2lrX2luaXRfY3Bf
cGdfdGFibGUoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+ICB1MzIgY2lrX2dldF9jc2Jf
c2l6ZShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4gIHZvaWQgY2lrX2dldF9jc2JfYnVm
ZmVyKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2LCB2b2xhdGlsZSB1MzIgKmJ1ZmZlcik7Cj4K
PiAraW50IGNpa19zZG1hX3Jlc3VtZShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4gK3Zv
aWQgY2lrX3NkbWFfZW5hYmxlKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2LCBib29sIGVuYWJs
ZSk7Cj4gK3ZvaWQgY2lrX3NkbWFfZmluaShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4g
ICNlbmRpZiAgICAgICAgICAgICAgICAgICAgICAgICAvKiBfX0NJS19IX18gKi8KPiAtLQo+IDIu
MjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRl
dmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
