Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 279512CACAC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 20:48:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E44C61523
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 19:48:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3D6C565FCE; Tue,  1 Dec 2020 19:48:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B3C865F83;
	Tue,  1 Dec 2020 19:48:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E5B3D60BE0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 19:48:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D49F965F83; Tue,  1 Dec 2020 19:48:28 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by lists.linaro.org (Postfix) with ESMTPS id E50A560BE0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 19:48:27 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id v202so3057801oia.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Dec 2020 11:48:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GU/a7gBkkUxdrrdBKj5i93nXRF3uXJBiU207T9STEpA=;
 b=KBG9agEUIBnDc0cubNlNjrfCMzMLBiEXg6JY7JC2kwBsgvZaymnNYh2OCRJXLQBHjJ
 UgHJrHKohKQSTVKlrw0zetat/gz1640qFG7OY/yMrnV2WeTMa9Uj3NnMWIrkS75OdLwr
 hoSKa+7IWsPWuAHT1O73D+A9DZ/gD8FNWW/1vCDmVFOARtdfq0147QLN9lcbxbngNRtK
 oDowkaYbBPr5090T4kY1H2qzWs68UhP3NGTK9BjzK6+SzppFDl48wsp+UZagobDWAnfW
 nuDu1dSjznizTezmkoRQnX48OQEMd//OQKaHLMBzQW9CXHltrIrW6VuSMrWHT1JO2ZGy
 rGMQ==
X-Gm-Message-State: AOAM5325O7hqdTPK19nL3M2YRvSQ0/gV5dN8z2JrhEi59GM5gGR+Lkr6
 +iXxEos8Kg61VybW8GilQ4sKfjiOwkUHBNnQXBHwtEmb
X-Google-Smtp-Source: ABdhPJwuOtbu6e0mpTX2ppq4vKVkfl1OODrkYIbcJ3YSTIHDgdruXNvVWsKxJZQMNlznGdTCU8LxdeHczxzz46q0rwM=
X-Received: by 2002:aca:c3d6:: with SMTP id t205mr2816644oif.10.1606852107373; 
 Tue, 01 Dec 2020 11:48:27 -0800 (PST)
MIME-Version: 1.0
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-5-minchan@kernel.org>
In-Reply-To: <20201201175144.3996569-5-minchan@kernel.org>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 1 Dec 2020 11:48:15 -0800
Message-ID: <CALAqxLXFeUStaJ8Mtm5v3kSxmeqnjzLTsyathkrKF0ke3fYGiQ@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-mm <linux-mm@kvack.org>, Christian Koenig <christian.koenig@amd.com>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH v2 4/4] dma-buf: heaps: add chunk heap
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

T24gVHVlLCBEZWMgMSwgMjAyMCBhdCA5OjUxIEFNIE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5l
bC5vcmc+IHdyb3RlOgoKVGhhbmtzIGZvciByZXdvcmtpbmcgYW5kIHJlc2VuZGluZyB0aGlzIQoK
Li4uCj4gK3N0YXRpYyBpbnQgX19pbml0IGNodW5rX2hlYXBfaW5pdCh2b2lkKQo+ICt7Cj4gKyAg
ICAgICBzdHJ1Y3QgY21hICpkZWZhdWx0X2NtYSA9IGRldl9nZXRfY21hX2FyZWEoTlVMTCk7Cj4g
KyAgICAgICBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gZXhwX2luZm87Cj4gKyAgICAgICBz
dHJ1Y3QgY2h1bmtfaGVhcCAqY2h1bmtfaGVhcDsKPiArCj4gKyAgICAgICBpZiAoIWRlZmF1bHRf
Y21hKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKPiArCj4gKyAgICAgICBjaHVua19oZWFw
ID0ga3phbGxvYyhzaXplb2YoKmNodW5rX2hlYXApLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGlm
ICghY2h1bmtfaGVhcCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsg
ICAgICAgY2h1bmtfaGVhcC0+b3JkZXIgPSBDSFVOS19IRUFQX09SREVSOwo+ICsgICAgICAgY2h1
bmtfaGVhcC0+Y21hID0gZGVmYXVsdF9jbWE7Cj4gKwo+ICsgICAgICAgZXhwX2luZm8ubmFtZSA9
IGNtYV9nZXRfbmFtZShkZWZhdWx0X2NtYSk7CgpTbywgdGhpcyB3b3VsZCBjcmVhdGUgYSBjaHVu
ayBoZWFwIG5hbWUgd2l0aCB0aGUgZGVmYXVsdCBDTUEgbmFtZSwKd2hpY2ggd291bGQgYmUgaW5k
aXN0aW5ndWlzaGFibGUgZnJvbSB0aGUgaGVhcCBuYW1lIHVzZWQgZm9yIHRoZSBwbGFpbgpDTUEg
aGVhcC4KClByb2JhYmx5IGEgZ29vZCBpZGVhIHRvIHByZWZpeCBpdCB3aXRoICJjaHVuay0iIHNv
IHRoZSBoZWFwIGRldmljZQpuYW1lcyBhcmUgdW5pcXVlPwoKdGhhbmtzCi1qb2huCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
