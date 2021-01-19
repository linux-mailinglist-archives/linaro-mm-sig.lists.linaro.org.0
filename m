Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C17BF2FBEFA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Jan 2021 19:30:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC7A96673C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Jan 2021 18:30:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBB296673A; Tue, 19 Jan 2021 18:30:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75F1B66731;
	Tue, 19 Jan 2021 18:29:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B0EE4607B9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jan 2021 18:29:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 912D166731; Tue, 19 Jan 2021 18:29:42 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by lists.linaro.org (Postfix) with ESMTPS id 5C068607B9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jan 2021 18:29:41 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id x23so23012937lji.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jan 2021 10:29:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JWWYuzWaghP5Q544uqJbXr3wVFNCkeCk1gyHHkDdQ/A=;
 b=Z4+CbdtwarWKnZ6uN0Gvk/YeIlAyI2SeBy0IGqgZl48OD9XViVIXXNL+KPLTel8qwg
 Mt8kODbngrg3jIV3YH5gN+KgmDf0YgvBMRxfOiIUqsXqo9zK3FwBxc05PSZK3XBpTh14
 +u1eSKmnWmQq+5KskrQEqIQOB4f3MZtqwZAG5J0JHKmtfhwUMwLtRl1cb56ZM8UEB5zz
 I2f1SIrHoxvuEd+l9wpynFRIqWEiKg37JvKaV1wZq/dwSjiy4CoZvRr+FzEChC8EDISN
 wjy5hQhCDnrFoEgRWCW3lDDWZ2TifXs3jmcKyl1A46VE8LYRbbN480zMmEJbDl5SJCAL
 dZfA==
X-Gm-Message-State: AOAM533ch8FwmNga5recLuFamPd+9Q2ucviKS+S4FjQxiDyfhKiM82sv
 Q9S4yqjhHXZETzbXJC8TrZi8tawLyanEay5A5ywaZZCh
X-Google-Smtp-Source: ABdhPJyoOd3Tzkorx9mIjYO8VVetUnWwDqJgYwdoxP5M9bwFey7dBLq3et+JsaDPEcCzrb4F1+lPqF4gjUDlxQ1XCog=
X-Received: by 2002:a05:651c:10e:: with SMTP id
 a14mr2543204ljb.128.1611080980220; 
 Tue, 19 Jan 2021 10:29:40 -0800 (PST)
MIME-Version: 1.0
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-5-minchan@kernel.org>
In-Reply-To: <20210113012143.1201105-5-minchan@kernel.org>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 19 Jan 2021 10:29:29 -0800
Message-ID: <CALAqxLWPT8PWYue0h1863NjNxKn_FH0DtoRtArpmmxZ1Ve5xCw@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Michal Hocko <mhocko@suse.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 linux-mm <linux-mm@kvack.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH v3 4/4] dma-buf: heaps: add chunk heap
	to dmabuf heaps
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

T24gVHVlLCBKYW4gMTIsIDIwMjEgYXQgNToyMiBQTSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IEZyb206IEh5ZXNvbyBZdSA8aHllc29vLnl1QHNhbXN1bmcuY29t
Pgo+Cj4gVGhpcyBwYXRjaCBzdXBwb3J0cyBjaHVuayBoZWFwIHRoYXQgYWxsb2NhdGVzIHRoZSBi
dWZmZXJzIHRoYXQKPiBhcnJhbmdlZCBpbnRvIGEgbGlzdCBhIGZpeGVkIHNpemUgY2h1bmtzIHRh
a2VuIGZyb20gQ01BLgo+Cj4gVGhlIGNodW5rIGhlYXAgZHJpdmVyIGlzIGJvdW5kIGRpcmVjdGx5
IHRvIGEgcmVzZXJ2ZWRfbWVtb3J5Cj4gbm9kZSBieSBmb2xsb3dpbmcgUm9iIEhlcnJpbmcncyBz
dWdnZXN0aW9uIGluIFsxXS4KPgo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIw
MTkxMDI1MjI1MDA5LjUwMzA1LTItam9obi5zdHVsdHpAbGluYXJvLm9yZy9ULyNtM2RjNjNhY2Qz
M2ZlYTI2OWE1ODRmNDNiYjc5OWE4NzZmMGIyYjQ1ZAo+Cj4gU2lnbmVkLW9mZi1ieTogSHllc29v
IFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSHJpZHlhIFZhbHNh
cmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWluY2hhbiBLaW0gPG1p
bmNoYW5Aa2VybmVsLm9yZz4KPiAtLS0KLi4uCj4gK3N0YXRpYyBpbnQgcmVnaXN0ZXJfY2h1bmtf
aGVhcChzdHJ1Y3QgY2h1bmtfaGVhcCAqY2h1bmtfaGVhcF9pbmZvKQo+ICt7Cj4gKyAgICAgICBz
dHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gZXhwX2luZm87Cj4gKwo+ICsgICAgICAgZXhwX2lu
Zm8ubmFtZSA9IGNtYV9nZXRfbmFtZShjaHVua19oZWFwX2luZm8tPmNtYSk7CgpPbmUgcG90ZW50
aWFsIGlzc3VlIGhlcmUsIHlvdSdyZSBzZXR0aW5nIHRoZSBuYW1lIHRvIHRoZSBzYW1lIGFzIHRo
ZQpDTUEgbmFtZS4gU2luY2UgdGhlIENNQSBoZWFwIHVzZXMgdGhlIENNQSBuYW1lLCBpZiBvbmUg
Y2h1bmsgd2FzCnJlZ2lzdGVyZWQgYXMgYSBjaHVuayBoZWFwIGJ1dCBhbHNvIHdhcyB0aGUgZGVm
YXVsdCBDTUEgYXJlYSwgaXQgbWlnaHQKYmUgcmVnaXN0ZXJlZCB0d2ljZS4gQnV0IHNpbmNlIGJv
dGggd291bGQgaGF2ZSB0aGUgc2FtZSBuYW1lIGl0IHdvdWxkCmJlIGFuIGluaXRpYWxpemF0aW9u
IHJhY2UgYXMgdG8gd2hpY2ggb25lICJ3aW5zIi4KClNvIG1heWJlIGNvdWxkIHlvdSBwb3N0Zml4
IHRoZSBDTUEgbmFtZSB3aXRoICItY2h1bmsiIG9yIHNvbWV0aGluZz8KCnRoYW5rcwotam9obgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
