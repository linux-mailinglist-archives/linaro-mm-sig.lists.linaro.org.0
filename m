Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB18268C3E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 15:31:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB94A617D8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 13:31:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DCEE066604; Mon, 14 Sep 2020 13:31:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2F68617F1;
	Mon, 14 Sep 2020 13:31:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2D0B86179D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 13:31:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2192F6186A; Mon, 14 Sep 2020 13:31:11 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by lists.linaro.org (Postfix) with ESMTPS id E6D5C6650E
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 13:30:49 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id e22so7089705edq.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 06:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=MJZms6QlGOYEjnVyjgzH8924ZUFCbrOAjhB8S+SOw0Q=;
 b=AXNbo/MCWFBumS5ENOv4jgOYcn3I7yZf3AJQwPzEy941GMG/NwNPhnQl553lCLXHIv
 8iN4MLJhe+I1iHX+2Uu2PJMx1aC2Q3A/RJfkRlDPpvAmwnjiANToVUYw+Nq/NoCeTaPS
 ZYBT5u9rxGNRhoruKRTV79FefS5MLGdSEVgjEkDrY7Ol38fKaThI2JKphTUibQZwqEpX
 T9E9R1m5Qx5imLac0A9zOm8iPyYwdMlkTHmnjv9tD42uPq0nzUSf10jOAbrHC8N8W655
 jlYtV+NORBLmfkNwVhGbeY9XkKLmS4fM7NjOp/AcOW/IFoXbILEsehRBn/8ONB4vqgca
 LVeg==
X-Gm-Message-State: AOAM533MK5lZEq3/hg/MB+yar5JDNZghACBqLQ5DwcSK9dKe7SKkLp/K
 /KGCBfFOHhWEUURN+Hl1OoQ=
X-Google-Smtp-Source: ABdhPJwM5ZL8+pefIM8N8Pp/HAs1Da9AhS9+TCqXwmw1+Bfwc5H4UJw/fibBFv4vSEBRyYvPybunNQ==
X-Received: by 2002:a50:fb15:: with SMTP id d21mr17942730edq.150.1600090249097; 
 Mon, 14 Sep 2020 06:30:49 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id nh1sm7646664ejb.21.2020.09.14.06.30.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Sep 2020 06:30:48 -0700 (PDT)
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
To: akpm@linux-foundation.org
References: <20200914132920.59183-1-christian.koenig@amd.com>
Message-ID: <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
Date: Mon, 14 Sep 2020 15:30:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200914132920.59183-1-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTQuMDkuMjAgdW0gMTU6Mjkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOgo+IEhpIEFuZHJl
dywKClNvcnJ5IGZvcmdvdCB0byBhZGQgRGFuaWVsIGFzIHdlbGwuCgo+Cj4gSSdtIHRoZSBuZXcg
RE1BLWJ1ZiBtYWludGFpbmVyIGFuZCBEYW5pZWwgYW5kIG90aGVycyBjYW1lIHVwIHdpdGggcGF0
Y2hlcyBleHRlbmRpbmcgdGhlIHVzZSBvZiB0aGUgZG1hX2J1Zl9tbWFwKCkgZnVuY3Rpb24uCj4K
PiBOb3cgdGhpcyBmdW5jdGlvbiBpcyBkb2luZyBzb21ldGhpbmcgYSBiaXQgb2RkIGJ5IGNoYW5n
aW5nIHRoZSB2bWEtPnZtX2ZpbGUgd2hpbGUgaW5zdGFsbGluZyBhIFZNQSBpbiB0aGUgbW1hcCgp
IHN5c3RlbSBjYWxsCj4KPiBUaGUgYmFja2dyb3VuZCBoZXJlIGlzIHRoYXQgRE1BLWJ1ZiBhbGxv
d3MgZGV2aWNlIGRyaXZlcnMgdG8gZXhwb3J0IGJ1ZmZlciB3aGljaCBhcmUgdGhlbiBpbXBvcnRl
ZCBpbnRvIGFub3RoZXIgZGV2aWNlIGRyaXZlci4gVGhlIG1tYXAoKSBoYW5kbGVyIG9mIHRoZSBp
bXBvcnRpbmcgZGV2aWNlIGRyaXZlciB0aGVuIGZpbmQgdGhhdCB0aGUgcGdvZmYgYmVsb25ncyB0
byB0aGUgZXhwb3J0aW5nIGRldmljZSBhbmQgc28gcmVkaXJlY3RzIHRoZSBtbWFwKCkgY2FsbCB0
aGVyZS4KPgo+IEluIG90aGVyIHdvcmRzIHVzZXIgc3BhY2UgY2FsbHMgbW1hcCgpIG9uIG9uZSBm
aWxlIGRlc2NyaXB0b3IsIGJ1dCBnZXQgYSBkaWZmZXJlbnQgb25lIG1hcHBlZCBpbnRvIHlvdXIg
dmlydHVhbCBhZGRyZXNzIHNwYWNlLgo+Cj4gTXkgcXVlc3Rpb24gaXMgbm93OiBJcyB0aGF0IGxl
Z2FsIG9yIGNhbiB5b3UgdGhpbmsgb2Ygc29tZXRoaW5nIHdoaWNoIGJyZWFrcyBoZXJlPwo+Cj4g
SWYgaXQncyBub3QgbGVnYWwgd2Ugc2hvdWxkIHByb2JhYmx5IGJsb2NrIGFueSBuZXcgdXNlcnMg
b2YgdGhlIGRtYV9idWZfbW1hcCgpIGZ1bmN0aW9uIGFuZCBjb25zaWRlciB3aGF0IHNob3VsZCBo
YXBwZW4gd2l0aCB0aGUgdHdvIGV4aXN0aW5nIG9uZXMuCj4KPiBJZiB0aGF0IGlzIGxlZ2FsIEkg
d291bGQgbGlrZSB0byBkb2N1bWVudCB0aGlzIGJ5IGFkZGluZyBhIG5ldyB2bWFfc2V0X2ZpbGUo
KSBmdW5jdGlvbiB3aGljaCBkb2VzIHRoZSBuZWNlc3NhcnkgcmVmZXJlbmNlIGNvdW50IGRhbmNl
Lgo+Cj4gVGhhbmtzIGluIGFkdmFuY2UsCj4gQ2hyaXN0aWFuLgo+Cj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
