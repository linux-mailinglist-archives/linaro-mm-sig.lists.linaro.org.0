Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0EA30BA35
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 09:48:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B474D619D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 08:48:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A796A6604D; Tue,  2 Feb 2021 08:48:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D68DB6601F;
	Tue,  2 Feb 2021 08:47:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3A61560FF8
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 08:44:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 284976087D; Tue,  2 Feb 2021 08:44:58 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id A82516087D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 08:44:56 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id z6so19453328wrq.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 00:44:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xF8qedlJolmxjBdAS9Sywdm5NC/I3fz6Ssj86vPbp9Q=;
 b=Qk8xE5j0Mun1jiGSYXf0KZirFK5N1ZK6IZO7Emb3mkBupg10Tly5YMvkPQywfeVu51
 ecZvegfijEuJ3Mwf7TMmFCbNq2hGnwOPTpSI27fOf0bTagcLlLk1BzZ1fEbW6kD29FTJ
 td1f+eS/LqUviAnpNUvfFGiQG0Wp/64KczXkMYiPtqRxDyoHBFeDczP8M1UIcywWD3b0
 8f25E1M6kbfqVDUZvEjEmmRjdrMweWY4obQSQkaZLWJvPUoqdOyIhPj9Ahc1t4GJorpN
 TbrSLsZxvetrJafhMz4NpiJJFdXUwKw0ja0hul+dlS2PfaiXsGJznI/tlgGSN5Dpkx+Z
 h82w==
X-Gm-Message-State: AOAM533BM3MKYdGSfjqZRJIWgUHSha54iBU8YvxJ+BwUSSNSJQjUIy+J
 66jgE9Uoj+jvMvGnsZB77N5iGSHDTJYhrT5G45Ah5A==
X-Google-Smtp-Source: ABdhPJyIcGuuSym0awOVNMXB2Bhi1rD0SlTVRtk+EYonkDPzcHjZReKVITS7PVf3SKTHsvL5JyeM/K20x3otaInPs6I=
X-Received: by 2002:adf:ed45:: with SMTP id u5mr22294772wro.358.1612255495607; 
 Tue, 02 Feb 2021 00:44:55 -0800 (PST)
MIME-Version: 1.0
References: <20210128083817.314315-1-surenb@google.com>
 <20210128091348.GA1962975@infradead.org>
 <CAJuCfpFUhJozS98WJpH0KQKBzyGXvqS1fitu-mgSyhaJ1xL8SQ@mail.gmail.com>
 <YBMAGRIwcbPF17cU@google.com>
 <CAJuCfpF78RYedBoAgkDdgMdfSmNwC2AQk-zZxAqkhCdtBB9gtQ@mail.gmail.com>
 <CAJuCfpH5nwvtMR+32G0-xa_hY-b_Hnw=Figqq9xcsTGgJhOiww@mail.gmail.com>
 <20210202070336.GA3535861@infradead.org>
In-Reply-To: <20210202070336.GA3535861@infradead.org>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 2 Feb 2021 00:44:44 -0800
Message-ID: <CAJuCfpHWVcL1Cw=nm4THf0EzEan0jyVgLRNOdKr2ZbXex3DUcg@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Sandeep Patil <sspatil@google.com>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Christian K??nig <christian.koenig@amd.com>,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Minchan Kim <minchan@kernel.org>, John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 "\(Exiting\) Benjamin Gaignard" <benjamin.gaignard@linaro.org>,
 Hridya Valsaraju <hridya@google.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/1] dma-buf: heaps: Map system heap
 pages as managed by linux vm
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

T24gTW9uLCBGZWIgMSwgMjAyMSBhdCAxMTowMyBQTSBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGlu
ZnJhZGVhZC5vcmc+IHdyb3RlOgo+Cj4gSU1ITyB0aGUKPgo+ICAgICAgICAgQlVHX09OKHZtYS0+
dm1fZmxhZ3MgJiBWTV9QRk5NQVApOwo+Cj4gaW4gdm1faW5zZXJ0X3BhZ2Ugc2hvdWxkIGp1c3Qg
YmVjb21lIGEgV0FSTl9PTl9PTkNFIHdpdGggYW4gZXJyb3IKPiByZXR1cm4sIGFuZCB0aGVuIHdl
IGp1c3QgbmVlZCB0byBncmFkdWFsbHkgZml4IHVwIHRoZSBjYWxsZXJzIHRoYXQKPiB0cmlnZ2Vy
IGl0IGluc3RlYWQgb2YgY29taW5nIHVwIHdpdGggd29ya2Fyb3VuZHMgbGlrZSB0aGlzLgoKRm9y
IHRoZSBleGlzdGluZyB2bV9pbnNlcnRfcGFnZSB1c2VycyB0aGlzIHNob3VsZCBiZSBmaW5lIHNp
bmNlCkJVR19PTigpIGd1YXJhbnRlZXMgdGhhdCBub25lIG9mIHRoZW0gc2V0cyBWTV9QRk5NQVAu
IEhvd2V2ZXIsIGZvciB0aGUKc3lzdGVtX2hlYXBfbW1hcCBJIGhhdmUgb25lIGNvbmNlcm4uIFdo
ZW4gdm1faW5zZXJ0X3BhZ2UgcmV0dXJucyBhbgplcnJvciBkdWUgdG8gVk1fUEZOTUFQIGZsYWcs
IHRoZSB3aG9sZSBtbWFwIG9wZXJhdGlvbiBzaG91bGQgZmFpbAooc3lzdGVtX2hlYXBfbW1hcCBy
ZXR1cm5pbmcgYW4gZXJyb3IgbGVhZGluZyB0byBkbWFfYnVmX21tYXAgZmFpbHVyZSkuCkNvdWxk
IHRoZXJlIGJlIGNhc2VzIHdoZW4gYSBoZWFwIHVzZXIgKERSTSBkcml2ZXIgZm9yIGV4YW1wbGUp
IHdvdWxkCmJlIGV4cGVjdGVkIHRvIHdvcmsgd2l0aCBhIGhlYXAgd2hpY2ggcmVxdWlyZXMgVk1f
UEZOTUFQIGFuZCBhdCB0aGUKc2FtZSB0aW1lIHdpdGggYW5vdGhlciBoZWFwIHdoaWNoIHJlcXVp
cmVzICFWTV9QRk5NQVA/IElPVywgdGhpcwppbnRyb2R1Y2VzIGEgZGVwZW5kZW5jeSBiZXR3ZWVu
IHRoZSBoZWFwIGFuZCBpdHMKdXNlci4gVGhlIHVzZXIgd291bGQgaGF2ZSB0byBrbm93IGV4cGVj
dGF0aW9ucyBvZiB0aGUgaGVhcCBpdCB1c2VzIGFuZApjYW4ndCB3b3JrIHdpdGggYW5vdGhlciBo
ZWFwIHRoYXQgaGFzIHRoZSBvcHBvc2l0ZSBleHBlY3RhdGlvbi4gVGhpcwp1c2VjYXNlIGlzIHB1
cmVseSB0aGVvcmV0aWNhbCBhbmQgbWF5YmUgSSBzaG91bGQgbm90IHdvcnJ5IGFib3V0IGl0CmZv
ciBub3c/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
