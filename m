Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8987B1BC46E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 18:03:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B6EF618B9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 16:03:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8939561951; Tue, 28 Apr 2020 16:03:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 048B4618E2;
	Tue, 28 Apr 2020 16:03:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5F4FE617C9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 16:03:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 45060618B9; Tue, 28 Apr 2020 16:03:04 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id B77C3617C9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 16:03:02 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11FB530E;
 Tue, 28 Apr 2020 09:03:02 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EE773F305;
 Tue, 28 Apr 2020 09:02:59 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 intel-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, David Airlie <airlied@linux.ie>
References: <CGME20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a@eucas1p2.samsung.com>
 <20200428132005.21424-1-m.szyprowski@samsung.com>
 <20200428140257.GA3433@lst.de> <20200428153202.GY3456981@phenom.ffwll.local>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c01c9766-9778-fd1f-f36e-2dc7bd376ba4@arm.com>
Date: Tue, 28 Apr 2020 17:02:58 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428153202.GY3456981@phenom.ffwll.local>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 00/17] DRM: fix struct sg_table nents vs.
	orig_nents misuse
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

T24gMjAyMC0wNC0yOCA0OjMyIHBtLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIFR1ZSwgQXBy
IDI4LCAyMDIwIGF0IDA0OjAyOjU3UE0gKzAyMDAsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+
PiBPbiBUdWUsIEFwciAyOCwgMjAyMCBhdCAwMzoxOTo0OFBNICswMjAwLCBNYXJlayBTenlwcm93
c2tpIHdyb3RlOgo+Pj4gMS4gaW50cm9kdWNlIGEgZG1hX3ttYXAsc3luYyx1bm1hcH1fc2d0YWJs
ZSgpIHdyYXBwZXJzLCB3aGljaCB3aWxsIHVzZQo+Pj4gICAgIGEgcHJvcGVyIHNnX3RhYmxlIGVu
dHJpZXMgYW5kIGNhbGwgcmVzcGVjdGl2ZSBETUEtbWFwcGluZyBmdW5jdGlvbnMKPj4+ICAgICBh
bmQgYWRhcHQgY3VycmVudCBjb2RlIHRvIGl0Cj4+Cj4+IFRoYXQgc291bmRzIHJlYXNvbmFibGUg
dG8gbWUuICBUaG9zZSBjb3VsZCBiZSBwcmV0dHkgdHJpdmlhbCB3cmFwcGVycy4KPj4KPj4+Cj4+
Pgo+Pj4gMi4gcmVuYW1lIG5lbnRzIGFuZCBvcmlnX25lbnRzIHRvIG5yX3BhZ2VzLCBucl9kbWFz
IHRvIGNsZWFybHkgc3RhdGUKPj4+ICAgICB3aGljaCBvbmUgcmVmZXJzIHRvIHdoaWNoIHBhcnQg
b2YgdGhlIHNjYXR0ZXJsaXN0OyBJJ20gb3BlbiBmb3IKPj4+ICAgICBvdGhlciBuYW1lcyBmb3Ig
dGhvc2UgZW50cmllcwo+Pgo+PiBucl9jcHVfZW50cyBhbmQgbnJfZG1hX2VudHMgbWlnaHQgYmUg
YmV0dGVyIG5hbWVzLCBidXQgaXQgc3RpbGwgd291bGQgYmUKPj4gYSB3aG9sZSBsb3Qgb2YgY2h1
cm4gZm9yIGxpdHRsZSBnYWluLiAgSSB0aGluayBqdXN0IGdvb2Qgd3JhcHBlcnMgbGlrZQo+PiBz
dWdnZXN0ZWQgYWJvdmUgbWlnaHQgYmUgbW9yZSBoZWxwZnVsLgo+IAo+IEkgZ3Vlc3MgbG9uZy10
ZXJtIHdlIGNvdWxkIGFpbSBmb3IgYm90aD8gSS5lLiByb2xsIG91dCBiZXR0ZXIgd3JhcHBlcnMK
PiBmaXJzdCwgb25jZSB0aGF0J3Mgc29ha2VkIHRocm91Z2ggdGhlIHRyZWUsIHJlbmFtZSB0aGUg
bGFzdCBvZmZlbmRlcnMuCgpZZXMsIHRoYXQncyB3aGF0IEkgd2FzIHRoaW5raW5nIHRvbyAtIG1v
c3Qgb2YgdGhlc2UgdXNlcyBhcmUganVzdCAKcGFzc2luZyB0aGVtIGluIGFuZCBvdXQgb2YgdGhl
IERNQSBBUElzLCBhbmQgdGh1cyB3b3VsZCBiZSBzdWJzdW1lZCBpbnRvIAp0aGUgd3JhcHBlcnMg
YW55d2F5LCB0aGVuIGluIHRoZSByZWxhdGl2ZWx5IGZldyByZW1haW5pbmcgcGxhY2VzIHdoZXJl
IAp0aGUgdGFibGUgaXMgYWN0dWFsbHkgaXRlcmF0ZWQgZm9yIG9uZSByZWFzb24gb3IgdGhlIG90
aGVyLCByZW5hbWluZyAKd291bGQgc3RhbmQgdG8gaGVscCByZXZpZXcgYW5kIG1haW50ZW5hbmNl
IGluIHRlcm1zIG9mIG1ha2luZyBpdCBmYXIgCm1vcmUgb2J2aW91cyB3aGVuIHRoZSBpbXBsZW1l
bnRhdGlvbiBhbmQgdGhlIGludGVudCBkb24ndCBtYXRjaC4KClJvYmluLgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
