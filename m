Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 297B92AE289
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:07:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5131A665F3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:07:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3C99C665CF; Tue, 10 Nov 2020 22:07:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D403B665E9;
	Tue, 10 Nov 2020 22:07:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7DB5A6192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:06:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 610CC665E9; Tue, 10 Nov 2020 22:06:59 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 100F36192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:06:58 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id s8so7290638wrw.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 14:06:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fOBPjcNpz91mCMYtlgOYiEJnJpHJJ7wowgArIUAKBpQ=;
 b=Ac9QSDzr0EYuYLF61EGrm/3fgpifnoRSwpvIfJzWIptOZcQ1tdPsYnfzHUZV4hXHvz
 4WRQS1UQQWEXsdYbXT8iOvjV3ty26UvflBMrbNzJH9jpBKRPqidEHrSBklwxU5mSqzAu
 rRGwXurG7MNl0MPYnEUAKL/T+1do0NQxmz24qcxAcZ47MjlmxJRd45KcjMOIaxGCZDCH
 +9QljyfzkgMMiHjzs9B5JL6hsw3Ru0tSMaVu6g+xMtu4546i32WPOqY/mx15YAgVBC4F
 fiAIZDRjqnkur6THeE2KN1JuifOLztGPJ5t+Gleydz0E65p7UjKkD32gSOneBdi2unnL
 Omjg==
X-Gm-Message-State: AOAM530ednWbVCR0MAyDHqNN/eQ6oRouaDmV1ssbL16UTlr3kgGuubfa
 7166kMecEkjFjiRFiUlCH5WN7lXtHaBvSuA2WFQ=
X-Google-Smtp-Source: ABdhPJwp3lXAPU50agZOEqw4doQ3R4tIdinA9SliisR1tkW2IKPNfSZxOF5yGat2GbhQxN0UAuZdd3elAtRyCEiVtJY=
X-Received: by 2002:adf:f246:: with SMTP id b6mr25860054wrp.111.1605046017139; 
 Tue, 10 Nov 2020 14:06:57 -0800 (PST)
MIME-Version: 1.0
References: <20201109211855.3340030-1-lee.jones@linaro.org>
 <20201109211855.3340030-4-lee.jones@linaro.org>
In-Reply-To: <20201109211855.3340030-4-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 17:06:46 -0500
Message-ID: <CADnq5_PC1=sxZP2wT-jfeBwObHCRBHOdW4ceEt-2=8PaA3aYzQ@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <glisse@freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 03/20] drm/radeon/radeon_fence: Demote
 some non-conformant kernel-doc headers and fix another
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

T24gTW9uLCBOb3YgOSwgMjAyMCBhdCA0OjE5IFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZmVuY2UuYzoxNjg6
IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3dhaXQnIG5vdCBkZXNjcmli
ZWQgaW4gJ3JhZGVvbl9mZW5jZV9jaGVja19zaWduYWxlZCcKPiAgZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9yYWRlb25fZmVuY2UuYzoxNjg6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBt
ZW1iZXIgJ21vZGUnIG5vdCBkZXNjcmliZWQgaW4gJ3JhZGVvbl9mZW5jZV9jaGVja19zaWduYWxl
ZCcKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZmVuY2UuYzoxNjg6IHdhcm5pbmc6
IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2ZsYWdzJyBub3QgZGVzY3JpYmVkIGluICdy
YWRlb25fZmVuY2VfY2hlY2tfc2lnbmFsZWQnCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFk
ZW9uX2ZlbmNlLmM6MTY4OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdr
ZXknIG5vdCBkZXNjcmliZWQgaW4gJ3JhZGVvbl9mZW5jZV9jaGVja19zaWduYWxlZCcKPiAgZHJp
dmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZmVuY2UuYzozOTM6IHdhcm5pbmc6IEZ1bmN0aW9u
IHBhcmFtZXRlciBvciBtZW1iZXIgJ2YnIG5vdCBkZXNjcmliZWQgaW4gJ3JhZGVvbl9mZW5jZV9l
bmFibGVfc2lnbmFsaW5nJwo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9mZW5jZS5j
OjM5Mzogd2FybmluZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFtZXRlciAnZmVuY2UnIGRlc2NyaXB0
aW9uIGluICdyYWRlb25fZmVuY2VfZW5hYmxlX3NpZ25hbGluZycKPiAgZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fZmVuY2UuYzoxMDEwOiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIg
b3IgbWVtYmVyICdtJyBub3QgZGVzY3JpYmVkIGluICdyYWRlb25fZGVidWdmc19ncHVfcmVzZXQn
Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ZlbmNlLmM6MTAxMDogd2FybmluZzog
RnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnZGF0YScgbm90IGRlc2NyaWJlZCBpbiAncmFk
ZW9uX2RlYnVnZnNfZ3B1X3Jlc2V0Jwo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRl
dWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNl
bXdhbEBsaW5hcm8ub3JnPgo+IENjOiBKZXJvbWUgR2xpc3NlIDxnbGlzc2VAZnJlZWRlc2t0b3Au
b3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+
IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUg
Sm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5rcy4KCkFsZXgKCj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ZlbmNlLmMgfCA2ICsrKy0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ZlbmNlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9mZW5jZS5jCj4gaW5kZXggODczNWJmMmJiOGI1Yy4uOWVl
NmU1OTllZjgzYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9m
ZW5jZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZmVuY2UuYwo+IEBA
IC0xNTcsNyArMTU3LDcgQEAgaW50IHJhZGVvbl9mZW5jZV9lbWl0KHN0cnVjdCByYWRlb25fZGV2
aWNlICpyZGV2LAo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+IC0vKioKPiArLyoKPiAgICog
cmFkZW9uX2ZlbmNlX2NoZWNrX3NpZ25hbGVkIC0gY2FsbGJhY2sgZnJvbSBmZW5jZV9xdWV1ZQo+
ICAgKgo+ICAgKiB0aGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCB3aXRoIGZlbmNlX3F1ZXVlIGxvY2sg
aGVsZCwgd2hpY2ggaXMgYWxzbyB1c2VkCj4gQEAgLTM4Myw3ICszODMsNyBAQCBzdGF0aWMgYm9v
bCByYWRlb25fZmVuY2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZikKPgo+ICAvKioK
PiAgICogcmFkZW9uX2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcgLSBlbmFibGUgc2lnbmFsbGluZyBv
biBmZW5jZQo+IC0gKiBAZmVuY2U6IGZlbmNlCj4gKyAqIEBmOiBmZW5jZQo+ICAgKgo+ICAgKiBU
aGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCB3aXRoIGZlbmNlX3F1ZXVlIGxvY2sgaGVsZCwgYW5kIGFk
ZHMgYSBjYWxsYmFjawo+ICAgKiB0byBmZW5jZV9xdWV1ZSB0aGF0IGNoZWNrcyBpZiB0aGlzIGZl
bmNlIGlzIHNpZ25hbGVkLCBhbmQgaWYgc28gaXQKPiBAQCAtMTAwMSw3ICsxMDAxLDcgQEAgc3Rh
dGljIGludCByYWRlb25fZGVidWdmc19mZW5jZV9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9p
ZCAqZGF0YSkKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiAtLyoqCj4gKy8qCj4gICAqIHJh
ZGVvbl9kZWJ1Z2ZzX2dwdV9yZXNldCAtIG1hbnVhbGx5IHRyaWdnZXIgYSBncHUgcmVzZXQKPiAg
ICoKPiAgICogTWFudWFsbHkgdHJpZ2dlciBhIGdwdSByZXNldCBhdCB0aGUgbmV4dCBmZW5jZSB3
YWl0Lgo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
