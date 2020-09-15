Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AD126A3CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Sep 2020 13:04:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C16ED666C2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Sep 2020 11:04:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B0ECD666D5; Tue, 15 Sep 2020 11:04:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BEF2C666D8;
	Tue, 15 Sep 2020 11:03:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9ED9E61789
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 11:03:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 93862666D5; Tue, 15 Sep 2020 11:03:44 +0000 (UTC)
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by lists.linaro.org (Postfix) with ESMTPS id 1093861789
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 11:03:42 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id o8so4381545ejb.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 04:03:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=tf9aVEsdXq4hvSPyIfdqowWXQx44PZPondYe5kmz/4k=;
 b=lvUtTFy9solMqaBmAsSyzSOcS0r9yMalfAKUwcohYW80v7JaYARnHAV31S+bDi9tDD
 pEcTmGRDt8KJ8usI9ifcLeKToJwG7b3CsFKub3Lu+fZBkKdnIGiyKuAIRn5OyVmeu8J/
 MRCUQID3wnwU3YHHji53AF5TW+YbgMg4p/pYob9eH9KEAlWWz/mIQWriK1fkZj2wPSCG
 It1mAQHljhMpmUY4kHc4YB7KG4MgzemiaGu+S4/m9muCYNc7LqjU3KhHe/bQjlIgjU3K
 09oh3a12iTfPiY0EyTeai3P+KzgTGd31xQnahSwa+33tCYraFgm9CzCC294zulLHiM4n
 cLkw==
X-Gm-Message-State: AOAM530Rcq+6ubkb61G2v4hjk5uaKxuYacgMOecsvZ7ngPEekTupBffu
 vNUaY7SsiLADTrCiVQ+5UinchdQtMph5NA==
X-Google-Smtp-Source: ABdhPJxfW0HVgypcFl09FE5Qg1TZt4Ht/6KefSB8Cm0t+kwNcgrEBFWDZzSO/WzygzmfhzF4uCiGjg==
X-Received: by 2002:a17:906:9491:: with SMTP id
 t17mr20156636ejx.253.1600167821140; 
 Tue, 15 Sep 2020 04:03:41 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id ks21sm9916283ejb.63.2020.09.15.04.03.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Sep 2020 04:03:40 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <20200914132920.59183-2-christian.koenig@amd.com>
 <CAKMK7uHnZgCBUBQ-5D7gCj1v3Z4wKkeO91tefAoJE1B49JFtww@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <92b77d29-ae9b-b9cd-4e03-f193aa386cae@gmail.com>
Date: Tue, 15 Sep 2020 13:03:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHnZgCBUBQ-5D7gCj1v3Z4wKkeO91tefAoJE1B49JFtww@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] drm/shmem-helpers: revert "Redirect
 mmap for imported dma-buf"
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTUuMDkuMjAgdW0gMTI6Mzkgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIE1vbiwgU2Vw
IDE0LCAyMDIwIGF0IDM6MjkgUE0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxja29lbmlnLmxlaWNodHp1
bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+IFRoaXMgcmV2ZXJ0cyBjb21taXQgMjZkM2FjM2Ni
MDRkMTcxYTg2MTk1MmU4OTMyNGUzNDc1OThhMzQ3Zi4KPj4KPj4gV2UgbmVlZCB0byBmaWd1cmUg
b3V0IGlmIGRtYV9idWZfbW1hcCgpIGlzIHZhbGlkIG9yIG5vdCBmaXJzdC4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IFRo
ZSB0cm91YmxlIGlzIHRoYXQgZG9pbmcgZG1hLWJ1ZiBtbWFwIGJ5IGxvb2tpbmcgYXQgdGhlIHN0
cnVjdCBwYWdlcwo+IGJlaGluZCB0aGUgc2cgbGlzdCBhbmQganVzdCBpbnNlcnRpbmcgdGhvc2Ug
aW50byB1c2Vyc3BhY2UgZG9lc24ndAo+IHJlYWxseSB3b3JrIGFueSBiZXR0ZXIuIFlvdSBzdGls
bCB3b24ndCBnZXQgdGhlIHVubWFwX21hcHBpbmdfcmFuZ2UKPiBhbmQgaGVuY2UgcHRlIHNob290
LWRvd24uIFNvIG1heWJlIGRtYV9idWZfbW1hcCBmb3J3YXJkaW5nIGRvZXNuJ3QKPiB3b3JrLCBi
dXQgdGhpcyBkb2Vzbid0IG1ha2UgaXQgYW55IGJldHRlci4KCkdvb2QgcG9pbnQuIFF1ZXN0aW9u
IGlzIHdoYXQgc2hvdWxkIHdlIGRvPyBSZXR1cm4gLUVQRVJNPwoKPgo+IEFsc28gY29tbWl0IG1l
c3NhZ2Ugc2hvdWxkIHByb2JhYmx5IGV4cGxhaW4gYSBiaXQgdGhlIGNvbnRleHQgaGVyZSwKPiBu
b3QgYSBsb3Qgb2YgcGVvcGxlIGhhdmUgYmVlbiBpbiBvdXIgcHJpdmF0ZSBkaXNjdXNzaW9uIG9u
IHRoaXMuCgpXZWxsLCB0aGF0J3MgY2VydGFpbiB0cnVlLgoKQ2hyaXN0aWFuLgoKPiAtRGFuaWVs
Cj4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgfCAz
IC0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwo+PiBpbmRleCAwYTk1MmYyN2MxODQuLmNkNzI3MzQz
ZjcyYiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVy
LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKPj4gQEAg
LTU5NCw5ICs1OTQsNiBAQCBpbnQgZHJtX2dlbV9zaG1lbV9tbWFwKHN0cnVjdCBkcm1fZ2VtX29i
amVjdCAqb2JqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPj4gICAgICAgICAgLyogUmVt
b3ZlIHRoZSBmYWtlIG9mZnNldCAqLwo+PiAgICAgICAgICB2bWEtPnZtX3Bnb2ZmIC09IGRybV92
bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSk7Cj4+Cj4+IC0gICAgICAgaWYgKG9iai0+aW1w
b3J0X2F0dGFjaCkKPj4gLSAgICAgICAgICAgICAgIHJldHVybiBkbWFfYnVmX21tYXAob2JqLT5k
bWFfYnVmLCB2bWEsIDApOwo+PiAtCj4+ICAgICAgICAgIHNobWVtID0gdG9fZHJtX2dlbV9zaG1l
bV9vYmoob2JqKTsKPj4KPj4gICAgICAgICAgcmV0ID0gZHJtX2dlbV9zaG1lbV9nZXRfcGFnZXMo
c2htZW0pOwo+PiAtLQo+PiAyLjE3LjEKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+PiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
