Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FAA1F5782
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2020 17:15:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE78D6192B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2020 15:15:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9EBB165F72; Wed, 10 Jun 2020 15:15:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8AC6618C8;
	Wed, 10 Jun 2020 15:14:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 81607617AE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2020 15:14:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6AB1B618C4; Wed, 10 Jun 2020 15:14:50 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by lists.linaro.org (Postfix) with ESMTPS id 296A0617AE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2020 15:14:49 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id t25so2366769oij.7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2020 08:14:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oDtkEAKzZyv3dXNpsPsqMVmJ4Y+cSfCKakpKBa1zwUc=;
 b=VBKRQcXohj+94Oz7MsDqHFjYOmnIZ4qJZLZ1EALQWklOAiZH1dKLvvxxpUIh1tFfzM
 YhOvysh4tSNCDzSszsV5XQNM9+pq+G7zzLVj3eG7BiG9y1Kum4wVxdjI9EntGnU25kVB
 r3kzAT8JKgISz+nLafqvgRTFKJj0ijloTd3N9hoThyEI4mrf2xudWGFEvzmWK/+vLbse
 TKQ4RX1Ly9aMkMN7+a1z/4hyp2HO0HnPZ37hgQNlYjGEVdxq+AD4fVnG0Rj7mkDeYwfW
 ekjOHFo9Zv/SZsFdbSnu445bFusAAWCTKQCcp0vzk7XNh58jxXjuvYaIjX8jEJ7Ina49
 0dYg==
X-Gm-Message-State: AOAM5301GOyXXyXh5oFOY29uuZo91bfibdqDHUupQgfsYnpWIN7M6F4j
 Zk7L2v5paOmsOdGQuetlqQLLSbWZ0Xcz/Oq6TPb8oEOF
X-Google-Smtp-Source: ABdhPJz7VsuBtbPfx9RhfASCfcCtNEZDfA1tM4aFTMIKx3YAxZCxiJua2WBQytWigumUFZm42pnwJaUbj0Binjq2P/c=
X-Received: by 2002:aca:1308:: with SMTP id e8mr2665439oii.119.1591802088505; 
 Wed, 10 Jun 2020 08:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200610083333.455-1-sumit.semwal@linaro.org>
 <CAK8P3a0PzmtWc1p-KgHzHhY+=gca0J8YsGD=ALGESWsgijQQ7w@mail.gmail.com>
In-Reply-To: <CAK8P3a0PzmtWc1p-KgHzHhY+=gca0J8YsGD=ALGESWsgijQQ7w@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 10 Jun 2020 20:44:37 +0530
Message-ID: <CAO_48GEqxOOOZupGLAa92HXcnbe6_3ZfLvaJsDnv9_XFTTFe6w@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 syzbot+3643a18836bce555bff6@syzkaller.appspotmail.com,
 Charan Teja Reddy <charante@codeaurora.org>,
 "# 3.4.x" <stable@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Move dma_buf_release() from
	fops to dentry_ops
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

T24gV2VkLCAxMCBKdW4gMjAyMCBhdCAxNDo1NywgQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5k
ZT4gd3JvdGU6Cj4KPiBPbiBXZWQsIEp1biAxMCwgMjAyMCBhdCAxMDozMyBBTSBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBDaGFyYW4gVGVqYSBy
ZXBvcnRlZCBhICd1c2UtYWZ0ZXItZnJlZScgaW4gZG1hYnVmZnNfZG5hbWUgWzFdLCB3aGljaAo+
ID4gaGFwcGVucyBpZiB0aGUgZG1hX2J1Zl9yZWxlYXNlKCkgaXMgY2FsbGVkIHdoaWxlIHRoZSB1
c2Vyc3BhY2UgaXMKPiA+IGFjY2Vzc2luZyB0aGUgZG1hX2J1ZiBwc2V1ZG8gZnMncyBkbWFidWZm
c19kbmFtZSgpIGluIGFub3RoZXIgcHJvY2VzcywKPiA+IGFuZCBkbWFfYnVmX3JlbGVhc2UoKSBy
ZWxlYXNlcyB0aGUgZG1hYnVmIG9iamVjdCB3aGVuIHRoZSBsYXN0IHJlZmVyZW5jZQo+ID4gdG8g
dGhlIHN0cnVjdCBmaWxlIGdvZXMgYXdheS4KPiA+Cj4gPiBJIGRpc2N1c3NlZCB3aXRoIEFybmQg
QmVyZ21hbm4sIGFuZCBoZSBzdWdnZXN0ZWQgdGhhdCByYXRoZXIgdGhhbiB0eWluZwo+ID4gdGhl
IGRtYV9idWZfcmVsZWFzZSgpIHRvIHRoZSBmaWxlX29wZXJhdGlvbnMnIHJlbGVhc2UoKSwgd2Ug
Y2FuIHRpZSBpdCB0bwo+ID4gdGhlIGRlbnRyeV9vcGVyYXRpb25zJyBkX3JlbGVhc2UoKSwgd2hp
Y2ggd2lsbCBiZSBjYWxsZWQgd2hlbiB0aGUgbGFzdCByZWYKPiA+IHRvIHRoZSBkZW50cnkgaXMg
cmVtb3ZlZC4KPiA+Cj4gPiBUaGUgcGF0aCBleGVyY2lzZWQgYnkgX19mcHV0KCkgY2FsbHMgZl9v
cC0+cmVsZWFzZSgpIGZpcnN0LCBhbmQgdGhlbiBjYWxscwo+ID4gZHB1dCwgd2hpY2ggZXZlbnR1
YWxseSBjYWxscyBkX29wLT5kX3JlbGVhc2UoKS4KPiA+Cj4gPiBJbiB0aGUgJ25vcm1hbCcgY2Fz
ZSwgd2hlbiBubyB1c2Vyc3BhY2UgYWNjZXNzIGlzIGhhcHBlbmluZyB2aWEgZG1hX2J1Zgo+ID4g
cHNldWRvIGZzLCB0aGVyZSBzaG91bGQgYmUgZXhhY3RseSBvbmUgZmQsIGZpbGUsIGRlbnRyeSBh
bmQgaW5vZGUsIHNvCj4gPiBjbG9zaW5nIHRoZSBmZCB3aWxsIGtpbGwgb2YgZXZlcnl0aGluZyBy
aWdodCBhd2F5Lgo+ID4KPiA+IEluIHRoZSBwcmVzZW50ZWQgY2FzZSwgdGhlIGRlbnRyeSdzIGRf
cmVsZWFzZSgpIHdpbGwgYmUgY2FsbGVkIG9ubHkgd2hlbgo+ID4gdGhlIGRlbnRyeSdzIGxhc3Qg
cmVmIGlzIHJlbGVhc2VkLgo+ID4KPiA+IFRoZXJlZm9yZSwgbGV0cyBtb3ZlIGRtYV9idWZfcmVs
ZWFzZSgpIGZyb20gZm9wcy0+cmVsZWFzZSgpIHRvCj4gPiBkX29wcy0+ZF9yZWxlYXNlKCkuCj4g
Pgo+ID4gTWFueSB0aGFua3MgdG8gQXJuZCBmb3IgaGlzIEZTIGluc2lnaHRzIDopCj4gPgo+ID4g
WzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTIzODI3OC8KPiA+
Cj4gPiBGaXhlczogYmIyYmI5MDMwNDI1ICgiZG1hLWJ1ZjogYWRkIERNQV9CVUZfU0VUX05BTUUg
aW9jdGxzIikKPiA+IFJlcG9ydGVkLWJ5OiBzeXpib3QrMzY0M2ExODgzNmJjZTU1NWJmZjZAc3l6
a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiBb
NS4zK10KPiA+IENjOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+ID4gUmVwb3J0ZWQt
Ynk6IENoYXJhbiBUZWphIFJlZGR5IDxjaGFyYW50ZUBjb2RlYXVyb3JhLm9yZz4KPiA+IFNpZ25l
ZC1vZmYtYnk6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4KPiBUaGUg
cGF0Y2ggbG9va3MgY29ycmVjdCB0byBtZS4KPgo+IFJldmlld2VkLWJ5OiBBcm5kIEJlcmdtYW5u
IDxhcm5kQGFybmRiLmRlPgo+Cj4gT2J2aW91c2x5IHRoaXMgc2hvdWxkIHN0aWxsIGJlIHZlcmlm
aWVkIGFnYWluc3QgdGhlIG9yaWdpbmFsIHJlcG9ydCBpZiBwb3NzaWJsZS4KVGhhbmtzLCBBcm5k
IQo+Cj4gPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDEzICsrKysrKystLS0tLS0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYwo+ID4gaW5kZXggMDFjZTEyNWY4ZThkLi45MmJhNGI2ZWYzZTcgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiArKysgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jCj4gPiBAQCAtNTQsOCArNTQsMTEgQEAgc3RhdGljIGNoYXIgKmRtYWJ1ZmZz
X2RuYW1lKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgY2hhciAqYnVmZmVyLCBpbnQgYnVmbGVuKQo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZW50cnktPmRfbmFtZS5uYW1lLCByZXQg
PiAwID8gbmFtZSA6ICIiKTsKPiA+ICB9Cj4gPgo+ID4gK3N0YXRpYyB2b2lkIGRtYV9idWZfcmVs
ZWFzZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnkpOwo+ID4gKwo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZGVudHJ5X29wZXJhdGlvbnMgZG1hX2J1Zl9kZW50cnlfb3BzID0gewo+ID4gICAgICAgICAu
ZF9kbmFtZSA9IGRtYWJ1ZmZzX2RuYW1lLAo+ID4gKyAgICAgICAuZF9yZWxlYXNlID0gZG1hX2J1
Zl9yZWxlYXNlLAo+ID4gIH07Cj4KPiBJJ2Qgc3VnZ2VzdCByZWFycmFuZ2luZyB0aGUgZmlsZSB0
byBhdm9pZCB0aGUgZm9yd2FyZCBkZWNsYXJhdGlvbiwgZXZlbgo+IGlmIGl0IG1ha2VzIGl0IGEg
bGl0dGxlIGhhcmRlciB0byByZXZpZXcgdGhlIGNoYW5nZSwgdGhlIHJlc3VsdGluZyBjb2RlCj4g
d2lsbCByZW1haW4gb3JnYW5pemVkIG1vcmUgbG9naWNhbGx5LgpHb3QgaXQsIHdpbGwgdXBkYXRl
IGl0IGluIHYyLgo+Cj4gPiAgc3RhdGljIHN0cnVjdCB2ZnNtb3VudCAqZG1hX2J1Zl9tbnQ7Cj4g
PiBAQCAtNzcsMTQgKzgwLDE0IEBAIHN0YXRpYyBzdHJ1Y3QgZmlsZV9zeXN0ZW1fdHlwZSBkbWFf
YnVmX2ZzX3R5cGUgPSB7Cj4gPiAgICAgICAgIC5raWxsX3NiID0ga2lsbF9hbm9uX3N1cGVyLAo+
ID4gIH07Cj4gPgo+ID4gLXN0YXRpYyBpbnQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBpbm9kZSAq
aW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQo+ID4gK3N0YXRpYyB2b2lkIGRtYV9idWZfcmVsZWFz
ZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnkpCj4gPiAgewo+ID4gICAgICAgICBzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmOwo+ID4KPiA+IC0gICAgICAgaWYgKCFpc19kbWFfYnVmX2ZpbGUoZmlsZSkpCj4g
PiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiArICAgICAgIGlmIChkZW50cnkt
PmRfb3AgIT0gJmRtYV9idWZfZGVudHJ5X29wcykKPiA+ICsgICAgICAgICAgICAgICByZXR1cm47
Cj4KPiBJIHRoaW5rIHRoZSBjaGVjayBoZXJlIGlzIHJlZHVuZGFudCBhbmQgaXQncyBjbGVhcmVy
IHdpdGhvdXQgaXQuCk9rLCB3aWxsIHJlbW92ZS4KPgo+ICAgICAgICAgICBBcm5kCgpCZXN0LApT
dW1pdC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
