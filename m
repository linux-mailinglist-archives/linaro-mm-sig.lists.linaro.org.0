Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E14CF30C995
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 19:24:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F991619D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 18:24:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 13ACB65FC3; Tue,  2 Feb 2021 18:24:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFE8161786;
	Tue,  2 Feb 2021 18:24:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1620260D70
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 18:24:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0147A61786; Tue,  2 Feb 2021 18:24:05 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id CFCEA60D70
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 18:24:04 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id m1so3143564wml.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 10:24:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MgieW2mFRkLjVmzEdO+rCy5IuyzB9BYZea1yZZDisDU=;
 b=VmmHpLCW+tMLTTmpmhQr1PM3Mb1s5zYwEjlDR4kt1dlRUAXPFG6IXyP0Pr/o4qFilf
 cjrjp6cmPsOGQOk7cwGo1oMACGIxUqJDmfrprEqLMELkaKgZQoea1KV+quimFtd0pD9q
 brymH97HUGnxUaxDfRHEI/QqNJzBGVvlgqBNRFqUQ4RCaVmdISLzQJ0MIgSZENZhFsmE
 ++GE2A/qCzSNvRILbsyO45t0WYKspFTfXpEcZsCY/6LJKZ0zxEJputTKhriV02MSNeF3
 9wxocsJmJ1fsNpxjn+72U9WyKWCfsBYjP2TnO8t5YX0tZdxcZ8GNdUTdi3/pkMgRSAUc
 nPwQ==
X-Gm-Message-State: AOAM53303tck55R0P8WiBNNan6pdTIYcshwIsO3IV4oCJLa0huo5jsm7
 L2zmTKqAl05cc8EUAMqVz5Ki36N3NYCagc69Pvi6mw==
X-Google-Smtp-Source: ABdhPJxyWbsmgA9sTq5DVu4oskgnl1milGSq73HSrJ4cKCCbs2f7IWzxeKS8co+5qhzF2K7w7UV8O69zhWPTCyWzYw8=
X-Received: by 2002:a05:600c:4e92:: with SMTP id
 f18mr4736926wmq.126.1612290243428; 
 Tue, 02 Feb 2021 10:24:03 -0800 (PST)
MIME-Version: 1.0
References: <20210128083817.314315-1-surenb@google.com>
 <20210128091348.GA1962975@infradead.org>
 <CAJuCfpFUhJozS98WJpH0KQKBzyGXvqS1fitu-mgSyhaJ1xL8SQ@mail.gmail.com>
 <YBMAGRIwcbPF17cU@google.com>
 <CAJuCfpF78RYedBoAgkDdgMdfSmNwC2AQk-zZxAqkhCdtBB9gtQ@mail.gmail.com>
 <CAJuCfpH5nwvtMR+32G0-xa_hY-b_Hnw=Figqq9xcsTGgJhOiww@mail.gmail.com>
 <20210202070336.GA3535861@infradead.org>
 <CAJuCfpHWVcL1Cw=nm4THf0EzEan0jyVgLRNOdKr2ZbXex3DUcg@mail.gmail.com>
 <20210202085114.GA3562876@infradead.org>
In-Reply-To: <20210202085114.GA3562876@infradead.org>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 2 Feb 2021 10:23:52 -0800
Message-ID: <CAJuCfpEfJEnzzr6dKZGTyVmQGZMmZBVTR+M4RsbZXjeGzFe8Gw@mail.gmail.com>
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

T24gVHVlLCBGZWIgMiwgMjAyMSBhdCAxMjo1MSBBTSBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGlu
ZnJhZGVhZC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBGZWIgMDIsIDIwMjEgYXQgMTI6NDQ6NDRB
TSAtMDgwMCwgU3VyZW4gQmFnaGRhc2FyeWFuIHdyb3RlOgo+ID4gT24gTW9uLCBGZWIgMSwgMjAy
MSBhdCAxMTowMyBQTSBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGluZnJhZGVhZC5vcmc+IHdyb3Rl
Ogo+ID4gPgo+ID4gPiBJTUhPIHRoZQo+ID4gPgo+ID4gPiAgICAgICAgIEJVR19PTih2bWEtPnZt
X2ZsYWdzICYgVk1fUEZOTUFQKTsKPiA+ID4KPiA+ID4gaW4gdm1faW5zZXJ0X3BhZ2Ugc2hvdWxk
IGp1c3QgYmVjb21lIGEgV0FSTl9PTl9PTkNFIHdpdGggYW4gZXJyb3IKPiA+ID4gcmV0dXJuLCBh
bmQgdGhlbiB3ZSBqdXN0IG5lZWQgdG8gZ3JhZHVhbGx5IGZpeCB1cCB0aGUgY2FsbGVycyB0aGF0
Cj4gPiA+IHRyaWdnZXIgaXQgaW5zdGVhZCBvZiBjb21pbmcgdXAgd2l0aCB3b3JrYXJvdW5kcyBs
aWtlIHRoaXMuCj4gPgo+ID4gRm9yIHRoZSBleGlzdGluZyB2bV9pbnNlcnRfcGFnZSB1c2VycyB0
aGlzIHNob3VsZCBiZSBmaW5lIHNpbmNlCj4gPiBCVUdfT04oKSBndWFyYW50ZWVzIHRoYXQgbm9u
ZSBvZiB0aGVtIHNldHMgVk1fUEZOTUFQLgo+Cj4gRXZlbiBmb3IgdGhlbSBXQVJOX09OX09OQ0Ug
cGx1cyBhbiBhY3R1YWwgZXJyb3IgcmV0dXJuIGlzIGEgd2F5Cj4gYmV0dGVyIGFzc2VydCB0aGF0
IGlzIG11Y2ggZGV2ZWxvcGVyIGZyaWVuZGx5LgoKQWdyZWUuCgo+Cj4gPiBIb3dldmVyLCBmb3Ig
dGhlCj4gPiBzeXN0ZW1faGVhcF9tbWFwIEkgaGF2ZSBvbmUgY29uY2Vybi4gV2hlbiB2bV9pbnNl
cnRfcGFnZSByZXR1cm5zIGFuCj4gPiBlcnJvciBkdWUgdG8gVk1fUEZOTUFQIGZsYWcsIHRoZSB3
aG9sZSBtbWFwIG9wZXJhdGlvbiBzaG91bGQgZmFpbAo+ID4gKHN5c3RlbV9oZWFwX21tYXAgcmV0
dXJuaW5nIGFuIGVycm9yIGxlYWRpbmcgdG8gZG1hX2J1Zl9tbWFwIGZhaWx1cmUpLgo+ID4gQ291
bGQgdGhlcmUgYmUgY2FzZXMgd2hlbiBhIGhlYXAgdXNlciAoRFJNIGRyaXZlciBmb3IgZXhhbXBs
ZSkgd291bGQKPiA+IGJlIGV4cGVjdGVkIHRvIHdvcmsgd2l0aCBhIGhlYXAgd2hpY2ggcmVxdWly
ZXMgVk1fUEZOTUFQIGFuZCBhdCB0aGUKPiA+IHNhbWUgdGltZSB3aXRoIGFub3RoZXIgaGVhcCB3
aGljaCByZXF1aXJlcyAhVk1fUEZOTUFQPyBJT1csIHRoaXMKPiA+IGludHJvZHVjZXMgYSBkZXBl
bmRlbmN5IGJldHdlZW4gdGhlIGhlYXAgYW5kIGl0cwo+ID4gdXNlci4gVGhlIHVzZXIgd291bGQg
aGF2ZSB0byBrbm93IGV4cGVjdGF0aW9ucyBvZiB0aGUgaGVhcCBpdCB1c2VzIGFuZAo+ID4gY2Fu
J3Qgd29yayB3aXRoIGFub3RoZXIgaGVhcCB0aGF0IGhhcyB0aGUgb3Bwb3NpdGUgZXhwZWN0YXRp
b24uIFRoaXMKPiA+IHVzZWNhc2UgaXMgcHVyZWx5IHRoZW9yZXRpY2FsIGFuZCBtYXliZSBJIHNo
b3VsZCBub3Qgd29ycnkgYWJvdXQgaXQKPiA+IGZvciBub3c/Cj4KPiBJZiBzdWNoIGEgY2FzZSBl
dmVyIGFyaXNlcyB3ZSBjYW4gbG9vayBpbnRvIGl0LgoKU291bmRzIGdvb2QuIEknbGwgcHJlcGFy
ZSBhIG5ldyBwYXRjaCBhbmQgd2lsbCBwb3N0IGl0IGxhdGVyIHRvZGF5LiBUaGFua3MhCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
