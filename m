Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E3D30BA51
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 09:52:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 271206087D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 08:52:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19EA460FF8; Tue,  2 Feb 2021 08:52:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68A0261100;
	Tue,  2 Feb 2021 08:51:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5CD616087D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 08:51:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4099C61100; Tue,  2 Feb 2021 08:51:37 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 43E716087D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 08:51:35 +0000 (UTC)
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l6rP0-00Ewuo-Sx; Tue, 02 Feb 2021 08:51:15 +0000
Date: Tue, 2 Feb 2021 08:51:14 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <20210202085114.GA3562876@infradead.org>
References: <20210128083817.314315-1-surenb@google.com>
 <20210128091348.GA1962975@infradead.org>
 <CAJuCfpFUhJozS98WJpH0KQKBzyGXvqS1fitu-mgSyhaJ1xL8SQ@mail.gmail.com>
 <YBMAGRIwcbPF17cU@google.com>
 <CAJuCfpF78RYedBoAgkDdgMdfSmNwC2AQk-zZxAqkhCdtBB9gtQ@mail.gmail.com>
 <CAJuCfpH5nwvtMR+32G0-xa_hY-b_Hnw=Figqq9xcsTGgJhOiww@mail.gmail.com>
 <20210202070336.GA3535861@infradead.org>
 <CAJuCfpHWVcL1Cw=nm4THf0EzEan0jyVgLRNOdKr2ZbXex3DUcg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJuCfpHWVcL1Cw=nm4THf0EzEan0jyVgLRNOdKr2ZbXex3DUcg@mail.gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Christian K??nig <christian.koenig@amd.com>,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>, Christoph Hellwig <hch@infradead.org>,
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

T24gVHVlLCBGZWIgMDIsIDIwMjEgYXQgMTI6NDQ6NDRBTSAtMDgwMCwgU3VyZW4gQmFnaGRhc2Fy
eWFuIHdyb3RlOgo+IE9uIE1vbiwgRmViIDEsIDIwMjEgYXQgMTE6MDMgUE0gQ2hyaXN0b3BoIEhl
bGx3aWcgPGhjaEBpbmZyYWRlYWQub3JnPiB3cm90ZToKPiA+Cj4gPiBJTUhPIHRoZQo+ID4KPiA+
ICAgICAgICAgQlVHX09OKHZtYS0+dm1fZmxhZ3MgJiBWTV9QRk5NQVApOwo+ID4KPiA+IGluIHZt
X2luc2VydF9wYWdlIHNob3VsZCBqdXN0IGJlY29tZSBhIFdBUk5fT05fT05DRSB3aXRoIGFuIGVy
cm9yCj4gPiByZXR1cm4sIGFuZCB0aGVuIHdlIGp1c3QgbmVlZCB0byBncmFkdWFsbHkgZml4IHVw
IHRoZSBjYWxsZXJzIHRoYXQKPiA+IHRyaWdnZXIgaXQgaW5zdGVhZCBvZiBjb21pbmcgdXAgd2l0
aCB3b3JrYXJvdW5kcyBsaWtlIHRoaXMuCj4gCj4gRm9yIHRoZSBleGlzdGluZyB2bV9pbnNlcnRf
cGFnZSB1c2VycyB0aGlzIHNob3VsZCBiZSBmaW5lIHNpbmNlCj4gQlVHX09OKCkgZ3VhcmFudGVl
cyB0aGF0IG5vbmUgb2YgdGhlbSBzZXRzIFZNX1BGTk1BUC4KCkV2ZW4gZm9yIHRoZW0gV0FSTl9P
Tl9PTkNFIHBsdXMgYW4gYWN0dWFsIGVycm9yIHJldHVybiBpcyBhIHdheQpiZXR0ZXIgYXNzZXJ0
IHRoYXQgaXMgbXVjaCBkZXZlbG9wZXIgZnJpZW5kbHkuCgo+IEhvd2V2ZXIsIGZvciB0aGUKPiBz
eXN0ZW1faGVhcF9tbWFwIEkgaGF2ZSBvbmUgY29uY2Vybi4gV2hlbiB2bV9pbnNlcnRfcGFnZSBy
ZXR1cm5zIGFuCj4gZXJyb3IgZHVlIHRvIFZNX1BGTk1BUCBmbGFnLCB0aGUgd2hvbGUgbW1hcCBv
cGVyYXRpb24gc2hvdWxkIGZhaWwKPiAoc3lzdGVtX2hlYXBfbW1hcCByZXR1cm5pbmcgYW4gZXJy
b3IgbGVhZGluZyB0byBkbWFfYnVmX21tYXAgZmFpbHVyZSkuCj4gQ291bGQgdGhlcmUgYmUgY2Fz
ZXMgd2hlbiBhIGhlYXAgdXNlciAoRFJNIGRyaXZlciBmb3IgZXhhbXBsZSkgd291bGQKPiBiZSBl
eHBlY3RlZCB0byB3b3JrIHdpdGggYSBoZWFwIHdoaWNoIHJlcXVpcmVzIFZNX1BGTk1BUCBhbmQg
YXQgdGhlCj4gc2FtZSB0aW1lIHdpdGggYW5vdGhlciBoZWFwIHdoaWNoIHJlcXVpcmVzICFWTV9Q
Rk5NQVA/IElPVywgdGhpcwo+IGludHJvZHVjZXMgYSBkZXBlbmRlbmN5IGJldHdlZW4gdGhlIGhl
YXAgYW5kIGl0cwo+IHVzZXIuIFRoZSB1c2VyIHdvdWxkIGhhdmUgdG8ga25vdyBleHBlY3RhdGlv
bnMgb2YgdGhlIGhlYXAgaXQgdXNlcyBhbmQKPiBjYW4ndCB3b3JrIHdpdGggYW5vdGhlciBoZWFw
IHRoYXQgaGFzIHRoZSBvcHBvc2l0ZSBleHBlY3RhdGlvbi4gVGhpcwo+IHVzZWNhc2UgaXMgcHVy
ZWx5IHRoZW9yZXRpY2FsIGFuZCBtYXliZSBJIHNob3VsZCBub3Qgd29ycnkgYWJvdXQgaXQKPiBm
b3Igbm93PwoKSWYgc3VjaCBhIGNhc2UgZXZlciBhcmlzZXMgd2UgY2FuIGxvb2sgaW50byBpdC4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
